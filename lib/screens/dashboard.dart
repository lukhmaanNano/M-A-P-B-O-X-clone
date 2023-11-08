import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mapbox/styles/CommonSize.dart';
import 'package:mapbox/styles/CommonTextStyle.dart';
import 'package:mapbox/styles/Responsive.dart';
import 'package:mapbox/styles/common%20Color.dart';
import 'package:mapbox/widgets/badge.dart';
import '../controller/hoverController.dart';
import '../widgets/dialogPoupup.dart';
import '../widgets/divider.dart';
import 'package:get/get.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
final HoverController colorControl=Get.find<HoverController>();
  bool pageColor=false,matrix = false,navigation=false,navigationSolution=false,
      adas=false,dash=false,platform=false,searchOverview=false,searchBox=false,
      geoCodeing=false,address=false,traffic=false,movement=false,boundaries=false,
      studio=false,maps=false,mapBoxGl=false,mobileMap=false,staticMap=false,
      mapBoxTiling=false,atlas=false,dataVis=false,storeLocation=false,turnNavigation=false,
      logisti=false,travel=false,outdoors=false,retail=false,realEstate=false,automo=false,
      weather=false,inte=false,telecom=false,demand=false,seeAll=false,docMap=false,docNav=false,
      docSer=false,docVis=false,docData=false,supoort=false;
  Curve cur = Curves.bounceIn;
  Duration duration=const Duration(milliseconds: 100);
  List<Widget> carouselItems = [
    Stack(clipBehavior: Clip.none, children: [
      ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset("Assets/slide1.jpeg")),
      Positioned(
        left: 50,
        child: SizedBox(
            height: 500,
            width: 340,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                badge("INDUSTRY UPDATE"),
                Text("Simplify Every Phase Of Running A Delivery Business",
                    style: medium2),
                Row(
                  children: [
                    Text("Mapbox for Logistics", style: textBtn),
                    const SizedBox(width: 10),
                    const Icon(
                      Icons.arrow_forward,
                      color: iconColor,
                      size: 18,
                    ),
                  ],
                )
              ],
            )),
      )
    ]),
    Stack(
      clipBehavior: Clip.none,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset("Assets/slide2.png")),
        Positioned(
          left: 50,
          child: SizedBox(
              height: 500,
              width: 340,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  badge("NEW PRODUCT"),
                  Text(
                      "Mapbox Snowflake Native App For Geocoding And Boundaries",
                      style: medium2),
                  Row(
                    children: [
                      Text("Explore Integration", style: textBtn),
                      const SizedBox(width: 10),
                      const Icon(
                        Icons.arrow_forward,
                        color: iconColor,
                        size: 18,
                      ),
                    ],
                  )
                ],
              )),
        )
      ],
    ),
    Stack(
      clipBehavior: Clip.none,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset("Assets/slide3.png")),
        Positioned(
          left: 50,
          child: SizedBox(
              height: 500,
              width: 340,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  badge("Product UPDATE"),
                  Text(
                      "New 3D Environments Enhance Wayfinding And Location Awareness",
                      style: medium2),
                  Row(
                    children: [
                      Text("Explore Mapbox", style: textBtn),
                      const SizedBox(width: 10),
                      const Icon(
                        Icons.arrow_forward,
                        color: iconColor,
                        size: 18,
                      ),
                    ],
                  )
                ],
              )),
        )
      ],
    ),
  ];

  List<Widget> company = [
    SvgPicture.asset("Assets/gm.svg", color: brandIcon),
    SvgPicture.asset("Assets/cnn.svg", color: brandIcon),
    SvgPicture.asset("Assets/bmw.svg", color: brandIcon),
    SvgPicture.asset("Assets/national.svg", color: brandIcon),
    SvgPicture.asset("Assets/stra.svg", color: brandIcon),
    SvgPicture.asset("Assets/carrot.svg", color: brandIcon),
    SvgPicture.asset("Assets/weather.svg", color: brandIcon),
    SvgPicture.asset("Assets/newyork.svg", color: brandIcon),
    SvgPicture.asset("Assets/toyota.svg", color: brandIcon),
    SvgPicture.asset("Assets/rever.svg", color: brandIcon),
  ];

  @override
  void initState() {
    super.initState();
  }
  void productPopup(context) {
    appBarDialog(
      context,
        StatefulBuilder(
          builder:
              (BuildContext context, void Function(void Function()) setState) =>
            MouseRegion(
              onExit:(_){
                Navigator.pop(context);
              },
              child: Container(
              height: 600,
              width: displayWidth(context)* 0.7,
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    flex:1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("LOGISTICS",style: medium5),
                        const SizedBox(height:10),
                        MouseRegion(
                          onHover:(_){
                            setState(() {
                              matrix = true;
                            });
                          },
                          onExit:(_){
                            setState(() {
                              matrix = false;
                            });
                          },
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundColor:matrix== false ? Colors.grey.shade900 : iconColor.withOpacity(0.2),
                                radius:20,
                                child:const Icon(Icons.grid_view_rounded,color:iconColor)
                              ),
                              const SizedBox(width:10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                Row(
                                  children: [
                                    AnimatedDefaultTextStyle(
                                    curve:cur,
                                    style: matrix== false ? headerMini2 : headerMini22,
                                    duration: duration,
                                    child: const Text("Matrix API")),
                                    const SizedBox(width:5),
                                    badgeMini("NEW")
                                  ],
                                ),
                                  const SizedBox(height:5),
                                SizedBox(
                                    width:displayWidth(context) * 0.16,
                                    child: AnimatedDefaultTextStyle(
                                        curve:cur,
                                        style: matrix== false ? medium6 : medium66,
                                        duration:duration,
                                        child: const Text("Automatically calculate travel distances & ETAs"))),
                              ],)
                            ]
                          ),
                        ),
                        const SizedBox(height:20),
                        Text("NAVIGATION",style: medium5),
                        const SizedBox(height:10),
                        MouseRegion(
                          onHover:(_){
                            setState(() {
                              navigation = true;
                            });
                          },
                          onExit:(_){
                            setState(() {
                              navigation = false;
                            });
                          },
                          child: Row(
                              children: [
                                CircleAvatar(
                                    backgroundColor:navigation== false ? Colors.grey.shade900 : iconColor.withOpacity(0.2),
                                    radius:20,
                                    child:const Icon(Icons.navigation_rounded,color:iconColor)
                                ),
                                const SizedBox(width:10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        AnimatedDefaultTextStyle(
                                            curve: cur,
                                            style: navigation== false ? headerMini2 : headerMini22,
                                            duration: duration,
                                            child: const Text("Navigation SDK")),
                                        const SizedBox(width:5),
                                        badgeMini("NEW")
                                      ],
                                    ),
                                    const SizedBox(height:5),
                                    SizedBox(
                                        width:displayWidth(context) * 0.16,
                                        child: AnimatedDefaultTextStyle(
                                            curve: cur,
                                            style: navigation== false ? medium6 : medium66,
                                            duration: duration,
                                            child: const Text("Turn-by-Turn Routing for ios & android"))),
                                  ],)
                              ]
                          ),
                        ),
                        const SizedBox(height:20),
                        MouseRegion(
                          onHover:(_){
                            setState(() {
                              navigationSolution = true;
                            });
                          },
                          onExit:(_){
                            setState(() {
                              navigationSolution = false;
                            });
                          },
                          child: Row(
                              children: [
                                CircleAvatar(
                                    backgroundColor:navigationSolution== false ? Colors.grey.shade900 : iconColor.withOpacity(0.2),
                                    radius:20,
                                    child:const Icon(Icons.route_rounded,color:iconColor)
                                ),
                                const SizedBox(width:10),
                                hoverWidget(navigationSolution,"Navigation Solutions","SDKs, APIs, EV and more"),
                              ]
                          ),
                        ),
                        const SizedBox(height:20),
                        Text("AUTOMOTIVE",style: medium5),
                        const SizedBox(height:10),
                        MouseRegion(
                          onHover:(_){
                            setState(() {
                              adas = true;
                            });
                          },
                          onExit:(_){
                            setState(() {
                              adas = false;
                            });
                          },
                          child: Row(
                              children: [
                                CircleAvatar(
                                    backgroundColor:adas== false ? Colors.grey.shade900 : iconColor.withOpacity(0.2),
                                    radius:20,
                                    child:const Icon(Icons.contactless_rounded,color:iconColor)
                                ),
                                const SizedBox(width:10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        AnimatedDefaultTextStyle(
                                            curve:cur,
                                            style: adas== false ? headerMini2 : headerMini22,
                                            duration: duration,
                                            child: const Text("ADAS SDK")),
                                        const SizedBox(width:5),
                                        badgeMini("NEW")
                                      ],
                                    ),
                                    const SizedBox(height:5),
                                    SizedBox(
                                        width:displayWidth(context) * 0.16,
                                        child: AnimatedDefaultTextStyle(
                                            curve:cur,
                                            style: adas== false ? medium6 : medium66,
                                            duration:duration,
                                            child: const Text("Predict what’s ahead on the road"))),
                                  ],)
                              ]
                          ),
                        ),
                        const SizedBox(height:20),
                        MouseRegion(
                          onHover:(_){
                            setState(() {
                              dash = true;
                            });
                          },
                          onExit:(_){
                            setState(() {
                              dash = false;
                            });
                          },
                          child: Row(
                              children: [
                                CircleAvatar(
                                    backgroundColor:dash== false ? Colors.grey.shade900 : iconColor.withOpacity(0.2),
                                    radius:20,
                                    child:const Icon(Icons.commute_rounded,color:iconColor)
                                ),
                                const SizedBox(width:10),
                                hoverWidget(dash,"Dash","Beautiful maps, live traffic, music and voice for cars"),
                              ]
                          ),
                        ),
                        const SizedBox(height:20),
                        Text("MAPBOX PLATFORM",style: medium5),
                        const SizedBox(height:10),
                        MouseRegion(
                          onHover:(_){
                            setState(() {
                              platform = true;
                            });
                          },
                          onExit:(_){
                            setState(() {
                              platform = false;
                            });
                          },
                          child: Row(
                              children: [
                                CircleAvatar(
                                    backgroundColor:platform== false ? Colors.grey.shade900 : iconColor.withOpacity(0.2),
                                    radius:20,
                                    child:const Icon(Icons.schema_rounded,color:iconColor)
                                ),
                                const SizedBox(width:10),
                                hoverWidget(platform,"Infrastructure Platform","Reliable infrastructure for your apps"),
                              ]
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex:1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("SEARCH",style: medium5),
                        const SizedBox(height:10),
                        MouseRegion(
                          onHover:(_){
                            setState(() {
                              searchOverview = true;
                            });
                          },
                          onExit:(_){
                            setState(() {
                              searchOverview = false;
                            });
                          },
                          child: Row(
                              children: [
                                CircleAvatar(
                                    backgroundColor:searchOverview== false ? Colors.grey.shade900 : iconColor.withOpacity(0.2),
                                    radius:20,
                                    child:const Icon(Icons.location_on_rounded,color:iconColor)
                                ),
                                const SizedBox(width:10),
                                hoverWidget(searchOverview,"Search Overview","APIs and SDKs the unlock location search"),
                              ]
                          ),
                        ),
                        const SizedBox(height:20),
                        MouseRegion(
                          onHover:(_){
                            setState(() {
                              searchBox = true;
                            });
                          },
                          onExit:(_){
                            setState(() {
                              searchBox = false;
                            });
                          },
                          child: Row(
                              children: [
                                CircleAvatar(
                                    backgroundColor:searchBox== false ? Colors.grey.shade900 : iconColor.withOpacity(0.2),
                                    radius:20,
                                    child:const Icon(Icons.near_me_rounded,color:iconColor)
                                ),
                                const SizedBox(width:10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        AnimatedDefaultTextStyle(
                                            curve:cur,
                                            style: searchBox== false ? headerMini2 : headerMini22,
                                            duration: duration,
                                            child: const Text("Search Box")),
                                        const SizedBox(width:5),
                                        badgeMini("NEW")
                                      ],
                                    ),
                                    const SizedBox(height:5),
                                    SizedBox(
                                        width:displayWidth(context) * 0.16,
                                        child: AnimatedDefaultTextStyle(
                                            curve:cur,
                                            style: searchBox== false ? medium6 : medium66,
                                            duration:duration,
                                            child: const Text("Interactive search for addresses, places, and POIs"))),
                                  ],)
                              ]
                          ),
                        ),
                        const SizedBox(height:20),
                        MouseRegion(
                          onHover:(_){
                            setState(() {
                              geoCodeing = true;
                            });
                          },
                          onExit:(_){
                            setState(() {
                              geoCodeing = false;
                            });
                          },
                          child: Row(
                              children: [
                                CircleAvatar(
                                    backgroundColor:geoCodeing== false ? Colors.grey.shade900 : iconColor.withOpacity(0.2),
                                    radius:20,
                                    child:const Icon(Icons.share_location_rounded,color:iconColor)
                                ),
                                const SizedBox(width:10),
                                hoverWidget(geoCodeing,"Geocoding","Geolocate and validate addresses"),
                              ]
                          ),
                        ),
                        const SizedBox(height:20),
                        MouseRegion(
                          onHover:(_){
                            setState(() {
                              address = true;
                            });
                          },
                          onExit:(_){
                            setState(() {
                              address = false;
                            });
                          },
                          child: Row(
                              children: [
                                CircleAvatar(
                                    backgroundColor:address== false ? Colors.grey.shade900 : iconColor.withOpacity(0.2),
                                    radius:20,
                                    child:const Icon(Icons.signpost_rounded,color:iconColor)
                                ),
                                const SizedBox(width:10),
                                hoverWidget(address,"Address Autofill","Simplify and enhance address form fill"),
                              ]
                          ),
                        ),
                        const SizedBox(height:20),
                        Text("DATA",style: medium5),
                        const SizedBox(height:10),
                        MouseRegion(
                          onHover:(_){
                            setState(() {
                              traffic = true;
                            });
                          },
                          onExit:(_){
                            setState(() {
                              traffic = false;
                            });
                          },
                          child: Row(
                              children: [
                                CircleAvatar(
                                    backgroundColor:traffic== false ? Colors.grey.shade900 : iconColor.withOpacity(0.2),
                                    radius:20,
                                    child:const Icon(Icons.traffic_rounded,color:iconColor)
                                ),
                                const SizedBox(width:10),
                                hoverWidget(traffic,"Traffic Data","Industry-leading data accuracy"),
                              ]
                          ),
                        ),
                        const SizedBox(height:20),
                        MouseRegion(
                          onHover:(_){
                            setState(() {
                              movement = true;
                            });
                          },
                          onExit:(_){
                            setState(() {
                              movement = false;
                            });
                          },
                          child: Row(
                              children: [
                                CircleAvatar(
                                    backgroundColor:movement== false ? Colors.grey.shade900 : iconColor.withOpacity(0.2),
                                    radius:20,
                                    child:const Icon(Icons.alt_route_rounded,color:iconColor)
                                ),
                                const SizedBox(width:10),
                                hoverWidget(movement,"Movement Data","Dataset of population movement"),
                              ]
                          ),
                        ),
                        const SizedBox(height:20),
                        MouseRegion(
                          onHover:(_){
                            setState(() {
                              boundaries = true;
                            });
                          },
                          onExit:(_){
                            setState(() {
                              boundaries = false;
                            });
                          },
                          child: Row(
                              children: [
                                CircleAvatar(
                                    backgroundColor:boundaries== false ? Colors.grey.shade900 : iconColor.withOpacity(0.2),
                                    radius:20,
                                    child:const Icon(Icons.flip_to_back_rounded,color:iconColor)
                                ),
                                const SizedBox(width:10),
                                hoverWidget(boundaries,"Boundaries","4 million global boundaries"),
                              ]
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex:1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              width:0.6,
                              color: iconColor,  // red as border color
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top:10.0,left:14.0,bottom:8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("MAPS",style: medium5),
                                const SizedBox(height:10),
                                MouseRegion(
                                  onHover:(_){
                                    setState(() {
                                      studio = true;
                                    });
                                  },
                                  onExit:(_){
                                    setState(() {
                                      studio = false;
                                    });
                                  },
                                  child: Row(
                                      children: [
                                        CircleAvatar(
                                            backgroundColor:studio== false ? Colors.grey.shade900 : iconColor.withOpacity(0.2),
                                            radius:20,
                                            child:const Icon(Icons.palette_rounded,color:iconColor)
                                        ),
                                        const SizedBox(width:10),
                                        hoverWidget(studio,"Studio","Design beautiful custom maps"),
                                      ]
                                  ),
                                ),
                                const SizedBox(height:20),
                                MouseRegion(
                                  onHover:(_){
                                    setState(() {
                                      maps = true;
                                    });
                                  },
                                  onExit:(_){
                                    setState(() {
                                      maps = false;
                                    });
                                  },
                                  child: Row(
                                      children: [
                                        CircleAvatar(
                                            backgroundColor:maps== false ? Colors.grey.shade900 : iconColor.withOpacity(0.2),
                                            radius:20,
                                            child:const Icon(Icons.map_rounded,color:iconColor)
                                        ),
                                        const SizedBox(width:10),
                                        hoverWidget(maps,"Maps","Smooth, fast, cross-platform maps"),
                                      ]
                                  ),
                                ),
                                const SizedBox(height:20),
                                MouseRegion(
                                  onHover:(_){
                                    setState(() {
                                      mapBoxGl = true;
                                    });
                                  },
                                  onExit:(_){
                                    setState(() {
                                      mapBoxGl = false;
                                    });
                                  },
                                  child: Row(
                                      children: [
                                        CircleAvatar(
                                            backgroundColor:mapBoxGl== false ? Colors.grey.shade900 : iconColor.withOpacity(0.2),
                                            radius:20,
                                            child:const Icon(Icons.all_out_rounded,color:iconColor)
                                        ),
                                        const SizedBox(width:10),
                                        hoverWidget(mapBoxGl,"Mapbox GL JS","Build fast, immersive maps for the web"),
                                      ]
                                  ),
                                ),
                                const SizedBox(height:20),
                                MouseRegion(
                                  onHover:(_){
                                    setState(() {
                                      mobileMap = true;
                                    });
                                  },
                                  onExit:(_){
                                    setState(() {
                                      mobileMap = false;
                                    });
                                  },
                                  child: Row(
                                      children: [
                                        CircleAvatar(
                                            backgroundColor:mobileMap== false ? Colors.grey.shade900 : iconColor.withOpacity(0.2),
                                            radius:20,
                                            child:const Icon(CupertinoIcons.device_phone_portrait,color:iconColor)
                                        ),
                                        const SizedBox(width:10),
                                        hoverWidget(mobileMap,"Mobile Maps SDK","Develop powerful maps for iOS and Android"),
                                      ]
                                  ),
                                ),
                                const SizedBox(height:20),
                                MouseRegion(
                                  onHover:(_){
                                    setState(() {
                                      staticMap = true;
                                    });
                                  },
                                  onExit:(_){
                                    setState(() {
                                      staticMap = false;
                                    });
                                  },
                                  child: Row(
                                      children: [
                                        CircleAvatar(
                                            backgroundColor:staticMap== false ? Colors.grey.shade900 : iconColor.withOpacity(0.2),
                                            radius:20,
                                            child:const Icon(Icons.computer_rounded,color:iconColor)
                                        ),
                                        const SizedBox(width:10),
                                        hoverWidget(staticMap,"Static Maps","Embed static maps anywhere you can place an image"),
                                      ]
                                  ),
                                ),
                                const SizedBox(height:20),
                                MouseRegion(
                                  onHover:(_){
                                    setState(() {
                                      mapBoxTiling = true;
                                    });
                                  },
                                  onExit:(_){
                                    setState(() {
                                      mapBoxTiling = false;
                                    });
                                  },
                                  child: Row(
                                      children: [
                                        CircleAvatar(
                                            backgroundColor:mapBoxTiling== false ? Colors.grey.shade900 : iconColor.withOpacity(0.2),
                                            radius:20,
                                            child:const Icon(Icons.window_rounded,color:iconColor)
                                        ),
                                        const SizedBox(width:10),
                                        hoverWidget(mapBoxTiling,"Mapbox Tiling Service","Bring your own custom data to your map"),
                                      ]
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Text("SELF-HOSTED",style: medium5),
                        const SizedBox(height:10),
                        MouseRegion(
                          onHover:(_){
                            setState(() {
                              atlas = true;
                            });
                          },
                          onExit:(_){
                            setState(() {
                              atlas = false;
                            });
                          },
                          child: Row(
                              children: [
                                CircleAvatar(
                                    backgroundColor:atlas== false ? Colors.grey.shade900 : iconColor.withOpacity(0.2),
                                    radius:20,
                                    child:const Icon(Icons.pix_rounded,color:iconColor)
                                ),
                                const SizedBox(width:10),
                                hoverWidget(atlas,"Atlas","Mapbox on-premises"),
                              ]
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
          ),
            ),
        ),
        popupBg
      );
  }

  void solutionPopup(context) {
    appBarDialog(
        context,
        StatefulBuilder(
          builder:
              (BuildContext context, void Function(void Function()) setState) =>
            MouseRegion(
            onExit:(_){
              Navigator.pop(context);
            },
            child: Row(
              children: [
                Expanded(
                  flex:2,
                  child: Container(
                    height: displayHeight(context)* 0.7,
                    width: displayWidth(context)* 0.4,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          bottomLeft: Radius.circular(8.0)
                      ),
                      color:popupBg,
                    ),
                    padding: const EdgeInsets.all(22.0),
                    child: Column(
                      children: [
                        const SizedBox(height:20),
                        Row(
                          children: [
                            CircleAvatar(
                                backgroundColor: Colors.grey.shade900,
                                radius:16,
                                child:const Icon(Icons.maps_home_work_rounded,color:badgeGreen,size:18)
                            ),
                            const SizedBox(width:10),
                            Text("BY INDUSTRY",style: medium5),
                          ],
                        ),
                        const SizedBox(height:10),
                        dividerWidget(),
                        const SizedBox(height:10),
                        Row(
                          children:[
                            Expanded(
                              child: Column(children: [
                                MouseRegion(
                                  onHover:(_){
                                    setState(() {
                                      logisti = true;
                                    });
                                  },
                                  onExit:(_){
                                    setState(() {
                                      logisti = false;
                                    });
                                  },
                                  child: hoverWidget(logisti,"Logistics","Simplify each phase of delivery"),
                                ),
                                const SizedBox(height:20),
                                MouseRegion(
                                  onHover:(_){
                                    setState(() {
                                      travel = true;
                                    });
                                  },
                                  onExit:(_){
                                    setState(() {
                                      travel = false;
                                    });
                                  },
                                  child: hoverWidget(travel,"Travel","Help users plan, book, and explore the world all in one place"),
                                ),
                                const SizedBox(height:20),
                                MouseRegion(
                                  onHover:(_){
                                    setState(() {
                                      outdoors = true;
                                    });
                                  },
                                  onExit:(_){
                                    setState(() {
                                      outdoors = false;
                                    });
                                  },
                                  child: hoverWidget(outdoors,"Outdoors","Detailed maps for athletes and adventures"),
                                ),
                                const SizedBox(height:20),
                                MouseRegion(
                                  onHover:(_){
                                    setState(() {
                                      retail = true;
                                    });
                                  },
                                  onExit:(_){
                                    setState(() {
                                      retail = false;
                                    });
                                  },
                                  child: hoverWidget(retail,"Retail","Seamless omnichannel shopping experiences"),
                                ),
                                const SizedBox(height:20),
                                MouseRegion(
                                  onHover:(_){
                                    setState(() {
                                      realEstate = true;
                                    });
                                  },
                                  onExit:(_){
                                    setState(() {
                                      realEstate = false;
                                    });
                                  },
                                  child: hoverWidget(realEstate,"Real Estate","Visualize property listings, rentals, and market data"),
                                ),
                              ],),
                            ),
                            Expanded(
                              child: Column(children: [
                                MouseRegion(
                                  onHover:(_){
                                    setState(() {
                                      automo = true;
                                    });
                                  },
                                  onExit:(_){
                                    setState(() {
                                      automo = false;
                                    });
                                  },
                                  child: hoverWidget(automo,"Automotive","Integrated navigation experiences"),
                                ),
                                const SizedBox(height:20),
                                MouseRegion(
                                  onHover:(_){
                                    setState(() {
                                      weather = true;
                                    });
                                  },
                                  onExit:(_){
                                    setState(() {
                                      weather = false;
                                    });
                                  },
                                  child: hoverWidget(weather,"Weather","Deliver accurate, real-time weather information to your users"),
                                ),
                                const SizedBox(height:20),
                                MouseRegion(
                                  onHover:(_){
                                    setState(() {
                                      inte = true;
                                    });
                                  },
                                  onExit:(_){
                                    setState(() {
                                      inte = false;
                                    });
                                  },
                                  child: hoverWidget(inte,"Business Intelligence","Enhance data analysis with location intelligence"),
                                ),
                                const SizedBox(height:20),
                                MouseRegion(
                                  onHover:(_){
                                    setState(() {
                                      telecom = true;
                                    });
                                  },
                                  onExit:(_){
                                    setState(() {
                                      telecom = false;
                                    });
                                  },
                                  child: hoverWidget(telecom,"Telecommunications","Visualize real-time coverage and optimize network operations"),
                                ),
                                const SizedBox(height:20),
                                MouseRegion(
                                  onHover:(_){
                                    setState(() {
                                      demand = true;
                                    });
                                  },
                                  onExit:(_){
                                    setState(() {
                                      demand = false;
                                    });
                                  },
                                  child: hoverWidget(demand,"On-Demand Delivery","Boost customer satisfaction and driver loyalty"),
                                ),
                              ],),
                            )
                          ]
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex:1,
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8.0),
                          bottomRight: Radius.circular(8.0)
                      ),
                      color:popupBg1,
                    ),
                    padding: const EdgeInsets.all(22.0),
                    height: displayHeight(context)* 0.7,
                    width: displayWidth(context)* 0.2,
                    child: Column(
                      children: [
                        const SizedBox(height:20),
                        Row(
                          children: [
                            CircleAvatar(
                                backgroundColor: Colors.grey.shade900,
                                radius:16,
                                child:const Icon(Icons.view_cozy_rounded,color:iconColor,size:18)
                            ),
                            const SizedBox(width:10),
                            Text("BY USE CASES",style: medium5),
                          ],
                        ),
                        const SizedBox(height:10),
                        dividerWidget(),
                        const SizedBox(height:10),
                        MouseRegion(
                          onHover:(_){
                            setState(() {
                              dataVis = true;
                            });
                          },
                          onExit:(_){
                            setState(() {
                              dataVis = false;
                            });
                          },
                          child: hoverWidget(dataVis,"Data Visualization","Actionable insights from spatial data"),
                        ),
                        const SizedBox(height:20),
                        MouseRegion(
                          onHover:(_){
                            setState(() {
                              storeLocation = true;
                            });
                          },
                          onExit:(_){
                            setState(() {
                              storeLocation = false;
                            });
                          },
                          child: hoverWidget(storeLocation,"Store Locator","Find stores, places, and people nearby"),
                        ),
                        const SizedBox(height:20),
                        MouseRegion(
                          onHover:(_){
                            setState(() {
                              turnNavigation = true;
                            });
                          },
                          onExit:(_){
                            setState(() {
                              turnNavigation = false;
                            });
                          },
                          child: hoverWidget(turnNavigation,"Turn-by-turn Navigation","Powerful navigation SDKs and APIs"),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      Colors.transparent
    );
  }

  void developersPopup(context) {
    appBarDialog(
        context,
        StatefulBuilder(
          builder:
              (BuildContext context, void Function(void Function()) setState) =>
              MouseRegion(
                onExit:(_){
                  Navigator.pop(context);
                },
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8.0),
                              bottomLeft: Radius.circular(8.0)
                          ),
                          color:popupBg1,
                        ),
                        padding: const EdgeInsets.all(32.0),
                        height: displayHeight(context)* 0.7,
                        width: displayWidth(context)* 0.2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height:20),
                                Row(
                                  children: [
                                    CircleAvatar(
                                        backgroundColor: Colors.grey.shade900,
                                        radius:16,
                                        child:const Icon(Icons.view_cozy_rounded,color:iconColor,size:18)
                                    ),
                                    const SizedBox(width:10),
                                    Text("DOCUMENTATION",style: medium5),
                                  ],
                                ),
                                const SizedBox(height:10),
                                dividerWidget(),
                                const SizedBox(height:10),
                                MouseRegion(
                                  onHover:(_){
                                    setState(() {
                                      docMap = true;
                                    });
                                  },
                                  onExit:(_){
                                    setState(() {
                                      docMap = false;
                                    });
                                  },
                                  child: hoverSingleTextWidget(docMap,"Maps"),
                                ),
                                const SizedBox(height:30),
                                MouseRegion(
                                  onHover:(_){
                                    setState(() {
                                      docNav = true;
                                    });
                                  },
                                  onExit:(_){
                                    setState(() {
                                      docNav = false;
                                    });
                                  },
                                  child: hoverSingleTextWidget(docNav,"Navigation"),
                                ),
                                const SizedBox(height:30),
                                MouseRegion(
                                  onHover:(_){
                                    setState(() {
                                      docSer = true;
                                    });
                                  },
                                  onExit:(_){
                                    setState(() {
                                      docSer = false;
                                    });
                                  },
                                  child: hoverSingleTextWidget(docSer,"Search"),
                                ),
                                const SizedBox(height:30),
                                MouseRegion(
                                  onHover:(_){
                                    setState(() {
                                      docVis = true;
                                    });
                                  },
                                  onExit:(_){
                                    setState(() {
                                      docVis = false;
                                    });
                                  },
                                  child: hoverSingleTextWidget(docVis,"Vision"),
                                ),
                                const SizedBox(height:30),
                                MouseRegion(
                                  onHover:(_){
                                    setState(() {
                                      docData = true;
                                    });
                                  },
                                  onExit:(_){
                                    setState(() {
                                      docData = false;
                                    });
                                  },
                                  child: hoverSingleTextWidget(docData,"Data"),
                                ),
                                const SizedBox(height:30),
                                MouseRegion(
                                  onHover:(_){
                                    setState(() {
                                      seeAll = true;
                                    });
                                  },
                                  onExit:(_){
                                    setState(() {
                                      seeAll = false;
                                    });
                                  },
                                  child: Row(
                                    children: [
                                      AnimatedDefaultTextStyle(
                                          curve: cur,
                                          style: seeAll == false ? textBtn1 : textBtn2,
                                          duration: duration,
                                          child: const Text("See All Docs")),
                                      SizedBox(
                                          width:seeAll == false ? 5 :10
                                      ),
                                      Icon(Icons.arrow_forward,size:18,color: seeAll == false ?  iconColor : iconColorLight)
                                    ],),
                                ),
                              ],
                            ),
                            MouseRegion(
                              onHover:(_){
                                setState(() {
                                  supoort = true;
                                });
                              },
                              onExit:(_){
                                setState(() {
                                  supoort = false;
                                });
                              },
                              child: hoverWidget(supoort,"Support","Contact our support teams"),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex:3,
                      child: Container(
                        height: displayHeight(context)* 0.7,
                        width: displayWidth(context)* 0.6,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(8.0),
                              bottomRight: Radius.circular(8.0)
                          ),
                          color:popupBg,
                        ),
                        padding: const EdgeInsets.all(32.0),
                        child: Column(
                          children: [
                            const SizedBox(height:20),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                                children:[
                                  Expanded(
                                    child: Column(
                                      children: [
                                      Row(
                                        children: [
                                          CircleAvatar(
                                              backgroundColor: Colors.grey.shade900,
                                              radius:16,
                                              child:const Icon(Icons.people_alt_rounded,color:Colors.orange,size:18)
                                          ),
                                          const SizedBox(width:10),
                                          Text("COMMUNITY",style: medium5),
                                        ],
                                      ),
                                      const SizedBox(height:10),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                        child: dividerWidget(),
                                      ),
                                      const SizedBox(height:10),
                                      MouseRegion(
                                        onHover:(_){
                                          setState(() {
                                            logisti = true;
                                          });
                                        },
                                        onExit:(_){
                                          setState(() {
                                            logisti = false;
                                          });
                                        },
                                        child: hoverWidget(logisti,"Developer Blog","The latest from our engineers and product teams, with developer and project spotlights"),
                                      ),
                                      const SizedBox(height:20),
                                      MouseRegion(
                                        onHover:(_){
                                          setState(() {
                                            travel = true;
                                          });
                                        },
                                        onExit:(_){
                                          setState(() {
                                            travel = false;
                                          });
                                        },
                                        child: hoverWidget(travel,"Stack Overflow","Ask your technical questions here, or help a fellow developer"),
                                      ),
                                      const SizedBox(height:20),
                                      MouseRegion(
                                        onHover:(_){
                                          setState(() {
                                            outdoors = true;
                                          });
                                        },
                                        onExit:(_){
                                          setState(() {
                                            outdoors = false;
                                          });
                                        },
                                        child: hoverWidget(outdoors,"Developer Spotlights","Short videos showcasing projects #builtwithmapbox"),
                                      ),
                                      const SizedBox(height:20),
                                      Row(
                                          children:[
                                            FilledButton.icon(
                                              style: txtBtnStyle,
                                              label:const Text("Discord"),
                                              icon:const Icon(Icons.discord_rounded,size:14),
                                              onPressed: (){},
                                            ),
                                            const SizedBox(width:10),
                                            FilledButton.icon(
                                              style: txtBtnStyle,
                                              label:const Text("Twitter"),
                                              icon:const FaIcon(FontAwesomeIcons.twitter,size:14),
                                              onPressed: (){},
                                            )
                                          ]
                                        )
                                    ],),
                                  ),
                                  Expanded(
                                    child: Column(children: [
                                      Row(
                                        children: [
                                          CircleAvatar(
                                              backgroundColor: Colors.grey.shade900,
                                              radius:16,
                                              child:const Icon(Icons.ondemand_video_rounded,color:badgeGreen,size:18)
                                          ),
                                          const SizedBox(width:10),
                                          Text("DEV RESOURCES",style: medium5),
                                        ],
                                      ),
                                      const SizedBox(height:10),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                        child: dividerWidget(),
                                      ),
                                      const SizedBox(height:10),
                                      MouseRegion(
                                        onHover:(_){
                                          setState(() {
                                            automo = true;
                                          });
                                        },
                                        onExit:(_){
                                          setState(() {
                                            automo = false;
                                          });
                                        },
                                        child: hoverWidget(automo,"Hello, World!","Start here for an overview of developer resources"),
                                      ),
                                      const SizedBox(height:20),
                                      MouseRegion(
                                        onHover:(_){
                                          setState(() {
                                            weather = true;
                                          });
                                        },
                                        onExit:(_){
                                          setState(() {
                                            weather = false;
                                          });
                                        },
                                        child: hoverWidget(weather,"API Playgrounds","Kick the tires on our APIs"),
                                      ),
                                      const SizedBox(height:20),
                                      MouseRegion(
                                        onHover:(_){
                                          setState(() {
                                            inte = true;
                                          });
                                        },
                                        onExit:(_){
                                          setState(() {
                                            inte = false;
                                          });
                                        },
                                        child: hoverWidget(inte,"How-to Videos","Watch 5-minute videos of common developer tasks"),
                                      ),
                                      const SizedBox(height:20),
                                      MouseRegion(
                                        onHover:(_){
                                          setState(() {
                                            telecom = true;
                                          });
                                        },
                                        onExit:(_){
                                          setState(() {
                                            telecom = false;
                                          });
                                        },
                                        child: hoverWidget(telecom,"Webinars & Demos","Live coding and deep technical dives"),
                                      ),
                                      const SizedBox(height:20),
                                      MouseRegion(
                                        onHover:(_){
                                          setState(() {
                                            demand = true;
                                          });
                                        },
                                        onExit:(_){
                                          setState(() {
                                            demand = false;
                                          });
                                        },
                                        child: hoverWidget(demand,"Public Code Repositories","Submit bugs and feature requests, track releases, and more"),
                                      ),
                                    ],),
                                  ),
                                  Expanded(
                                    child: Column(children: [
                                      Row(
                                        children: [
                                          CircleAvatar(
                                              backgroundColor: Colors.grey.shade900,
                                              radius:16,
                                              child:Icon(Icons.color_lens,color:Colors.purple.shade300,size:18)
                                          ),
                                          const SizedBox(width:10),
                                          Text("DESIGN RESOURCES",style: medium5),
                                        ],
                                      ),
                                      const SizedBox(height:10),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                        child: dividerWidget(),
                                      ),
                                      const SizedBox(height:10),
                                      MouseRegion(
                                        onHover:(_){
                                          setState(() {
                                            matrix = true;
                                          });
                                        },
                                        onExit:(_){
                                          setState(() {
                                            matrix = false;
                                          });
                                        },
                                        child: hoverWidget(matrix,"Mapbox Studio","Design maps to match your brand and style"),
                                      ),
                                      const SizedBox(height:20),
                                      MouseRegion(
                                        onHover:(_){
                                          setState(() {
                                            navigation = true;
                                          });
                                        },
                                        onExit:(_){
                                          setState(() {
                                            navigation = false;
                                          });
                                        },
                                        child: hoverWidget(navigation,"Gallery","Browse our collection of maps to see what's possible with Studio"),
                                      ),
                                    ],),
                                  )
                                ]
                            )
                          ],
                        ),
                      ),
                    )

                  ],
                ),
              ),
        ),
        Colors.transparent
    );
  }

  void companyPopup(context) {
    appBarDialog(
        context,
        StatefulBuilder(
          builder:
              (BuildContext context, void Function(void Function()) setState) =>
              MouseRegion(
                onExit:(_){
                  Navigator.pop(context);
                },
                child: Container(
                  decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color:popupBg,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MouseRegion(
                          onHover:(_){
                            setState(() {
                              docMap = true;
                            });
                          },
                          onExit:(_){
                            setState(() {
                              docMap = false;
                            });
                          },
                          child: hoverSingleTextWidget(docMap,"About Mapbox"),
                        ),
                        const SizedBox(height:20),
                        MouseRegion(
                          onHover:(_){
                            setState(() {
                              docNav = true;
                            });
                          },
                          onExit:(_){
                            setState(() {
                              docNav = false;
                            });
                          },
                          child: hoverSingleTextWidget(docNav,"Careers"),
                        ),
                        const SizedBox(height:20),
                        MouseRegion(
                          onHover:(_){
                            setState(() {
                              docSer = true;
                            });
                          },
                          onExit:(_){
                            setState(() {
                              docSer = false;
                            });
                          },
                          child: hoverSingleTextWidget(docSer,"Sustainability"),
                        ),
                        const SizedBox(height:20),
                        MouseRegion(
                          onHover:(_){
                            setState(() {
                              docVis = true;
                            });
                          },
                          onExit:(_){
                            setState(() {
                              docVis = false;
                            });
                          },
                          child: hoverSingleTextWidget(docVis,"Social Impact"),
                        ),
                        const SizedBox(height:20),
                        MouseRegion(
                          onHover:(_){
                            setState(() {
                              docData = true;
                            });
                          },
                          onExit:(_){
                            setState(() {
                              docData = false;
                            });
                          },
                          child: hoverSingleTextWidget(docData,"Education"),
                        ),
                        const SizedBox(height:20),
                        MouseRegion(
                          onHover:(_){
                            setState(() {
                              seeAll = true;
                            });
                          },
                          onExit:(_){
                            setState(() {
                              seeAll = false;
                            });
                          },
                          child: hoverSingleTextWidget(seeAll,"Leadership"),
                        ),
                        const SizedBox(height:20),
                        MouseRegion(
                          onHover:(_){
                            setState(() {
                              matrix = true;
                            });
                          },
                          onExit:(_){
                            setState(() {
                              matrix = false;
                            });
                          },
                          child: hoverSingleTextWidget(matrix,"Press"),
                        ),
                        const SizedBox(height:20),
                        MouseRegion(
                          onHover:(_){
                            setState(() {
                              navigationSolution = true;
                            });
                          },
                          onExit:(_){
                            setState(() {
                              navigationSolution = false;
                            });
                          },
                          child: hoverSingleTextWidget(navigationSolution,"Contact"),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
        ),
        Colors.transparent
    );
  }

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: mobile(),
      desktop: web(),
    );
  }

  Widget mobile() {
    return const Text("mobile");
  }

  Widget web() {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        shadowColor:Colors.transparent,
        surfaceTintColor: Colors.transparent,
        automaticallyImplyLeading: false,
        backgroundColor: colorControl.primaryColor.value,
        title: Row(
          children: [
            Image.asset("Assets/logo.png", scale: 18.0),
            const SizedBox(width: 5),
            Text("mapbox", style: logoStyle)
          ],
        ),
        actions: [
          SizedBox(
            width: displayWidth(context) * 0.8,
            child: Row(children: [
              Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MouseRegion(
                        onHover: (_) {
                          productPopup(context);
                        },
                        child: Row(
                          children: [
                            Text("Products", style: primaryStyle),
                            const SizedBox(width:5),
                            const Icon(Icons.expand_more,
                                color: white,
                                size: 14)
                          ],
                        )),
                    MouseRegion(
                        onHover: (_) {
                          solutionPopup(context);
                        },
                        child: Row(
                          children: [
                            Text("Solutions", style: primaryStyle),
                            const SizedBox(width:5),
                            const Icon(
                                Icons.expand_more,
                                color: white,
                                size: 14)
                          ],
                        )),
                    MouseRegion(
                        onHover: (_) {
                          developersPopup(context);
                        },
                        child: Row(
                          children: [
                            Text("Developers", style: primaryStyle),
                            const SizedBox(width:5),
                            const Icon(
                                Icons.expand_more,
                                color: white,
                                size: 14)
                          ],
                        )),
                    MouseRegion(
                        onHover: (_) {
                          companyPopup(context);
                        },
                        child: Row(
                          children: [
                            Text("Company", style: primaryStyle),
                            const SizedBox(width:5),
                            const Icon(
                                Icons.expand_more,
                                color: white,
                                size: 14)
                          ],
                        )),
                    Text("Customers", style: primaryStyle),
                    Text("Pricing", style: primaryStyle),
                    Text("Blog", style: primaryStyle),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Log in", style: primaryStyle),
                    const SizedBox(width: 70),
                    FilledButton(
                        onPressed: () {
                          colorControl.setHovered();
                        },
                        child: Text("Sign up", style: btnStyle)),
                    const SizedBox(width: 20),
                  ],
                ),
              ),
            ]),
          )
        ],
      ),
        body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: displayHeight(context) * 0.2,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Maps and location", style: big),
                      Text("for developers", style: big),
                      const SizedBox(height: 30),
                      Text("Precise location data and powerful developer",
                          style: medium),
                      Text("tools to change the way we navigate the world.",
                          style: medium),
                      const SizedBox(height: 30),
                      FilledButton(
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text("Start mapping for free",
                                style: bigBtnStyle),
                          )),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                CarouselSlider(
                    items: carouselItems,
                    options: CarouselOptions(
                      // height: 600,
                      aspectRatio: 12 / 6,
                      enlargeFactor: 0.4,
                      viewportFraction: 0.7,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 4),
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                    )),
                const SizedBox(height: 50),
                Text("TRUSTED BY THE INDUSTRY LEADERS", style: leanText),
                const SizedBox(height: 50),
                SizedBox(
                  width: displayWidth(context) * 0.8,
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 5,
                        crossAxisSpacing: 6.0,
                        mainAxisSpacing: 56,
                        childAspectRatio: 6.8),
                    itemCount: company.length,
                    itemBuilder: (context, index) {
                      return company[index];
                    },
                  ),
                ),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("View customer stories", style: textBtnMini),
                    const SizedBox(width: 10),
                    const Icon(
                      Icons.arrow_forward,
                      color: iconColor,
                      size: 12,
                    ),
                  ],
                ),
                const SizedBox(height: 200),
                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 45.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Navigation", style: header),
                        const SizedBox(height: 30),
                        SizedBox(
                          width: displayWidth(context) * 0.5,
                          child: Text(
                              "Mapbox provides powerful routing engines, accurate, traffic-powered travel times, and intuitive turn-by-turn directions to help you build engaging navigation experiences.",
                              style: medium3),
                        ),
                        const SizedBox(height: 30),
                        Directionality(
                          textDirection: ui.TextDirection.rtl,
                          child: OutlinedButton.icon(
                              style: ButtonStyle(
                                overlayColor: myHoverColor,
                                side: myBorderColor,
                                textStyle: MaterialStateProperty.all<TextStyle>(
                                    bigBtnStyle1),
                                iconColor: myLabelColor,
                                foregroundColor: myLabelColor,
                              ),
                              onPressed: () {},
                              label: const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8.0, vertical: 10),
                                child: Text("Explore Navigation"),
                              ),
                              icon: const Icon(Icons.arrow_back, size: 14)),
                        )
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset("Assets/phoneMap2.png",
                        width: displayWidth(context) * 0.2),
                    const SizedBox(height: 50),
                    Image.asset("Assets/mapTab4.png",
                        width: displayWidth(context) * 0.7),
                  ],
                ),
                const SizedBox(height: 150),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("Assets/tool.jpeg",
                        width: displayWidth(context) * 0.5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Mapbox Studio", style: header),
                        const SizedBox(height: 30),
                        SizedBox(
                          width: displayWidth(context) * 0.3,
                          child: Text(
                              "Mapbox Studio is like Photoshop, for maps. We give designers control over everything from colors and fonts, to 3D features and camera angles, to the pitch of the map as a car enters a turn.",
                              style: medium3),
                        ),
                        const SizedBox(height: 30),
                        Directionality(
                          textDirection: ui.TextDirection.rtl,
                          child: OutlinedButton.icon(
                              style: ButtonStyle(
                                overlayColor: myHoverColor,
                                side: myBorderColor,
                                textStyle: MaterialStateProperty.all<TextStyle>(
                                    bigBtnStyle1),
                                iconColor: myLabelColor,
                                foregroundColor: myLabelColor,
                              ),
                              onPressed: () {},
                              label: const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8.0, vertical: 10),
                                child: Text("Learn about studio"),
                              ),
                              icon: const Icon(Icons.arrow_back, size: 14)),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 150),
                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 45.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Maps", style: header),
                        const SizedBox(height: 30),
                        SizedBox(
                          width: displayWidth(context) * 0.4,
                          child: Text(
                              "Our APIs, SDKs, and live updating map data give developers tools to build better mapping, navigation, and search experiences across platforms.",
                              style: medium3),
                        ),
                        const SizedBox(height: 30),
                        Directionality(
                          textDirection: ui.TextDirection.rtl,
                          child: OutlinedButton.icon(
                              style: ButtonStyle(
                                overlayColor: myHoverColor,
                                side: myBorderColor,
                                textStyle: MaterialStateProperty.all<TextStyle>(
                                    bigBtnStyle1),
                                iconColor: myLabelColor,
                                foregroundColor: myLabelColor,
                              ),
                              onPressed: () {},
                              label: const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8.0, vertical: 10),
                                child: Text("Learn about Maps"),
                              ),
                              icon: const Icon(Icons.arrow_back, size: 14)),
                        )
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        const SizedBox(height: 100),
                        ClipRect(
                          child: Align(
                              alignment: Alignment.centerRight,
                              widthFactor: 0.6,
                              child: Image.asset("Assets/mapTab1.png",
                                  width: displayWidth(context) * 0.8)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 50),
                    ClipRect(
                        child: Align(
                            alignment: Alignment.centerLeft,
                            widthFactor: 0.6,
                            child: Image.asset("Assets/mapTab2.png",
                                width: displayWidth(context) * 0.8))),
                  ],
                ),
                const SizedBox(height: 150),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("Assets/mapPhone.png",
                        width: displayWidth(context) * 0.5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Search", style: header),
                        const SizedBox(height: 30),
                        SizedBox(
                          width: displayWidth(context) * 0.4,
                          child: Text(
                              "Search and geocoding is tied to everything we build — maps, navigation, AR — and underlies every app that helps humans explore their world.",
                              style: medium3),
                        ),
                        const SizedBox(height: 30),
                        Directionality(
                          textDirection: ui.TextDirection.rtl,
                          child: OutlinedButton.icon(
                              style: ButtonStyle(
                                overlayColor: myHoverColor,
                                side: myBorderColor,
                                textStyle: MaterialStateProperty.all<TextStyle>(
                                    bigBtnStyle1),
                                iconColor: myLabelColor,
                                foregroundColor: myLabelColor,
                              ),
                              onPressed: () {},
                              label: const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8.0, vertical: 10),
                                child: Text("Discover Search"),
                              ),
                              icon: const Icon(Icons.arrow_back, size: 14)),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 150),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      height: displayHeight(context) * 0.6,
                      decoration: BoxDecoration(
                        color: const Color(0xFF171c1f),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 70.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  badge("CUSTOMER SHOWCASE"),
                                  const SizedBox(height: 30),
                                  SvgPicture.asset("Assets/stright.svg"),
                                  const SizedBox(height: 30),
                                  SizedBox(
                                    width: displayWidth(context) * 0.3,
                                    child: Text(
                                        "Plan and optimize your route at the snap of a photo",
                                        style: medium3),
                                  ),
                                  const SizedBox(height: 30),
                                  Directionality(
                                    textDirection: ui.TextDirection.rtl,
                                    child: OutlinedButton.icon(
                                        style: ButtonStyle(
                                          overlayColor: myHoverColor,
                                          side: myBorderColor,
                                          textStyle: MaterialStateProperty.all<
                                              TextStyle>(bigBtnStyle1),
                                          iconColor: myLabelColor,
                                          foregroundColor: myLabelColor,
                                        ),
                                        onPressed: () {},
                                        label: const Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8.0, vertical: 10),
                                          child: Text("Read customer showcase"),
                                        ),
                                        icon: const Icon(Icons.arrow_back,
                                            size: 14)),
                                  )
                                ]),
                          ),
                          Image.asset(
                            "Assets/billPhone.jpeg",
                            height: displayHeight(context) * 0.6,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 150),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("Assets/carGame.png",
                        width: displayWidth(context) * 0.5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Vision", style: header),
                        const SizedBox(height: 30),
                        SizedBox(
                          width: displayWidth(context) * 0.4,
                          child: Text(
                              "The Mapbox Vision SDK describes every curb, lane, street sign, and road hazard it sees as data. Developers use the SDK's AI-powered semantic segmentation, object detection, and classification to deliver precise navigation guidance, display driver assistance alerts, and detect and map road incidents.",
                              style: medium3),
                        ),
                        const SizedBox(height: 30),
                        Directionality(
                          textDirection: ui.TextDirection.rtl,
                          child: OutlinedButton.icon(
                              style: ButtonStyle(
                                overlayColor: myHoverColor,
                                side: myBorderColor,
                                textStyle: MaterialStateProperty.all<TextStyle>(
                                    bigBtnStyle1),
                                iconColor: myLabelColor,
                                foregroundColor: myLabelColor,
                              ),
                              onPressed: () {},
                              label: const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8.0, vertical: 10),
                                child: Text("Discover vision"),
                              ),
                              icon: const Icon(Icons.arrow_back, size: 14)),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 150),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Data", style: header),
                        const SizedBox(height: 30),
                        SizedBox(
                          width: displayWidth(context) * 0.4,
                          child: Text(
                              "Our data is powered by hundreds of data sources, and a distributed global user base of more than half a billion monthly active users.",
                              style: medium3),
                        ),
                        const SizedBox(height: 30),
                        Directionality(
                          textDirection: ui.TextDirection.rtl,
                          child: OutlinedButton.icon(
                              style: ButtonStyle(
                                overlayColor: myHoverColor,
                                side: myBorderColor,
                                textStyle: MaterialStateProperty.all<TextStyle>(
                                    bigBtnStyle1),
                                iconColor: myLabelColor,
                                foregroundColor: myLabelColor,
                              ),
                              onPressed: () {},
                              label: const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8.0, vertical: 10),
                                child: Text("Learn about Data"),
                              ),
                              icon: const Icon(Icons.arrow_back, size: 14)),
                        )
                      ],
                    ),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(14),
                        child: Image.asset("Assets/mapTab3.jpeg",
                            width: displayWidth(context) * 0.5)),
                  ],
                ),
                const SizedBox(height: 150),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("Assets/tabPhone.jpeg",
                        width: displayWidth(context) * 0.5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Atlas", style: header),
                        const SizedBox(height: 30),
                        SizedBox(
                          width: displayWidth(context) * 0.4,
                          child: Text(
                              "With Atlas, you can self-host Mapbox maps and geocoding APIs, Streets, Satellite, and Terrain tilesets, and Mapbox Studio on your network, behind a firewall, or even air-gapped. Use Atlas to power on-premises applications using Mapbox GL JS v2 and Mapbox Maps SDKs for iOS and Android.",
                              style: medium3),
                        ),
                        const SizedBox(height: 30),
                        Directionality(
                          textDirection: ui.TextDirection.rtl,
                          child: OutlinedButton.icon(
                              style: ButtonStyle(
                                overlayColor: myHoverColor,
                                side: myBorderColor,
                                textStyle: MaterialStateProperty.all<TextStyle>(
                                    bigBtnStyle1),
                                iconColor: myLabelColor,
                                foregroundColor: myLabelColor,
                              ),
                              onPressed: () {},
                              label: const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8.0, vertical: 10),
                                child: Text("Self-host with Atlas"),
                              ),
                              icon: const Icon(Icons.arrow_back, size: 14)),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 150),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      height: displayHeight(context) * 0.4,
                      decoration: BoxDecoration(
                        color: const Color(0xFF171c1f),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Ready to get started?", style: header),
                            const SizedBox(height: 30),
                            Text(
                                "Create an account or talk to one of our experts.",
                                style: medium3),
                            const SizedBox(height: 30),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FilledButton(
                                    onPressed: () {},
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("Sign up for free",
                                          style: bigBtnStyle),
                                    )),
                                const SizedBox(width: 20),
                                OutlinedButton(
                                  style: ButtonStyle(
                                    overlayColor: myHoverColor,
                                    side: myBorderColor,
                                    textStyle:
                                        MaterialStateProperty.all<TextStyle>(
                                            bigBtnStyle1),
                                    iconColor: myLabelColor,
                                    foregroundColor: myLabelColor,
                                  ),
                                  onPressed: () {},
                                  child: const Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 8.0, vertical: 10),
                                    child: Text("Contact sales"),
                                  ),
                                ),
                              ],
                            )
                          ]),
                    ),
                  ),
                ),
                const SizedBox(height: 150),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset("Assets/logo.png", scale: 18.0),
                            const SizedBox(width: 5),
                            Text("mapbox", style: logoStyle)
                          ],
                        ),
                        Text("Pricing", style: medium4),
                        Text("Contact Us", style: medium4),
                        Text("Sign Up", style: medium4),
                        Text("Blog", style: medium4),
                        Text("Support", style: medium4),
                      ],
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("PRODUCTS", style: headerMini),
                          const SizedBox(height: 20),
                          Text("Maps", style: headerMini1),
                          const SizedBox(height: 5),
                          Text("Studio", style: medium4),
                          Text("Maps", style: medium4),
                          Text("Mapbox GL JS", style: medium4),
                          Text("Mobile Maps SDK", style: medium4),
                          Text("Static Maps", style: medium4),
                          Text("Mapbox Tiling Service", style: medium4),
                          const SizedBox(height: 40),
                          Text("Search", style: headerMini1),
                          const SizedBox(height: 5),
                          Text("Search Box", style: medium4),
                          Text("Geocoding", style: medium4),
                          Text("Address Autofill", style: medium4),
                          const SizedBox(height: 40),
                          Text("Automotive", style: headerMini1),
                          const SizedBox(height: 5),
                          Text("ADAS SDK", style: medium4),
                          Text("Dash", style: medium4),
                        ]),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 35),
                        Text("Navigation", style: headerMini1),
                        const SizedBox(height: 5),
                        Text("Navigation SDK", style: medium4),
                        Text("Navigation Solutions", style: medium4),
                        const SizedBox(height: 40),
                        Text("Logistics", style: headerMini1),
                        const SizedBox(height: 5),
                        Text("Matrix API", style: medium4),
                        const SizedBox(height: 40),
                        Text("Data", style: headerMini1),
                        const SizedBox(height: 5),
                        Text("Traffic Data", style: medium4),
                        Text("Movement Data", style: medium4),
                        Text("Boundaries", style: medium4),
                        const SizedBox(height: 40),
                        Text("Other", style: headerMini1),
                        const SizedBox(height: 5),
                        Text("Atlas", style: medium4),
                        Text("Infrastructure Platform", style: medium4),
                      ],
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("SOLUTIONS", style: headerMini),
                          const SizedBox(height: 20),
                          Text("Logistics", style: medium4),
                          Text("Automotive", style: medium4),
                          Text("Outdoors", style: medium4),
                          Text("Retail", style: medium4),
                          Text("Telecommunications", style: medium4),
                          Text("Travel", style: medium4),
                          Text("Weather", style: medium4),
                          Text("Business Intelligence", style: medium4),
                          Text("Real Estate", style: medium4),
                          const SizedBox(height: 40),
                          Text("USE CASES", style: headerMini),
                          const SizedBox(height: 20),
                          Text("Data visualization", style: medium4),
                          Text("Store locator", style: medium4),
                          Text("Turn-by-turn navigation", style: medium4),
                          Text("On-Demand Delivery", style: medium4),
                        ]),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("COMPANY", style: headerMini),
                          const SizedBox(height: 20),
                          Text("About Mapbox", style: medium4),
                          Text("Customers", style: medium4),
                          Text("Careers", style: medium4),
                          Text("Sustainability", style: medium4),
                          Text("Community", style: medium4),
                          Text("Events", style: medium4),
                          Text("Press", style: medium4),
                          Text("Insights", style: medium4)
                        ]),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("DEVELOPERS", style: headerMini),
                          const SizedBox(height: 20),
                          Text("Documentation", style: medium4),
                          Text("Getting started", style: medium4),
                          Text("Tutorials", style: medium4),
                          Text("Troubleshooting", style: medium4),
                          Text("Webinars", style: medium4),
                          Text("How-to-videos", style: medium4),
                          Text("Developer Network", style: medium4),
                          Text("Platform", style: medium4),
                          Text("Status", style: medium4)
                        ]),
                  ],
                ),
                const SizedBox(height: 100),
                Container(
                    height: displayHeight(context) * 0.1,
                    color: const Color(0xFF171c1f),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("All Rights Reserved © Mapbox", style: medium4),
                            const SizedBox(width: 70),
                            Text("Terms", style: medium4),
                            const SizedBox(width: 10),
                            Text("|", style: medium4),
                            const SizedBox(width: 10),
                            Text("Privacy", style: medium4),
                            const SizedBox(width: 10),
                            Text("|", style: medium4),
                            const SizedBox(width: 10),
                            Text("Security", style: medium4),
                            const SizedBox(width: 10),
                            Text("|", style: medium4),
                            const SizedBox(width: 10),
                            Text("Your California Privacy Choices",
                                style: medium4),
                          ],
                        ),
                        SizedBox(
                          width: displayWidth(context) * 0.3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SvgPicture.asset("Assets/git.svg",
                                  color: brandIcon),
                              SvgPicture.asset("Assets/discord.svg",
                                  color: brandIcon),
                              SvgPicture.asset("Assets/twitter.svg",
                                  color: brandIcon),
                              SvgPicture.asset("Assets/linkedin.svg",
                                  color: brandIcon),
                              SvgPicture.asset("Assets/fb.svg", color: brandIcon),
                              SvgPicture.asset("Assets/insta.svg",
                                  color: brandIcon)
                            ],
                          ),
                        )
                      ],
                    ))
              ],
            ),
          ),
        );
  }

  Widget hoverWidget(state,String? header,String? body){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AnimatedDefaultTextStyle(
            curve:cur,
            style: state == false ? headerMini2 : headerMini22,
            duration: duration,
            child: Text("$header")),
        const SizedBox(height:5),
        SizedBox(
            width:displayWidth(context) * 0.16,
            child: AnimatedDefaultTextStyle(
                curve:cur,
                style: state== false ? medium6 : medium66,
                duration:duration,
                child: Text("$body"))),
      ],);
  }

  Widget hoverSingleTextWidget(state,String? header){
    return AnimatedDefaultTextStyle(
        curve:cur,
        style: state == false ? headerMini2 : headerMini22,
        duration: duration,
        child: Text("$header"));
  }
}
