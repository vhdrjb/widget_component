import 'package:widget_component/src/generators/annotation/annotation_value.dart';
import 'package:widget_component/src/generators/base/source_generator.dart';

class BuildMethodGenerator extends SourceGenerator {
  final AnnotationValue values;

  @override
  void generate(StringBuffer output) {
    output.writeln('''
       @override
  Widget build(BuildContext context) {
    onInitialization(context);
    return BlocBuilder<${values.bloc}, ${values.baseState}>(
      bloc: context.read<${values.bloc}>(),
      buildWhen: shouldRebuild,
      builder: _checkRebuild,
    );
  }
      ''');
  }

  const BuildMethodGenerator({
    required this.values,
  });
}
