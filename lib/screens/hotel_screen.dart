import 'package:flutter/material.dart';
import 'package:test_app/utils/lists.dart';
import 'package:test_app/utils/media.dart';
import 'package:test_app/utils/styles.dart';

class HotelScreen extends StatefulWidget {
  const HotelScreen({super.key});

  @override
  State<HotelScreen> createState() => _HotelScreenState();
}

class _HotelScreenState extends State<HotelScreen> {
  late int index = 0 ;
  @override
  void didChangeDependencies() {

    var args = ModalRoute.of(context)!.settings.arguments as Map;
    index = args['index'];
    print('index is $index');
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:CustomScrollView(
        slivers: [
          SliverAppBar(
          expandedHeight: 300,
            floating: false,
            pinned: true,
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Styles.primaryColor,
                  // borderRadius: BorderRadius.circular(50)
                ),
                child: Icon(Icons.arrow_back,
                color: Colors.white,),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              //   title: const Text('Hotel title',
              //     style: TextStyle(
              //       color: Colors.white
              //   ),
              // ),
              // background: Image.network('https://via.placeholder.com/600x400'),
              // background: Image.asset('assets/images/${
              // hotelList[index]
              // } '),
              background: Stack(
                children: [
                  Positioned.fill(
                    // child: Image.asset(AppMedia.hotelRoom,
                    // child: Image.asset(hotelList[index]['image'],
                    // child: Image.asset('assets/images/hotel-room1.jpeg',

                    child: Image.asset('assets/images/${hotelList[index]['image']}',
                      fit: BoxFit.cover,
                    ),

                    // child: Container(
                    //   height: 100,
                    //   width: 100,
                    //   decoration: BoxDecoration(
                    //     image: DecorationImage(
                    //       image: AssetImage(
                    //         // "assets/images/${hotelList[index]['image']"
                    //           // hotelList[index]['image']
                    //         'assets/images/${hotelList[index]['image']}',
                    //       ),
                    //     )
                    //   ),
                    // ),

                  ),
                  Positioned(
                    right: 20,
                    bottom: 20,
                    child:
                      Container(
                        padding: const EdgeInsets.all(10),
                        color: Colors.black.withOpacity(0.5),
                        child: Text(hotelList[index]['place'],
                          style: TextStyle(
                            fontSize: 24,
                            color:  Styles.white,
                            shadows: [
                              Shadow(
                                blurRadius: 10.0,
                                color: Styles.primaryColor,
                                offset: Offset(2.0, 2.0)
                              )
                            ]
                        ),
                                            ),
                      ),
                  )
                ],
              ),

            ),
          ),
          SliverList(delegate: SliverChildListDelegate(
            [
               Padding(
                padding: EdgeInsets.all(20.0),
                child:
                  ExpandedTextWidget(text: hotelList[index]['detail']),
                // Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum vitae odio sit amet orci dictum molestie sit amet vel augue. Fusce posuere accumsan ante, id placerat turpis blandit vel. Donec a lacus non nulla ornare hendrerit sed et justo. Curabitur hendrerit vitae odio nec faucibus. Donec sagittis urna a diam finibus, tincidunt facilisis orci efficitur. Ut arcu enim, ornare ut aliquam ut, venenatis ac nulla. Maecenas ac magna sapien. Quisque molestie nunc purus, ac imperdiet ligula pellentesque ac. Vestibulum massa tortor, pulvinar id enim et, bibendum rutrum magna. Donec cursus convallis justo'),
              ),
              const Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                    'More images',
                style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold
                )
                ),
              ),
              Container(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  // itemCount: 10,
                    itemCount: hotelList[index]['images'].length,
                    itemBuilder: (context, imagesIndex){
                    // print("${hotelList[index]['images'].length}");
                    print("${hotelList[index]['images'][0]}");
                  return Container(
                    margin: const EdgeInsets.all(10),
                      color: Colors.red,
                      // child: Image.network('https://via.placeholder.com/200x200'));
                      // child: Image.network('https://via.placeholder.com/200x200'));
                      child: Image.asset("assets/images/${hotelList[index]['images'][imagesIndex]}")
                  );
                }),
              )
            ]
          )
          )
        ],
      ),
    );
  }
}

class ExpandedTextWidget extends StatefulWidget {
  final String text;

  const ExpandedTextWidget({super.key, required this.text});

  @override
  State<ExpandedTextWidget> createState() => _ExpandedTextWidgetState();
}

class _ExpandedTextWidgetState extends State<ExpandedTextWidget> {
  bool visibility = false;

  // String? get text => null;
  // String text = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum vitae odio sit amet orci dictum molestie sit amet vel augue. Fusce posuere accumsan ante, id placerat turpis blandit vel. Donec a lacus non nulla ornare hendrerit sed et justo. Curabitur hendrerit vitae odio nec faucibus. Donec sagittis urna a diam finibus, tincidunt facilisis orci efficitur. Ut arcu enim, ornare ut aliquam ut, venenatis ac nulla. Maecenas ac magna sapien. Quisque molestie nunc purus, ac imperdiet ligula pellentesque ac. Vestibulum massa tortor, pulvinar id enim et, bibendum rutrum magna. Donec cursus convallis justo';
  @override
  Widget build(BuildContext context) {
    var textWidget = Text(widget.text,
      maxLines: visibility ? 3: null,
      overflow: visibility ? TextOverflow.visible: TextOverflow.ellipsis,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        textWidget,
        GestureDetector(
          onTap: () {
            changeVisibility();
          },
          child: Text(visibility? 'less': 'more',
            style: TextStyle(
                color: Styles.primaryColor
            ),

          ),
        )
      ],
    );
  }

  void changeVisibility() {
    setState(() {
      visibility = !visibility;
    });
  }
}
