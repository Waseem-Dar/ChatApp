class MessageModel {
  MessageModel({
    required this.toId,
    required this.msg,
    required this.read,
    required this.type,
    required this.fromId,
    required this.sent,
  });

  late final String toId;
  late final String msg;
  late final String read;
  late final MessageType type;
  late final String fromId;
  late final String sent;

  MessageModel.fromJson(Map<String, dynamic> json) {
    toId = json['toId'].toString();
    msg = json['msg'].toString();
    read = json['read'].toString();
    type = MessageType.values.firstWhere(
          (e) => e.name == json['type'].toString(),
      orElse: () => MessageType.text, // default to text if not found
    );
    fromId = json['fromId'].toString();
    sent = json['sent'].toString();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['toId'] = toId;
    _data['msg'] = msg;
    _data['read'] = read;
    _data['type'] = type.name;
    _data['fromId'] = fromId;
    _data['sent'] = sent;
    return _data;
  }
}

enum MessageType { text, image, location }
