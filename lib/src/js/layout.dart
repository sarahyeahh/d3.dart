library d3.src.js.layout;

import 'dart:js';
import 'd3.dart';

JsObject _layout = context['d3']['layout'];

/// Construct a new default bundle layout.
Bundle bundle() => new Bundle._(_layout.callMethod('bundle'));

class Bundle {
  final JsObject _proxy;

  Bundle._(this._proxy);

  factory Bundle() => bundle();

  /// Apply Holten's hierarchical bundling algorithm to edges.
  call(links) => _proxy.callMethod('call', [_proxy, new JsObject.jsify(links)]);
}

/// Produce a chord diagram from a matrix of relationships.
Chord chord() => new Chord._(_layout.callMethod('chord'));

class Chord {
  final JsObject _proxy;

  Chord._(this._proxy);

  factory Chord() => chord();

  /// Get or set the matrix data backing the layout.
  matrix([/*List<List>*/ matrix = undefined]) {
    var args = [];
    if (matrix != undefined) {
      args.add(new JsObject.jsify(matrix));
    }
    var retval = _proxy.callMethod('matrix', args);
    if (matrix == undefined) {
      return retval;
    } else {
      return new Chord._(retval);
    }
  }

  /// Get or set the angular padding between chord segments.
  padding([/*num*/ padding = undefined]) {
    var args = [];
    if (padding != undefined) {
      args.add(padding);
    }
    var retval = _proxy.callMethod('padding', args);
    if (padding == undefined) {
      return retval;
    } else {
      return new Chord._(retval);
    }
  }

  /// Get or set the comparator function for groups.
  sortGroups([/*Function*/ comparator = undefined]) {
    var args = [];
    if (comparator != undefined) {
      args.add(comparator);
    }
    var retval = _proxy.callMethod('sortGroups', args);
    if (comparator == undefined) {
      return retval;
    } else {
      return new Chord._(retval);
    }
  }

  /// Get or set the comparator function for subgroups.
  sortSubgroups([/*Function*/ comparator = undefined]) {
    var args = [];
    if (comparator != undefined) {
      args.add(comparator);
    }
    var retval = _proxy.callMethod('sortSubgroups', args);
    if (comparator == undefined) {
      return retval;
    } else {
      return new Chord._(retval);
    }
  }

  /// Get or set the comparator function for chords (z-order).
  sortChords([/*Function*/ comparator = undefined]) {
    var args = [];
    if (comparator != undefined) {
      args.add(comparator);
    }
    var retval = _proxy.callMethod('sortChords', args);
    if (comparator == undefined) {
      return retval;
    } else {
      return new Chord._(retval);
    }
  }

  /// Retrieve the computed chord angles.
  chords() => _proxy.callMethod('chords');

  /// Retrieve the computed group angles.
  groups() => _proxy.callMethod('groups');
}

/// Cluster entities into a dendrogram.
Cluster cluster() => new Cluster._(_layout.callMethod('cluster'));

class Cluster {
  final JsObject _proxy;

  Cluster._(this._proxy);

  factory Cluster() => cluster();

  /// Alias for cluster.nodes.
  call(root) => _proxy.callMethod('call', [_proxy, root]);

  /// Compute the cluster layout and return the array of nodes.
  /*List*/ nodes(root) {
    if (root is Map || root is List) {
      root = new JsObject.jsify(root);
    }
    return _proxy.callMethod('nodes', [root]);
  }

  /// Compute the parent-child links between tree nodes.
  /*List*/ links(nodes) {
    if (nodes is Map || nodes is List) {
      nodes = new JsObject.jsify(nodes);
    }
    return _proxy.callMethod('links', [nodes]);
  }

  /// Get or set the accessor function for child nodes.
  children([/*Function*/ children = undefined]) {
    var args = [];
    if (children != undefined) {
      args.add(children);
    }
    var retval = _proxy.callMethod('children', args);
    if (children == undefined) {
      return retval;
    } else {
      return new Cluster._(retval);
    }
  }

  /// Get or set the comparator function for sibling nodes.
  sort([/*Function*/ comparator = undefined]) {
    var args = [];
    if (comparator != undefined) {
      args.add(comparator);
    }
    var retval = _proxy.callMethod('sort', args);
    if (comparator == undefined) {
      return retval;
    } else {
      return new Cluster._(retval);
    }
  }

