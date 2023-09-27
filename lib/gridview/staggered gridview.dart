import 'package:flutter/material.dart';


import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';
void main(){
  runApp(MaterialApp(home: StaggeredGridview1(),));
}
class StaggeredGridview1 extends StatelessWidget {
  const StaggeredGridview1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Staggered GridView"),),
      body: SingleChildScrollView(
        child: StaggeredGridView.count
        (crossAxisCount: 3,crossAxisSpacing: 10,mainAxisSpacing: 10,
        children: [
          
        ],
        ),
        
      ),
    );
  }
}