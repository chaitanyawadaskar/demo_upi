class ProfileGetModelData {
/*
{
  "id": 6,
  "name": null,
  "udi": "45718329",
  "email": null,
  "mobile_number": "8080156839",
  "image": null,
  "created_at": "2024-05-10T04:57:39.000000Z"
} 
*/

  int? id;
  String? name;
  String? udi;
  String? email;
  String? mobileNumber;
  String? image;
  String? createdAt;

  ProfileGetModelData({
    this.id,
    this.name,
    this.udi,
    this.email,
    this.mobileNumber,
    this.image,
    this.createdAt,
  });
  ProfileGetModelData.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toInt();
    name = json['name']?.toString();
    udi = json['udi']?.toString();
    email = json['email']?.toString();
    mobileNumber = json['mobile_number']?.toString();
    image = json['image']?.toString();
    createdAt = json['created_at']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['udi'] = udi;
    data['email'] = email;
    data['mobile_number'] = mobileNumber;
    data['image'] = image;
    data['created_at'] = createdAt;
    return data;
  }
}

class ProfileGetModel {
/*
{
  "success": true,
  "data": {
    "id": 6,
    "name": null,
    "udi": "45718329",
    "email": null,
    "mobile_number": "8080156839",
    "image": null,
    "created_at": "2024-05-10T04:57:39.000000Z"
  },
  "message": "Profile Get successfully."
} 
*/

  bool? success;
  ProfileGetModelData? data;
  String? message;

  ProfileGetModel({
    this.success,
    this.data,
    this.message,
  });
  ProfileGetModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    data = (json['data'] != null)
        ? ProfileGetModelData.fromJson(json['data'])
        : null;
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