  /// Get or set the spacing function between neighboring nodes.
  separation([/*Function*/ separation = undefined]) {
    var args = [];
    if (separation != undefined) {
      args.add(separation);
    }
    var retval = _proxy.callMethod('separation', args);
    if (separation == undefined) {
      return retval;
    } else {
      return new Cluster._(retval);
    }
  }

  /// Get or set the layout size in x and y.
  size([/*List*/ size = undefined]) {
    var args = [];
    if (size != undefined) {
      args.add(new JsObject.jsify(size));
    }
    var retval = _proxy.callMethod('size', args);
    if (size == undefined) {
      return retval;
    } else {
      return new Cluster._(retval);
    }
  }

  nodeSize([/*List*/ nodeSize = undefined]) {
    var args = [];
    if (nodeSize != undefined) {
      args.add(new JsObject.jsify(nodeSize));
    }
    var retval = _proxy.callMethod('nodeSize', args);
    if (nodeSize == undefined) {
      return retval;
    } else {
      return new Cluster._(retval);
    }
  }

  /// Specify a fixed size for each node.
  value([/*Function*/ value = undefined]) {
    var args = [];
    if (value != undefined) {
      args.add(func3VarArgs(value));
    }
    var retval = _proxy.callMethod('value', args);
    if (value == undefined) {
      return retval;
    } else {
      return new Cluster._(retval);
    }
  }
}

/// Position linked nodes using physical simulation.
Force force() => new Force._(_layout.callMethod('force'));

class Force {
  final JsObject _proxy;

  Force._(this._proxy);

  factory Force() => force();

  /// Get or set the layout size in x and y.
  size([/*List*/ size = undefined]) {
    var args = [];
    if (size != undefined) {
      args.add(new JsObject.jsify(size));
    }
    var retval = _proxy.callMethod('size', args);
    if (size == undefined) {
      return retval;
    } else {
      return new Force._(retval);
    }
  }

  /// Get or set the link distance.
  linkDistance([distance = undefined]) {
    var args = [];
    if (distance is Function) {
      args.add(func4VarArgs(distance));
    } else if (distance != undefined) {
      args.add(distance);
    }
    var retval = _proxy.callMethod('linkDistance', args);
    if (distance == undefined) {
      return retval;
    } else {
      return new Force._(retval);
    }
  }

  /// Get or set the link strength.
  linkStrength([strength = undefined]) {
    var args = [];
    if (strength is Function) {
      args.add(func4VarArgs(strength));
    } else if (strength != undefined) {
      args.add(strength);
    }
    var retval = _proxy.callMethod('linkStrength', args);
    if (strength == undefined) {
      return retval;
    } else {
      return new Force._(retval);
    }
  }

  /// Get or set the friction coefficient.
  friction([/*num*/ friction = undefined]) {
    var args = [];
    if (friction != undefined) {
      args.add(friction);
    }
    var retval = _proxy.callMethod('friction', args);
    if (friction == undefined) {
      return retval;
    } else {
      return new Force._(retval);
    }
  }

  /// Get or set the charge strength.
  charge([charge = undefined]) {
    var args = [];
    if (charge is Function) {
      args.add(func4VarArgs(charge));
    } else if (charge != undefined) {
      args.add(charge);
    }
    var retval = _proxy.callMethod('charge', args);
    if (charge == undefined) {
      return retval;
    } else {
      return new Force._(retval);
    }
  }

  /// Get or set the maximum charge distance.
  chargeDistance([/*num*/ distance = undefined]) {
    var args = [];
    if (distance != undefined) {
      args.add(distance);
    }
    var retval = _proxy.callMethod('chargeDistance', args);
    if (distance == undefined) {
      return retval;
    } else {
      return new Force._(retval);
    }
  }

  /// Get or set the accuracy of the charge interaction.
  theta([/*num*/ theta = undefined]) {
    var args = [];
    if (theta != undefined) {
      args.add(theta);
    }
    var retval = _proxy.callMethod('theta', args);
    if (theta == undefined) {
      return retval;
    } else {
      return new Force._(retval);
    }
  }

