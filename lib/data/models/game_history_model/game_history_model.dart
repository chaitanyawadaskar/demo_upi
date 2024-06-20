///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class GameHistoryModelDataLinks {
/*
{
  "url": null,
  "label": "&laquo; Previous",
  "active": false
} 
*/

  String? url;
  String? label;
  bool? active;

  GameHistoryModelDataLinks({
    this.url,
    this.label,
    this.active,
  });
  GameHistoryModelDataLinks.fromJson(Map<String, dynamic> json) {
    url = json['url']?.toString();
    label = json['label']?.toString();
    active = json['active'];
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['url'] = url;
    data['label'] = label;
    data['active'] = active;
    return data;
  }
}

class GameHistoryModelDataData {
/*
{
  "id": 1235,
  "period": "0251",
  "color": null,
  "number": null,
  "size": null
} 
*/

  int? id;
  String? period;
  String? color;
  String? number;
  String? size;

  GameHistoryModelDataData({
    this.id,
    this.period,
    this.color,
    this.number,
    this.size,
  });
  GameHistoryModelDataData.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toInt();
    period = json['period']?.toString();
    color = json['color']?.toString();
    number = json['number']?.toString();
    size = json['size']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['period'] = period;
    data['color'] = color;
    data['number'] = number;
    data['size'] = size;
    return data;
  }
}

class GameHistoryModelData {
/*
{
  "current_page": 1,
  "data": [
    {
      "id": 1235,
      "period": "0251",
      "color": null,
      "number": null,
      "size": null
    }
  ],
  "first_page_url": "https://omwinner.profcymabackend.com/public/api/gameHistory?page=1",
  "from": 1,
  "last_page": 43,
  "last_page_url": "https://omwinner.profcymabackend.com/public/api/gameHistory?page=43",
  "links": [
    {
      "url": null,
      "label": "&laquo; Previous",
      "active": false
    }
  ],
  "next_page_url": "https://omwinner.profcymabackend.com/public/api/gameHistory?page=2",
  "path": "https://omwinner.profcymabackend.com/public/api/gameHistory",
  "per_page": 20,
  "prev_page_url": null,
  "to": 20,
  "total": 855
} 
*/

  int? currentPage;
  List<GameHistoryModelDataData?>? data;
  String? firstPageUrl;
  int? from;
  int? lastPage;
  String? lastPageUrl;
  List<GameHistoryModelDataLinks?>? links;
  String? nextPageUrl;
  String? path;
  int? perPage;
  String? prevPageUrl;
  int? to;
  int? total;

  GameHistoryModelData({
    this.currentPage,
    this.data,
    this.firstPageUrl,
    this.from,
    this.lastPage,
    this.lastPageUrl,
    this.links,
    this.nextPageUrl,
    this.path,
    this.perPage,
    this.prevPageUrl,
    this.to,
    this.total,
  });
  GameHistoryModelData.fromJson(Map<String, dynamic> json) {
    currentPage = json['current_page']?.toInt();
    if (json['data'] != null) {
      final v = json['data'];
      final arr0 = <GameHistoryModelDataData>[];
      v.forEach((v) {
        arr0.add(GameHistoryModelDataData.fromJson(v));
      });
      this.data = arr0;
    }
    firstPageUrl = json['first_page_url']?.toString();
    from = json['from']?.toInt();
    lastPage = json['last_page']?.toInt();
    lastPageUrl = json['last_page_url']?.toString();
    if (json['links'] != null) {
      final v = json['links'];
      final arr0 = <GameHistoryModelDataLinks>[];
      v.forEach((v) {
        arr0.add(GameHistoryModelDataLinks.fromJson(v));
      });
      links = arr0;
    }
    nextPageUrl = json['next_page_url']?.toString();
    path = json['path']?.toString();
    perPage = json['per_page']?.toInt();
    prevPageUrl = json['prev_page_url']?.toString();
    to = json['to']?.toInt();
    total = json['total']?.toInt();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['current_page'] = currentPage;
    if (this.data != null) {
      final v = this.data;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data['data'] = arr0;
    }
    data['first_page_url'] = firstPageUrl;
    data['from'] = from;
    data['last_page'] = lastPage;
    data['last_page_url'] = lastPageUrl;
    if (links != null) {
      final v = links;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data['links'] = arr0;
    }
    data['next_page_url'] = nextPageUrl;
    data['path'] = path;
    data['per_page'] = perPage;
    data['prev_page_url'] = prevPageUrl;
    data['to'] = to;
    data['total'] = total;
    return data;
  }
}

class GameHistoryModel {
/*
{
  "success": true,
  "data": {
    "current_page": 1,
    "data": [
      {
        "id": 1235,
        "period": "0251",
        "color": null,
        "number": null,
        "size": null
      }
    ],
    "first_page_url": "https://omwinner.profcymabackend.com/public/api/gameHistory?page=1",
    "from": 1,
    "last_page": 43,
    "last_page_url": "https://omwinner.profcymabackend.com/public/api/gameHistory?page=43",
    "links": [
      {
        "url": null,
        "label": "&laquo; Previous",
        "active": false
      }
    ],
    "next_page_url": "https://omwinner.profcymabackend.com/public/api/gameHistory?page=2",
    "path": "https://omwinner.profcymabackend.com/public/api/gameHistory",
    "per_page": 20,
    "prev_page_url": null,
    "to": 20,
    "total": 855
  },
  "message": "Game History Get successfully."
} 
*/

  bool? success;
  GameHistoryModelData? data;
  String? message;

  GameHistoryModel({
    this.success,
    this.data,
    this.message,
  });
  GameHistoryModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    data = (json['data'] != null)
        ? GameHistoryModelData.fromJson(json['data'])
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