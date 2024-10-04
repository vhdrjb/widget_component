part of 'url_generator.dart';

class _FieldGenerator extends SourceGenerator {
  final Iterable<FieldElement> fields;




  @override
  void generate(StringBuffer output) {
    for (var value in fields) {
      _FieldAnnotationGeneratorFactory(element: value).generate(output);
    }
  }

  const _FieldGenerator({
    required this.fields,
  });
}