  /// Get or set the gravity strength.
  gravity([/*num*/ gravity = undefined]) {
    var args = [];
    if (gravity != undefined) {
      args.add(gravity);
    }
    var retval = _proxy.callMethod('gravity', args);
    if (gravity == undefined) {
      return retval;
    } else {
      return new Force._(retval);
    }
  }

  /// Get or set the array of nodes to layout.
  nodes([/*List*/ nodes = undefined]) {
    var args = [];
    if (nodes != undefined) {
      args.add(new JsObject.jsify(nodes));
    }
    var retval = _proxy.callMethod('nodes', args);
    if (nodes == undefined) {
      return retval;
    } else {
      return new Force._(retval);
    }
  }

  /// Get or set the array of links between nodes.
  links([/*List*/ links = undefined]) {
    var args = [];
    if (links != undefined) {
      args.add(new JsObject.jsify(links));
    }
    var retval = _proxy.callMethod('links', args);
    if (links == undefined) {
      return retval;
    } else {
      return new Force._(retval);
    }
  }

  /// Start or restart the simulation when the nodes change.
  Force start() => new Force._(_proxy.callMethod('start'));

  /// Get or set the layout's cooling parameter.
  alpha([/*num*/ value = undefined]) {
    var args = [];
    if (value != undefined) {
      args.add(value);
    }
    var retval = _proxy.callMethod('alpha', args);
    if (value == undefined) {
      return retval;
    } else {
      return new Force._(retval);
    }
  }

  /// Reheat the cooling parameter and restart simulation.
  Force resume() => new Force._(_proxy.callMethod('resume'));

  /// Immediately terminate the simulation.
  Force stop() => new Force._(_proxy.callMethod('stop'));

  /// Run the layout simulation one step.
  Force tick() => new Force._(_proxy.callMethod('tick'));

  /// Listen to updates in the computed layout positions.
  Force on(String type, Function listener) {
    return new Force._(_proxy.callMethod('on', [type, listener]));
  }

  /// Bind a behavior to nodes to allow interactive dragging.
  drag() => new Force._(_proxy.callMethod('drag'));
}

/// Derive a custom hierarchical layout implementation.
Hierarchy hierarchy() => new Hierarchy._(_layout.callMethod('hierarchy'));

class Hierarchy {
  final JsObject _proxy;

  Hierarchy._(this._proxy);

  factory Hierarchy() => hierarchy();

  /// Alias for hierarchy.nodes.
  call(root) => _proxy.callMethod('call', [_proxy, root]);

  /// Compute the layout and return the array of nodes.
  List nodes(root) => _proxy.callMethod('nodes', [root]);

  /// Compute the parent-child links between tree nodes.
  List links(nodes) => _proxy.callMethod('links', [nodes]);

  /// Get or set the accessor function for child nodes.
  children([/*Function*/ accessor = undefined]) {
    var args = [];
    if (accessor != undefined) {
      args.add(accessor);
    }
    var retval = _proxy.callMethod('children', args);
    if (accessor == undefined) {
      return retval;
    } else {
      return new Hierarchy._(retval);
    }
  }

  /// Get or set the comparator function for sibling nodes.
  sort([/*Function*/ comparator = undefined]) {
    var args = [];
    if (comparator != undefined) {
      args.add(comparator);
    }
    var retval = _proxy.callMethod('sort', args);
    if (comparator == undefined) {
      return retval;
    } else {
      return new Hierarchy._(retval);
    }
  }

  /// Get or set the value accessor function.
  value([/*Function*/ value = undefined]) {
    var args = [];
    if (value != undefined) {
      args.add(value);
    }
    var retval = _proxy.callMethod('value', args);
    if (value == undefined) {
      return retval;
    } else {
      return new Hierarchy._(retval);
    }
  }

  /// Recompute the hierarchy values.
  revalue(root) => new Hierarchy._(_proxy.callMethod('revalue', [root]));
}

/// Construct a new default histogram layout.
Histogram histogram() => new Histogram._(_layout.callMethod('histogram'));

class Histogram {
  final JsObject _proxy;

  Histogram._(this._proxy);

  factory Histogram() => histogram();

  /// Compute the distribution of data using quantized bins.
  List<List> call(List values, [/*int*/ index = undefined]) {
    var args = [_proxy, new JsObject.jsify(values)];
    if (index != undefined) {
      args.add(index);
    }
    return _proxy.callMethod('call', args);
  }

