import 'package:flutter_bloc_sample/entity/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'qiita_item.freezed.dart';
// part 'qiita_item.g.dart'; toJsonやfromJsonを簡単に生やしいてくれる

@freezed
abstract class QiitaItem implements _$QiitaItem {
  const QiitaItem._();

  const factory QiitaItem(
      {required String title,
      required String id,
      required String url,
      required User user}) = _QiitaItem;

  int get intId => getStringToInt(id);

  int getStringToInt(String id) {
    return int.parse(id);
  }
}
