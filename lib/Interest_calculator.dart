import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {

  
  const Homepage({super.key});

  

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  
  
   
    TextEditingController _controller1 = new TextEditingController();
   TextEditingController _controller2 = new TextEditingController();
   TextEditingController _controller3 = new TextEditingController();
   TextEditingController _controller4 = new TextEditingController();


    late double AMOUNT;
    late double INTEREST;
    late double AMOUNT1;
    late double INTEREST1;

    final _periodList =["Annually","Semi-Annually","Quaterly","Monthly","Semi-Monthly","Bi-Weekly","Weekly","Daily"];
    String? _selectedVal = "Annually";

    _MyFormState(){
    _selectedVal = _periodList[0];
  }


   void loancalculation(){

    if(_selectedVal=="Annually"){
      
       final amount = double.parse(_controller1.text)*(1+((double.parse(_controller2.text))/100)*double.parse(_controller4.text));
      final interest = (double.parse(_controller1.text)*double.parse(_controller2.text)*double.parse(_controller4.text))/100;
      final amount1 = double.parse(_controller1.text)*pow((1+double.parse(_controller2.text)/100),int.parse(_controller4.text));
      final interest2 = amount1-double.parse(_controller1.text) ;
      setState(() {
        AMOUNT = amount;
        INTEREST = interest;
        AMOUNT1 = amount1;
        INTEREST1 = interest2;
      });
    }
    else if (_selectedVal =="Semi-Annually"){
      var n =2;
      final amount = double.parse(_controller1.text)*(1+((double.parse(_controller2.text))/100)*double.parse(_controller4.text));
      final interest = (double.parse(_controller1.text)*double.parse(_controller2.text)*double.parse(_controller4.text))/100;
      final amount1 = double.parse(_controller1.text)*pow((1+double.parse(_controller2.text)/(100*n)),int.parse(_controller4.text)*n);
      final interest2 = amount1-double.parse(_controller1.text) ;
      setState(() {
        AMOUNT = amount;
        INTEREST = interest;
        AMOUNT1 = amount1;
        INTEREST1 = interest2;
      });

      
    }

    else if (_selectedVal =="Quaterly"){
      var n=4;
      final amount = double.parse(_controller1.text)*(1+((double.parse(_controller2.text))/100)*double.parse(_controller4.text));
      final interest = (double.parse(_controller1.text)*double.parse(_controller2.text)*double.parse(_controller4.text))/100;
       final amount1 = double.parse(_controller1.text)*pow((1+double.parse(_controller2.text)/(100*n)),int.parse(_controller4.text)*n);
      final interest2 = amount1-double.parse(_controller1.text) ;
      setState(() {
        AMOUNT = amount;
        INTEREST = interest;
        AMOUNT1 = amount1;
        INTEREST1 = interest2;
      });

      
    }

    else if (_selectedVal =="Monthly"){
      var n=12;
      final amount = double.parse(_controller1.text)*(1+((double.parse(_controller2.text))/100)*double.parse(_controller4.text));
      final interest = (double.parse(_controller1.text)*double.parse(_controller2.text)*double.parse(_controller4.text))/100;
       final amount1 = double.parse(_controller1.text)*pow((1+double.parse(_controller2.text)/(100*n)),int.parse(_controller4.text)*n);
      final interest2 = amount1-double.parse(_controller1.text) ;
      setState(() {
        AMOUNT = amount;
        INTEREST = interest;
        AMOUNT1 = amount1;
        INTEREST1 = interest2;
      });

      
    }

    else if (_selectedVal =="Semi-Monthly"){
      var n=24;
      final amount = double.parse(_controller1.text)*(1+((double.parse(_controller2.text))/100)*double.parse(_controller4.text));
      final interest = (double.parse(_controller1.text)*double.parse(_controller2.text)*double.parse(_controller4.text))/100;
       final amount1 = double.parse(_controller1.text)*pow((1+double.parse(_controller2.text)/(100*n)),int.parse(_controller4.text)*n);
      final interest2 = amount1-double.parse(_controller1.text) ;
      setState(() {
        AMOUNT = amount;
        INTEREST = interest;
        AMOUNT1 = amount1;
        INTEREST1 = interest2;
      });

      
    }

    else if (_selectedVal =="Bi-Weekly"){
      var n=26;
      final amount = double.parse(_controller1.text)*(1+((double.parse(_controller2.text))/100)*double.parse(_controller4.text));
      final interest = (double.parse(_controller1.text)*double.parse(_controller2.text)*double.parse(_controller4.text))/100;
       final amount1 = double.parse(_controller1.text)*pow((1+double.parse(_controller2.text)/(100*n)),int.parse(_controller4.text)*n);
      final interest2 = amount1-double.parse(_controller1.text) ;
      setState(() {
        AMOUNT = amount;
        INTEREST = interest;
        AMOUNT1 = amount1;
        INTEREST1 = interest2;
      });

      
    }


    else if (_selectedVal =="Weekly"){
      var n=52;
      final amount = double.parse(_controller1.text)*(1+((double.parse(_controller2.text))/100)*double.parse(_controller4.text));
      final interest = (double.parse(_controller1.text)*double.parse(_controller2.text)*double.parse(_controller4.text))/100;
       final amount1 = double.parse(_controller1.text)*pow((1+double.parse(_controller2.text)/(100*n)),int.parse(_controller4.text)*n);
      final interest2 = amount1-double.parse(_controller1.text) ;
      setState(() {
        AMOUNT = amount;
        INTEREST = interest;
        AMOUNT1 = amount1;
        INTEREST1 = interest2;
      });

      
    }



    else if (_selectedVal =="Daily"){
      var n=365;
      final amount = double.parse(_controller1.text)*(1+((double.parse(_controller2.text))/100)*double.parse(_controller4.text));
      final interest = (double.parse(_controller1.text)*double.parse(_controller2.text)*double.parse(_controller4.text))/100;
       final amount1 = double.parse(_controller1.text)*pow((1+double.parse(_controller2.text)/(100*n)),int.parse(_controller4.text)*n);
      final interest2 = amount1-double.parse(_controller1.text) ;
      setState(() {
        AMOUNT = amount;
        INTEREST = interest;
        AMOUNT1 = amount1;
        INTEREST1 = interest2;
      });

      
    }
    
      
      
      
   }

   Widget body(){

    

 return Container(
  
  
      color: Color.fromARGB(255, 225, 226, 200),
      child: Column(
        children: [
          Container(
            height: 120,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30)
              )
              
              ),
              child: Padding(
                padding: EdgeInsets.only( bottom: 20.0, top: 5),
              child: Align(
                alignment: Alignment.center,
                child: Column(
                  
                    
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment : MainAxisAlignment.center,
                    children:[
                      Text(
                        'Interest',
                        style: GoogleFonts.robotoMono(fontSize: 35),
                      ),
                    Text(
                      'Calculator',
                      style: GoogleFonts.robotoMono(fontSize: 35),)
                    ]
                    
                ),
              ),
              ),
            
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30,10,40,0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                inputform(title: "Present Amount", hintText: "eg: Rs 1000", controller: _controller1),
                inputform(title: "Interest rate", hintText: "eg: 6%", controller: _controller2),
                
                 inputform(title: "Years", hintText: "eg: 4 years", controller: _controller4),

                 SizedBox(
                  height: 5,
                 ),

                Text(
                                "Compound",
                                style: GoogleFonts.robotoMono(fontSize: 20),
                                ),

                  DropdownButtonFormField(
            
                    value: _selectedVal,
                  items: _periodList.map(
                    (e){
                      return DropdownMenuItem(child: Text(e), value: e,);
                  }).toList(), 
                  onChanged: (value) {
                    setState(() {
                      _selectedVal =value as String;
                    });
                  },
                  icon: const Icon(
                    Icons.arrow_drop_down_circle,
                    
                  ),
                  // decoration: InputDecoration(
                  //     labelText: " Compound",
                  //     labelStyle: GoogleFonts.robotoMono(fontSize: 25),
                      
                  //   )
                  ),
              
              SizedBox(
                height: 30,
              ),

              GestureDetector(

                onTap: () {
                  loancalculation();
                  Future.delayed(Duration.zero);
                  showModalBottomSheet(
                    isDismissible: false,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),    
                    ),
                    context: context, 
                    builder: (BuildContext context){
                      return Container(
                        height: 400,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20,30,0,0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Result",
                                style: GoogleFonts.robotoMono(fontSize: 20),
                                ),
                                SizedBox
                                (height: 15,
                                ),
                               result(
                                title: "Simple Interest Amount:",
                                amount: AMOUNT
                               ),
                               result(
                                title: "Simple Interest:",
                                amount: INTEREST
                               ),
                               result(
                                title: "Compound Interest Amount:",
                                amount: AMOUNT1
                               ),
                               result(
                                title: "Compound Interest: ",
                                amount: INTEREST1
                               ),
                                ],
                          ),
                        ),
                      );
                    });
                },
                child: Container(
                  
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(25)
                  ),
                  child: 
                  Center(
                    child: Text(
                          'Calculate',
                          style: GoogleFonts.robotoMono(fontSize: 25),),
                  ),
                ),
              )
                
              ],
            ),
          )
        ],
      ),
    );
}
    
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.orange,
        elevation: 0,
        actions: [Padding(
          padding: const EdgeInsets.only(right:15.0),
          child: IconButton(
            icon: const Icon(Icons.info_rounded,size: 25,),
            onPressed: () {
              showDialog(context: context, builder: (context)
              => AlertDialog(
                title: Text('Interest Calculator'),
                content: Text(' Author : Sagar Rana \n Roll no: 44 \n Faculty: GE'),
                actions: [
                  TextButton(
                    child: Text('Ok'),
                    onPressed: () => Navigator.pop(context),
                  )
                ]
              )
              
              );
              
            },
          ),
          
        ),],
      ),
      body: body(),
    );
  }
}






Widget inputform({String? title, TextEditingController? controller,  String? hintText }){
  
  return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title!,
                style: GoogleFonts.robotoMono(fontSize: 20),
              ),
              SizedBox(
                height: 5),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                  ),

                  child: TextField(
                  
                    controller: controller,
                    
                    
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none ),
                      hintText: hintText
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),

                
            ],

          );



}

Widget result({String? title, double? amount}){
  return ListTile(
            title: Text(
              title!,
              style: TextStyle(fontSize: 15,),
              ),
          trailing: Padding(
            padding: const EdgeInsets.only(right :20.0),
            child: Text(
              'Rs ${amount!.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 15),
              ),
          ),

          
           
                );
}


