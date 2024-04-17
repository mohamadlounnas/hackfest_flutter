// {"data":[{"id":1,"attributes":{"name":"Science Symposium","date":"2024-04-24T08:00:00.000Z","createdAt":"2024-04-16T23:28:40.969Z","updatedAt":"2024-04-17T02:44:36.149Z","publishedAt":"2024-04-16T23:30:41.477Z","description":"Chemistry is the study of matter, its properties, composition, and interactions. It explores the structure of atoms and molecules, the changes they undergo, and the energy involved in these processes. Chemists seek to understand the fundamental nature of substances and how they can be manipulated to create new materials and compounds. This field has led to innovations in areas such as pharmaceuticals, materials science, and environmental protection.","photos":{"data":[{"id":9,"attributes":{"name":"istockphoto-962695586-612x612.jpg","alternativeText":null,"caption":null,"width":612,"height":342,"formats":{"thumbnail":{"name":"thumbnail_istockphoto-962695586-612x612.jpg","hash":"thumbnail_istockphoto_962695586_612x612_2b3f4083ad","ext":".jpg","mime":"image/jpeg","path":null,"width":245,"height":137,"size":8.36,"sizeInBytes":8357,"url":"/uploads/thumbnail_istockphoto_962695586_612x612_2b3f4083ad.jpg"},"small":{"name":"small_istockphoto-962695586-612x612.jpg","hash":"small_istockphoto_962695586_612x612_2b3f4083ad","ext":".jpg","mime":"image/jpeg","path":null,"width":500,"height":279,"size":24.29,"sizeInBytes":24293,"url":"/uploads/small_istockphoto_962695586_612x612_2b3f4083ad.jpg"}},"hash":"istockphoto_962695586_612x612_2b3f4083ad","ext":".jpg","mime":"image/jpeg","size":30.73,"url":"/uploads/istockphoto_962695586_612x612_2b3f4083ad.jpg","previewUrl":null,"provider":"local","provider_metadata":null,"createdAt":"2024-04-16T23:30:34.695Z","updatedAt":"2024-04-16T23:30:34.695Z"}}]}}},{"id":2,"attributes":{"name":" STEM Career Fair","date":"2024-05-22T07:15:00.000Z","createdAt":"2024-04-16T23:32:00.955Z","updatedAt":"2024-04-17T02:45:11.106Z","publishedAt":"2024-04-17T02:45:11.104Z","description":"Physics is the study of matter, energy, space, and time. It seeks to understand the fundamental principles that govern the universe, from the smallest particles to the largest galaxies. Physicists explore concepts such as motion, forces, energy, and the nature of light and sound. This field has led to groundbreaking discoveries, including the theory of relativity and quantum mechanics, and has applications in various fields, from engineering to medicine.","photos":{"data":[{"id":10,"attributes":{"name":"PA021646.jpg","alternativeText":null,"caption":null,"width":1600,"height":1200,"formats":{"thumbnail":{"name":"thumbnail_PA021646.jpg","hash":"thumbnail_PA_021646_a6ad9b7f4f","ext":".jpg","mime":"image/jpeg","path":null,"width":208,"height":156,"size":10.24,"sizeInBytes":10243,"url":"/uploads/thumbnail_PA_021646_a6ad9b7f4f.jpg"},"small":{"name":"small_PA021646.jpg","hash":"small_PA_021646_a6ad9b7f4f","ext":".jpg","mime":"image/jpeg","path":null,"width":500,"height":375,"size":41.76,"sizeInBytes":41759,"url":"/uploads/small_PA_021646_a6ad9b7f4f.jpg"},"large":{"name":"large_PA021646.jpg","hash":"large_PA_021646_a6ad9b7f4f","ext":".jpg","mime":"image/jpeg","path":null,"width":1000,"height":750,"size":119.74,"sizeInBytes":119738,"url":"/uploads/large_PA_021646_a6ad9b7f4f.jpg"},"medium":{"name":"medium_PA021646.jpg","hash":"medium_PA_021646_a6ad9b7f4f","ext":".jpg","mime":"image/jpeg","path":null,"width":750,"height":563,"size":78.39,"sizeInBytes":78394,"url":"/uploads/medium_PA_021646_a6ad9b7f4f.jpg"}},"hash":"PA_021646_a6ad9b7f4f","ext":".jpg","mime":"image/jpeg","size":231.18,"url":"/uploads/PA_021646_a6ad9b7f4f.jpg","previewUrl":null,"provider":"local","provider_metadata":null,"createdAt":"2024-04-16T23:31:58.051Z","updatedAt":"2024-04-16T23:31:58.051Z"}}]}}},{"id":3,"attributes":{"name":" Science Exploration Day","date":"2024-05-28T07:00:00.000Z","createdAt":"2024-04-16T23:33:05.812Z","updatedAt":"2024-04-17T02:44:24.174Z","publishedAt":"2024-04-16T23:33:07.633Z","description":"Biology is the study of living organisms and their interactions with each other and their environments. It encompasses a wide range of topics, including genetics, evolution, ecology, and physiology. Biologists seek to understand the complexity of life, from the molecular mechanisms that drive cellular processes to the ecosystems that sustain biodiversity. This field has revolutionized our understanding of life on Earth and has practical applications in medicine, agriculture, and conservation.","photos":{"data":[{"id":11,"attributes":{"name":"istockphoto-1353874144-612x612.jpg","alternativeText":null,"caption":null,"width":612,"height":346,"formats":{"thumbnail":{"name":"thumbnail_istockphoto-1353874144-612x612.jpg","hash":"thumbnail_istockphoto_1353874144_612x612_21cb2cf597","ext":".jpg","mime":"image/jpeg","path":null,"width":245,"height":139,"size":6.95,"sizeInBytes":6947,"url":"/uploads/thumbnail_istockphoto_1353874144_612x612_21cb2cf597.jpg"},"small":{"name":"small_istockphoto-1353874144-612x612.jpg","hash":"small_istockphoto_1353874144_612x612_21cb2cf597","ext":".jpg","mime":"image/jpeg","path":null,"width":500,"height":283,"size":24.12,"sizeInBytes":24115,"url":"/uploads/small_istockphoto_1353874144_612x612_21cb2cf597.jpg"}},"hash":"istockphoto_1353874144_612x612_21cb2cf597","ext":".jpg","mime":"image/jpeg","size":30.44,"url":"/uploads/istockphoto_1353874144_612x612_21cb2cf597.jpg","previewUrl":null,"provider":"local","provider_metadata":null,"createdAt":"2024-04-16T23:33:02.897Z","updatedAt":"2024-04-16T23:33:02.897Z"}}]}}}],"meta":{"pagination":{"page":1,"pageSize":25,"pageCount":1,"total":3}}}
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hackfest_flutter/features/home/model/model.dart';

