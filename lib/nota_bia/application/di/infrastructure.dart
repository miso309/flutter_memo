import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nota_bia/application/interfaces/firebase.dart';
import 'package:nota_bia/application/interfaces/logger.dart';
import 'package:nota_bia/application/config/flavor.dart';
import 'package:nota_bia/application/types/flavor.dart';
import 'package:nota_bia/infrastructure/firebase/fake_firebase.dart';
import 'package:nota_bia/infrastructure/firebase/firebase.dart';
import 'package:nota_bia/infrastructure/log/fake_logger.dart';

/// Firebase
final firebaseProvider = Provider<FirebaseService>((ref) {
  return switch (flavor) {
    Flavor.dev => FakeFirebaseService(),
    Flavor.stg => FakeFirebaseService(),
    Flavor.prd => DefaultFirebaseService(),
  };
});

/// Logger
final loggerProvider = Provider<Logger>((ref) {
  return switch (flavor) {
    Flavor.dev => FakeLogger(),
    Flavor.stg => FakeLogger(),
    Flavor.prd => FakeLogger(),
  };
});