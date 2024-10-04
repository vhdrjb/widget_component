import 'package:widget_component/src/generators/annotation/annotation_value.dart';
import 'package:widget_component/src/generators/base/source_generator.dart';

class RebuildGenerator extends SourceGenerator {
  final AnnotationValue values;

  @override
  void generate(StringBuffer output) {
    output.writeln('''
        bool shouldRebuild(previous, current) {
    return current is ${values.state};
  }
      ''');
  }

  const RebuildGenerator({
    required this.values,
  });
}
