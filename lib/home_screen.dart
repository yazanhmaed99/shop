import 'package:flutter/material.dart';
import 'package:projectapp/colors.dart';

import 'cat_itam.dart';
import 'home_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorM.seconde,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                color: Colors.grey,
              ),
              color: Colors.white,
            ),
          )
        ],
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Deliver to',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: ColorM.primary,
                  ),
                  const Text(
                    'Amman',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
            ],
          ),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CatItem(
                      icon: 'assets/images/fastfood.png',
                      title: 'Fast Food',
                      onTap: (() {
                        // ignore: avoid_print
                        print('object');
                      })),
                  const CatItem(
                      icon: 'assets/images/maindishes.png',
                      title: 'Main Dishes'),
                  const CatItem(
                      icon: 'assets/images/seafood.png', title: 'Sea Food'),
                  const CatItem(
                      icon: 'assets/images/dessert.png', title: 'Dassert'),
                ],
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Special Offers',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'See All',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: ColorM.primary),
                      ))
                ],
              ),
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: ColorM.primary),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 27.7,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Text(
                              '30 %',
                              style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white),
                            ),
                            Text(
                              'SPECIAL DEAL\n FOR OCTOBER!',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        Image.asset(
                          'assets/images/Mask.png',
                          width: 300,
                          fit: BoxFit.fitWidth,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: ColorM.primary,
                          ),
                        ),
                        Container(
                          width: 8,
                          height: 8,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                          ),
                        ),
                        Container(
                          width: 8,
                          height: 8,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Top Rated',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'See All',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: ColorM.primary),
                      ))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  HomeItem(
                    icon:
                        'assets/images/doner-kebab-shawarma-with-ingredients-beef-meat-lettuce-onion-tomatoes-spice.png',
                    title: 'Food',
                    price: '10',
                  ),
                  HomeItem(
                    icon:
                        'assets/images/kisspng-hamburger-fried-chicken-chicken-sandwich-fast-food-hamburger-5a694e36561572.4592676415168507423526.png',
                    title: 'Food',
                    price: '15',
                  ),
                  HomeItem(
                    icon: 'assets/images/46-pizza-png-image.png',
                    title: 'Food',
                    price: '7',
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Near to you',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'See All',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: ColorM.primary),
                      ))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  HomeItem(
                    icon:
                        'assets/images/PikPng.com_paloma-de-la-paz_5978276.png',
                    title: 'Food',
                    price: '7',
                  ),
                  HomeItem(
                    icon: 'assets/images/PngItem_2251486.png',
                    title: 'Food',
                    price: '12',
                  ),
                  HomeItem(
                    icon: 'assets/images/pngkey.com-recipe-png-9160285.png',
                    title: 'Food',
                    price: '20',
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          unselectedLabelStyle: const TextStyle(
              fontSize: 12, fontWeight: FontWeight.normal, color: Colors.black),
          showSelectedLabels: true,
          selectedLabelStyle: const TextStyle(
              fontSize: 12, fontWeight: FontWeight.normal, color: Colors.black),
          //   backgroundColor: Colors.white,
          unselectedItemColor: Colors.grey,
          selectedIconTheme: IconThemeData(
            color: ColorM.primary,
          ),
          currentIndex: 0,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 22,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite, size: 22), label: 'Favorite'),
            BottomNavigationBarItem(
                icon: Icon(Icons.location_on, size: 22), label: 'Track'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person, size: 22), label: 'Person'),
          ]),
      floatingActionButton: FloatingActionButton(
          backgroundColor: ColorM.primary,
          onPressed: () {},
          child: const Icon(
            Icons.shopping_basket_outlined,
            color: Colors.white,
            size: 31,
          )),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}
