///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class BannerModelData {
/*
{
  "id": 1,
  "name": "first",
  "image": "public/admin/home/104joyful-player-celebrates-victory-winning-space-shooter-online-video-game-powerful-personal-computer.png",
  "status": true,
  "created_at": "2024-04-30T07:22:46.000000Z",
  "updated_at": "2024-04-30T09:40:07.000000Z",
  "deleted_at": null
} 
*/

  int? id;
  String? name;
  String? image;
  bool? status;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;

  BannerModelData({
    this.id,
    this.name,
    this.image,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });
  BannerModelData.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toInt();
    name = json['name']?.toString();
    image = json['image']?.toString();
    status = json['status'];
    createdAt = json['created_at']?.toString();
    updatedAt = json['updated_at']?.toString();
    deletedAt = json['deleted_at']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['image'] = image;
    data['status'] = status;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['deleted_at'] = deletedAt;
    return data;
  }
}

class BannerModel {
/*
{
  "success": true,
  "data": [
    {
      "id": 1,
      "name": "first",
      "image": "public/admin/home/104joyful-player-celebrates-victory-winning-space-shooter-online-video-game-powerful-personal-computer.png",
      "status": true,
      "created_at": "2024-04-30T07:22:46.000000Z",
      "updated_at": "2024-04-30T09:40:07.000000Z",
      "deleted_at": null
    }
  ],
  "message": "Banner Get successfully."
} 
*/

  bool? success;
  List<BannerModelData?>? data;
  String? message;

  BannerModel({
    this.success,
    this.data,
    this.message,
  });
  BannerModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    if (json['data'] != null) {
      final v = json['data'];
      final arr0 = <BannerModelData>[];
      v.forEach((v) {
        arr0.add(BannerModelData.fromJson(v));
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
