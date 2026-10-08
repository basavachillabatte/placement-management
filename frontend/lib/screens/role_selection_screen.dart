import 'package:flutter/material.dart';

class RoleSelectionScreen extends StatelessWidget {
  const RoleSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Role'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Who are you?',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 40),

            _roleButton(
              context,
              icon: Icons.school,
              title: 'Student',
            ),

            const SizedBox(height: 20),

            _roleButton(
              context,
              icon: Icons.admin_panel_settings,
              title: 'Admin / TPO',
            ),

            const SizedBox(height: 20),

            _roleButton(
              context,
              icon: Icons.business,
              title: 'Company',
            ),
          ],
        ),
      ),
    );
  }

  Widget _roleButton(
    BuildContext context, {
    required IconData icon,
    required String title,
  }) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton.icon(
        onPressed: () {
          // Navigation will be added later.
        },
        icon: Icon(icon),
        label: Text(title),
      ),
    );
  }
}