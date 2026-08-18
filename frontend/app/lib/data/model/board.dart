class BoardModel {
  final String id;
  final String circleId;
  final String ownerId;
  final String topic;
  final int status;
  final int postCount;

  const BoardModel({
    required this.id,
    required this.circleId,
    required this.ownerId,
    required this.topic,
    required this.status,
    this.postCount = 0,
  });

  BoardModel copyWith({
    String? id,
    String? circleId,
    String? ownerId,
    String? topic,
    int? status,
    int? postCount,
  }) {
    return BoardModel(
      id: id ?? this.id,
      circleId: circleId ?? this.circleId,
      ownerId: ownerId ?? this.ownerId,
      topic: topic ?? this.topic,
      status: status ?? this.status,
      postCount: postCount ?? this.postCount,
    );
  }
}

class PostModel {
  final String id;
  final String boardId;
  final String userId;
  final String content;
  final String createdAt;

  const PostModel({
    required this.id,
    required this.boardId,
    required this.userId,
    required this.content,
    required this.createdAt,
  });
}
