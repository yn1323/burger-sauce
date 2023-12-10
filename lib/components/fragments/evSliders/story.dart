import 'package:burger_sauce/components/fragments/EvSliders/ev_sliders.dart';
import 'package:burger_sauce/models/status.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

final evSlidersStory = Story(
  name: 'components/fragments/evSliders',
  builder: (context) => EvSliders(
    status: Status(
      statusH: 100,
      statusA: 100,
      statusB: 100,
      statusC: 100,
      statusD: 100,
      statusS: 100,
    ),
    onChange: ({required type, required value}) {},
  ),
);
