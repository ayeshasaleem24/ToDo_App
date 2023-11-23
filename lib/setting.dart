import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          'Settings',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          _buildSettingsTile(
            context,
            Icons.color_lens,
            'Change app color',
            () => {},
          ),
          _buildSettingsTile(
            context,
            Icons.text_fields,
            'Change app typography',
            () => {},
          ),
          _buildSettingsTile(
            context,
            Icons.language,
            'Import language',
            () => {},
          ),
          _buildSettingsTile(
            context,
            Icons.calendar_today,
            'Import from Google calendar',
            () => {},
          ),
        ],
      ),
    );
  }

  Widget _buildSettingsTile(
    BuildContext context,
    IconData icon,
    String title,
    VoidCallback onTap,
  ) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.white,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: Colors.white,
      ),
      onTap: onTap,
    );
  }
}