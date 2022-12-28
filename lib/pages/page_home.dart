import 'dart:math';

import 'package:flutter/material.dart';
import 'package:paxyhub/components/components.dart';

const searchLabel = "Search for Packages";
const searchInputHint = "Enter a package name";
const featuredText = "Featured packages";

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                children: <Widget>[
                  const MenuBar(),
                  const SizedBox(height: 30),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: marginBottom12,
                      child: SelectableText(
                        searchLabel,
                        style: headlineTextStyle,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: marginBottom12,
                      // TODO Do we need hardcoded value?
                      width: min(600, MediaQuery.of(context).size.width),
                      child: Row(
                        children: <Widget>[
                          const Flexible(
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: searchInputHint,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: onSearchButtonPressed,
                            icon: const Icon(Icons.search),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  divider,
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: marginBottom12,
                      child: SelectableText(
                        featuredText,
                        style: headlineTextStyle,
                      ),
                    ),
                  ),
                  const Footer(),
                ],
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }

  void onSearchButtonPressed() {}
}