  /// Get or set the value accessor function.
  value([/*Function*/ accessor = undefined]) {
    var args = [];
    if (accessor != undefined) {
      args.add(accessor);
    }
    var retval = _proxy.callMethod('value', args);
    if (accessor == undefined) {
      return retval;
    } else {
      return new Histogram._(retval);
    }
  }

  /// Get or set the considered value range.
  range([range = undefined]) {
    var args = [];
    if (range is Function) {
      args.add(func4VarArgs(range));
    } else if (range != undefined) {
      args.add(range);
    }
    var retval = _proxy.callMethod('range', args);
    if (range == undefined) {
      return retval;
    } else {
      return new Histogram._(retval);
    }
  }

  /// Specify how values are organized into bins.
  bins([count_thresholds_function = undefined]) {
    var args = [];
    if (count_thresholds_function is List) {
      args.add(new JsObject.jsify(count_thresholds_function));
    } else if (count_thresholds_function != undefined) {
      args.add(count_thresholds_function);
    }
    var retval = _proxy.callMethod('bins', args);
    if (count_thresholds_function == undefined) {
      return retval;
    } else {
      return new Histogram._(retval);
    }
  }

  /// Compute the distribution as counts or probabilities.
  frequency([/*bool*/ frequency = undefined]) {
    var args = [];
    if (frequency != undefined) {
      args.add(frequency);
    }
    var retval = _proxy.callMethod('frequency', args);
    if (frequency == undefined) {
      return retval;
    } else {
      return new Histogram._(retval);
    }
  }
}

/// Produce a hierarchical layout using recursive circle-packing.
Pack pack() => new Pack._(_layout.callMethod('pack'));

class Pack {
  final JsObject _proxy;

  Pack._(this._proxy);

  factory Pack() => pack();

  /// Alias for pack.nodes.
  call(root) => new Pack._(_proxy.callMethod('call', [_proxy, root]));

  /// Compute the pack layout and return the array of nodes.
  List nodes(root) => _proxy.callMethod('nodes', [root]);

  /// Compute the parent-child links between tree nodes.
  List links(nodes) => _proxy.callMethod('links', [nodes]);

  /// Get or set the children accessor function.
  children([/*Function*/ children = undefined]) {
    var args = [];
    if (children != undefined) {
      args.add(children);
    }
    var retval = _proxy.callMethod('children', args);
    if (children == undefined) {
      return retval;
    } else {
      return new Pack._(retval);
    }
  }

  /// Control the order in which sibling nodes are traversed.
  sort([/*Function*/ comparator = undefined]) {
    var args = [];
    if (comparator != undefined) {
      args.add(comparator);
    }
    var retval = _proxy.callMethod('sort', args);
    if (comparator == undefined) {
      return retval;
    } else {
      return new Pack._(retval);
    }
  }

  /// Get or set the value accessor used to size circles.
  value([/*Function*/ value = undefined]) {
    var args = [];
    if (value != undefined) {
      args.add(value);
    }
    var retval = _proxy.callMethod('value', args);
    if (value == undefined) {
      return retval;
    } else {
      return new Pack._(retval);
    }
  }

  /// Specify the layout size in x and y.
  size([/*List*/ size = undefined]) {
    var args = [];
    if (size != undefined) {
      args.add(new JsObject.jsify(size));
    }
    var retval = _proxy.callMethod('size', args);
    if (size == undefined) {
      return retval;
    } else {
      return new Pack._(retval);
    }
  }

  /// Specify the node radius, rather than deriving it from value.
  radius([radius = undefined]) {
    var args = [];
    if (radius != undefined) {
      args.add(radius);
    }
    var retval = _proxy.callMethod('radius', args);
    if (radius == undefined) {
      return retval;
    } else {
      return new Pack._(retval);
    }
  }

  /// Specify the layout padding in (approximate) pixels.
  padding([/*num*/ padding = undefined]) {
    var args = [];
    if (padding != undefined) {
      args.add(padding);
    }
    var retval = _proxy.callMethod('padding', args);
    if (padding == undefined) {
      return retval;
    } else {
      return new Pack._(retval);
    }
  }
}

/// Recursively partition a node tree into a sunburst or icicle.
Partition partition() => new Partition._(_layout.callMethod('partition'));

