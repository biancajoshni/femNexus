import 'package:flutter/material.dart';

class CommunityPage extends StatefulWidget {
  const CommunityPage({super.key});

  @override
  _CommunityPageState createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  final TextEditingController _postController = TextEditingController();
  List<Map<String, String>> _posts = [
    {
      'profilePic': 'https://placehold.co/40x40',
      'username': 'Emma Johnson',
      'timeAgo': '2 hours ago',
      'postText': 'Feeling so grateful for this community! The support here is amazing. 💜 #EmpoweredWomen',
    },
    {
      'profilePic': 'https://placehold.co/40x40',
      'username': 'Sarah Lee',
      'timeAgo': '5 hours ago',
      'postText': 'Anyone else started journaling for self-care? It’s been a game-changer for me! 📖✨',
    },
  ];

  // Function to add a new post
  void _addPost() {
    if (_postController.text.isNotEmpty) {
      setState(() {
        _posts.insert(0, {
          'profilePic': 'https://placehold.co/40x40', // You can update this to fetch real user images
          'username': 'You', // Ideally, get the logged-in username
          'timeAgo': 'Just now',
          'postText': _postController.text,
        });
      });
      _postController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[50], // Soft background
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Header Section
          Container(
            color: Colors.purple[200],
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                Image.asset(
                  'assets/logo.png', // Replace with your actual logo asset
                  height: 80,
                ),
                const SizedBox(height: 10),
                Text(
                  'FemCommunity',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple[900],
                  ),
                ),
                const Text(
                  'A space to share, support, and grow together 💜',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, color: Colors.black54),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // Community Feed Section
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemCount: _posts.length,
              itemBuilder: (context, index) {
                final post = _posts[index];
                return _communityPost(
                  profilePic: post['profilePic']!,
                  username: post['username']!,
                  timeAgo: post['timeAgo']!,
                  postText: post['postText']!,
                );
              },
            ),
          ),

          const SizedBox(height: 10),

          // Post Creation Box
          _postCreationBox(),
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
              controller: _postController,
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
            onPressed: _addPost, // Call _addPost when clicked
            child: const Text("Post", style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
