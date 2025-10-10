import 'package:firebase_auth/firebase_auth.dart';

import '../errors/execption.dart';

class FirebaseAuthServices {
  Future<User> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw CustomException(message: 'كلمة المرور ضعيفة جدًا.');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(
          message: 'هذا البريد الإلكتروني مستخدم بالفعل.',
        );
      } else {
        throw CustomException(message: 'حدث خطأ، من فضلك حاول مرة أخرى.');
      }
    } catch (e) {
      throw CustomException(message: 'حدث خطأ، من فضلك حاول مرة أخرى.');
    }
  }
}
