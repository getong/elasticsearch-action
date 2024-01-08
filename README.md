# ElasticSearch GitHub Action

This [GitHub Action](https://github.com/features/actions) sets up ElasticSearch

# Usage

See [action.yml](action.yml)

Basic:
```yaml
steps:
- name: Configure sysctl limits
  run: |
    sudo swapoff -a
    sudo sysctl -w vm.swappiness=1
    sudo sysctl -w fs.file-max=262144
    sudo sysctl -w vm.max_map_count=262144

- uses: getong/elasticsearch-action@v1.3
  with:
    elasticsearch version: '8.11.0'
    host port: 9200
    container port: 9200
    host node port: 9300
    node port: 9300
    discovery type: 'single-node'
```

# License

The scripts and documentation in this project are released under the [Apache License](LICENSE)
