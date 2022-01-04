import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CreateTodoView extends StatelessWidget {
  CreateTodoView({Key? key}) : super(key: key);

  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController timeController = TextEditingController();

   final GlobalKey<FormState>formKey =GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: Text(
          'Create What You Want To Do ',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        centerTitle: false,
      ),
      body: Container(
        margin: EdgeInsets.all(14),
        padding: EdgeInsets.all(14),
        decoration: BoxDecoration(
            color: Colors.white30,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            )),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: titleController,
                decoration: InputDecoration(
                    labelText: 'Title',
                    hintText: 'Please Enter a title',
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                    labelStyle: TextStyle(
                      color: Colors.blue[400],
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Title is required";
                  }
                },
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: descriptionController,
                decoration: InputDecoration(
                  labelText: 'Description ',
                  hintText: 'Please Enter a description ',
                  labelStyle: TextStyle(
                    color: Colors.blue[400],
                  ),
                  //  floatingLabelBehavior: FloatingLabelBehavior.never,
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Description is required";
                  }
                },
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: dateController,
                      onTap: (){
                        showDatePicker(
                          context: context, 
                          initialDate: DateTime.now(),
                           firstDate: DateTime.now(),
                            lastDate: DateTime.now().add(const Duration(days:365),),
                            ).then((selectedDate) {
                              final DateFormat dateFormat= DateFormat('dd/MM/yyyy');
                              dateController.text= dateFormat.format(selectedDate!);
                            });
                      },              
                      maxLines: 1,
                      decoration: InputDecoration(
                        labelText: 'Date',
                        hintText: 'Please Enter a date',
                        labelStyle: TextStyle(
                          color: Colors.blue[400],
                        ),
                        //  floatingLabelBehavior: FloatingLabelBehavior.never,
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Date is required";
                        }
                      },
                    ),
                  ),
                  SizedBox(width: 18),
                  Expanded(
                    child: TextFormField(
                      controller: timeController,
                            onTap: (){
        showTimePicker(
          context: context, 
          initialTime: TimeOfDay.now(),
          //  firstTime: TimeOfDay.now(),
            // lastTime: TimeOfDay.now()
            // .add(const Duration(days:365),),
            ).then((selectedTime) {
              // final DateFormat dateFormat= DateFormat('dd/MM/yyyy');
              timeController.text= selectedTime!.format(context);
            });
      },              
                      maxLines: 1,
                      decoration: InputDecoration(
                          labelText: 'Time',
                          hintText: 'Please Enter a time',
                          labelStyle: TextStyle(
                            color: Colors.blue[400],
                          ),
                          //  floatingLabelBehavior: FloatingLabelBehavior.never,
                          ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Time is required";
                        }
                      },
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 32,
              ),
              TextButton(
                onPressed: () {
                  if(formKey.currentState!.validate()){
                  print(titleController.text);
                  print(descriptionController.text);
                  print(dateController.text);
                  print(timeController.text);
                  }else{
                    print('failed');
                  }
                  },
                child: Text(
                  'Create',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.indigo[700],
                  padding: EdgeInsets.only(top: 15, bottom: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