class Partition {
  final JsObject _proxy;

  Partition._(this._proxy);

  factory Partition() => partition();

  /// Alias for partition.nodes.
  call(root) => _proxy.callMethod('call', [_proxy, root]);

  /// Compute the partition layout and return the array of nodes.
  List nodes(root) => _proxy.callMethod('nodes', [root]);

  /// Compute the parent-child links between tree nodes.
  List links(nodes) => _proxy.callMethod('links', [nodes]);

  /// Get or set the children accessor function.
  children([/*Function*/ children = undefined]) {
    var args = [];
    if (children != undefined) {
      args.add(children);
    }
    var retval = _proxy.callMethod('children', args);
    if (children == undefined) {
      return retval;
    } else {
      return new Partition._(retval);
    }
  }

  /// Control the order in which sibling nodes are traversed.
  sort([/*Function*/ comparator = undefined]) {
    var args = [];
    if (comparator != undefined) {
      args.add(comparator);
    }
    var retval = _proxy.callMethod('sort', args);
    if (comparator == undefined) {
      return retval;
    } else {
      return new Partition._(retval);
    }
  }

  /// Get or set the value accessor used to size circles.
  value([/*Function*/ value = undefined]) {
    var args = [];
    if (value != undefined) {
      args.add(value);
    }
    var retval = _proxy.callMethod('value', args);
    if (value == undefined) {
      return retval;
    } else {
      return new Partition._(retval);
    }
  }

  /// Specify the layout size in x and y.
  size([/*List*/ size = undefined]) {
    var args = [];
    if (size != undefined) {
      args.add(new JsObject.jsify(size));
    }
    var retval = _proxy.callMethod('size', args);
    if (size == undefined) {
      return retval;
    } else {
      return new Partition._(retval);
    }
  }
}

/// Construct a new default pie layout.
Pie pie() => new Pie._(_layout.callMethod('pie'));

class Pie {
  final JsObject _proxy;

  Pie._(this._proxy);

  factory Pie() => pie();

  /// Compute the start and end angles for arcs in a pie or donut chart.
  call(List values, [/*int*/ index = undefined]) {
    var args = [_proxy, new JsObject.jsify(values)];
    if (index != undefined) {
      args.add(index);
    }
    return _proxy.callMethod('call', args);
  }

  /// Get or set the value accessor function.
  value([/*Function*/ accessor = undefined]) {
    var args = [];
    if (accessor != undefined) {
      args.add(accessor);
    }
    var retval = _proxy.callMethod('value', args);
    if (accessor == undefined) {
      return retval;
    } else {
      return new Pie._(retval);
    }
  }

  /// Control the clockwise order of pie slices.
  sort([/*Function*/ comparator = undefined]) {
    var args = [];
    if (comparator != undefined) {
      args.add(comparator);
    }
    var retval = _proxy.callMethod('sort', args);
    if (comparator == undefined) {
      return retval;
    } else {
      return new Pie._(retval);
    }
  }

  /// Get or set the overall start angle of the pie.
  startAngle([angle = undefined]) {
    var args = [];
    if (angle is Function) {
      args.add(func4VarArgs(angle));
    } else if (angle != undefined) {
      args.add(angle);
    }
    var retval = _proxy.callMethod('startAngle', args);
    if (angle == undefined) {
      return retval;
    } else {
      return new Pie._(retval);
    }
  }

  /// Get or set the overall end angle of the pie.
  endAngle([angle = undefined]) {
    var args = [];
    if (angle is Function) {
      args.add(func4VarArgs(angle));
    } else if (angle != undefined) {
      args.add(angle);
    }
    var retval = _proxy.callMethod('endAngle', args);
    if (angle == undefined) {
      return retval;
    } else {
      return new Pie._(retval);
    }
  }

  /// Get or set the pad angle of the pie.
  padAngle([angle = undefined]) {
    var args = [];
    if (angle is Function) {
      args.add(func4VarArgs(angle));
    } else if (angle != undefined) {
      args.add(angle);
    }
    var retval = _proxy.callMethod('padAngle', args);
    if (angle == undefined) {
      return retval;
    } else {
      return new Pie._(retval);
    }
  }
}

/// Construct a new default stack layout.
Stack stack() => new Stack._(_layout.callMethod('stack'));

