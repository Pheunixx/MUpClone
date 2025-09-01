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
      backgroundColor: Color(0xffEBEBEB),
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
           // crossAxisAlignment: CrossAxisAlignment.start,
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
              ),
              const SizedBox(height: 10,),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const Text("Your Upcoming Events",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                    ),
                  ),
          
                  TextButton(onPressed: ()
                  {},
                   child: const Text("View All",
                   style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffffa500),
                    decoration: TextDecoration.underline,
                    decorationColor: Color(0xffffa500)
                   ),
                   )
                   )
                ],
               ),
               const SizedBox(height: 5.0,),
               SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                 child: Row(
                  children: [
                    
                       Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6)
                        ),
                        child: Column(
                          children: [
                            Image.asset('assets/images/firstframe.png'),
                            const SizedBox(height: 3.0,),
                            const Text("Orchestral Concert",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.black
                            ),
                            ),
                            const SizedBox(height: 8.0,),
                            SizedBox(
                              child: Row(
                                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Text("Monday, 5th July",
                                  style: TextStyle(
                                    color: Color(0xff8A8A8A),
                                    fontSize: 8,
                                    fontWeight: FontWeight.w500
                                  ),
                                  ),
                                  const SizedBox(width: 80.0,),
                                  const Text("9:30",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff8A8A8A),
                                    fontSize: 8.0
                                  ),
                                  )
                                ],
                              ),
                            ) 
                          ],
                        ),
                      ),
                    const SizedBox(width: 8.0 ,),
                    Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6)
                          ),
                          child: Column(
                            children: [
                              Image.asset('assets/images/secondframe.png'),
                              const SizedBox(height: 3.0,),
                              const Text("Ted X",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.black
                              ),
                              ),
                              const SizedBox(height: 8.0,),
                              SizedBox(
                                child: Row(
                                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Text("Monday, 12th July",
                                    style: TextStyle(
                                      color: Color(0xff8A8A8A),
                                      fontSize: 8,
                                      fontWeight: FontWeight.w500
                                    ),
                                    ),
                                    const SizedBox(width: 27.0,),
                                    const Text("12:30",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff8A8A8A),
                                      fontSize: 8.0
                                    ),
                                    )
                                  ],
                                ),
                              )                  
                            ],
                          ),
                        ),
                    
                  ],
                 ),
               ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   const Text("Suggested Events",
                   style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500
                   ),
                   ),
                     TextButton(onPressed: ()
                  {},
                   child: const Text("View All",
                   style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffffa500),
                    decoration: TextDecoration.underline,
                    decorationColor: Color(0xffffa500)
                   ),
                   )
                   )
                 ],
               ),
               const SizedBox(height: 10,),
               SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                 child: Row(
                  children: [
                       Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6)
                        ),
                        child: Column(
                          children: [
                            Image.asset('assets/images/3rdframe.png',
                            ),
                            const SizedBox(height: 3.0,),
                            const Text("Rock & Rave Concert",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.black
                            ),
                            ),
                            const SizedBox(height: 8.0,),
                            SizedBox(
                              child: Row(
                                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Text("Monday, 20th July",
                                  style: TextStyle(
                                    color: Color(0xff8A8A8A),
                                    fontSize: 8,
                                    fontWeight: FontWeight.w500
                                  ),
                                  ),
                                  const SizedBox(width: 50.0,),
                                  const Text("22:30",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff8A8A8A),
                                    fontSize: 8.0
                                  ),
                                  )
                                ],
                              ),
                            ) 
                          ],
                        ),
                      ),
                    const SizedBox(width: 10.0 ,),
                    Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6)
                          ),
                          child: Column(
                            children: [
                              Image.asset('assets/images/4thframe.png'),
                              const SizedBox(height: 3.0,),
                              const Text("Fashion Week",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.black
                              ),
                              ),
                              const SizedBox(height: 8.0,),
                              SizedBox(
                                child: Row(
                                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Text("Monday, 15th July",
                                    style: TextStyle(
                                      color: Color(0xff8A8A8A),
                                      fontSize: 8,
                                      fontWeight: FontWeight.w500
                                    ),
                                    ),
                                    const SizedBox(width: 27.0,),
                                    const Text("20:30",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff8A8A8A),
                                      fontSize: 8.0
                                    ),
                                    )
                                  ],
                                ),
                              )                  
                            ],
                          ),
                        ),
        
                        const SizedBox(width: 8.0 ,),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6)
                          ),
                          child: Column(
                            children: [
                              Image.asset('assets/images/firstframe.png',
                              height: 129.29,),
                              const SizedBox(height: 3.0,),
                              const Text("Orchestral Concert",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.black
                              ),
                              ),
                              const SizedBox(height: 8.0,),
                              SizedBox(
                                child: Row(
                                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Text("Monday, 20th July",
                                    style: TextStyle(
                                      color: Color(0xff8A8A8A),
                                      fontSize: 8,
                                      fontWeight: FontWeight.w500
                                    ),
                                    ),
                                    const SizedBox(width: 27.0,),
                                    const Text("20:30",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff8A8A8A),
                                      fontSize: 8.0
                                    ),
                                    )
                                  ],
                                ),
                              )                  
                            ],
                          ),
                        ),
                        const SizedBox(width: 8.0 ,),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6)
                          ),
                          child: Column(
                            children: [
                              Image.asset('assets/images/firstframe.png',
                              height: 129.29,),
                              const SizedBox(height: 3.0,),
                              const Text("Orchestral Concert",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.black
                              ),
                              ),
                              const SizedBox(height: 8.0,),
                              SizedBox(
                                child: Row(
                                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Text("Monday, 20th July",
                                    style: TextStyle(
                                      color: Color(0xff8A8A8A),
                                      fontSize: 8,
                                      fontWeight: FontWeight.w500
                                    ),
                                    ),
                                    const SizedBox(width: 27.0,),
                                    const Text("20:30",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff8A8A8A),
                                      fontSize: 8.0
                                    ),
                                    )
                                  ],
                                ),
                              )                  
                            ],
                          ),
                        ),
                        const SizedBox(width: 8.0 ,),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6)
                          ),
                          child: Column(
                            children: [
                              Image.asset('assets/images/firstframe.png',
                              height: 129.29,),
                              const SizedBox(height: 3.0,),
                              const Text("Orchestral Concert",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.black
                              ),
                              ),
                              const SizedBox(height: 8.0,),
                              SizedBox(
                                child: Row(
                                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Text("Monday, 20th July",
                                    style: TextStyle(
                                      color: Color(0xff8A8A8A),
                                      fontSize: 8,
                                      fontWeight: FontWeight.w500
                                    ),
                                    ),
                                    const SizedBox(width: 27.0,),
                                    const Text("20:30",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff8A8A8A),
                                      fontSize: 8.0
                                    ),
                                    )
                                  ],
                                ),
                              )                  
                            ],
                          ),
                        ),
                    
                  ],
                 ),
               ),
               const SizedBox(height: 10,),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   const Text("Trending Events",
                   style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500
                   ),
                   ),
                     TextButton(onPressed: ()
                  {},
                   child: const Text("View All",
                   style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffffa500),
                    decoration: TextDecoration.underline,
                    decorationColor: Color(0xffffa500)
                   ),
                   )
                   )
                 ],
               ),
               const SizedBox(height: 5.0,),
               Container(
                decoration: BoxDecoration(
                  color: Colors.white
                ),
                child: Row(
                  children: [
                    Image.asset('assets/images/firstframe.png',
                    width: 100,
                    height: 120,),
                    Column(
                     children: [
                       const Text("Orchestral Concert"),

                     ],
                     
                    ),
                  Spacer(),
                  Icon(Icons.forward_30)

                  ],
                ),
               )
            ]
          
            
          ),
        ),
      ),
     
    );
  }
}