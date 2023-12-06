import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:vitb/widgets/chat.dart';
import 'package:vitb/widgets/drawer.dart';




void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blue
    ),
    home: vitapp(),
  ));
}

class vitapp extends StatefulWidget {
  const vitapp({Key? key}) : super(key: key);

  @override
  State<vitapp> createState() => _vitappState();
}


class _vitappState extends State<vitapp> {

  final List<String> imageList = [
    "https://vitbhopal.ac.in/file/2023/05/Road-Block.jpg",
    "https://vitbhopal.ac.in/file/2020/02/class-room-6.jpg",
    "https://vitbhopal.ac.in/file/2020/02/class-room-1-scaled.jpg",
    "https://vitbhopal.ac.in/file/2020/02/995A4002_copy1.jpg",
    "https://vitbhopal.ac.in/file/2023/10/VITB_4th_Convocation_16.jpeg",
    "https://vitbhopal.ac.in/file/2023/10/VITB_4th_Convocation_29.jpeg",
    "https://vitbhopal.ac.in/file/2023/10/VITB_4th_Convocation_1-2048x1152.jpeg",
    "https://vitbhopal.ac.in/file/2023/10/samay-jagat_09Oct23_page-0001.jpg",
    "https://vitbhopal.ac.in/file/2023/10/News-1.jpeg",
    "https://vitbhopal.ac.in/file/2020/02/Library-341.jpg",
    "https://vitbhopal.ac.in/file/2020/02/Academic-Block-VIT-Bhopal-2-scaled-e1580792952114.jpg",
    "https://vitbhopal.ac.in/file/2022/08/59-Lakhs.jpeg",

  ];

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const SizedBox(
              width: 20,
            ),
            const Text(
              'Welcome to VIT Bhopal',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        backgroundColor: Colors.deepPurpleAccent, //<-- SEE HERE
        actions: [
          Padding(padding: EdgeInsets.only(right:20.0),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=> chatpage()));

              },
              child: Icon(
                Icons.help,
                size: 25.0,
                color: Colors.white,
              ),
            ),
          )
        ],


      ),
      body: ListView(
        padding: EdgeInsets.only(top: 40.0),
        children: [
          Center(
            child:CarouselSlider(
              options: CarouselOptions(
                enlargeCenterPage: true,
                enableInfiniteScroll: true,
                autoPlay: true,
              ),
              items: imageList.map((e) => ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.network(e,
                  width: 1050.0,
                  height: 350.0,
                  fit:BoxFit.cover,
                  )
                  ],
              ),
              )).toList(),
            ) ,
          ),
          new Divider(height: 50.0,),
          Card(
            child: Image.network("https://t3.ftcdn.net/jpg/05/11/72/42/360_F_511724228_MOCAUwC8ANHyZwwYATKoNktaU6LKedXq.jpg",
            fit: BoxFit.fill,
              width: 150.0,
              height: 150.0,
            ),
            margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0)
          ),
          SizedBox(
            width: double.infinity,
            height: 360.0,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Text("BTECH (4 YEARS)", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),),

                    Text("The School of Computing Science and Engineering (SCSE) has started in 2017 with two programmes and 200+ students and it has grown to 15 programmes and 8000+ students today. The SCSE playing a vital role in university by leveraging the power of innovative digital technology and tech-enabled solutions to support better learning and living experiences for aspirants. Our programs are future ready, forward looking, and equip the students with a career at forefront of innovation. The school will continue to successfully develop future ready engineers in various domains of computing science to provide innovative solutions to the world’s grand challenges."),
                    SizedBox(
                      width: 135.0,
                      child: Divider(),
                    ),


                  ],
                ),
              ),
            ),
          ),



          new Divider(height: 50.0,),
          Card(
              child: Image.network("https://cdn2.slideserve.com/4335354/biomedical-engineering-n.jpg",
                fit: BoxFit.fill,
                width: 150.0,
                height: 150.0,
              ),
              margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0)
          ),
          SizedBox(
            width: double.infinity,
            height: 375.0,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Text("BTECH (4 YEARS)", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),),

                    Text("The School of Bio Engineering,at VIT Bhopal University offers in-depth academic and research experience for the young minds hoping to scale greater heights in their career. The school follows quite an integrated approach towards solving problems related to both Biomedical Engineering and Biotechnology – a culmination of pure sciences and engineering. The School envisions equipping its students with an integrated knowledge in the field of medicine and biology,as well as different engineering disciplines that would align with applications in the relevant areas."),
                    SizedBox(
                      width: 135.0,
                      child: Divider(),
                    ),


                  ],
                ),
              ),
            ),
          ),


          new Divider(height: 40.0,),
          Card(
              child: Image.network("https://i.pinimg.com/600x315/4b/bc/2d/4bbc2da500071035914de88e1da69219.jpg",
                fit: BoxFit.fill,
                width: 150.0,
                height: 150.0,
              ),
              margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0)
          ),
          SizedBox(
            width: double.infinity,
            height: 375.0,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Text("BTECH (4 YEARS)", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),),

                    Text("The School of Electrical and Electronics Engineering (SEEE) was established in the year 2017 at VIT Bhopal University and offers Undergraduate, Post-Graduate and Doctoral programmes. The School is a hub of the state-of-the-art studios and laboratories in the areas of Analog Electronics, Digital Electronics, Embedded Systems, Sensors, IoT, Microwave and Optics, VLSI, Micro-processor and Micro-controller, AC machine, Analog communication, Digital Communication, and DC Machine. The faculty members of the school have wide range of expertise in the fields of Micro Electro Mechanical Systems (MEMS), Hydro Power System Optimization, Flexible AC Transmission Controllers, Robotics and Artificial Intelligence."),
                    SizedBox(
                      width: 135.0,
                      child: Divider(),
                    ),


                  ],
                ),
              ),
            ),
          ),


          new Divider(height: 50.0,),
          Card(
              child: Image.network("https://gisthaldia.org/public/dept_image/Department%20of%20Mechanical%20Engineering.jpg",
                fit: BoxFit.fill,
                width: 150.0,
                height: 150.0,
              ),
              margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0)
          ),
          SizedBox(
            width: double.infinity,
            height: 375.0,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Text("BTECH (4 YEARS)", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),),

                    Text("School of Mechanical Engineering (SMEC) at VIT Bhopal offers undergraduate degree and research programmes in Mechanical Engineering and Aerospace Engineering. SMEC started in the university right from its inception. Faculty members in the school belong to different specialization areas in Mechanical Engineering like Machine Design, Thermal & Fluid Sciences and Manufacturing Engineering. Aerospace Engineering faculty are from structures and propulsion background. School offers major core courses and various elective courses that are designed after detailed consultation with industry experts."),
                    SizedBox(
                      width: 135.0,
                      child: Divider(),
                    ),


                  ],
                ),
              ),
            ),
          ),



          new Divider(height: 50.0,),
          Card(
              child: Image.network("https://www.creativefabrica.com/wp-content/uploads/2020/03/09/Business-School-Logo-Graphics-3456971-1.png",
                fit: BoxFit.fill,
                width: 150.0,
                height: 150.0,
              ),
              margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0)
          ),
          SizedBox(
            width: double.infinity,
            height: 375.0,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Text("BTECH (4 YEARS)", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),),

                    Text("Management education has emerged as one of the major career options against the mainstream career prospects. Many career guides have stated that management and commerce is the next big career option for all students who have the interest and passion to study how businesses work in the real world and complex market scenarios. Students, who have developed a curiosity for learning business administration and management, have started taking business degrees as a serious career opportunity."),
                    SizedBox(
                      width: 135.0,
                      child: Divider(),
                    ),


                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.chat),
        label: Text("Chat!"),
        tooltip: 'Connect to Assistant',
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder:(context)=> chatpage()));
        },
        ),
    );
  }
}




