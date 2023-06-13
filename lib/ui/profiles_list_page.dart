import 'package:flutter/material.dart';

import '../managers/profiles_manager.dart';

class GithubProfilesList extends StatefulWidget {
  const GithubProfilesList({super.key});

  @override
  State<StatefulWidget> createState() => _GithubProfilesListState();
}

class _GithubProfilesListState extends State<GithubProfilesList>
    with RestorationMixin {
  final _profiles = ProfilesListRestorationProperty();
  final _textEditingController = RestorableTextEditingController();

  @override
  Widget build(BuildContext context) {
    final profiles = _profiles.value;
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: _textEditingController.value,
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
            setState(() {
              _profiles.value = [..._profiles.value, login];
            });
            ProfilesManager.onSearch(login);
          },
        ),
      ),
      body: profiles.isEmpty
          ? const Center(child: Text("Empty search history"))
          : ListView.builder(
              itemCount: _profiles.value.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(_profiles.value[index]),
                onTap: () => ProfilesManager.onSearch(
                  _profiles.value[index],
                ),
              ),
            ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _profiles.dispose();
  }

  @override
  String? get restorationId => 'profiles_list_restoration_id';

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_profiles, 'profiles_list');
    registerForRestoration(_textEditingController, "text_controller");
  }
}

class ProfilesListRestorationProperty extends RestorableValue<List<String>> {
  ProfilesListRestorationProperty() : super();

  @override
  List<String> createDefaultValue() => [];

  @override
  List<String> fromPrimitives(Object? data) =>
      (data as List).map((e) => e as String).toList();

  @override
  Object? toPrimitives() => value;

  @override
  void didUpdateValue(List<String>? oldValue) {
    notifyListeners();
  }
}
