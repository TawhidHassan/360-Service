import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:serviceapp/Ui/Data/CustomModel/map_page_model.dart';

import '../../Utils/MapUtils/Utils.dart';
import '../../Widget/Card/OrderHistoryCard/order_history_card.dart';
import '../../Widget/Card/OrderHistoryCard/ordered_map_card.dart';

class MapDelivery extends StatefulWidget {
  const MapDelivery({Key? key}) : super(key: key);

  @override
  _MapDeliveryState createState() => _MapDeliveryState();
}

class _MapDeliveryState extends State<MapDelivery> {

  late GoogleMapController googleMapController;
  List<DirectionModel> list = [];
  late double lanx;
  late double lonx;
  LatLng _latLng=LatLng(23.819593425805156,90.41148873901344);
  var bitmapIcon;
  MapType _currentMapType = MapType.normal;
  void _onMapTypeButtonPressed() {
    setState(() {
      _currentMapType = _currentMapType == MapType.normal
          ? MapType.satellite
          : MapType.normal;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    list.add(DirectionModel(address: "Visakhapatnam", color: Colors.green));
    list.add(DirectionModel(address: "Vijayawada", color: Colors.blue));
  }

  @override
  void dispose() {

    googleMapController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title:  Text("Delivery Date & Time",style:Theme.of(context).textTheme.headline1, textAlign: TextAlign.start,),
        actions: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text("340",style:TextStyle(color: Color(0xFF3879F0),fontSize: 20,fontWeight: FontWeight.w800), textAlign: TextAlign.start,),
          ),
        ],
      ),
      body:Stack(
          children: <Widget>[
            GoogleMap(
              initialCameraPosition: CameraPosition(
                target: _latLng,
                zoom: 16,
              ),
              myLocationEnabled: true,
              zoomControlsEnabled: true,
              onMapCreated: onMapCreated,
              mapType: _currentMapType,
            ),
            Align(
              alignment: Alignment.topCenter,
              child:Container (
                padding: EdgeInsets.symmetric(vertical: 20,horizontal: 27),
                color: Theme.of(context).canvasColor,
                height: 200 ,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child:  Text("Tracking Process",style:Theme.of(context).textTheme.headline1, textAlign: TextAlign.start,),
                    ),

                    Expanded(
                      flex: 2,
                      child: ListView.builder(
                          itemCount: list.length,
                          itemBuilder: (con, ind) {
                            return ind != 0
                                ?
                            Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Row(
                                      children: [
                                        Column(
                                          children: List.generate(
                                            3,
                                                (ii) => Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 10, right: 10, top: 5, bottom: 5),
                                                child: Container(
                                                  height: 3,
                                                  width: 2,
                                                  color: Colors.grey,
                                                )),
                                          ),
                                        ),
                                        Expanded(
                                            child: Container(
                                              color: Colors.grey.withAlpha(60),
                                              height: 0.5,
                                              padding: const EdgeInsets.only(
                                                left: 10,
                                                right: 20,
                                              ),
                                            ))
                                      ]),
                                  Row(children: [
                                    Image.asset("assets/icons/ic_currentdes.png"),
                                    SizedBox(width: 10,),
                                    Text(list[ind].address!,
                                        style: Theme.of(context).textTheme.headline1
                                    )
                                  ])
                                ])
                                :
                            Row(
                                children: [
                                  Image.asset("assets/icons/ic_current.png"),
                                  SizedBox(width: 10,),
                                  Text(list[ind].address!, style: Theme.of(context).textTheme.headline1)
                                ]
                            );
                          }),
                    )
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                child: Orderedmapcard(),
              ),
            )
          ]
      ),
    );
  }

  void onMapCreated(GoogleMapController controller) {
    googleMapController=controller;
    googleMapController.setMapStyle(Utils.mapStyles).whenComplete(() {

    });
  }
}
