import 'package:widget_component/src/generators/annotation/annotation_value.dart';
import 'package:widget_component/src/generators/base/source_generator.dart';

class WidgetGenerator extends SourceGenerator {
  final AnnotationValue values;

  const WidgetGenerator({
    required this.values,
  });

  @override
  void generate(StringBuffer output) {
    output.writeln(
        'Widget _checkRebuild(BuildContext context, ${values.baseState} state) {');
    output.writeln('return switch (state) {');
    output
        .writeln('${values.dataStateClass}() => onDataWidget(context, state),');
    if (values.errorStateClass != null) {
      output.writeln(
          '${values.errorStateClass}() => onErrorWidget(context, state),');
    }
    if (values.loadingStateClass != null) {
      output.writeln(
          '${values.loadingStateClass}() => onLoadingWidget(context, state),');
    }
    output.writeln('_ => onInitWidget(context)');
    output.writeln('''
        };
    }
    ''');

    output.write('''
  Widget onDataWidget(BuildContext context, ${values.dataStateClass} state);

  Widget onErrorWidget(BuildContext context, ${values.errorStateClass} state) {
    return Container();
  }

  Widget onLoadingWidget(BuildContext context, ${values.loadingStateClass} state) {
    return Container();
  }

  Widget onInitWidget(BuildContext context);
    ''');
  }
}
