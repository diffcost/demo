# DiffCost demo

A live example of the [DiffCost GitHub Action](https://github.com/diffcost/action) on a BigQuery SQL pull request.

The repository holds one query, [`queries/pandas_downloads_weekly.sql`](queries/pandas_downloads_weekly.sql), which counts pandas downloads from the public PyPI dataset over the last 7 days. [The open pull request](https://github.com/diffcost/demo/pull/1) deletes its date filter, so the query reads every partition of the table instead of the last week's. DiffCost dry-runs both versions in BigQuery and posts the cost of one run before and after, with the likely cause, as a comment on the PR.

The PR is kept open on purpose, and the workflow is [`.github/workflows/diffcost.yml`](.github/workflows/diffcost.yml). Look at that PR rather than opening your own: PRs from forks get no credentials, so DiffCost writes its report to the job summary instead of a comment.

To set DiffCost up on your own repository, follow the [quickstart](https://diffcost.dev/docs/quickstart).
