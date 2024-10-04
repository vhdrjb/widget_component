import 'package:widget_component/src/generators/base/source_generator.dart';

class InitMethodGenerator extends SourceGenerator {
  @override
  void generate(StringBuffer output) {
    output.writeln('''
      void onInitialization(BuildContext context) {}
    ''');
  }

}