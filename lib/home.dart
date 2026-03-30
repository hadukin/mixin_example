import 'package:flutter/material.dart';
import 'package:mixin_example/mixin.dart';
import 'package:mixin_example/profile.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with SupportChatMixin {
  @override
  String get routeName => 'HomeView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: ElevatedButton(
          onPressed: openProfile,
          child: Text('Open profile'),
        ),
      ),
      floatingActionButton: buildSupportChatButton(),
    );
  }

  void openProfile() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return ProfileView();
        },
      ),
    );
  }
}
