import 'package:widget_component/src/generators/base/source_generator.dart';

class ClassNameGenerator extends SourceGenerator {
  final String className;

  const ClassNameGenerator({
    required this.className,
  });

  @override
  void generate(StringBuffer output) {
    output.write('''
    abstract class _\$$className
    ''');
  }
}