///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class GiftModelData {
/*
{
  "user_id": 38,
  "wallet_id": 31,
  "transaction_type": "Gift",
  "transaction_status": "Complete",
  "amount": "1.00",
  "type": "Deposite",
  "status": true,
  "updated_at": "2024-05-27T12:37:16.000000Z",
  "created_at": "2024-05-27T12:37:16.000000Z",
  "id": 1254
} 
*/

  int? userId;
  int? walletId;
  String? transactionType;
  String? transactionStatus;
  String? amount;
  String? type;
  bool? status;
  String? updatedAt;
  String? createdAt;
  int? id;

  GiftModelData({
    this.userId,
    this.walletId,
    this.transactionType,
    this.transactionStatus,
    this.amount,
    this.type,
    this.status,
    this.updatedAt,
    this.createdAt,
    this.id,
  });
  GiftModelData.fromJson(Map<String, dynamic> json) {
    userId = json['user_id']?.toInt();
    walletId = json['wallet_id']?.toInt();
    transactionType = json['transaction_type']?.toString();
    transactionStatus = json['transaction_status']?.toString();
    amount = json['amount']?.toString();
    type = json['type']?.toString();
    status = json['status'];
    updatedAt = json['updated_at']?.toString();
    createdAt = json['created_at']?.toString();
    id = json['id']?.toInt();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['user_id'] = userId;
    data['wallet_id'] = walletId;
    data['transaction_type'] = transactionType;
    data['transaction_status'] = transactionStatus;
    data['amount'] = amount;
    data['type'] = type;
    data['status'] = status;
    data['updated_at'] = updatedAt;
    data['created_at'] = createdAt;
    data['id'] = id;
    return data;
  }
}

class GiftModel {
/*
{
  "success": true,
  "data": {
    "user_id": 38,
    "wallet_id": 31,
    "transaction_type": "Gift",
    "transaction_status": "Complete",
    "amount": "1.00",
    "type": "Deposite",
    "status": true,
    "updated_at": "2024-05-27T12:37:16.000000Z",
    "created_at": "2024-05-27T12:37:16.000000Z",
    "id": 1254
  },
  "message": "Gift added successfully."
} 
*/

  bool? success;
  GiftModelData? data;
  String? message;

  GiftModel({
    this.success,
    this.data,
    this.message,
  });
  GiftModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    data = (json['data'] != null) ? GiftModelData.fromJson(json['data']) : null;
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