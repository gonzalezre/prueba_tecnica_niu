import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({
    super.key, 
    required this.title,
    this.onSearch,
    required this.showSearch,
  });

  final String title;
  final ValueChanged<String>? onSearch;
  final bool showSearch;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blueGrey,
      title: Text(title, style: const TextStyle(color: Colors.white)),
      bottom: showSearch ? PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: Container(
          color: Colors.blueGrey,
          padding: const EdgeInsets.all(10),
          child: TextField(
            onChanged: onSearch,
            decoration: InputDecoration(
              hintText: 'Buscar $title',
              prefixIcon: Icon(Icons.search),
              filled: true,
              fillColor: Colors.blueGrey[200],
              hintStyle: const TextStyle(color: Colors.black),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
      ) : null,
    );
  }
}
