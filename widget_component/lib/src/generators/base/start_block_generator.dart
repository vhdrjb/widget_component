import 'source_generator.dart';

class StartBlockGenerator extends SourceGenerator {
  @override
  void generate(StringBuffer output) {
    output.write('{');
  }

}