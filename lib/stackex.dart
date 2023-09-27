import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

void main() {
  runApp(MaterialApp(
    home: Stackex(),
  ));
}

class Stackex extends StatelessWidget {
  const Stackex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack"),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 200,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                      image: AssetImage(
                          "assets/philip-oroni-KbusKKAZ968-unsplash.jpg"))),
            ),
            const Positioned(
              left: 240,
              top: 160,
              child: Text("Minha Sherin",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),
            ),
            const Positioned(
              left: 20,
              top: 10,
              child: Text("Credict Card",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),),
            ),
            const Positioned(
              left: 260,
              top: 10,
              child: Text("BANK",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),)),
              const Positioned(
                left: 310,
              top: 8,
                child: Icon(Icons.food_bank,color: Colors.white,)
                ),
                const Positioned(
                  top: 100,
                  left: 80,
                  child: Text("1234 6543 8755 9999",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black)))
          ],
        ),
      ),
    );
  }
}
