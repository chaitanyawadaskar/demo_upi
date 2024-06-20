///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class GameModelData {
/*
{
  "user_id": 38,
  "bet_id": 808,
  "period": "9271",
  "amount": "50",
  "status": true,
  "updated_at": "2024-05-24T06:32:27.000000Z",
  "created_at": "2024-05-24T06:32:27.000000Z",
  "id": 367
} 
*/

  int? userId;
  int? betId;
  String? period;
  String? amount;
  bool? status;
  String? updatedAt;
  String? createdAt;
  int? id;

  GameModelData({
    this.userId,
    this.betId,
    this.period,
    this.amount,
    this.status,
    this.updatedAt,
    this.createdAt,
    this.id,
  });
  GameModelData.fromJson(Map<String, dynamic> json) {
    userId = json['user_id']?.toInt();
    betId = json['bet_id']?.toInt();
    period = json['period']?.toString();
    amount = json['amount']?.toString();
    status = json['status'];
    updatedAt = json['updated_at']?.toString();
    createdAt = json['created_at']?.toString();
    id = json['id']?.toInt();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['user_id'] = userId;
    data['bet_id'] = betId;
    data['period'] = period;
    data['amount'] = amount;
    data['status'] = status;
    data['updated_at'] = updatedAt;
    data['created_at'] = createdAt;
    data['id'] = id;
    return data;
  }
}

class GameModel {
/*
{
  "success": true,
  "data": {
    "user_id": 38,
    "bet_id": 808,
    "period": "9271",
    "amount": "50",
    "status": true,
    "updated_at": "2024-05-24T06:32:27.000000Z",
    "created_at": "2024-05-24T06:32:27.000000Z",
    "id": 367
  },
  "message": "Game added successfully."
} 
*/

  bool? success;
  GameModelData? data;
  String? message;

  GameModel({
    this.success,
    this.data,
    this.message,
  });
  GameModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    data = (json['data'] != null) ? GameModelData.fromJson(json['data']) : null;
    message = json['message']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['success'] = success;
    if (data != null) {
      data['data'] = this.data!.toJson();
    }
    data['message'] = message;
    return data;
  }
}