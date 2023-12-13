// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firestore_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FirestoreUserImpl _$$FirestoreUserImplFromJson(Map<String, dynamic> json) =>
    _$FirestoreUserImpl(
      createdAt: json['createdAt'],
      userName: json['userName'] as String,
      email: json['email'] as String,
      uid: json['uid'] as String,
      updatedAt: json['updatedAt'],
    );

Map<String, dynamic> _$$FirestoreUserImplToJson(_$FirestoreUserImpl instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt,
      'userName': instance.userName,
      'email': instance.email,
      'uid': instance.uid,
      'updatedAt': instance.updatedAt,
    };
