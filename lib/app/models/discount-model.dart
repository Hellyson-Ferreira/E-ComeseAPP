import 'dart:convert';

import 'package:flutter/material.dart';

// To parse this JSON data, do
//
//     final discoutModel = discoutModelFromJson(jsonString);

List<DiscoutModel> discoutModelFromJson(String str) => List<DiscoutModel>.from(
    json.decode(str).map((x) => DiscoutModel.fromMap(x)));

String discoutModelToJson(List<DiscoutModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class DiscoutModel {
  final int id;
  final String title;
  final double discout;
  final String circularText;
  final String description;
  final Color color;

  DiscoutModel({
    this.id,
    this.title,
    this.discout,
    this.circularText,
    this.description,
    this.color,
  });

  DiscoutModel copyWith({
    int id,
    String title,
    double discout,
    String circularText,
    String description,
    Color color,
  }) =>
      DiscoutModel(
        id: id ?? this.id,
        title: title ?? this.title,
        discout: discout ?? this.discout,
        circularText: circularText ?? this.circularText,
        description: description ?? this.description,
        color: color ?? this.color,
      );

  factory DiscoutModel.fromMap(Map<String, dynamic> json) => DiscoutModel(
        id: json["id"] == null ? null : json["id"],
        title: json["title"] == null ? null : json["title"],
        discout: json["discout"] == null ? null : json["discout"],
        circularText: json["circularText"] == null
            ? null
            : json["circularText"].toDouble(),
        description:
            json["description"] == null ? null : json["description"].toDouble(),
        color: json["color"] == null ? null : json["color"],
      );

  Map<String, dynamic> toMap() => {
        "id": id == null ? null : id,
        "title": title == null ? null : title,
        "discout": discout == null ? null : discout,
        "circularText": circularText == null ? null : circularText,
        "description": description == null ? null : description,
        "color": color == null ? null : color,
      };
}
