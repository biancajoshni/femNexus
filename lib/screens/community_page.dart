import 'package:flutter/material.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], // Light background
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Logo and Title Section
          Container(
            color: Colors.purple[100], // Background for the top section
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                Image.asset(
                  'assets/logo.png', // Replace with your logo asset
                  height: 80,
                ),
                const SizedBox(height: 10),
                Text(
                  'FEMNEXUS',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple[900],
                  ),
                ),
                const Text(
                  'App for Empowering Women Health, Career, and Community',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, color: Colors.black54),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // Community Feed Section
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: [
                _communityPost(
                  profilePic: 'https://placehold.co/40x40',
                  username: 'Emma Johnson',
                  timeAgo: '2 hours ago',
                  postText:
                      'Feeling so grateful for this community! The support here is amazing. 💜 #EmpoweredWomen',
                ),
                _communityPost(
                  profilePic: 'https://placehold.co/40x40',
                  username: 'Sarah Lee',
                  timeAgo: '5 hours ago',
                  postText:
                      'Anyone else started journaling for self-care? It’s been a game-changer for me! 📖✨',
                ),
                _communityPost(
                  profilePic: 'https://placehold.co/40x40',
                  username: 'Olivia Patel',
                  timeAgo: '1 day ago',
                  postText:
                      'Looking for recommendations on women-led businesses to support. Drop your favorites! 💜',
                ),
              ],
            ),
          ),

          const SizedBox(height: 10),

          // Post Creation Box
          _postCreationBox(),

          // Bottom Navigation Bar
          Container(
            color: Colors.purple[300],
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _bottomNavItem('Health', Icons.favorite, Colors.purple[700]),
                _bottomNavItem('Career', Icons.work, Colors.purple[700]),
                _bottomNavItem('Community', Icons.groups, Colors.white, selected: true),
                _bottomNavItem('SOS', Icons.warning, Colors.purple[700]),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Community Post Widget
  Widget _communityPost({
    required String profilePic,
    required String username,
    required String timeAgo,
    required String postText,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
            offset: const Offset(2, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(profilePic),
                radius: 20,
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    username,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    timeAgo,
                    style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(postText),
        ],
      ),
    );
  }

  // Post Creation Box
  Widget _postCreationBox() {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
            offset: const Offset(2, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage('https://placehold.co/40x40'),
            radius: 20,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Write your post here...",
                border: InputBorder.none,
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple[600],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed: () {},
            child: const Text("Post", style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }

  // Bottom Navigation Item
  Widget _bottomNavItem(String label, IconData icon, Color color, {bool selected = false}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: selected ? Colors.white : color, size: 28),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: selected ? Colors.white : color,
          ),
        ),
      ],
    );
  }
}
