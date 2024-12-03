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
                    child: Image.asset(AppMedia.hotelRoom,
                      fit: BoxFit.contain,
                    ),
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
              const Padding(
                padding: EdgeInsets.all(20.0),
                child:
                  // ExpandedTextWidget(text:'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum vitae odio sit amet orci dictum molestie sit amet vel augue. Fusce posuere accumsan ante, id placerat turpis blandit vel. Donec a lacus non nulla ornare hendrerit sed et justo. Curabitur hendrerit vitae odio nec faucibus. Donec sagittis urna a diam finibus, tincidunt facilisis orci efficitur. Ut arcu enim, ornare ut aliquam ut, venenatis ac nulla. Maecenas ac magna sapien. Quisque molestie nunc purus, ac imperdiet ligula pellentesque ac. Vestibulum massa tortor, pulvinar id enim et, bibendum rutrum magna. Donec cursus convallis justo'),
                Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum vitae odio sit amet orci dictum molestie sit amet vel augue. Fusce posuere accumsan ante, id placerat turpis blandit vel. Donec a lacus non nulla ornare hendrerit sed et justo. Curabitur hendrerit vitae odio nec faucibus. Donec sagittis urna a diam finibus, tincidunt facilisis orci efficitur. Ut arcu enim, ornare ut aliquam ut, venenatis ac nulla. Maecenas ac magna sapien. Quisque molestie nunc purus, ac imperdiet ligula pellentesque ac. Vestibulum massa tortor, pulvinar id enim et, bibendum rutrum magna. Donec cursus convallis justo'),
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
                  itemCount: 10,
                    itemBuilder: (context, index){
                  return Container(
                    margin: const EdgeInsets.all(10),
                      color: Colors.red,
                      child: Image.network('https://via.placeholder.com/200x200'));
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
