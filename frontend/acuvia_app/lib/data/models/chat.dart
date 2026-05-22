import 'package:freezed_annotation/freezed_annotation.dart';
part 'chat.freezed.dart';
part 'chat.g.dart';

@freezed
class ChatTurn with _$ChatTurn { // ignore: non_abstract_class_inherits_abstract_member
  const factory ChatTurn({required String role, required String content}) =
      _ChatTurn;

  factory ChatTurn.fromJson(Map<String, dynamic> json) =>
      _$ChatTurnFromJson(json);
}

@freezed
class ChatResponse with _$ChatResponse { // ignore: non_abstract_class_inherits_abstract_member
  const factory ChatResponse({
    required String response,
    required List<ChatTurn> messages,
  }) = _ChatResponse;

  factory ChatResponse.fromJson(Map<String, dynamic> json) =>
      _$ChatResponseFromJson(json);
}
