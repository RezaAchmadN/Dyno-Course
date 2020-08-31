import 'package:flutter/material.dart';
import 'package:gemastik/anak_page/view.dart';

abstract class AnakController extends State<AnakView> {
  navigateToProfilePage() {
    Navigator.pop(context);
  }
}
