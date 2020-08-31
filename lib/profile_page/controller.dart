import 'package:flutter/material.dart';
import 'package:gemastik/anak_page/view.dart';
import 'package:gemastik/profile_page/view.dart';

abstract class ProfileController extends State<ProfileView> {
  navigateToAnak() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AnakView()),
    );
  }
}
