import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:readmore/readmore.dart';

void main() {
  runApp(MaterialApp(
    home: ReadmoreLessEx(),
  ));
}

class ReadmoreLessEx extends StatelessWidget {
  const ReadmoreLessEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Read More Text"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          ReadMoreText(
            "Good looks, good looks, and good looks! This is something that everyone desires. Having a charming personality and a cute smile is what makes everyone fall for you. Undeniably, everyone gets attracted to people who are beautiful inside and out and November-born people are no exception. Such people become the darling of their inner circle and also become famous.",
            trimLines: 2,
            preDataText: "November Born",
            style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.blue),
            preDataTextStyle:
                TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            colorClickableText: Colors.red,
            trimMode: TrimMode.Line,
            //trimCollapsedText: "",
            //trimExpandedText: '',
          ),
          Divider(),
          ReadMoreText(
            "The last month of the year welcomes some very special and very cute babies. Afterall, they share their birth month with the wonder that is the holiday season, and is there anything sweeter than seeing a baby all bundled up in a tiny snowsuit or wrapped up and snuggly in warm blankets? December babies may be the last of the year, but they certainly aren’t the least. In fact, they are pretty spectacular.",
            trimLines: 2,
            preDataText: "December Born",
            style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.blue),
            preDataTextStyle:
                TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            colorClickableText: Colors.red,
            trimMode: TrimMode.Line,
            //trimCollapsedText: "",
            //trimExpandedText: '',
          )
        ],
      ),
    );
  }
}
