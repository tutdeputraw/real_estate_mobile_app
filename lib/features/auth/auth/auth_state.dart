// ignore_for_file: constant_identifier_names

import 'package:equatable/equatable.dart';
import 'package:real_estate_mobile_app/models/user/user_record_model.dart';

enum AppType { INITIAL, UNAUTHENTICATED, LOAD, AUTHENTICATED }

class AuthState extends Equatable {
  final UserRecord? user;
  final AppType appStatus;

  const AuthState({this.user, this.appStatus = AppType.INITIAL});

  AuthState copyWith({
    UserRecord? user,
    AppType? appStatus,
  }) {
    return AuthState(
      user: user ?? this.user,
      appStatus: appStatus ?? this.appStatus,
    );
  }

  @override
  List<Object?> get props => [user, appStatus];
}
