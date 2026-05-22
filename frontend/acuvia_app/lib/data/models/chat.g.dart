// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatTurn _$ChatTurnFromJson(Map<String, dynamic> json) =>
    _ChatTurn(role: json['role'] as String, content: json['content'] as String);

Map<String, dynamic> _$ChatTurnToJson(_ChatTurn instance) => <String, dynamic>{
  'role': instance.role,
  'content': instance.content,
};

_ChatResponse _$ChatResponseFromJson(Map<String, dynamic> json) =>
    _ChatResponse(
      response: json['response'] as String,
      messages: (json['messages'] as List<dynamic>)
          .map((e) => ChatTurn.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ChatResponseToJson(_ChatResponse instance) =>
    <String, dynamic>{
      'response': instance.response,
      'messages': instance.messages,
    };
