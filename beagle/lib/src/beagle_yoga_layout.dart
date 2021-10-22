/*
 * Copyright 2020 ZUP IT SERVICOS EM TECNOLOGIA E INOVACAO SA
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import 'package:beagle/beagle.dart';
import 'package:flutter/widgets.dart';
import 'package:yoga_engine/yoga_engine.dart';

class BeagleYogaLayout extends YogaLayout {
  BeagleYogaLayout({BeagleStyle? style, List<Widget>? children})
      : super(
          nodeProperties: beagleServiceLocator<BeagleYogaFactory>().createNodeProperties(style),
          children: children?.map(
                (child) {
                  return beagleServiceLocator<BeagleYogaFactory>().createYogaNode(child);
                },
              ).toList() ??
              [],
        );
}
