

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../generated/assets.dart';

Widget galleryCard({required String title, required String subtitle ,required int items}){
  bool tByt = items==2 || items == 4;
  return Column(
    children: [
      StaggeredGrid.count(
        crossAxisCount: tByt ? 2 : 3, // no of columns in row
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,

        children: List.generate(items, (index) {
          int cross = tByt ? 1 : (index==0 ? 2 : 1);
          int main =  tByt ? 1 : (index==0 ? 2 : 1);

          return StaggeredGridTile.count(
            crossAxisCellCount: cross, // spans columns
            mainAxisCellCount: main, // spans rows
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.primaries[index % Colors.primaries.length],
                  borderRadius: BorderRadius.circular(0),
                  image: DecorationImage(
                      image: AssetImage(Assets.images[index]),
                      fit: BoxFit.cover
                  )
              ),
            ),
          );
        }),
      ),

      ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(title, style:  TextStyle(fontWeight: FontWeight.bold),),
        subtitle: Text(subtitle),
      ),
    ],
  );
}


