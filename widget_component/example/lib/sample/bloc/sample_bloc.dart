import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:widget_component_annotation/widget_component_annotation.dart';

part 'sample_event.dart';
part 'sample_state.dart';

class SampleBloc extends Bloc<SampleEvent, SampleState> {
  SampleBloc() : super(SampleInitial()) {
    on<SampleEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