class Stack {
  final JsObject _proxy;

  Stack._(this._proxy);

  factory Stack() => stack();

  /// Compute the baseline for each series in a stacked bar or area chart.
  call(List layers, [/*int*/ index = undefined]) {
    var args = [_proxy, new JsObject.jsify(layers)];
    if (index != undefined) {
      args.add(index);
    }
    return _proxy.callMethod('call', args);
  }

  /// Get or set the values accessor function per series.
  values([/*Function*/ accessor = undefined]) {
    var args = [];
    if (accessor != undefined) {
      args.add(accessor);
    }
    var retval = _proxy.callMethod('values', args);
    if (accessor == undefined) {
      return retval;
    } else {
      return new Stack._(retval);
    }
  }

  /// Specify the overall baseline algorithm.
  offset([/*String*/ offset = undefined]) {
    var args = [];
    if (offset != undefined) {
      args.add(offset);
    }
    var retval = _proxy.callMethod('offset', args);
    if (offset == undefined) {
      return retval;
    } else {
      return new Stack._(retval);
    }
  }

  /// Control the order in which series are stacked.
  order([/*String*/ order = undefined]) {
    var args = [];
    if (order != undefined) {
      args.add(order);
    }
    var retval = _proxy.callMethod('order', args);
    if (order == undefined) {
      return retval;
    } else {
      return new Stack._(retval);
    }
  }

  /// Get or set the x-dimension accessor function.
  x([/*Function*/ accessor = undefined]) {
    var args = [];
    if (accessor != undefined) {
      args.add(accessor);
    }
    var retval = _proxy.callMethod('x', args);
    if (accessor == undefined) {
      return retval;
    } else {
      return new Stack._(retval);
    }
  }

  /// Get or set the y-dimension accessor function.
  y([/*Function*/ accessor = undefined]) {
    var args = [];
    if (accessor != undefined) {
      args.add(accessor);
    }
    var retval = _proxy.callMethod('y', args);
    if (accessor == undefined) {
      return retval;
    } else {
      return new Stack._(retval);
    }
  }

  /// Get or set the output function for storing the baseline.
  out([/*Function*/ setter = undefined]) {
    var args = [];
    if (setter != undefined) {
      args.add(setter);
    }
    var retval = _proxy.callMethod('out', args);
    if (setter == undefined) {
      return retval;
    } else {
      return new Stack._(retval);
    }
  }
}

/// Position a tree of nodes tidily.
Tree tree() => new Tree._(_layout.callMethod('tree'));

class Tree {
  final JsObject _proxy;

  Tree._(this._proxy);

  factory Tree() => tree();

  /// Alias for tree.nodes.
  call(root) => _proxy.callMethod('call', [_proxy, root]);

  /// Compute the tree layout and return the array of nodes.
  /*List*/ nodes(root) => _proxy.callMethod('nodes', [root]);

  /// Compute the parent-child links between tree nodes.
  /*List*/ links(nodes) => _proxy.callMethod('links', [nodes]);

  /// Get or set the children accessor function.
  children([/*Function*/ children = undefined]) {
    var args = [];
    if (children != undefined) {
      args.add(children);
    }
    var retval = _proxy.callMethod('children', args);
    if (children == undefined) {
      return retval;
    } else {
      return new Tree._(retval);
    }
  }

  /// Get or set the spacing function between neighboring nodes.
  separation([/*Function*/ separation = undefined]) {
    var args = [];
    if (separation != undefined) {
      args.add(separation);
    }
    var retval = _proxy.callMethod('separation', args);
    if (separation == undefined) {
      return retval;
    } else {
      return new Tree._(retval);
    }
  }

  /// Specify the layout size in x and y.
  size([/*List*/ size = undefined]) {
    var args = [];
    if (size != undefined) {
      args.add(new JsObject.jsify(size));
    }
    var retval = _proxy.callMethod('size', args);
    if (size == undefined) {
      return retval;
    } else {
      return new Tree._(retval);
    }
  }

  /// Specify a fixed size for each node.
  nodeSize([/*List*/ nodeSize = undefined]) {
    var args = [];
    if (nodeSize != undefined) {
      args.add(new JsObject.jsify(nodeSize));
    }
    var retval = _proxy.callMethod('nodeSize', args);
    if (nodeSize == undefined) {
      return retval;
    } else {
      return new Tree._(retval);
    }
  }

