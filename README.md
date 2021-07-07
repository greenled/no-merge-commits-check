# No merge commits check

This action checks there are no merge commits in a pull request. A linear history could make it easier to review a pull request.

## Example usage

```yml
- uses: actions/checkout@v2
  with:
    fetch-depth: 0
- uses: greenled/no-merge-commits-check@v1.0.1
```

**Important note**: Make sure you use [actions/checkout@v2](https://github.com/marketplace/actions/checkout) with `fetch-depth=0`.
