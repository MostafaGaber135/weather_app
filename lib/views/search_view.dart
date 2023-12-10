import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text('Search City'),
      ),
      body:  const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                vertical: 32,
                horizontal: 16,
              ),
              labelText: 'Search',
              suffixIcon: Icon(Icons.search),
              suffixIconColor: Colors.black,
              hintText: 'Enter City Name',
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.green,
                )
              ),
            ),
          ),
        ),
      ),
    );
  }
}