  /// Control the order in which sibling nodes are traversed.
  sort([/*Function*/ comparator = undefined]) {
    var args = [];
    if (comparator != undefined) {
      args.add(comparator);
    }
    var retval = _proxy.callMethod('sort', args);
    if (comparator == undefined) {
      return retval;
    } else {
      return new Tree._(retval);
    }
  }

  value([/*Function*/ value = undefined]) {
    var args = [];
    if (value != undefined) {
      args.add(value);
    }
    var retval = _proxy.callMethod('value', args);
    if (value == undefined) {
      return retval;
    } else {
      return new Tree._(retval);
    }
  }
}

/// Use recursive spatial subdivision to display a tree of nodes.
Treemap treemap() => new Treemap._(_layout.callMethod('treemap'));

class Treemap {
  final JsObject _proxy;

  Treemap._(this._proxy);

  factory Treemap() => treemap();

  /// Alias for treemap.nodes.
  call(root) => _proxy.callMethod('call', [_proxy, root]);

  /// Compute the treemap layout and return the array of nodes.
  List nodes(root) => _proxy.callMethod('nodes', [root]);

  /// Compute the parent-child links between tree nodes.
  List links(nodes) => _proxy.callMethod('links', [nodes]);

  /// Get or set the children accessor function.
  children([/*Function*/ children = undefined]) {
    var args = [];
    if (children != undefined) {
      args.add(children);
    }
    var retval = _proxy.callMethod('children', args);
    if (children == undefined) {
      return retval;
    } else {
      return new Treemap._(retval);
    }
  }

  /// Control the order in which sibling nodes are traversed.
  sort([/*Function*/ comparator = undefined]) {
    var args = [];
    if (comparator != undefined) {
      args.add(comparator);
    }
    var retval = _proxy.callMethod('sort', args);
    if (comparator == undefined) {
      return retval;
    } else {
      return new Treemap._(retval);
    }
  }

  /// Get or set the value accessor used to size treemap cells.
  value([/*Function*/ value = undefined]) {
    var args = [];
    if (value != undefined) {
      args.add(value);
    }
    var retval = _proxy.callMethod('value', args);
    if (value == undefined) {
      return retval;
    } else {
      return new Treemap._(retval);
    }
  }

  /// Specify the layout size in x and y.
  size([/*List*/ size = undefined]) {
    var args = [];
    if (size != undefined) {
      args.add(new JsObject.jsify(size));
    }
    var retval = _proxy.callMethod('size', args);
    if (size == undefined) {
      return retval;
    } else {
      return new Treemap._(retval);
    }
  }

  /// Specify the padding between a parent and its children.
  padding([padding = undefined]) {
    var args = [];
    if (padding != undefined) {
      args.add(padding);
    }
    var retval = _proxy.callMethod('padding', args);
    if (padding == undefined) {
      return retval;
    } else {
      return new Treemap._(retval);
    }
  }

  /// Enable or disable rounding to exact pixels.
  round([/*bool*/ round = undefined]) {
    var args = [];
    if (round != undefined) {
      args.add(round);
    }
    var retval = _proxy.callMethod('round', args);
    if (round == undefined) {
      return retval;
    } else {
      return new Treemap._(retval);
    }
  }

  /// Make the layout sticky for stable updates.
  sticky([/*bool*/ sticky = undefined]) {
    var args = [];
    if (sticky != undefined) {
      args.add(sticky);
    }
    var retval = _proxy.callMethod('sticky', args);
    if (sticky == undefined) {
      return retval;
    } else {
      return new Treemap._(retval);
    }
  }

  /// Change the treemap layout algorithm.
  mode([/*String*/ mode = undefined]) {
    var args = [];
    if (mode != undefined) {
      args.add(mode);
    }
    var retval = _proxy.callMethod('mode', args);
    if (mode == undefined) {
      return retval;
    } else {
      return new Treemap._(retval);
    }
  }

  ratio([/*num*/ ratio = undefined]) {
    var args = [];
    if (ratio != undefined) {
      args.add(ratio);
    }
    var retval = _proxy.callMethod('ratio', args);
    if (ratio == undefined) {
      return retval;
    } else {
      return new Treemap._(retval);
    }
  }
}
