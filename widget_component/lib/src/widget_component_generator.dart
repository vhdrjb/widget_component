import 'dart:async';

import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';
import 'package:widget_component/src/generators/annotation/annotation_value.dart';
import 'package:widget_component/src/generators/annotation/annotation_value_reader.dart';
import 'package:widget_component/src/generators/base/source_generator.dart';
import 'package:widget_component/src/generators/build_method_generator.dart';
import 'package:widget_component/src/generators/class_name_generator.dart';
import 'package:widget_component/src/generators/constructor_generator.dart';
import 'package:widget_component/src/generators/import_generator.dart';
import 'package:widget_component/src/generators/init_method_generator.dart';
import 'package:widget_component/src/generators/parent_generator.dart';
import 'package:widget_component/src/generators/rebuild_generator.dart';
import 'package:widget_component_annotation/widget_component_annotation.dart';

import 'generators/base/close_block_generator.dart';
import 'generators/base/generator_visitor.dart';
import 'generators/base/start_block_generator.dart';
import 'generators/widget_generator.dart';

class WidgetComponentGenerator extends GeneratorForAnnotation<WidgetComponent> {
  @override
  FutureOr<String> generateForAnnotatedElement(
      Element element, ConstantReader annotation, BuildStep buildStep) {
    final StringBuffer output = StringBuffer();
    final GeneratorVisitor visitor = GeneratorVisitor();
    element.visitChildren(visitor);
    final AnnotationValue values =
        AnnotationValueReader(annotation: annotation).read();
    Iterable<SourceGenerator> generators = [
      ImportGenerator(),
      ClassNameGenerator(className: visitor.className),
      ParentGenerator(),
      StartBlockGenerator(), // -
      ConstructorGenerator(className: visitor.className),
      InitMethodGenerator(),
      BuildMethodGenerator(values: values),
      WidgetGenerator(values: values),
      RebuildGenerator(values: values),
      CloseBlockGenerator(), // -
    ];

    for (var e in generators) {
      e.generate(output);
    }
    return output.toString();
  }
}
