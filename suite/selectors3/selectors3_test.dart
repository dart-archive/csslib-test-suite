// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library selectors3_test;

import '../suite_files.dart';

// TODO(terry): More tests skipped because of encoding need to be enabled.
//              Also, some esoteric CSS 3 selector syntax not implemented yet.
var _ExeceptionMatches = {
  'css3-modsel-100.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-100b.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-101.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-101b.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-102.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-102b.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-103.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-103b.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-104.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-104b.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-105.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-105b.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-106.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-106b.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-107.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-107b.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-108.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-108b.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-109.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-109b.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-110.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-110b.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-111.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-111b.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-112.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-112b.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-113.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-113b.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-114.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-114b.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-115.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-115b.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-116.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-116b.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-117.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-117b.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-118.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-119.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-120.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-121.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-122.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-123.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-123b.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-124.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-124b.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-125.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-125b.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-126.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-126b.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-127.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-127b.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-128.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-128b.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-129.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-129b.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-130.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-130b.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-131.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-131b.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-132.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-132b.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-133.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-133b.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-134.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-134b.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-135.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-135b.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-136.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-136b.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-137.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-137b.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-138.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-138b.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-139.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-139b.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-140.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-140b.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-141.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-141b.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-142.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-142b.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-143.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-143b.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-144.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-145a.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-145b.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-146a.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-146b.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-147a.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-147b.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-14d.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-14e.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-154.xml' :                           // No , selector.
    'p { background: lime; } p { background: red; }',
  'css3-modsel-155.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-155a.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-155b.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-155d.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-156.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-156b.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-156c.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-157.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-158.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-169a.xml' : replaceQuotes,
  'css3-modsel-170.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-170c.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-172a.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-172b.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-173a.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-173b.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-174a.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-174b.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-175a.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-175b.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-175c.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-176.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-178.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-182.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-183.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-184d.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-184e.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-184f.xml' : SKIP_TEST,               // TODO(terry): Enable.
  'css3-modsel-22.xml' : SKIP_TEST,                 // TODO(terry): Enable.
  'css3-modsel-27a.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-28.xml' : SKIP_TEST,                 // TODO(terry): Enable.
  'css3-modsel-28b.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-29.xml' : SKIP_TEST,                 // TODO(terry): Enable.
  'css3-modsel-29b.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-31.xml' : SKIP_TEST,                 // TODO(terry): Enable.
  'css3-modsel-32.xml' : SKIP_TEST,                 // TODO(terry): Enable.
  'css3-modsel-33.xml' : SKIP_TEST,                 // TODO(terry): Enable.
  'css3-modsel-34.xml' : SKIP_TEST,                 // TODO(terry): Enable.
  'css3-modsel-35.xml' : SKIP_TEST,                 // TODO(terry): Enable.
  'css3-modsel-36.xml' : SKIP_TEST,                 // TODO(terry): Enable.
  'css3-modsel-37.xml' : SKIP_TEST,                 // TODO(terry): Enable.
  'css3-modsel-39a.xml' : replaceQuotes,
  'css3-modsel-39c.xml' :    replaceQuotes,
  'css3-modsel-30.xml' : SKIP_TEST,                 // TODO(terry): Enable.
  'css3-modsel-43.xml' : SKIP_TEST,                 // TODO(terry): Enable.
  'css3-modsel-44.xml' : SKIP_TEST,                 // TODO(terry): Enable.
  'css3-modsel-45.xml' : SKIP_TEST,                 // TODO(terry): Enable.
  'css3-modsel-46.xml' : SKIP_TEST,                 // TODO(terry): Enable.
  'css3-modsel-46b.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-47.xml' : SKIP_TEST,                 // TODO(terry): Enable.
  'css3-modsel-48.xml' : SKIP_TEST,                 // TODO(terry): Enable.
  'css3-modsel-49.xml' : SKIP_TEST,                 // TODO(terry): Enable.
  'css3-modsel-50.xml' : SKIP_TEST,                 // TODO(terry): Enable.
  'css3-modsel-51.xml' : SKIP_TEST,                 // TODO(terry): Enable.
  'css3-modsel-52.xml' : SKIP_TEST,                 // TODO(terry): Enable.
  'css3-modsel-53.xml' : SKIP_TEST,                 // TODO(terry): Enable.
  'css3-modsel-54.xml' : SKIP_TEST,                 // TODO(terry): Enable.
  'css3-modsel-55.xml' : SKIP_TEST,                 // TODO(terry): Enable.
  'css3-modsel-56.xml' : SKIP_TEST,                 // TODO(terry): Enable.
  'css3-modsel-57.xml' : SKIP_TEST,                 // TODO(terry): Enable.
  'css3-modsel-57b.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-59.xml' : SKIP_TEST,                 // TODO(terry): Enable.
  'css3-modsel-60.xml' : SKIP_TEST,                 // TODO(terry): Enable.
  'css3-modsel-61.xml' : SKIP_TEST,                 // TODO(terry): Enable.
  'css3-modsel-62.xml' : SKIP_TEST,                 // TODO(terry): Enable.
  'css3-modsel-63.xml' : SKIP_TEST,                 // TODO(terry): Enable.
  'css3-modsel-64.xml' : SKIP_TEST,                 // TODO(terry): Enable.
  'css3-modsel-65.xml' : SKIP_TEST,                 // TODO(terry): Enable.
  'css3-modsel-66.xml' : SKIP_TEST,                 // TODO(terry): Enable.
  'css3-modsel-66b.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-67.xml' : SKIP_TEST,                 // TODO(terry): Enable.
  'css3-modsel-68.xml' : SKIP_TEST,                 // TODO(terry): Enable.
  'css3-modsel-69.xml' : SKIP_TEST,                 // TODO(terry): Enable.
  'css3-modsel-70.xml' : SKIP_TEST,                 // TODO(terry): Enable.
  'css3-modsel-72.xml' : SKIP_TEST,                 // TODO(terry): Enable.
  'css3-modsel-72b.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-73.xml' : SKIP_TEST,                 // TODO(terry): Enable.
  'css3-modsel-73b.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-74.xml' : SKIP_TEST,                 // TODO(terry): Enable.
  'css3-modsel-74b.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-75.xml' : SKIP_TEST,                 // TODO(terry): Enable.
  'css3-modsel-75b.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-76.xml' : SKIP_TEST,                 // TODO(terry): Enable.
  'css3-modsel-76b.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-77.xml' : SKIP_TEST,                 // TODO(terry): Enable.
  'css3-modsel-77b.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-78.xml' : SKIP_TEST,                 // TODO(terry): Enable.
  'css3-modsel-78b.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-79.xml' : SKIP_TEST,                 // TODO(terry): Enable.
  'css3-modsel-8.xml' : SKIP_TEST,                  // TODO(terry): Enable.
  'css3-modsel-80.xml' : SKIP_TEST,                 // TODO(terry): Enable.
  'css3-modsel-81.xml' : SKIP_TEST,                 // TODO(terry): Enable.
  'css3-modsel-81b.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-82.xml' : SKIP_TEST,                 // TODO(terry): Enable.
  'css3-modsel-82b.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-83.xml' : SKIP_TEST,                 // TODO(terry): Enable.
  'css3-modsel-96b.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-97.xml' : SKIP_TEST,                 // TODO(terry): Enable.
  'css3-modsel-97b.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-98.xml' : SKIP_TEST,                 // TODO(terry): Enable.
  'css3-modsel-98b.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-99.xml' : SKIP_TEST,                 // TODO(terry): Enable.
  'css3-modsel-99b.xml' : SKIP_TEST,                // TODO(terry): Enable.
  'css3-modsel-d1.xml' : SKIP_TEST,                 // TODO(terry): Enable.
  'css3-modsel-d3.xml' : SKIP_TEST,                 // TODO(terry): Enable.
};

main() {
  var suite = new Suite('selectors3/src');
  suite.processTests(_ExeceptionMatches);
}