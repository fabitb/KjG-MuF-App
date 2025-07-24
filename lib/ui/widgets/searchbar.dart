import 'package:flutter/material.dart';
import 'package:kjg_muf_app/l10n/l10n_extension.dart';

class Searchbar extends StatelessWidget {
  final Function(String) onSearchString;

  const Searchbar({
    super.key,
    required this.onSearchString,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        onChanged: (value) => onSearchString(value),
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
          fillColor: Colors.grey.shade100,
          filled: true,
          hintText: context.localizations.search,
          // fix for text misalignment
          prefixIconConstraints: BoxConstraints(minWidth: 48),
          prefixIcon: const Icon(Icons.search),
        ),
      ),
    );
  }
}
