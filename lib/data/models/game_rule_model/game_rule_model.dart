///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class GameRuleModelDataGameRuleLanguage {
/*
{
  "id": 1,
  "game_rule_id": 1,
  "language_id": 1,
  "name": "Select a dealer. Draw cards to select who begins dealing. Highest drawn card gets the honor. Each game round players will take turns being the dealer as this will shift in a clockwise manner.",
  "status": 1,
  "created_at": "09:07:56 am",
  "updated_at": "2024-06-04T10:02:03.000000Z",
  "deleted_at": null
} 
*/

  int? id;
  int? gameRuleId;
  int? languageId;
  String? name;
  int? status;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;

  GameRuleModelDataGameRuleLanguage({
    this.id,
    this.gameRuleId,
    this.languageId,
    this.name,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });
  GameRuleModelDataGameRuleLanguage.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toInt();
    gameRuleId = json['game_rule_id']?.toInt();
    languageId = json['language_id']?.toInt();
    name = json['name']?.toString();
    status = json['status']?.toInt();
    createdAt = json['created_at']?.toString();
    updatedAt = json['updated_at']?.toString();
    deletedAt = json['deleted_at']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['game_rule_id'] = gameRuleId;
    data['language_id'] = languageId;
    data['name'] = name;
    data['status'] = status;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['deleted_at'] = deletedAt;
    return data;
  }
}

class GameRuleModelData {
/*
{
  "id": 1,
  "name": "Select a dealer. Draw cards to select who begins dealing. Highest drawn card gets the honor. Each game round players will take turns being the dealer as this will shift in a clockwise manner.",
  "status": true,
  "created_at": "2024-05-30T09:07:56.000000Z",
  "updated_at": "2024-06-04T10:02:03.000000Z",
  "deleted_at": null,
  "game_rule_language": {
    "id": 1,
    "game_rule_id": 1,
    "language_id": 1,
    "name": "Select a dealer. Draw cards to select who begins dealing. Highest drawn card gets the honor. Each game round players will take turns being the dealer as this will shift in a clockwise manner.",
    "status": 1,
    "created_at": "09:07:56 am",
    "updated_at": "2024-06-04T10:02:03.000000Z",
    "deleted_at": null
  }
} 
*/

  int? id;
  String? name;
  bool? status;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;
  GameRuleModelDataGameRuleLanguage? gameRuleLanguage;

  GameRuleModelData({
    this.id,
    this.name,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.gameRuleLanguage,
  });
  GameRuleModelData.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toInt();
    name = json['name']?.toString();
    status = json['status'];
    createdAt = json['created_at']?.toString();
    updatedAt = json['updated_at']?.toString();
    deletedAt = json['deleted_at']?.toString();
    gameRuleLanguage = (json['game_rule_language'] != null)
        ? GameRuleModelDataGameRuleLanguage.fromJson(json['game_rule_language'])
        : null;
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['status'] = status;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['deleted_at'] = deletedAt;
    if (gameRuleLanguage != null) {
      data['game_rule_language'] = gameRuleLanguage!.toJson();
    }
    return data;
  }
}

class GameRuleModel {
/*
{
  "success": true,
  "data": [
    {
      "id": 1,
      "name": "Select a dealer. Draw cards to select who begins dealing. Highest drawn card gets the honor. Each game round players will take turns being the dealer as this will shift in a clockwise manner.",
      "status": true,
      "created_at": "2024-05-30T09:07:56.000000Z",
      "updated_at": "2024-06-04T10:02:03.000000Z",
      "deleted_at": null,
      "game_rule_language": {
        "id": 1,
        "game_rule_id": 1,
        "language_id": 1,
        "name": "Select a dealer. Draw cards to select who begins dealing. Highest drawn card gets the honor. Each game round players will take turns being the dealer as this will shift in a clockwise manner.",
        "status": 1,
        "created_at": "09:07:56 am",
        "updated_at": "2024-06-04T10:02:03.000000Z",
        "deleted_at": null
      }
    }
  ],
  "message": "How To Play Get successfully."
} 
*/

  bool? success;
  List<GameRuleModelData?>? data;
  String? message;

  GameRuleModel({
    this.success,
    this.data,
    this.message,
  });
  GameRuleModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    if (json['data'] != null) {
      final v = json['data'];
      final arr0 = <GameRuleModelData>[];
      v.forEach((v) {
        arr0.add(GameRuleModelData.fromJson(v));
      });
      this.data = arr0;
    }
    message = json['message']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['success'] = success;
    if (this.data != null) {
      final v = this.data;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data['data'] = arr0;
    }
    data['message'] = message;
    return data;
  }
}
