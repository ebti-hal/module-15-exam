import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final List data = [
    {
      "name": "Ebtihal",
      "number": 015865488958
    },
    {
      "name": "Jishan",
      "number": 015865488958
    },{
      "name": "Zabir",
      "number": 015865488958
    },{
      "name": "Anan",
      "number": 015865488958
    },{
      "name": "Fariha",
      "number": 015865488958
    },{
      "name": "Tasnim",
      "number": 015865488958
    },{
      "name": "Meherin",
      "number": 015865488958
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade700,
        title: Text("Contact List",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            SizedBox(height: 20,),

            TextFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),
            SizedBox(height: 10,),
            TextFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey.shade700,
                minimumSize: Size(double.infinity, 40),
              ),
              child: Text("Add",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),
            ),
            SizedBox(height: 20,),

            Expanded(
              child: ListView.builder(
                itemCount: data.length,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index){
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Icon(Icons.person,size: 25,color: Colors.brown,),
                          SizedBox(width: 25,),
                          Column(
                            crossAxisAlignment: .start,
                            children: [
                              Text("${data[index]["name"]}",style: TextStyle(color: Colors.red,fontSize: 15,fontWeight: FontWeight.bold),),
                              Text("${data[index]["number"]}",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),),
                            ],
                          ),
                          Spacer(),
                          Icon(Icons.phone,size: 25,color: Colors.blue,),
                        ],
                      ),
                    ),
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
