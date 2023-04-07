import 'package:firebase_login/bloc/app_bloc.dart';
import 'package:firebase_login/home/home_page.dart';
import 'package:firebase_login/login/login_page.dart';
import 'package:flutter/widgets.dart';

List<Page<dynamic>> onGenerateAppViewPages(
  AppStatus state,
  List<Page<dynamic>> pages,
) {
  switch (state) {
    case AppStatus.authenticated:
      return [HomePage.page()];
    case AppStatus.unauthenticated:
      return [LoginPage.page()];
  }
}
