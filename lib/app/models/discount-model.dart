import 'dart:convert';

import 'package:flutter/rendering.dart';

List<DiscoutModel> discoutModelFromJson(String str) => List<DiscoutModel>.from(json.decode(str).map((x) => DiscoutModel.fromMap(x)));

String discoutModelToJson(List<DiscoutModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class DiscoutModel {
    final int id;
    final String title;
    final double discout;
    final String circularTex;
    final String description;
    final Color color;
    final String image1;
    final String image2;
    final String image3;

    DiscoutModel({
        this.id,
        this.title,
        this.discout,
        this.circularTex,
        this.description,
        this.color,
        this.image1,
        this.image2,
        this.image3,
    });

    DiscoutModel copyWith({
        int id,
        String title,
        double discout,
        String circularTex,
        String description,
        Color color,
        String image1,
        String image2,
        String image3,
    }) => 
        DiscoutModel(
            id: id ?? this.id,
            title: title ?? this.title,
            discout: discout ?? this.discout,
            circularTex: circularTex ?? this.circularTex,
            description: description ?? this.description,
            color: color ?? this.color,
            image1: image1 ?? this.image1,
            image2: image2 ?? this.image2,
            image3: image3 ?? this.image3,
        );

    factory DiscoutModel.fromMap(Map<String, dynamic> json) => DiscoutModel(
        id: json["id"] == null ? null : json["id"],
        title: json["title"] == null ? null : json["title"],
        discout: json["discout"] == null ? null : json["discout"],
        circularTex: json["circularTex"] == null ? null : json["circularTex"],
        description: json["description"] == null ? null : json["description"],
        color: json["color"] == null ? null : json["color"],
        image1: json["image1"] == null ? null : json["image1"],
        image2: json["image2"] == null ? null : json["image2"],
        image3: json["image3"] == null ? null : json["image3"],
    );

    Map<String, dynamic> toMap() => {
        "id": id == null ? null : id,
        "title": title == null ? null : title,
        "discout": discout == null ? null : discout,
        "circularTex": circularTex == null ? null : circularTex,
        "description": description == null ? null : description,
        "color": color == null ? null : color,
        "image1": image1 == null ? null : image1,
        "image2": image2 == null ? null : image2,
        "image3": image3 == null ? null : image3,
    };
}
