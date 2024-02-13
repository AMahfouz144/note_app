// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  CustomListTile({
    super.key,
    this.onTap,
    this.leading,
    this.title,
    this.subtitle,
    this.trailing,
  });
  Widget? trailing;
  Widget? title;
  Widget? subtitle;
  Widget? leading;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: title,
      subtitle: subtitle,
      leading: leading,
      onTap: onTap,
      trailing: trailing,
    );
  }
}
