import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductDetail extends StatefulWidget {
  final String title;
  final double mrp;
  final double sp;
  final double rating;
  final double users;
  const ProductDetail({
    super.key,
    required this.title,
    required this.mrp,
    required this.sp,
    required this.rating,
    required this.users,
  });

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/logo.png',
          height: 40.0,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Apple",
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w800,
                          color: Colors.indigo,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(
                                4.0,
                              ),
                            ),
                            padding: const EdgeInsets.symmetric(
                              vertical: 1.0,
                              horizontal: 6.0,
                            ),
                            child: Text(
                              widget.rating.toString(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 11.0,
                              ),
                            ),
                          ),
                          Text(
                            " (${widget.users}K)",
                            style: const TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    widget.title,
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),

                CarouselSlider(
                  options: CarouselOptions(
                    height: MediaQuery.of(context).size.width,
                    enlargeCenterPage: true,
                    viewportFraction: 1.0,
                  ),
                  items: ['p1.jpg', 'p2.jpg', 'p3.jpg', 'p4.jpg'].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 2.0),
                          decoration: const BoxDecoration(color: Colors.white),
                          child: Image.asset(
                            'assets/$i',
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
                //
                //

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        textBaseline: TextBaseline.ideographic,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        children: [
                          Text(
                            "INR ",
                            style: TextStyle(
                              fontSize: 11.0,
                              color: Colors.grey.shade800,
                            ),
                          ),
                          Text(
                            widget.mrp.toString(),
                            style: const TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Text(
                            " ( including all taxes ) ",
                            style: TextStyle(
                              fontSize: 11.0,
                              color: Colors.grey.shade800,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.all(6.0),
                  child: Card(
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(
                            FontAwesomeIcons.medal,
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                          ),
                          tileColor: Colors.white,
                          title: Text(
                            "2 year Warranty",
                          ),
                        ),
                        Divider(
                          height: 0.0,
                        ),
                        ListTile(
                          leading: Icon(
                            FontAwesomeIcons.refresh,
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                          ),
                          tileColor: Colors.white,
                          title: Text(
                            "Eligible For Free returns",
                          ),
                        ),
                        Divider(
                          height: 0.0,
                        ),
                        ListTile(
                          leading: Icon(
                            FontAwesomeIcons.biking,
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                          ),
                          tileColor: Colors.white,
                          title: Text(
                            "Free Delivery Available",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: const EdgeInsets.all(
                      6.0,
                    ),
                    color: Colors.white,
                    child: Column(
                      children: [
                        TabBar(
                          controller: _tabController,
                          indicatorColor: Colors.indigo,
                          tabs: const [
                            Tab(
                              text: 'Overview',
                            ),
                            Tab(
                              text: 'Specifications',
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 250.0,
                          child: TabBarView(
                            controller: _tabController,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(
                                  8.0,
                                ),
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Highlights',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      '• Full Screen experience on the 6.6 inch dispalay',
                                    ),
                                    Text(
                                      '• Ceramic Shield, tougher than any smartphone glass ',
                                    ),
                                    Text(
                                      '• Advanced dual-camera system with 12MP Ultra Wide and Wide cameras; Night mode, Deep Fusion, Smart HDR 3, 4K Dolby Vision HDR recording ',
                                    ),
                                    Text(
                                      '• Industry-leading IP68 water resistance ',
                                    ),
                                    Text(
                                      '•  iOS with redesigned widgets on the Home screen, all-new App Library, App Clips and more ',
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(
                                  8.0,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Specifications',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5.0,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          8.0,
                                        ),
                                      ),
                                      padding: const EdgeInsets.all(
                                        8.0,
                                      ),
                                      child: const Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              "Battery Size",
                                            ),
                                          ),
                                          Expanded(
                                            child: Text(
                                              "5000 mAH",
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 2.0,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.blue.shade100,
                                        borderRadius: BorderRadius.circular(
                                          8.0,
                                        ),
                                      ),
                                      padding: const EdgeInsets.all(
                                        8.0,
                                      ),
                                      child: const Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              "Camera Type",
                                            ),
                                          ),
                                          Expanded(
                                            child: Text(
                                              "Primay + Secondary",
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          8.0,
                                        ),
                                      ),
                                      padding: const EdgeInsets.all(
                                        8.0,
                                      ),
                                      child: const Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              "Charging",
                                            ),
                                          ),
                                          Expanded(
                                            child: Text(
                                              "Type C",
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 2.0,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.blue.shade100,
                                        borderRadius: BorderRadius.circular(
                                          8.0,
                                        ),
                                      ),
                                      padding: const EdgeInsets.all(
                                        8.0,
                                      ),
                                      child: const Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              "Display Resolution",
                                            ),
                                          ),
                                          Expanded(
                                            child: Text(
                                              "1080x2048",
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          //

          Container(
            padding: const EdgeInsets.all(
              8.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(
                      8.0,
                    ),
                  ),
                  width: 50.0,
                  height: 50.0,
                  child: Column(
                    children: [
                      Text(
                        "QTY",
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.grey.shade300,
                        ),
                      ),
                      const Text(
                        "1",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50.0,
                  width: MediaQuery.of(context).size.width - 80,
                  // width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Colors.indigo,
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            8.0,
                          ),
                        ),
                      ),
                    ),
                    child: const Text(
                      "Add to Cart",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
