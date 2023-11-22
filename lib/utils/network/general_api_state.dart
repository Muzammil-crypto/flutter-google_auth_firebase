import 'package:equatable/equatable.dart';

import '../enums/enums.dart';

class GeneralApiState<T> extends Equatable {
  final T? model;
  final APICallState apiCallState;
  final String? errorMessage;

  const GeneralApiState({
    this.model,
    this.apiCallState = APICallState.initial,
    this.errorMessage,
  });

  GeneralApiState<T> copyWith({
    T? model,
    APICallState? apiCallState,
    String? errorMessage,
  }) {
    return GeneralApiState(
      model: model ?? this.model,
      apiCallState: apiCallState ?? this.apiCallState,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  bool isInitial() => apiCallState == APICallState.initial;

  bool isLoading() => apiCallState == APICallState.loading;

  bool isLoaded() => apiCallState == APICallState.loaded;

  bool isFailure() => apiCallState == APICallState.failure;

  @override
  List<Object?> get props => [model, apiCallState, errorMessage];
}

class CustomException implements Exception {
  final String? _message;
  final String _prefix;

  String get message => _message ?? "Something went wrong!";

  const CustomException(this._message, this._prefix);
  @override
  String toString() {
    return '$_prefix$_message';
  }
}
