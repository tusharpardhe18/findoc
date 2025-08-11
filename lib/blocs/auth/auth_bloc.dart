import 'package:flutter_bloc/flutter_bloc.dart';
import 'auth_event.dart';
import 'auth_state.dart';
import '../../utils/validators.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<LoginSubmitted>(_onLogin);
  }

  Future<void> _onLogin(LoginSubmitted e, Emitter<AuthState> emit) async {
    final email = e.email.trim();
    final pwd = e.password;

    if (!Validators.isValidEmail(email)) {
      emit(AuthFailure('Invalid email format'));
      return;
    }
    if (!Validators.isValidPassword(pwd)) {
      emit(AuthFailure('Password must be 8+ chars and include upper, lower, digit, symbol'));
      return;
    }

    emit(AuthLoading());
    await Future.delayed(const Duration(milliseconds: 500)); // simulate network
    // As assignment says only "on successful login navigate", we'll treat valid credentials as success.
    emit(AuthSuccess());
  }
}
