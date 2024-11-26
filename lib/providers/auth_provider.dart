import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/firebase_services.dart';
// import 'auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';

// Provider for AuthService
final authServiceProvider = Provider<AuthService>((ref) => AuthService());

// Provider for User Stream
final authStateProvider = StreamProvider<User?>(
      (ref) => ref.watch(authServiceProvider).authStateChanges(),
);
