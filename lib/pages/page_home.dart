import 'dart:math';

import 'package:flutter/material.dart';
import 'package:paxyhub/components/components.dart';

const searchLabel = "Search for Packages";
const searchInputHint = "Enter a package name";
const featuredText = "Featured packages";
const popularText = "Popular packages";
const recentText = "Recently updated packages";

// dummy data
var listPackagesTitle = List<String>.generate(10, (i) => 'Package $i');
var listPackagesInfo = List<String>.generate(10, (i) => 'Info for package $i');

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
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Card(
                        elevation: 3,
                        child: Container(
                          width: 250,
                          height: 120,
                          padding: EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(12.0),
                                child: Icon(Icons.archive),
                              ),
                              Flexible(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: SelectableText(
                                        "Package 1",
                                        style: headlineSecondaryTextStyle,
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      "This is a package description. This package helps you get your work done.",
                                      overflow: TextOverflow.clip,
                                      maxLines: 3,
                                      style: subtitleTextStyle,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  divider,
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: marginBottom12,
                      child: SelectableText(
                        popularText,
                        style: headlineTextStyle,
                      ),
                    ),
                  ),
                  divider,
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: marginBottom12,
                      child: SelectableText(
                        recentText,
                        style: headlineTextStyle,
                      ),
                    ),
                  ),
                  divider,
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
