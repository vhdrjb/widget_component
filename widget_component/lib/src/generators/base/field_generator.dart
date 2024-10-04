import 'source_generator.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:build/src/builder/build_step.dart';
class _FieldGenerator extends SourceGenerator {
  final Iterable<FieldElement> fields;




  @override
  void generate(StringBuffer output) {
    for (var value in fields) {
    }
  }

  const _FieldGenerator({
    required this.fields,
  });
}