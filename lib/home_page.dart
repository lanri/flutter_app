import 'package:flutter/material.dart';
import 'package:flutter_app/book.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //BANNER
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Upgrade Your Skill\nUpgrade Your Life",
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),
              ),
              Image.asset(
                'assets/banner.png',
                width: 100,
              ),
            ],
          ),
            //TEKS BUKU
          const Padding(padding: EdgeInsets.symmetric(vertical: 10),
          child: Text("Books",
          style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),
          ),
          ),
          
            // LIST BUKU
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(5.0),
              itemCount: listBook.length,
              itemBuilder: (context,index){
                final book = listBook[index];
                return Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 6.0,
                        offset: Offset(0, 1),
                      )
                    ]
                    ),
                  child: Row(
                    children: [
                      Image.asset(
                        book.image,
                        width: 64,
                      ),
                      const SizedBox(width: 10,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            book.name,
                            style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w600),
                            ),
                          Text(
                            book.categoryBook,
                            style: const TextStyle(fontSize: 20),),
                        ],
                      )
                    ],
                  ),
                );
              }),
          ),  
          ],
        ),
      ),
    );
  }
}