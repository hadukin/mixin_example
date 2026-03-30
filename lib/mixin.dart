import 'package:flutter/material.dart';

mixin SupportChatMixin<T extends StatefulWidget> on State<T> {
  String get routeName;

  Widget buildSupportChatButton() {
    return FloatingActionButton(
      onPressed: showSupportChatModal,
      child: Icon(Icons.chat),
    );
  }

  void showSupportChatModal() {
    debugPrint('Chat open from: $routeName');
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: 'Support',
      pageBuilder: (_, _, _) => _buildChatView(),
    );
  }

  @override
  void initState() {
    super.initState();
    debugPrint('Open: $routeName');
  }

  @override
  void dispose() {
    debugPrint('Close: $routeName');
    super.dispose();
  }

  Widget _buildChatView() {
    return AlertDialog(
      title: Text('Supprt chat'),
      actions: [
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Close'),
        ),
      ],
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Text('Chat content')],
      ),
    );
  }
}
