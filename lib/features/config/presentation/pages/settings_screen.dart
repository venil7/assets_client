import 'package:assets_client/core/services/token_manager_accessor.dart';
import 'package:assets_client/features/config/presentation/widgets/settings_account_tab.dart';
import 'package:assets_client/features/config/presentation/widgets/settings_preferences_tab.dart';
import 'package:assets_client/features/config/presentation/widgets/settings_session_tab.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final loggedIn = tokenManager.isLoggedIn;

    return DefaultTabController(
      length: loggedIn ? 3 : 1,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Settings'),
          elevation: 0,
          bottom: TabBar(
            isScrollable: false,
            tabs: [
              const Tab(icon: Icon(Icons.settings), text: 'Session'),
              if (loggedIn) ...[
                const Tab(icon: Icon(Icons.person), text: 'Account'),
                const Tab(icon: Icon(Icons.tune), text: 'Preferences'),
              ],
            ],
          ),
        ),
        body: TabBarView(
          children: [
            const SettingsSessionTab(),
            if (loggedIn) ...[
              const SettingsAccountTab(),
              const SettingsPreferencesTab(),
            ],
          ],
        ),
      ),
    );
  }
}