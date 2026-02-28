import 'package:flutter/material.dart';
import 'package:couldai_user_app/theme/colors.dart';

class ChannelRail extends StatelessWidget {
  const ChannelRail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.backgroundDarker,
      child: Column(
        children: [
          // Server Header
          Container(
            height: 48,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            alignment: Alignment.centerLeft,
            decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: AppColors.backgroundDarkest, width: 1)),
            ),
            child: const Text(
              'Flutter Community',
              style: TextStyle(
                color: AppColors.textPrimary,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          
          // Channel List
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              children: [
                _buildCategory('GENERAL'),
                _buildChannelItem('welcome', type: 'text'),
                _buildChannelItem('announcements', type: 'text'),
                _buildChannelItem('general-chat', type: 'text', isActive: true),
                
                const SizedBox(height: 16),
                _buildCategory('VOICE CHANNELS'),
                _buildChannelItem('Lounge', type: 'audio'),
                _buildChannelItem('Gaming', type: 'audio'),
                _buildChannelItem('Meeting Room', type: 'video'),
              ],
            ),
          ),
          
          // User Control Panel (Bottom)
          Container(
            height: 52,
            color: AppColors.backgroundDarkest,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 16,
                  backgroundColor: AppColors.red,
                  child: Icon(Icons.person, size: 20, color: Colors.white),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'User123',
                        style: TextStyle(
                          color: AppColors.textPrimary,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                      Text(
                        '#9999',
                        style: TextStyle(
                          color: AppColors.textSecondary,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.mic, color: AppColors.textPrimary, size: 20),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.headset, color: AppColors.textPrimary, size: 20),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.settings, color: AppColors.textPrimary, size: 20),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategory(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 4, left: 8),
      child: Text(
        title.toUpperCase(),
        style: const TextStyle(
          color: AppColors.textSecondary,
          fontSize: 11,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildChannelItem(String name, {required String type, bool isActive = false}) {
    IconData icon;
    if (type == 'audio') icon = Icons.volume_up;
    else if (type == 'video') icon = Icons.videocam;
    else icon = Icons.tag; // text

    return Container(
      margin: const EdgeInsets.only(bottom: 2),
      decoration: BoxDecoration(
        color: isActive ? AppColors.channelHover : Colors.transparent,
        borderRadius: BorderRadius.circular(4),
      ),
      child: ListTile(
        dense: true,
        visualDensity: const VisualDensity(vertical: -4),
        contentPadding: const EdgeInsets.symmetric(horizontal: 8),
        leading: Icon(icon, color: AppColors.textSecondary, size: 20),
        title: Text(
          name,
          style: TextStyle(
            color: isActive ? AppColors.textPrimary : AppColors.textSecondary,
            fontWeight: FontWeight.w500,
          ),
        ),
        onTap: () {},
      ),
    );
  }
}
