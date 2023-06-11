import 'package:flutter/material.dart';
import 'package:yandex_mobile_school_persistence/managers/profiles_manager.dart';
import 'package:yandex_mobile_school_persistence/models/github_profile.dart';

class GithubProfilesList extends StatefulWidget {
  const GithubProfilesList({super.key});

  @override
  State<StatefulWidget> createState() => _GithubProfilesListState();
}

class _GithubProfilesListState extends State<GithubProfilesList> {
  @override
  void initState() {
    super.initState();
    ProfilesManager.init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: const InputDecoration(
            hintText: 'Type github name...',
            hintStyle: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontStyle: FontStyle.italic,
            ),
            border: InputBorder.none,
          ),
          style: const TextStyle(
            color: Colors.white,
          ),
          onSubmitted: (login) {
            ProfilesManager.onSearch(login);
          },
        ),
      ),
      body: StreamBuilder<List<GithubProfile>>(
        stream: ProfilesManager.searchDataStream,
        builder: (context, snapshot) {
          final data = snapshot.data;
          if (data == null || data.isEmpty) {
            return const Center(child: Text("Empty search history"));
          }
          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) => ListTile(
              title: Text(data[index].login),
              onTap: () => ProfilesManager.onOpenFromHistory(
                data[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
