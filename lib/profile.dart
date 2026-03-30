import 'package:flutter/material.dart';
import 'package:mixin_example/mixin.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView>
    with SupportChatMixin {
  @override
  String get routeName => 'ProfileView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      floatingActionButton: buildSupportChatButton(),
    );
  }
}
