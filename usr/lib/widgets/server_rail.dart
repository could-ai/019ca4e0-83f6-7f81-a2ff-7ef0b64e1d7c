import 'package:flutter/material.dart';
import 'package:couldai_user_app/theme/colors.dart';

class ServerRail extends StatelessWidget {
  const ServerRail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.backgroundDarkest,
      child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 12),
        children: [
          _buildServerIcon(icon: Icons.discord, isHome: true),
          _buildSeparator(),
          _buildServerIcon(label: 'F'), // Flutter Community
          _buildServerIcon(label: 'G'), // Gaming
          _buildServerIcon(label: 'T'), // Tech Talk
          _buildServerIcon(icon: Icons.add, isAction: true),
        ],
      ),
    );
  }

  Widget _buildSeparator() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Container(
        height: 2,
        color: AppColors.backgroundDark,
      ),
    );
  }

  Widget _buildServerIcon({IconData? icon, String? label, bool isHome = false, bool isAction = false}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          // Active indicator pill (mocked as invisible for now unless active)
          Container(
            width: 4,
            height: 48,
            decoration: BoxDecoration(
              color: isHome ? AppColors.textPrimary : Colors.transparent,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(4),
                bottomRight: Radius.circular(4),
              ),
            ),
          ),
          const SizedBox(width: 8),
          // Icon Circle
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: isHome ? AppColors.blurple : (isAction ? AppColors.backgroundDark : AppColors.backgroundDark),
              borderRadius: BorderRadius.circular(24), // Circle
            ),
            child: Center(
              child: icon != null
                  ? Icon(
                      icon,
                      color: isAction ? AppColors.green : AppColors.textPrimary,
                      size: 28,
                    )
                  : Text(
                      label ?? "?",
                      style: const TextStyle(
                        color: AppColors.textPrimary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
