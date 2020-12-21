import 'package:flutter/material.dart';

class ProfileLinks {
  final String title;
  final Icon icon;
  final dynamic className;

  ProfileLinks({this.title, this.icon, this.className});
}

List<ProfileLinks> profileLink = [
  ProfileLinks(
      title: 'Личный кабинет',
      icon: Icon(Icons.account_circle),
      className: null),
  ProfileLinks(
      title: 'Ваши отклики',
      icon: Icon(Icons.collections_bookmark),
      className: null),
  ProfileLinks(title: 'Вход', icon: Icon(Icons.lock_outline), className: null),
  ProfileLinks(
      title: 'Регистрация', icon: Icon(Icons.lock_open), className: null),
];
