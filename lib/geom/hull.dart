part of d3.geom;

/**
 * Computes the 2D convex hull of a set of points using the monotone chain
 * algorithm:
 * http://en.wikibooks.org/wiki/Algorithm_Implementation/Geometry/Convex_hull/Monotone_chain)
 *
 * The runtime of this algorithm is O(n log n), where n is the number of input
 * points. However in practice it outperforms other O(n log n) hulls.
 *
 * @param vertices [[x1, y1], [x2, y2], ...]
 * @returns polygon [[x1, y1], [x2, y2], ...]
 */
class Hull {
  var x, y;
  var vertices;

  Hull(this.vertices);

  hull(List<num> data) {
    // Hull of < 3 points is not well-defined.
    if (data.length < 3) return [];

    final Function fx = functor(x);
    final Function fy = functor(y);
    int i, n = data.length;
    final List points = []; // of the form [[x0, y0, 0], ..., [xn, yn, n]]
    final List flippedPoints = [];

    for (i = 0 ; i < n; i++) {
      points.add([toDouble(fx(this, data[i], i)), toDouble(fy(this, data[i], i), i]));
    }

    // sort ascending by x-coord first, y-coord second
    points.sort(hullOrder);

    // we flip bottommost points across y axis so we can use the upper hull routine on both
    for (i = 0; i < n; i++) flippedPoints.add([points[i][0], -points[i][1]]);

    var upper = hullUpper(points);
    var lower = hullUpper(flippedPoints);

    // construct the polygon, removing possible duplicate endpoints
    var skipLeft = lower[0] == upper[0],
        skipRight  = lower[lower.length - 1] == upper[upper.length - 1],
        polygon = [];

    // add upper hull in r->l order
    // then add lower hull in l->r order
    for (i = upper.length - 1; i >= 0; --i) {
      polygon.add(data[points[upper[i]][2]]);
    }
    for (i = toDouble(skipLeft); i < lower.length - skipRight; ++i) {
      polygon.add(data[points[lower[i]][2]]);
    }

    return polygon;
  }
}

// Finds the 'upper convex hull' (see wiki link above)
// assumes points arg has >=3 elements, is sorted by x, unique in y
// returns array of indices into points in left to right order.
hullUpper(points) {
  var n = points.length,
      hull = [0, 1],
      hs = 2; // hull size

  for (var i = 2; i < n; i++) {
    while (hs > 1 && cross2d(points[hull[hs-2]], points[hull[hs-1]], points[i]) <= 0) {
      --hs;
    }
    hull[hs++] = i;
  }

  // we slice to make sure that the points we 'popped' from hull don't stay behind
  return hull.slice(0, hs);
}

// Comparator for ascending sort by x-coord first, y-coord second.
hullOrder(a, b) {
  return a[0] - b[0] || a[1] - b[1];
}
