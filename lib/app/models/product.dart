import 'dart:convert';

List<ProductModel> productModelFromJson(String str) => List<ProductModel>.from(json.decode(str).map((x) => ProductModel.fromMap(x)));

String productModelToJson(List<ProductModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class ProductModel {
    final int id;
    final String title;
    final String picture;
    final double price;
    final String per;

    ProductModel({
        this.id,
        this.title,
        this.picture,
        this.price,
        this.per,
    });

    ProductModel copyWith({
        int id,
        String title,
        String picture,
        double price,
        String per,
    }) => 
        ProductModel(
            id: id ?? this.id,
            title: title ?? this.title,
            picture: picture ?? this.picture,
            price: price ?? this.price,
            per: per ?? this.per,
        );

    factory ProductModel.fromMap(Map<String, dynamic> json) => ProductModel(
        id: json["id"] == null ? null : json["id"],
        title: json["title"] == null ? null : json["title"],
        picture: json["picture"] == null ? null : json["picture"],
        price: json["price"] == null ? null : json["price"].toDouble(),
        per: json["per"] == null ? null : json["per"],
    );

    Map<String, dynamic> toMap() => {
        "id": id == null ? null : id,
        "title": title == null ? null : title,
        "picture": picture == null ? null : picture,
        "price": price == null ? null : price,
        "per": per == null ? null : per,
    };
}
