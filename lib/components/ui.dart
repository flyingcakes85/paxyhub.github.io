import 'package:flutter/material.dart';
import 'package:paxyhub/components/typography.dart';

class PackageCard extends StatelessWidget {
  final String packageName;
  final String packageDescription;
  // TODO Add option for custom icon

  const PackageCard(
      {Key? key, required this.packageName, required this.packageDescription})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Container(
        width: 250,
        height: 120,
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Padding(
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
                      packageName,
                      style: headlineSecondaryTextStyle,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    packageDescription,
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
    );
  }
}
