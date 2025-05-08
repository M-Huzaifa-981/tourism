import 'package:flutter/widgets.dart';

class ImageCardInfo {
  final String? heading;
  final String image;
  final String? title;
  final String? subtitle;
  final Widget? leading;

  ImageCardInfo({
    this.heading,
    required this.image,
    this.title,
    this.subtitle,
    this.leading,
  });

  // Convert to Map (excluding widgets)
  Map<String, dynamic> toMap() {
    return {'image': image, 'heading': heading, 'title': title, 'subtitle': subtitle};
  }

  // Create from Map
  factory ImageCardInfo.fromMap(Map<String, dynamic> map) {
    return ImageCardInfo(
      image: map['image'] ?? '',
      heading: map['heading'],
      title: map['title'],
      subtitle: map['subtitle'],
      // leading need to be passed manually after this
    );
  }

  // Convert to JSON string (optional, but good for storage/logs)
  String toJson() => toMap().toString();

  // Create from JSON-like map
  factory ImageCardInfo.fromJson(Map<String, dynamic> json) {
    return ImageCardInfo.fromMap(json);
  }

  // Create a copy with optional overrides
  ImageCardInfo copyWith({
    String? heading,
    String? image,
    String? title,
    String? subtitle,
    Widget? leading,
  }) {
    return ImageCardInfo(
      heading: heading ?? this.heading,
      image: image ?? this.image,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      leading: leading ?? this.leading,
    );
  }

  // Equality and hashCode (ignoring widgets)
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ImageCardInfo &&
        other.image == image &&
        other.title == title &&
        other.subtitle == subtitle;
  }

  @override
  int get hashCode => image.hashCode ^ title.hashCode ^ subtitle.hashCode;
}
