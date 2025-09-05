import 'package:flutter/material.dart';
import 'package:sprints/custom_appbar.dart';
import '../generated/l10n.dart';

class MainShoppingScreen extends StatefulWidget {
  const MainShoppingScreen({super.key, required this.onLocaleChange});

  final Function(Locale) onLocaleChange;

  @override
  State<MainShoppingScreen> createState() => _MainShoppingScreenState();
}

class _MainShoppingScreenState extends State<MainShoppingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Map<String, dynamic>> bannerProducts = [
    {"image": "assets/24.jpg"},

    {"image": "assets/Wavy_Bus-17_Single-09.jpg"},
    {
      "image":
          "assets/young-fashion-woman-with-shopping-bags-through-torn-paper-hole-wall.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    final products = [
      {
        "name": S.of(context).productShoes,
        "price": S.of(context).priceShoes,
        "image":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSe3j5HMDxfhCY-HNqUojTRqzABcx4FCfWFA&s",
      },
      {
        "name": S.of(context).productBag,
        "price": S.of(context).priceBag,
        "image":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVDrcq1DJWCuo0_x7cQG_3W1RD-udoYq5wVg&s",
      },
      {
        "name": S.of(context).productWatch,
        "price": S.of(context).priceWatch,
        "image":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9MWqgCdCvS-o5eTfUQSQ-BOsJC9CPSflltA&s",
      },
      {
        "name": S.of(context).productHeadphones,
        "price": S.of(context).priceHeadphones,
        "image":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRr1-5nB7CxF6TAkUs9tKYUCtlsrK8oMHolqw&s",
      },
      {
        "name": S.of(context).productLaptop,
        "price": S.of(context).priceLaptop,
        "image":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNLsy6Whgk1qDAtSKEzolKC2VtRNAeOqqg6g&s",
      },
      {
        "name": S.of(context).productCamera,
        "price": S.of(context).priceCamera,
        "image":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlzPtROZNDH2a5yFEtxZdXPMtOGTsmxvLi8Q&s",
      },
    ];
    final offers = [
      {
        "image":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCxaLSRKfoT-SqWAWCyt8IfjXTRmZgl3kMxw&s",
        "desc": "50% off on Hoodies!"
      },
      {
        "image":

            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSi-ORlDi49PpnQe4cm5OYnKMrpo_Woa76K0g&s",
        "desc": "Buy 1 Get 1 Free!"
      },
      {
        "image":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5U7UKvRRkY0t9oGZvoppPts13GwpmYLViSw&s",
        "desc": "Special Offer Today!"
      },
      {
        "image":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlGejzYGVdlIXlzdPyMd1oP_8rLf9l85xrbQ&s",
        "desc": "60% off on Hoodies!"
      },
      {
        "image":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqfRTP_69ATAzDvPUYVedYuiK2Yg1-1L6usQ&s",
        "desc": "Buy 2 Get 1 Free!"
      },
    ];

    return Scaffold(
      appBar: CustomAppBar(
        automaticallyImplyLeading: false,
        title: S.of(context).ourProducts,
        onLocaleChange: widget.onLocaleChange,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 280,
              child: Stack(
                children: [
                  PageView.builder(
                    controller: _pageController,
                    itemCount: bannerProducts.length,
                    onPageChanged: (index) =>
                        setState(() => _currentPage = index),
                    itemBuilder: (_, i) {
                      final item = bannerProducts[i];
                      return Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.asset(item["image"], fit: BoxFit.cover),
                          Container(color: Colors.black.withOpacity(0.3)),
                          Positioned(
                            bottom: 20,
                            left: 20,
                            right: 20,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      S.of(context).greatDeals,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                    Text(
                                      S.of(context).bestOffers,
                                      style: const TextStyle(
                                        color: Color(0xFFe6bd3c),
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                                IconButton(
                                  icon: const Icon(
                                    Icons.add_shopping_cart,
                                    color: Color(0xFFe6bd3c),
                                  ),
                                  onPressed: () {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(S.of(context).itemAdded),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                S.of(context).discoverSelection,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            const SizedBox(height: 8),
            // Page Indicator
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                bannerProducts.length,
                (index) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  width: _currentPage == index ? 15 : 8,
                  height: _currentPage == index ? 15 : 8,
                  decoration: BoxDecoration(
                    color: _currentPage == index
                        ? Color(0xFFe6bd3c)
                        : Colors.grey,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),

            // GridView Products
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (_, i) {
                  final item = products[i];
                  return Card(
                    elevation: 3,
                    child: Column(
                      children: [
                        SizedBox(height: 19),
                        Expanded(
                          child: Image.network(
                            item["image"]!,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          item["name"]!,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          item["price"]!,
                          style: const TextStyle(color: Color(0xFFe6bd3c)),
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.add_shopping_cart,
                            color: Color(0xFFe6bd3c),
                          ),
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  "${item["name"]} ${S.of(context).itemAdded}",
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 20),
            Text(
              S.of(context).hotOffers,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          SizedBox(
            height: 400,
            child: ListView(
              children: [
                Text(
                  S.of(context).hotOffers,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),

                ...offers.map((offer) {
                  return Card(
                    margin: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Image.network(
                          offer["image"]!,
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            offer["desc"]!,
                            style: const TextStyle(fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ],
            ),
          )
          ],
        ),
      ),
    );
  }
}
