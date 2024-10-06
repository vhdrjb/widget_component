import 'source_generator.dart';

class CloseBlockGenerator extends SourceGenerator {
  @override
  void generate(StringBuffer output) {
    output.writeln('}');
  }
}
