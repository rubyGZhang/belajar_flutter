import 'package:belajar/HalamanWebview.dart';
import 'package:belajar/Ujian2/ig_home.dart';
import 'package:belajar/halaman_awal.dart';
import 'package:belajar/halaman_dialog.dart';
import 'package:belajar/halaman_gambar.dart';
import 'package:belajar/halaman_layout.dart';
import 'package:belajar/halaman_library.dart';
import 'package:belajar/halaman_navigation.dart';
import 'package:belajar/halaman_profil.dart';
import 'package:belajar/halaman_state.dart';
import 'package:belajar/halaman_textfield.dart';
import 'package:belajar/materi/bottom_nav.dart';
import 'package:belajar/materi/materi_dialog.dart';
import 'package:belajar/materi/materi_textfield.dart';
import 'package:belajar/ujian2/ig_awal.dart';
import 'package:flutter/material.dart';
import 'package:belajar/ujian/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IGHome()
    );
  }
}