# ElasticSearch GitHub Action

This [GitHub Action](https://github.com/features/actions) sets up ElasticSearch

# Usage

See [action.yml](action.yml)

Basic:
```yaml
steps:
- uses: getong/elasticsearch-action@v1
  with:
    elasticsearch version: '7.5.1'
    host port: 9200
    container port: 9200
    discovery type: 'single-node'
```

# License

The scripts and documentation in this project are released under the [Apache License](LICENSE)
