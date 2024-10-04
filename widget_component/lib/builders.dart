import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';
import 'package:widget_component/src/widget_component_generator.dart';

Builder widgetComponentBuilder(BuilderOptions options) => SharedPartBuilder(
      [WidgetComponentGenerator()],
      'component', // This is the name of the output part file
    );
