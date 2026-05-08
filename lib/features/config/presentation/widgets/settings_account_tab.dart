import 'package:assets_client/features/config/presentation/bloc/settings_bloc.dart';
import 'package:assets_client/features/profile/domain/entities/profile_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsAccountTab extends StatefulWidget {
  const SettingsAccountTab({super.key});

  @override
  State<SettingsAccountTab> createState() => _SettingsAccountTabState();
}

class _SettingsAccountTabState extends State<SettingsAccountTab> {
  final _oldPasswordController = TextEditingController();
  final _newPasswordController = TextEditingController();
  final _repeatPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _obscureOld = true;
  bool _obscureNew = true;
  bool _obscureRepeat = true;

  @override
  void initState() {
    super.initState();
    context.read<SettingsBloc>().add(const LoadProfileEvent());
  }

  @override
  void dispose() {
    _oldPasswordController.dispose();
    _newPasswordController.dispose();
    _repeatPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
        return ListView(
          padding: const EdgeInsets.all(16),
          children: [
            // --- Profile Section ---
            const Text(
              'Profile',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 8),
            if (state.isProfileLoading)
              const Center(child: CircularProgressIndicator())
            else
              _ProfileCard(profile: state.profile),
            const SizedBox(height: 24),

            // --- Change Password Section ---
            const Text(
              'Change Password',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 8),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _oldPasswordController,
                    obscureText: _obscureOld,
                    decoration: InputDecoration(
                      labelText: 'Current password',
                      prefixIcon: const Icon(Icons.lock),
                      border: const OutlineInputBorder(),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscureOld
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                        onPressed: () =>
                            setState(() => _obscureOld = !_obscureOld),
                      ),
                    ),
                    validator: (v) =>
                        (v == null || v.isEmpty) ? 'Required' : null,
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    controller: _newPasswordController,
                    obscureText: _obscureNew,
                    decoration: InputDecoration(
                      labelText: 'New password',
                      prefixIcon: const Icon(Icons.lock_outline),
                      border: const OutlineInputBorder(),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscureNew
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                        onPressed: () =>
                            setState(() => _obscureNew = !_obscureNew),
                      ),
                    ),
                    validator: (v) =>
                        (v == null || v.isEmpty) ? 'Required' : null,
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    controller: _repeatPasswordController,
                    obscureText: _obscureRepeat,
                    decoration: InputDecoration(
                      labelText: 'Repeat new password',
                      prefixIcon: const Icon(Icons.lock_outline),
                      border: const OutlineInputBorder(),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscureRepeat
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                        onPressed: () =>
                            setState(() => _obscureRepeat = !_obscureRepeat),
                      ),
                    ),
                    validator: (v) {
                      if (v == null || v.isEmpty) return 'Required';
                      if (v != _newPasswordController.text) {
                        return 'Passwords do not match';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: state.isPasswordChanging
                          ? null
                          : () => _changePassword(context),
                      child: state.isPasswordChanging
                          ? const SizedBox(
                              width: 20,
                              height: 20,
                              child: CircularProgressIndicator(strokeWidth: 2),
                            )
                          : const Text('Change Password'),
                    ),
                  ),
                ],
              ),
            ),

            // --- Messages ---
            if (state.successMessage != null) ...[
              const SizedBox(height: 12),
              Text(
                state.successMessage!,
                style: const TextStyle(color: Colors.green),
              ),
            ],
            if (state.error != null) ...[
              const SizedBox(height: 12),
              Text(
                state.error!,
                style: const TextStyle(color: Colors.red),
              ),
            ],
          ],
        );
      },
    );
  }

  void _changePassword(BuildContext context) {
    if (!_formKey.currentState!.validate()) return;
    context.read<SettingsBloc>().add(
          ChangePasswordEvent(
            oldPassword: _oldPasswordController.text,
            newPassword: _newPasswordController.text,
            repeat: _repeatPasswordController.text,
          ),
        );
  }
}

class _ProfileCard extends StatelessWidget {
  final ProfileEntity? profile;

  const _ProfileCard({this.profile});

  @override
  Widget build(BuildContext context) {
    if (profile == null) {
      return const Card(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Text('Could not load profile'),
        ),
      );
    }
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            const CircleAvatar(
              child: Icon(Icons.person),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    profile!.username,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    profile!.admin ? 'Administrator' : 'User',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              profile!.locked ? Icons.lock : Icons.lock_open,
              color: profile!.locked ? Colors.red : Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
