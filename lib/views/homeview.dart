import 'package:flutter/material.dart';
import 'package:mytasks_todoapp/nextview.dart';

class MyHomeView extends StatelessWidget {
  const MyHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(left: 1,top: 50),
        child: Column(
          children: [
            ListTile(
              leading: 
               CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1628260412297-a3377e45006f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
                  ),
                ),  
              title: Padding(
                padding: const EdgeInsets.only(left: 1,top: 50),
                child: Text('Welcome', 
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ) ,
                ),
              ),
              subtitle: Text(
                'Manage your tasks very easily',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),

            ),
          ],
        ),
      ),
    decoration: BoxDecoration(
      image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
                          'https://images.unsplash.com/photo-1502736842968-bcaab72d0700?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=327&q=80'
    ),
  ),
           ),
           ),
           floatingActionButton: FloatingActionButton(
             onPressed:(){
               Navigator.push(
                 context, MaterialPageRoute(  builder: (context){
                      return MyNextView();
                      }
                      ),
                      );
             },
             child: Icon(Icons.arrow_forward_outlined,
             color: Colors.white,
             ),      
            
     ), );
    
              
          
          
          
          
            



    
}
}