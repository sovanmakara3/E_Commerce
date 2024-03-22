// To parse this JSON data, do
//
//     final products = productsFromJson(jsonString);

import 'dart:convert';

Products productsFromJson(String str) => Products.fromJson(json.decode(str));

String productsToJson(Products data) => json.encode(data.toJson());

class DatumAttributes {
  String? title;
  DateTime? createdAt;
  DateTime? updatedAt;
  DateTime? publishedAt;
  String? price;
  String? rating;
  String? description;
  String? quantity;
  Products? category;
  Products? thumbnail;

  DatumAttributes({
    this.title,
    this.createdAt,
    this.updatedAt,
    this.publishedAt,
    this.price,
    this.rating,
    this.description,
    this.quantity,
    this.category,
    this.thumbnail,
  });

  factory DatumAttributes.fromJson(Map<String, dynamic> json) =>
      DatumAttributes(
        title: json["title"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        publishedAt: json["publishedAt"] == null
            ? null
            : DateTime.parse(json["publishedAt"]),
        price: json["price"],
        rating: json["rating"],
        description: json["description"],
        quantity: json["quantity"],
        category: json["category"] == null
            ? null
            : Products.fromJson(json["category"]),
        thumbnail: json["thumbnail"] == null
            ? null
            : Products.fromJson(json["thumbnail"]),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "publishedAt": publishedAt?.toIso8601String(),
        "price": price,
        "rating": rating,
        "description": description,
        "quantity": quantity,
        "category": category?.toJson(),
        "thumbnail": thumbnail?.toJson(),
      };
}

class Datum {
  int? id;
  DatumAttributes? attributes;

  Datum({
    this.id,
    this.attributes,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        attributes: json["attributes"] == null
            ? null
            : DatumAttributes.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes?.toJson(),
      };
}

class Products {
  dynamic data;

  Products({
    this.data,
  });

  factory Products.fromJson(Map<String, dynamic> json) => Products(
        data: json["data"],
      );

  Map<String, dynamic> toJson() => {
        "data": data,
      };
}

class DataClass {
  int? id;
  DataAttributes? attributes;

  DataClass({
    this.id,
    this.attributes,
  });

  factory DataClass.fromJson(Map<String, dynamic> json) => DataClass(
        id: json["id"],
        attributes: json["attributes"] == null
            ? null
            : DataAttributes.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes?.toJson(),
      };
}

class DataAttributes {
  String? name;
  dynamic alternativeText;
  dynamic caption;
  int? width;
  int? height;
  Formats? formats;
  String? hash;
  String? ext;
  String? mime;
  double? size;
  String? url;
  dynamic previewUrl;
  String? provider;
  dynamic providerMetadata;
  DateTime? createdAt;
  DateTime? updatedAt;

  DataAttributes({
    this.name,
    this.alternativeText,
    this.caption,
    this.width,
    this.height,
    this.formats,
    this.hash,
    this.ext,
    this.mime,
    this.size,
    this.url,
    this.previewUrl,
    this.provider,
    this.providerMetadata,
    this.createdAt,
    this.updatedAt,
  });

  factory DataAttributes.fromJson(Map<String, dynamic> json) => DataAttributes(
        name: json["name"],
        alternativeText: json["alternativeText"],
        caption: json["caption"],
        width: json["width"],
        height: json["height"],
        formats:
            json["formats"] == null ? null : Formats.fromJson(json["formats"]),
        hash: json["hash"],
        ext: json["ext"],
        mime: json["mime"],
        size: json["size"]?.toDouble(),
        url: json["url"],
        previewUrl: json["previewUrl"],
        provider: json["provider"],
        providerMetadata: json["provider_metadata"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "alternativeText": alternativeText,
        "caption": caption,
        "width": width,
        "height": height,
        "formats": formats?.toJson(),
        "hash": hash,
        "ext": ext,
        "mime": mime,
        "size": size,
        "url": url,
        "previewUrl": previewUrl,
        "provider": provider,
        "provider_metadata": providerMetadata,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
      };
}

class Formats {
  Medium? small;
  Medium? thumbnail;
  Medium? medium;

  Formats({
    this.small,
    this.thumbnail,
    this.medium,
  });

  factory Formats.fromJson(Map<String, dynamic> json) => Formats(
        small: json["small"] == null ? null : Medium.fromJson(json["small"]),
        thumbnail: json["thumbnail"] == null
            ? null
            : Medium.fromJson(json["thumbnail"]),
        medium: json["medium"] == null ? null : Medium.fromJson(json["medium"]),
      );

  Map<String, dynamic> toJson() => {
        "small": small?.toJson(),
        "thumbnail": thumbnail?.toJson(),
        "medium": medium?.toJson(),
      };
}

class Medium {
  String? ext;
  String? url;
  String? hash;
  String? mime;
  String? name;
  dynamic path;
  double? size;
  int? width;
  int? height;

  Medium({
    this.ext,
    this.url,
    this.hash,
    this.mime,
    this.name,
    this.path,
    this.size,
    this.width,
    this.height,
  });

  factory Medium.fromJson(Map<String, dynamic> json) => Medium(
        ext: json["ext"],
        url: json["url"],
        hash: json["hash"],
        mime: json["mime"],
        name: json["name"],
        path: json["path"],
        size: json["size"]?.toDouble(),
        width: json["width"],
        height: json["height"],
      );

  Map<String, dynamic> toJson() => {
        "ext": ext,
        "url": url,
        "hash": hash,
        "mime": mime,
        "name": name,
        "path": path,
        "size": size,
        "width": width,
        "height": height,
      };
}
