// To parse this JSON data, do
//
//     final yesNoModel = yesNoModelFromJson(jsonString);

import '../../domain/entities/message.dart';

class YesNoModel {
  final String answer;
  final bool forced;
  final String image;

  YesNoModel({
    required this.answer,
    required this.forced,
    required this.image,
  });

  factory YesNoModel.fromJsonMap(Map<String, dynamic> json) => YesNoModel(
        answer: json["answer"],
        forced: json["forced"],
        image: json["image"],
      );

  Message toMessageEntity() => Message(
        text: answer == 'yes' ? 'Sí' : 'No',
        fromWho: FromWho.other,
        imageUrl: image,
      );

  // Map<String, dynamic> toJson() => {
  //       "answer": answer,
  //       "forced": forced,
  //       "image": image,
  //     };
}