part 'event.freezed.dart';
part 'event.g.dart';

@freezed
class Event with _$Event {
  factory Event({
    required int id,
    required EventAttributes attributes,
  }) = _Event;

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
}

@freezed
class EventAttributes with _$EventAttributes {
  factory EventAttributes({
    required String name,
    required String date,
    required String createdAt,
    required String updatedAt,
    required String publishedAt,
    required String description,
    @PhotoModelDataConverter() required ImageModel photo,
  }) = _EventAttributes;

  factory EventAttributes.fromJson(Map<String, dynamic> json) => _$EventAttributesFromJson(json);
}

// just return the "data" key from the json
class ListDataSerializeConverter implements JsonConverter<List<dynamic>, Map<String, dynamic>> {
  const ListDataSerializeConverter();

  @override
  List<dynamic> fromJson(Map<String, dynamic> json) {
    print("--------------------");
    print(json);
    print("--------------------");

    return (json['data'] as List);
  }

  @override
  Map<String, dynamic> toJson(List<dynamic> list) {
    return {
      "data": list.map((e) => e.toJson()).toList(),
    };
  }
}

// single
class SingleDataSerializeConverter implements JsonConverter<dynamic, Map<String, dynamic>> {
  const SingleDataSerializeConverter();

  @override
  List<dynamic> fromJson(Map<String, dynamic> json) {
    print("--------------------");
    print(json);
    print("--------------------");
    return json['data'];
  }

  @override
  Map<String, dynamic> toJson(dynamic object) {
    return {
      "data": object.toJson(),
    };
  }
}

// image serialization
class PhotoModelDataConverter extends JsonConverter<ImageModel, Map<String, dynamic>> {
  const PhotoModelDataConverter();

  @override
  ImageModel fromJson(Map<String, dynamic> json) {
    return ImageModel.fromJson(json['data']);
  }

  @override
  Map<String, dynamic> toJson(ImageModel object) {
    return {
      "data": object.toJson(),
    };
  }
}
