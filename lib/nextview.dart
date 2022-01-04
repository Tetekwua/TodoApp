import 'package:flutter/material.dart';
import 'package:mytasks_todoapp/create_view.dart';

class MyNextView extends StatelessWidget {
  const MyNextView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.black,
          centerTitle: false,
          title: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://images.unsplash.com/photo-1583138994382-c7e197a71318?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
            ),
          ),
          actions: [
            Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ],
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(80),
              child: Column(children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        ' Hi,LEENA. WHAT ARE YOU DOING TODAY ?',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
                Material(
                  borderRadius: BorderRadius.circular(16),
                  elevation: 8,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        hintText: 'SEARCH',
                        prefixIcon: Icon(Icons.search)),
                  ),
                )
              ])),
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 8,
              left: 15,
            ),
            child: Column(
              children: [
                Row(children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text("FOOD"),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 8.0,
                            bottom: 35,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 18,
                              bottom: 20,
                              right: 17,
                              top: 16,
                            ),
                            child: CircleAvatar(
                              radius: 45,
                              backgroundImage: NetworkImage(
                                'https://images.unsplash.com/photo-1504674900247-0877df9cc836?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                   SizedBox(
   width: 30,
 ),
                   Container(
   width: MediaQuery.of(context).size.width * 0.4,
   height: 200,
   decoration: BoxDecoration(
     borderRadius: BorderRadius.circular(15),
     color: Colors.white,
   ),
   child: Column(
     children: [
       Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Padding(
             padding: const EdgeInsets.only(top: 8.0),
             child: Text("WORKOUT"),
           ),
         ],
       ),
       Padding(
         padding: const EdgeInsets.only(
           top: 8.0,
           bottom: 35,
         ),
         child: Padding(
           padding: const EdgeInsets.only(
             left: 18,
             bottom: 20,
             right: 17,
             top: 16,
           ),
           child: CircleAvatar(
             radius: 45,
             backgroundImage: NetworkImage(
                 'https://images.unsplash.com/photo-1627483298423-03e2e972431c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
           ),
         ),
       ),
       )],
   ),
 ),
                ]),
                SizedBox(
                  height: 30,
                ),
                Row(children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text("TASKS"),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 8.0,
                            bottom: 35,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 18,
                              bottom: 20,
                              right: 17,
                              top: 16,
                            ),
                            child: CircleAvatar(
                              radius: 45,
                              backgroundImage: NetworkImage(
                                  'https://images.unsplash.com/photo-1611224923853-80b023f02d71?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=739&q=80'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text("ENTERTAINMENT"),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 8.0,
                          bottom: 35,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 18,
                            top: 16,
                            bottom: 20,
                            right: 17,
                          ),
                          child: CircleAvatar(
                            radius: 45,
                            backgroundImage: NetworkImage(
                              'https://images.unsplash.com/photo-1623818737087-3dc231e93c30?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80',
                            ),
                          ),
                        ),
                      )
                    ]),
                  ),
                ]),
              ],
            ),
          ),
        ),
        floatingActionButton: Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 10, right: 9.0),
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CreateTodoView();
                }));
              },
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            )));
  }
}

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
























































    
                  
           // 'https://images.unsplash.com/photo-1599552683573-9dc48255fe85?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387
 
 
   
   
   
   
   
   
   
   
   
   
   
   
   





