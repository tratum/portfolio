import 'package:flutter/material.dart';

import 'app.functions.dart';

final List<Map<String, String>> devTechStack = [
  {
    'icon': 'https://tratum.github.io/cloud-asset-storage/images/html.webp',
    'url': 'https://developer.mozilla.org/en-US/docs/Web/HTML',
  },
  {
    'icon': 'https://tratum.github.io/cloud-asset-storage/images/css.webp',
    'url': 'https://developer.mozilla.org/en-US/docs/Web/CSS',
  },
  {
    'icon': 'https://tratum.github.io/cloud-asset-storage/images/python.webp',
    'url': 'https://docs.python.org/3/',
  },
  {
    'icon': 'https://tratum.github.io/cloud-asset-storage/images/flutter.webp',
    'url': 'https://docs.flutter.dev/',
  },
  {
    'icon': 'https://tratum.github.io/cloud-asset-storage/images/java.webp',
    'url': 'https://docs.oracle.com/en/java/',
  },
  {
    'icon': 'https://tratum.github.io/cloud-asset-storage/images/rasa.webp',
    'color': '0XFF5a16ee',
    'url': 'https://rasa.com/docs/',
  },
  {
    'icon': 'https://tratum.github.io/cloud-asset-storage/images/mongodb.webp',
    'url': 'https://www.mongodb.com/docs/compass/current/',
  },
  {
    'icon': 'https://tratum.github.io/cloud-asset-storage/images/dart.webp',
    'url': 'https://dart.dev/guides',
  },
];

Widget techStackBuilder(Map<String, String> item) {
  return GestureDetector(
    onTap: () async => WebNavigator.openUrl(url: item['url']!),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        width: 55,
        height: 55,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black,
        ),
        child: Center(
          child: Image.network(
            item['icon']!,
            cacheWidth: 34,
            cacheHeight: 34,
            height: 34,
            width: 34,
          ),
        ),
      ),
    ),
  );
}

class ProjectSkeleton extends StatelessWidget {
  const ProjectSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          color: Colors.black.withOpacity(0.04),
          height: 500,
          width: MediaQuery.of(context).size.width / 2.1,
        ),
        Container(
          color: Colors.black.withOpacity(0.04),
          height: 500,
          width: MediaQuery.of(context).size.width / 2.1,
        ),
      ],
    );
  }
}