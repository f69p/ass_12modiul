import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled4/presentation/widgets/responsive_builder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      mobile: Scaffold(
      appBar: AppBar(

        title:Align(
          alignment: Alignment.centerRight,
          child:Column(
            children: [
              Text('HUMMING'),
              Text('BIRD.')
            ],
          )
        ),

      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.greenAccent),
              child: Container(
                padding: EdgeInsets.all(40),
                child: Column(
                  children: [
                    Text('SKILL UP NOW',style: TextStyle(color: Colors.white),),
                    TextButton(
                      onPressed: () {},
                      child: Text('TAP HERE',style: TextStyle(color: Colors.white),),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              title: Text('Episodes'),
              leading: Icon(Icons.play_circle_outline_rounded),
            ),
            ListTile(
              title: Text('About'),
              leading: Icon(Icons.message),
            )
          ],
        ),
      ),
      body: Center(
        child: Container(
          child:  Padding(
            padding:  EdgeInsets.all(35),
            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('FLUTTER WEB.',style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 28,
                ),),
                Text('THE BASICS',style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 28,),),

                SizedBox(width: 350,
                  child: Text('In this course we will go over the '
                      'basics of using Flutter web for development.'
                      'Topics will include Responsive Layout'
                      ' ,Deploying ,Font changes Hover functionality'
                      ' Modals and more.'),
                ),
                SizedBox(height: 20,),

                TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.greenAccent

                    ),
                    onPressed: (){},
                    child: Text('join course',style: TextStyle(
                      color: Colors.white,
                    ),))
              ],
            ),
          ),
        ),

      ),
    ),

//TABLET SCREEN



      tablet: Scaffold(
      appBar: AppBar(
        title: Align(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(

                children: [
                  Text('HUMMING'),
                  Text('BIRD'),

                ],
              ),
             SizedBox(
               child: Row(
                 children: [
                   Text('Episodes'),
                   SizedBox(width: 24,),
                   Text('About'),
                 ],
               ),
             )
            ],
          ),
        ),
      ),
         body:  Center(
      child: Container(
      child:  Padding(
          padding:  EdgeInsets.all(100),
      child: Column(

        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('FLUTTER WEB.',style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 28,
          ),),
          Text('THE BASICS',style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 28,),),

          SizedBox(width: 300,
            child: Text('In this course we will go over the '
                'basics of using Flutter web for development.'
                'Topics will include Responsive Layout'
                ' ,Deploying ,Font changes Hover functionality'
                ' Modals and more.'),
          ),
          SizedBox(height: 20,),

          TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.greenAccent

              ),
              onPressed: (){},
              child: Text('join course',style: TextStyle(
                color: Colors.white,
              ),))

        ],
      ),
    ),
    ),

    ),

      ),


      //DESKTOP SCREEN



      desktop: Scaffold(
        appBar: AppBar(
          title: Align(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(

                  children: [
                    Text('HUMMING'),
                    Text('BIRD'),

                  ],
                ),
                SizedBox(
                  child: Row(
                    children: [
                      Text('Episodes'),
                      SizedBox(width: 24,),
                      Text('About'),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
       body: Padding(
         padding: const EdgeInsets.all(60),
         child: Row(
          children: [
            Container(
             child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 SizedBox(height: 85,),
                 Text('FLUTTER WEB.',style: TextStyle(
                   fontWeight: FontWeight.w700,
                   fontSize: 28,
                 ),),
                 Text('THE BASICS',style: TextStyle(
                   fontWeight: FontWeight.w700,
                   fontSize: 28,),),
                   SizedBox(height: 24,),
                 SizedBox(
                   width: 400,
                   child: Text('In this course we will go over the '
                       'basics of using Flutter web for development.'
                       'Topics will include Responsive Layout'
                       ' ,Deploying ,Font changes Hover functionality'
                       ' Modals and more.'),
                 ),
               ],
             ),

            ),
            SizedBox(
              width: 200,
            ),
            TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.greenAccent

                ),
                onPressed: (){},
                child: Text('join course',style: TextStyle(
                  color: Colors.white,
                ),))

          ],
         ),
       ),
      ),);
  }
}
