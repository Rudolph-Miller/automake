# automake-cookbook
[![Build Status](https://circleci.com/gh/Rudolph-Miller/automake.svg?style=shield)](https://circleci.com/gh/Rudolph-Miller/automake)

TODO: Enter the cookbook description here.

## Supported Platforms

TODO: List your supported platforms.

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['automake']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### automake::default

Include `automake` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[automake::default]"
  ]
}
```

## License and Authors

Author:: Rudolph Miller (<chopsticks.tk.ppfm@gmail.com>)
