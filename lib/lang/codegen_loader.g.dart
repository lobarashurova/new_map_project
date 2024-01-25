// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> eng = {
  "language": "Choose a language",
  "uzbek": "uzbek",
  "english": "english",
  "russian": "russian",
  "register": "Sign up",
  "firstname": "Fist Name",
  "lastname": "Last Name",
  "phone": "Phone number",
  "password": "Password",
  "conPas": "Confirm Password",
  "ads": "New ads",
  "title": "Title",
  "description": "Description"
};
static const Map<String,dynamic> ru = {
  "language": "Выберите язык",
  "uzbek": "узбекский",
  "english": "английский",
  "russian": "русский",
  "register": "Зарегистрироваться",
  "firstname": "Имя",
  "lastname": "Фамилия",
  "phone": "Номер телефона",
  "password": "пароль",
  "conPas": "Confirm Password",
  "ads": "New ads",
  "title": "Title",
  "description": "Description"
};
static const Map<String,dynamic> uz = {
  "language": "Tilni tanlang",
  "uzbek": "O'zbek tili",
  "english": "Ingliz tili",
  "russian": "Rus tili",
  "register": "Registratsiya",
  "firstname": "Ism",
  "lastname": "Familiya",
  "phone": "Telefon raqam",
  "password": "Parol",
  "conPas": "Parolni qaytaring",
  "ads": "Yangi ads",
  "title": "Hoshiya",
  "description": "Tavsif"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"eng": eng, "ru": ru, "uz": uz};
}
