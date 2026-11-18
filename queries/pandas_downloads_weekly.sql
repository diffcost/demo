-- pandas downloads from PyPI over the last 7 days, by package version and Python version.
SELECT
  DATE(timestamp) AS day,
  file.version AS pandas_version,
  details.python AS python_version,
  COUNT(*) AS downloads
FROM `bigquery-public-data.pypi.file_downloads`
WHERE project = 'pandas'
GROUP BY day, pandas_version, python_version
