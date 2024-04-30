import "package:flutter/material.dart";
import "package:kushi_3/components/notificationitem.dart";
import "package:kushi_3/model/notificationdata.dart";

class AllFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2, // Example: You can replace this with the actual number of notifications
      itemBuilder: (context, index) {
        final notification = NotificationData(
          title: 'Notification $index',
          message: 'This is notification number $index',
          time: DateTime.now(), // Replace it with actual time
        );
        return NotificationItem(
          title: notification.title,
          message: notification.message,
          time: notification.time,
        );
      },
    );
  }
}