import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User implements _$User {
  const User._();
  const factory User({
    @JsonKey(name: "profile_image_url") required String thumbnailUrl,
  }) = _User;

  @override
  // TODO: implement copyWith
  $UserCopyWith<User> get copyWith => throw UnimplementedError();

  @override
  String get thumbnailUrl => this.thumbnailUrl;
}
