import 'package:annelik/widget/profil_and_notification_bar/profile_image.dart';
import 'package:annelik/widget/profil_and_notification_bar/user_find.dart';
import 'package:annelik/widget/profil_and_notification_bar/user_name_text.dart';
import 'package:annelik/widget/profil_and_notification_bar/user_notification.dart';
import 'package:flutter/material.dart';

class ProfilAndNotificationBar extends StatelessWidget {
  const ProfilAndNotificationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                ProfileImage(),
                UserNameText(),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                UserFind(),
                UserNotification(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
