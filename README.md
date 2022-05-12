# D3.JS Tooltip

Create Tooltips with D3.JS for your d3-based visualizations charts simple and easy.

## Installation

### Import to HTML

    <script src="https://d3js.org/d3.v5.min.js"></script>
    <script src="https://d3js.org/d3-tooltip.v1.js"></script>

### Install with NPM

```bash
npm install d3-tooltip
```

### How to use

```javascript

var tooltip = d3.tooltip()
  .attr('class', 'tooltip')
  // .html(function(d) { return d; })
  .html(function(d) { return d.name; })

  const svg = d3.select('svg');

  svg.call(tooltip);

  svg.append('rect')
    .attr('width', 100)
    .attr('height', 100)
    .on('mouseover', tooltip.show)
    .on('mouseout', tooltip.hide);

```

## Documentation

Soon...
