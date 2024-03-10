/*
import 'package:cervicoguide/core/resources/colors.dart';
import 'package:cervicoguide/features/profile/views/components/statement_bar.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {super.key,
      required this.title,
      this.backNavigation = false,
      this.icon,
      this.white = false});
  final String title;
  final bool backNavigation;
  final Widget? icon;
  final bool white;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorManager.primaryColor,
      automaticallyImplyLeading: backNavigation,
      leading: icon,
      title: StatementBar(
        statement: title,
        isWhite: white,
        // isNotProfile: backNavigation,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
*/
