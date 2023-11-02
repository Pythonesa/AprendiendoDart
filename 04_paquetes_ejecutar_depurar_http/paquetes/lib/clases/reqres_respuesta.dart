// To parse this JSON data, do
//
//     final reqResRespuesta = reqResRespuestaFromJson(jsonString);

import 'dart:convert';

Respuesta respuestaFromJson(String str) => Respuesta.fromJson(json.decode(str));

String respuestaToJson(Respuesta data) => json.encode(data.toJson());

class Respuesta {
    int page;
    int perPage;
    int total;
    int totalPages;
    List<Persona> data;
    Support support;

    Respuesta({
        required this.page,
        required this.perPage,
        required this.total,
        required this.totalPages,
        required this.data,
        required this.support,
    });

    factory Respuesta.fromJson(Map<String, dynamic> json) => Respuesta(
        page: json["page"],
        perPage: json["per_page"],
        total: json["total"],
        totalPages: json["total_pages"],
        data: List<Persona>.from(json["data"].map((x) => Persona.fromJson(x))),
        support: Support.fromJson(json["support"]),
    );

    Map<String, dynamic> toJson() => {
        "page": page,
        "per_page": perPage,
        "total": total,
        "total_pages": totalPages,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "support": support.toJson(),
    };
}

class Persona {
    int id;
    String email;
    String firstName;
    String lastName;
    String avatar;

    Persona({
        required this.id,
        required this.email,
        required this.firstName,
        required this.lastName,
        required this.avatar,
    });

    factory Persona.fromJson(Map<String, dynamic> json) => Persona(
        id: json["id"],
        email: json["email"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        avatar: json["avatar"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "first_name": firstName,
        "last_name": lastName,
        "avatar": avatar,
    };
}

class Support {
    String url;
    String text;

    Support({
        required this.url,
        required this.text,
    });

    factory Support.fromJson(Map<String, dynamic> json) => Support(
        url: json["url"],
        text: json["text"],
    );

    Map<String, dynamic> toJson() => {
        "url": url,
        "text": text,
    };
}