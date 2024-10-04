import 'package:widget_component/src/generators/base/source_generator.dart';

class ConstructorGenerator extends SourceGenerator {
  final String className;

  const ConstructorGenerator({
    required this.className,
  });

  @override
  void generate(StringBuffer output) {
    output.writeln('''
     const  _\$$className({Key? key});
      ''');
  }
}
