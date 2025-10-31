import 'package:flutter/material.dart';
import 'tugas_homePage.dart';
import 'tugas_profilePage.dart';
import 'tugas_galleryPage.dart';

class Routes {
  static const home = '/';
  static const profile = '/profile';
  static const gallery = '/gallery';

  // peta routes siap pakai
  static Map<String, WidgetBuilder> get map => {
    home:    (_) => const TugasHomePage(),
    profile: (_) => const TugasProfilePage(),
    gallery: (_) => const TugasGalleryPage(),
  };
}
