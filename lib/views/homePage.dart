import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Center(
          child: Container(
            width: 156,
            //alignment: Alignment.center,
            //padding: EdgeInsets.symmetric(horizontal: 5, vertical: 6),
            decoration: BoxDecoration(
              color: Color(0xffEBEBEB),
              borderRadius: BorderRadius.circular(8),
              
            ),
            child: Center(
              child: Row(
                children: [
                  const Text("Your profile is ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                  ),
                  ),
                  const Text("60% complete",
                  style: TextStyle(
                    color: Color(0xffffa500),
                    fontSize: 10,
                    fontWeight: FontWeight.w500
                  ),
                  ),
                  Icon(Icons.arrow_forward,
                  size: 15,)
                ],
              ),
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Text("Hello, GirlNextDoor",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                ),
              ),
              IconButton(onPressed: (){}, 
              icon: 
              Stack(
                children: [
                  Icon(Icons.notifications_none),
                   Positioned(
                right: 0,
                top: 0,
                child: 
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle
                ),
              )
              )
              ],
              ),
              ),
            ],
          ),
          Container(
            width: 361,
            height: 35,
            //padding: EdgeInsets.fromLTRB(8, 10, 10, 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color(0xffFFFFFF)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search Upcoming Events",
                      hintStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff8A8A8A),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none
                      )
                    ),
                  ),
                ),
                IconButton(onPressed: (){},
                 icon: Icon(Icons.search, )
                 )
              ],
            ),
          )
        ],

        
      ),
     
    );
  }
}