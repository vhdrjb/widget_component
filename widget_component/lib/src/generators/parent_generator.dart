import 'package:widget_component/src/generators/base/source_generator.dart';

class ParentGenerator extends SourceGenerator {
  @override
  void generate(StringBuffer output) {
    output.write(''' extends StatelessWidget 
      ''');
  }
}
