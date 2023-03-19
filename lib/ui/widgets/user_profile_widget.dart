import 'package:flutter/material.dart';

class UserProfileWidget extends StatelessWidget {
  const UserProfileWidget({
    Key? key, required this.profileBackground, required this.iconBackground,
  }) : super(key: key);

  final Color profileBackground, iconBackground;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(child: Icon(Icons.person),backgroundColor: iconBackground),
      tileColor: profileBackground,
      title: Text('User Name'),
      subtitle: Text('useremail@gmail.com'),
      contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 0
      ),
    );
  }
}