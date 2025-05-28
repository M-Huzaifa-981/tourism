import 'package:flutter/material.dart';

import '../utils/customWidgets/cards/gallery_card.dart';

class CustomersGallery extends StatelessWidget {
  CustomersGallery({super.key});

  final List<Map<String, dynamic>> galleries = [
    {"title": "The Modern Honolulu", "subtitle": "Hawaii", "items": 3},
    {"title": "Waikiki Parc Hotel", "subtitle": "Hawaii", "items": 2},
    {"title": "Halekulani", "subtitle": "Hawaii", "items": 4},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.grey.withValues(alpha: 0.1),
        // centerTitle: true,
        title: Text("Gallery"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 22),
              child: Text(
                "Customer's Gallery",
                style: TextStyle(
                  color: Theme.of(context).cardColor,
                  fontSize: 33,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

            Expanded(
              child: ListView.separated(
                itemCount: galleries.length,

                separatorBuilder: (_, __) => const Divider(),
                itemBuilder: (context, index) {
                  final gallery = galleries[index];
                  return galleryCard(
                    title: gallery['title'],
                    subtitle: gallery['subtitle'],
                    items: gallery['items'],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
