import 'package:flutter/material.dart';

class ExpansionDetailsModel {
  bool isExpanded;
  final ExpHeader header;
  final String body;
  ExpansionDetailsModel({
    required this.header,
    required this.body,
    this.isExpanded = false,
  });
}

class ExpHeader {
  final IconData iconName;
  final String title;
  ExpHeader({
    required this.iconName,
    required this.title,
  });
}
