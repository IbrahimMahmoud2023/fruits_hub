import 'package:fruits_ecommerec/features/auth/data/repo/auth_repo_impl.dart';
import 'package:fruits_ecommerec/features/auth/domain/repo/auth_repo.dart';
import 'package:get_it/get_it.dart';

import 'data_base_services.dart';
import 'firebase_auth_services.dart';
import 'firestore_services.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<FirebaseAuthServices>(FirebaseAuthServices());
  getIt.registerSingleton<DataBaseServices>(FireStoreServices());
  getIt.registerSingleton<AuthRepo>(
    AuthRepoImpl(
      firebaseAuthServices: getIt<FirebaseAuthServices>(),
      dataBaseServices: getIt<DataBaseServices>(),
    ),
  );
}
