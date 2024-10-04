import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/visitor.dart';

class GeneratorVisitor extends SimpleElementVisitor<void> {
  String className = '';
  Map<String, FieldElement> fields = {};

  @override
  void visitConstructorElement(ConstructorElement element) {
    className = element.displayName;
    super.visitConstructorElement(element);
  }

  @override
  void visitFieldElement(FieldElement element) {
    fields[element.name] = element;
    super.visitFieldElement(element);
  }
}