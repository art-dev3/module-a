import 'package:flutter/material.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const Center(
        child: UserProfileWidget(
          name: 'AJ',
          email: 'art.villapana@asianlink.ai',
          avatarUrl: 'https://randomuser.me/api/portraits/men/75.jpg',
        ),
      ),
    );
  }
}

class UserProfileWidget extends StatelessWidget {
  final String name;
  final String email;
  final String avatarUrl;

  const UserProfileWidget({
    super.key,
    required this.name,
    required this.email,
    required this.avatarUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      color: Colors.deepPurple[50],
      child: Container(
        width: 320,
        height: 200,
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            CircleAvatar(radius: 40, backgroundImage: NetworkImage(avatarUrl)),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    name,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(email, style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
