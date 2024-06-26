///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class WinningInfoModelDataUser {
/*
{
  "id": 5,
  "name": "Saurabh",
  "image": "admin/home/profile/2167photo_6158825073893555977_y.jpg"
} 
*/

  int? id;
  String? name;
  String? image;

  WinningInfoModelDataUser({
    this.id,
    this.name,
    this.image,
  });
  WinningInfoModelDataUser.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toInt();
    name = json['name']?.toString();
    image = json['image']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['image'] = image;
    return data;
  }
}

class WinningInfoModelData {
/*
{
  "id": 1,
  "user_id": 5,
  "profit": "0.00",
  "created_at": "2024-05-10T15:50:07.000000Z",
  "user": {
    "id": 5,
    "name": "Saurabh",
    "image": "admin/home/profile/2167photo_6158825073893555977_y.jpg"
  }
} 
*/

  int? id;
  int? userId;
  String? profit;
  String? createdAt;
  WinningInfoModelDataUser? user;

  WinningInfoModelData({
    this.id,
    this.userId,
    this.profit,
    this.createdAt,
    this.user,
  });
  WinningInfoModelData.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toInt();
    userId = json['user_id']?.toInt();
    profit = json['profit']?.toString();
    createdAt = json['created_at']?.toString();
    user = (json['user'] != null)
        ? WinningInfoModelDataUser.fromJson(json['user'])
        : null;
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['user_id'] = userId;
    data['profit'] = profit;
    data['created_at'] = createdAt;
    if (user != null) {
      data['user'] = user!.toJson();
    }
    return data;
  }
}

class WinningInfoModel {
/*
{
  "success": true,
  "data": [
    {
      "id": 1,
      "user_id": 5,
      "profit": "0.00",
      "created_at": "2024-05-10T15:50:07.000000Z",
      "user": {
        "id": 5,
        "name": "Saurabh",
        "image": "admin/home/profile/2167photo_6158825073893555977_y.jpg"
      }
    }
  ],
  "message": "winning Information Get successfully."
} 
*/

  bool? success;
  List<WinningInfoModelData?>? data;
  String? message;

  WinningInfoModel({
    this.success,
    this.data,
    this.message,
  });
  WinningInfoModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    if (json['data'] != null) {
      final v = json['data'];
      final arr0 = <WinningInfoModelData>[];
      v.forEach((v) {
        arr0.add(WinningInfoModelData.fromJson(v));
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
