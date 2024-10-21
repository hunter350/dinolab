import 'package:equatable/equatable.dart';

class AuthState extends Equatable {
  final String? email;
  final String? name;
  final String? password;
  const AuthState({this.name, this.email, this.password});

  @override
  List<Object?> get props => [name, email, password];
}

late AuthState authState;
