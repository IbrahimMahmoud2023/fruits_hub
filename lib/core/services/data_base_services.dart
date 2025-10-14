import '../../features/auth/domain/entites/user_entity.dart';

abstract class DataBaseServices{

  Future<void> addData({ required String path , required Map<String,dynamic> data,String? documentId});
  Future<Map<String,dynamic>> getData({required String path , required String documentId});
}