import '../Constant/component.dart';

class TravelDetailsPage extends StatefulWidget {
  const TravelDetailsPage({super.key});

  @override
  State<TravelDetailsPage> createState() => _TravelDetailsPageState();
}

class _TravelDetailsPageState extends State<TravelDetailsPage> {

  PackageController packageController=Get.put(PackageController());
  BookingController bookingController=Get.put(BookingController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Appcolors.appBarColor,
        title: Text("Ezy Travel",style: TextStyle(fontSize: 18,color:Appcolors.textcolor,fontWeight: FontWeight.w500),),
        // Automatically includes a back button
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color:Appcolors.textcolor),
          onPressed: () {
            Navigator.pop(context);  // Pops back to the previous screen
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    Text(
                    "BLR - Bengaluru to DXB - Dubai",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700,color: Appcolors.textcolor),
                      ),
                      SizedBox(height: 5.0,),
                      Text(
                    "Departure: Sat, 23 Mar - Return: Sat, 23 Mar",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500,color: Appcolors.textcolor),
                      ),
                      SizedBox(height: 5.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                    "(Round Trip)",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500,color: Colors.red),
                          ),
                          SizedBox(width: 8.0,),

                          Text(
                            "Modify Search",
                            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500,color: Appcolors.startcolor),
                          ),
                        ],
                      ),
                      SizedBox(height: 8.0,),

                      Divider(color: Appcolors.dividerColor,endIndent: 10,indent: 10,),

                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Sort",
                                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600,color: Appcolors.textcolor),
                                ),
                                Icon(Icons.keyboard_arrow_down_rounded,color: Appcolors.textcolor,size: 15,)
                              ],
                            ),
                            Text(
                              "Non - Stop",
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600,color: Appcolors.textcolor),
                            ),
                            Row(
                              children: [
                                Text(
                                  "Filter",
                                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600,color: Appcolors.textcolor),
                                ),
                                SizedBox(width: 5,),
                                Image.asset(
                                  "assets/images/filter.png",
                                  height: 15,
                                ),
                              ],
                            ),


                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),

        Container(
          height: 50, // Adjust height as per your design
          child: Obx(()=>ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: packageController.packageList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(
                    padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.blue, // Replace with Appcolors.appBarColor
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            packageController.packageList[index].date ?? '',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.black, // Replace with Appcolors.textcolor
                            ),
                          ),
                        ),
                        SizedBox(height: 5), // Add space between texts
                        Text(
                          packageController.packageList[index].desc ?? '',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.black, // Replace with Appcolors.textcolor
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),

              SizedBox(height: 10,),

              Row(
                children: [
                  Text(
                    "851 Flight Found",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500,color: Appcolors.textcolor),
                  ),
                ],
              ),
        Obx(() => Column(
          children: [
            ListView.builder(
                shrinkWrap: true, // Try removing this if the layout still fails
                itemCount: bookingController.bookingList.length,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
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
                      child:  Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/logotheme.png",
                                      height: 35,
                                      width: 35,
                                    ),
                                    SizedBox(width: 8.0,),
                                    Text(
                                      "Onward - Garuda Indonesia",
                                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500,color: Appcolors.textcolor),
                                    ),
                                    Spacer(),
                                    Text(
                                      "AED 409",
                                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700,color: Appcolors.appthemeColor),
                                    ),
                                  ],
                                ),

                                SizedBox(height: 10.0,),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "14:35",
                                            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700,color: Appcolors.textcolor),
                                          ),
                                          Text(
                                            "BLR - Bengaluru",
                                            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400,color: Appcolors.textcolor),
                                          ),
                                        ],
                                      ),

                                      Column(

                                        children: [
                                          Stack(
                                            alignment: Alignment.center, // Aligns children in the center
                                            children: [
                                              // Dotted line container
                                              Container(
                                                width: 90,
                                                child: DottedLineWidget(),
                                              ),
                                              // Centered image
                                              Positioned(
                                                child: Image.asset(
                                                  "assets/images/airplane.png",
                                                  height: 20,
                                                  width: 20,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            "4h 30m",
                                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500,color: Appcolors.textcolor),
                                          ),Text(
                                            "2 Stops",
                                            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500,color: Appcolors.textcolor),
                                          ),
                                        ],
                                      ),

                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            "21:55",
                                            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700,color: Appcolors.textcolor),
                                          ),
                                          Text(
                                            "DXB - Dubai",
                                            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400,color: Appcolors.textcolor),
                                          ),
                                        ],
                                      ),

                                    ],
                                  ),
                                ),


                                SizedBox(height: 5.0,),

                                Divider(color: Appcolors.dividerColor),
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/logotheme.png",
                                      height: 35,
                                      width: 35,
                                    ),
                                    SizedBox(width: 8.0,),
                                    Text(
                                      "Return - Garuda Indonesia",
                                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500,color: Appcolors.textcolor),
                                    ),
                                    Spacer(),
                                    Text(
                                      "AED 359",
                                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700,color: Appcolors.appthemeColor),
                                    ),
                                  ],
                                ),

                                SizedBox(height: 10.0,),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "21:55",
                                            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700,color: Appcolors.textcolor),
                                          ),
                                          Text(
                                            "DXB - Dubai",
                                            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400,color: Appcolors.textcolor),
                                          ),
                                        ],
                                      ),

                                      Column(
                                        children: [
                                          Stack(
                                            alignment: Alignment.center, // Aligns children in the center
                                            children: [
                                              // Dotted line container
                                              Container(
                                                width: 90,
                                                child: DottedLineWidget(),
                                              ),
                                              // Centered image
                                              Positioned(
                                                child: Image.asset(
                                                  "assets/images/airplane.png",
                                                  height: 20,
                                                  width: 20,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            "4h 30m",
                                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500,color: Appcolors.textcolor),
                                          ),
                                        ],
                                      ),

                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            "14:35",
                                            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700,color: Appcolors.textcolor),
                                          ),
                                          Text(
                                            "BLR - Bengaluru",
                                            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400,color: Appcolors.textcolor),
                                          ),
                                        ],
                                      ),

                                    ],
                                  ),
                                ),

                                SizedBox(height: 10.0,),
                                DottedLineWidget(),
                                SizedBox(height: 10.0,),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(2.0),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          color: Appcolors.appBarColor, // Border color
                                          width: 1.0,         // Border width
                                        ),
                                        borderRadius: BorderRadius.circular(15), // Rounded corners
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                        child: Text(
                                          "Cheapest",
                                          style: TextStyle(fontSize: 9, fontWeight: FontWeight.w500,color: Appcolors.appthemeColor),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10.0,),
                                    Container(
                                      padding: EdgeInsets.all(2.0),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          color: Colors.blueAccent, // Border color
                                          width: 1.0,         // Border width
                                        ),
                                        borderRadius: BorderRadius.circular(15), // Rounded corners
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                        child: Text(
                                          "Refundable",
                                          style: TextStyle(fontSize: 9, fontWeight: FontWeight.w500,color:Colors.blueAccent),
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Row(
                                      children: [
                                        Text(
                                          "Flight Details",
                                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600,color:Colors.red),
                                        ),
                                        Icon(Icons.keyboard_arrow_down_rounded,color: Colors.red,size: 15,)
                                      ],
                                    ),
                                  ],
                                ),

                                SizedBox(height: 5.0,),

                              ],
                            ),
                          ),
                        ),

                      );

                    },
                  ),
          ],
        ),

        )

            ],

          ),
        ),
      ),
    );
  }
}

class DottedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.grey
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke;

    double dashWidth = 2;
    double dashSpace = 2;
    double startX = 0;
    while (startX < size.width) {
      canvas.drawLine(
        Offset(startX, 0),
        Offset(startX + dashWidth, 0),
        paint,
      );
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class DottedLineWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1,
      width: MediaQuery.of(context).size.width,
      child: CustomPaint(
        painter: DottedLinePainter(),
      ),
    );
  }
}
