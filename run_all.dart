// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/**
 * This is a helper for run.sh. We try to run all of the Dart code in one
 * instance of the Dart VM to reduce warm-up time.
 */
library suite_impl;

import 'dart:io';
import 'packages/unittest/unittest.dart';
import 'packages/unittest/compact_vm_config.dart';
import 'testing.dart';

import 'suite/css2_1/backgrounds_test.dart' as backgrounds;
import 'suite/css2_1/borders_test.dart' as borders;
import 'suite/css2_1/box_display_test.dart' as box_display;
import 'suite/css2_1/cascade_test.dart' as cascade;
import 'suite/css2_1/colors_test.dart' as colors;
import 'suite/css2_1/css1_test.dart' as css1;
import 'suite/css2_1/floats_clear_test.dart' as floats;
import 'suite/css2_1/fonts_test.dart' as fonts;
import 'suite/css2_1/generated_content_test.dart' as content;
import 'suite/css2_1/linebox_test.dart' as linebox;
import 'suite/css2_1/lists_test.dart' as lists;
import 'suite/css2_1/margin_padding_clear_test.dart' as margin;
import 'suite/css2_1/media_test.dart' as media;
import 'suite/css2_1/normal_flow_test.dart' as normal;
import 'suite/css2_1/other_test.dart' as other;
import 'suite/css2_1/page_box_test.dart' as pageBox;
import 'suite/css2_1/pagination_test.dart' as pagination;
import 'suite/css2_1/positioning_test.dart' as positioning;
import 'suite/css2_1/reference_test.dart' as reference;
import 'suite/css2_1/selectors_test.dart' as selectors;
import 'suite/css2_1/syntax_test.dart' as syntax;
import 'suite/css2_1/tables_test.dart' as tables;
import 'suite/css2_1/text_test.dart' as text;
import 'suite/css2_1/ui_test.dart' as ui;
import 'suite/css2_1/values_test.dart' as values;
import 'suite/css2_1/visufx_test.dart' as visufx;
import 'suite/css2_1/zindex_test.dart' as zindex;
import 'suite/css-style-attr/css_style_attr_test.dart' as styleAttr;
import 'suite/css3-background/css3_background_test.dart' as css3Background;
import 'suite/css3-box/css3_box_test.dart' as css3Box;
import 'suite/css3-color/css3_color_test.dart' as css3Color;
import 'suite/css3-lists/css3_lists_test.dart' as css3Lists;
import 'suite/css3-mediaqueries/css3_mediaqueries_test.dart' as css3MediaQueries;
import 'suite/css3-namespace/css3_namespace_test.dart' as css3Namespace;
import 'suite/css3-page/css3_page_test.dart' as css3Page;
import 'suite/css3-text/css3_text_test.dart' as css3Text;
import 'suite/css3-writing-modes/css3_writing_modes_test.dart' as css3Modes;
import 'suite/selectors3/selectors3_test.dart' as selectors3;
import 'suite/suite_options.dart';

main() {
  options = SuiteOptions.parse(new Options().arguments);
  if (options == null) return;

  // Match name passed or anything if nothing passed.
  var pattern = new RegExp(options.name.length == 0 ? '.' : options.name);

  useCompactVMConfiguration();
  useMockMessages();

  // CSS 2.1 tests:
  if (pattern.hasMatch('backgrounds')) backgrounds.main();
  if (pattern.hasMatch('borders')) borders.main();
  if (pattern.hasMatch('box-display')) box_display.main();
  if (pattern.hasMatch('cascade')) cascade.main();
  if (pattern.hasMatch('colors')) colors.main();
  if (pattern.hasMatch('css1')) css1.main();
  if (pattern.hasMatch('floats-clear')) floats.main();
  if (pattern.hasMatch('fonts')) fonts.main();
  if (pattern.hasMatch('generated-content')) content.main();
  if (pattern.hasMatch('linebox')) linebox.main();
  if (pattern.hasMatch('lists')) lists.main();
  if (pattern.hasMatch('margin')) margin.main();
  if (pattern.hasMatch('media')) media.main();
  if (pattern.hasMatch('normal')) normal.main();
  if (pattern.hasMatch('other')) other.main();
  if (pattern.hasMatch('pagebox')) pageBox.main();
  if (pattern.hasMatch('pagination')) pagination.main();
  if (pattern.hasMatch('positioning')) positioning.main();
  if (pattern.hasMatch('reference')) reference.main();
  if (pattern.hasMatch('selectors')) selectors.main();
  if (pattern.hasMatch('syntax')) syntax.main();
  if (pattern.hasMatch('tables')) tables.main();
  if (pattern.hasMatch('text')) text.main();
  if (pattern.hasMatch('ui')) ui.main();
  if (pattern.hasMatch('values')) values.main();
  if (pattern.hasMatch('visufx')) visufx.main();
  if (pattern.hasMatch('zindex')) zindex.main();

  // CSS Style Attribute Tests:
  if (pattern.hasMatch('style_attr')) styleAttr.main();

  // CSS 3 Background Tests:
  if (pattern.hasMatch('css3_background')) css3Background.main();

  // CSS 3 Box Tests:
  if (pattern.hasMatch('css3_box')) css3Box.main();

  // CSS 3 Color Tests:
  if (pattern.hasMatch('css3_color')) css3Color.main();

  // CSS 3 Lists Tests:
  if (pattern.hasMatch('css3_lists')) css3Lists.main();

  // CSS 3 Lists Tests:
  if (pattern.hasMatch('css3_mediaqueries')) css3MediaQueries.main();

  // CSS 3 Lists Tests:
  if (pattern.hasMatch('css3_namespace')) css3Namespace.main();

  // CSS 3 Page Tests:
  if (pattern.hasMatch('css3_page')) css3Page.main();

  // CSS 3 Text Tests:
  if (pattern.hasMatch('css3_text')) css3Text.main();

  // CSS 3 Writing Modes Tests:
  if (pattern.hasMatch('css3_modes')) css3Modes.main();

  // Selector Tests:
  if (pattern.hasMatch('selectors3')) selectors3.main();
}
