#!/usr/bin/env bats

setup() {
  dt="bash docker-tags"
  repo=benjaminferon/docker-tags
}

@test "help" {
  help="$($dt --help)"

  help_count=$(echo "$help" | grep -e "^Usage: docker-tags" | wc -l)
  [ $help_count -eq 1 ]
}

@test "sort" {
  tags="$($dt --sort=last_updated --page-size=1 --page-count=1 $repo)"

  latest_regex="^latest$"

  found_latest=$(echo "$tags" | grep -e "$latest_regex" | wc -l)
  [ $found_latest -eq 1 ]

  tags="$($dt --sort=-last_updated --page-size=1 --page-count=1 $repo)"

  found_latest=$(echo "$tags" | grep -e "$latest_regex" | wc -l)
  echo "found_latest"
  [ $found_latest -eq 0 ]
}

@test "filter" {
  tags="$($dt --sort=last_updated --page-size=10 --page-count=1 --filter=latest $repo)"

  latest_regex="^latest$"

  found_latest=$(echo "$tags" | grep -e "$latest_regex" | wc -l)
  [ $found_latest -eq 1 ]

  tags="$($dt --sort=-last_updated --page-size=10 --page-count=1 --filter=xxx $repo)"

  found_latest=$(echo "$tags" | grep -e "$latest_regex" | wc -l)
  [ $found_latest -eq 0 ]
}

@test "pagination" {
  tags="$($dt --sort=-last_updated --page-size=2 --page-count=3 --pagination $repo)"

  page_regex="^- Page [0-9]\+\/[0-9]\+ -$"

  page_label_count=$(echo "$tags" | grep -e "$page_regex" | wc -l)
  [ $page_label_count -eq 3 ]

  tag_count=$(echo "$tags" | grep -ve "$page_regex" | grep -v "Get tags count..." | wc -l)
  [ $tag_count -eq 6 ]

  tags="$($dt --sort=-last_updated --page-size=2 --page-count=3 $repo)"

  page_label_count=$(echo "$tags" | grep -e "$page_regex" | wc -l)
  [ $page_label_count -eq 0 ]
}
