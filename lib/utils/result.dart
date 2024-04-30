import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

class NotDataException implements Exception {}

class NoExceptionFoundException implements Exception {}

class InternetConnectionException implements Exception {}

class UnknownException implements Exception {}

@freezed
class Result<S extends Object, F extends Exception> with _$Result<S, F> {
  const Result._();

  const factory Result.failure({required F error}) = Failure<S, F>;

  const factory Result.success({required S data}) = Success<S, F>;

  bool get isSuccess => when(
        failure: (_) => false,
        success: (_) => true,
      );

  bool get isFail => !isSuccess;

  S get data {
    return when(
      failure: (error) => throw NotDataException(),
      success: (data) => data,
    );
  }

  F get fail {
    return when(
      failure: (error) => error,
      success: (data) => throw NoExceptionFoundException(),
    );
  }
}

extension ResultValidator on List<Result<Object, Exception>> {
  bool get allSuccess => every((result) => result.isSuccess);
  bool get someFail => !allSuccess;
}

final class Unit {
  const Unit._();
}

extension IntUtils on int {
  bool isSuccessCode() => this >= 200 && this < 300;

  bool isFailCode() => !isSuccessCode();
}

const unit = Unit._();
