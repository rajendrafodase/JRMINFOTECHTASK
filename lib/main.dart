
import '../Model/sampleList.dart';

import 'Constant/component.dart';

Future<void> main() async {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Appcolors.statusbarcolor,
    statusBarColor:  Appcolors.statusbarcolor, // status bar color
  ));
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => MyAppState();
}
class MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return GetMaterialApp(
        initialBinding: ControllerBinding(),
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.dark,
        darkTheme: ThemeData(
            brightness: Brightness.dark,
            scaffoldBackgroundColor: Color(0xFFF8F8F8),
            appBarTheme: AppBarTheme(),
            primarySwatch: Colors.blue,
            primaryColor: Color.fromRGBO(48, 49, 52, 1.0),
            hintColor: Color(int.parse('0xff2399CC')),
            iconTheme: IconThemeData(color: Colors.white),
            fontFamily: 'DMSans_Regular',
        ),

        home: MainScreen());
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {

  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Appcolors.statusbarcolor,
      statusBarIconBrightness: Brightness.dark,
    ));
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 76,
                color: Appcolors.appBarColor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.arrow_back,color: Appcolors.textcolor,size: 25,),
                      SizedBox(width: 10,),
                      Text("Search Flights",style: TextStyle(fontSize: 18,color:Appcolors.textcolor,fontWeight: FontWeight.w500),),
                      Spacer(),
                      Icon(Icons.menu,color: Appcolors.textcolor,size: 25,)
                    ],
                  ),
                ),
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Image.asset(
                    "assets/images/imagesample.png",
                    height: 148,
                    width: Get.width,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    left: 24,
                    top: 15,
                    child: Text(
                      "Let's start your trip",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    left: 0,
                    top: 120,
                    child: Container(
                      height: 46,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      decoration:  ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0xFFC6C6C6).withOpacity(0.75),
                            blurRadius: 4,
                            offset: Offset(0, 0),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Round Trip",
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600,color: Appcolors.textcolor),
                          ),
                          Container(
                            height: 46,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Appcolors.buttonbackgroundcolor,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Center(
                              child: Text(
                                "One Way",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "Multi-city",
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600,color: Appcolors.textcolor),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0xFFC6C6C6).withOpacity(0.3),
                      blurRadius: 4,
                      offset: Offset(0, 0),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, // Aligns content to the start
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/images/planicon.png", height: 20, width: 20),
                          SizedBox(width: 15),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "From",
                                hintStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: Appcolors.fromtotextcolor),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(width: 35,),
                          Expanded(
                            child: Container(
                              height: 2,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Appcolors.startcolor,
                                    Appcolors.endtcolor,
                                    Appcolors.endtcolor.withOpacity(0.5),
                                    Appcolors.endtcolor2.withOpacity(0.3),
                                    Appcolors.endtcolor2.withOpacity(0.0),
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                borderRadius: BorderRadius.circular(20)
                              ),
                            ),
                          ),
                          SizedBox(width: 8),
                          Image.asset("assets/images/arrowicon.png", height: 35, width: 35),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset("assets/images/locationicon.png", height: 20, width: 20),
                          SizedBox(width: 15),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "To",
                                hintStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: Appcolors.fromtotextcolor),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: TextFormField(
                        decoration: InputDecoration(
                            suffixIcon: Icon(Icons.calendar_today_rounded,size: 18,),
                            label: Text("Departure",style: TextStyle(fontSize: 12,color: Appcolors.textcolor,fontWeight: FontWeight.w400),),
                            hintText: "Sat, 23 Mar - 2024",
                            hintStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide: BorderSide(
                                    color:Appcolors.outlinebordercolor,
                                    width: 1
                                )
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide: BorderSide(
                                    color: Colors.grey.withOpacity(.4),
                                    width: 1
                                )
                            )
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      flex: 1,
                      child: TextFormField(
                        decoration: InputDecoration(
                            isDense: false,
                            suffixIcon: Icon(Icons.calendar_today_rounded,size: 18,),
                            label: Text("Return",style: TextStyle(fontSize: 12,color: Appcolors.textcolor,fontWeight: FontWeight.w400),),
                            hintText: "Sat, 23 Mar - 2024",
                            hintStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide: BorderSide(
                                    color:Appcolors.outlinebordercolor,
                                    width: 1
                                )
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide: BorderSide(
                                    color: Colors.grey.withOpacity(.4),
                                    width: 1
                                )
                            )
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: TextFormField(
                        decoration: InputDecoration(
                            isDense: false,
                            label: Text("Travelers",style: TextStyle(fontSize: 12,color: Appcolors.textcolor,fontWeight: FontWeight.w400),),
                            hintText: "1 Passenger",
                            hintStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide: BorderSide(
                                    color:Appcolors.outlinebordercolor,
                                    width: 1
                                )
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide: BorderSide(
                                    color: Colors.grey.withOpacity(.4),
                                    width: 1
                                )
                            )
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      flex: 1,
                      child: TextFormField(
                        decoration: InputDecoration(
                            label: Text("Cabin Class",style: TextStyle(fontSize: 12,color: Appcolors.textcolor,fontWeight: FontWeight.w400),),
                            hintText: "Economy Clas",
                            hintStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide: BorderSide(
                                    color:Appcolors.outlinebordercolor,
                                    width: 1
                                )
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide: BorderSide(
                                    color: Colors.grey.withOpacity(.4),
                                    width: 1
                                )
                            )
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (){
                      Get.to(TravelDetailsPage());
                    },
                    child: Container(
                        height: 40,
                        width: 139,
                        decoration: BoxDecoration(
                          color: Appcolors.buttonbackgroundcolor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(child: Text("Search Flights",style: TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.w500),))),
                  )
                ],
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Text("Travel Inspirations",style: TextStyle(
                        color: Appcolors.textcolor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                    ),),
                    Spacer(),
                    Text("Dubai",style: TextStyle(
                        color: Appcolors.textcolor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                    ),),
                    Icon(Icons.keyboard_arrow_down,color: Appcolors.appBarColor,size: 30,)
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  height: 320,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Images.length,
                    itemBuilder: (BuildContext context, int index) { // Corrected the parameters
                      return Container(
                        height: 313,
                        width: 200, // Specify a width for the container (optional)
                        margin: EdgeInsets.symmetric(horizontal: 5), // Optional: Add some margin
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(Images[index]['iconPath']), // Use AssetImage
                            fit: BoxFit.cover, // Optional: Fit the image within the container
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("From AED867",style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500
                              ),),

                              Text("Economy round trip",style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400
                              ),),Text("Saudi Arabia ",style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600
                              ),),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Text("Flight & Hotel Packages",style: TextStyle(
                        color: Appcolors.textcolor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                    ),),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  height: 320,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Images.length,
                    itemBuilder: (BuildContext context, int index) { // Corrected the parameters
                      return Container(
                        height: 313,
                        width: 396, // Specify a width for the container (optional)
                        margin: EdgeInsets.symmetric(horizontal: 5), // Optional: Add some margin
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(secoundImages[index]['iconPath']), // Use AssetImage
                            fit: BoxFit.cover, // Optional: Fit the image within the container
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: 50,)

            ],
          ),
        ),
      ),
    );
  }


}

