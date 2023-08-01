
import 'package:flutter/material.dart';
import 'package:projectapp/colors.dart';
import 'package:projectapp/com.dart';
import 'package:projectapp/special_offers.dart';

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
            child: Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications,
                  color: Colors.grey,
                ),
                color: Colors.white,
              ),
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
              Container(
                height: 100,
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ]),
                child: Row(
                  children: [
                    SizedBox(
                      width: 300,
                      child: TextField(
                        keyboardType: TextInputType.name,
                        // controller: nameController,
                        decoration: InputDecoration(
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(22),
                              borderSide: BorderSide(color: ColorM.primary)),
                          prefixIconColor: ColorM.primary,
                          hintStyle: const TextStyle(color: Colors.black54),
                          labelStyle: const TextStyle(color: Colors.black54),
                          fillColor: ColorM.seconde,
                          hoverColor: ColorM.seconde,
                          focusColor: ColorM.seconde,
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Colors.black54,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(22)),
                          labelText: 'Search',
                          hintText: 'Search',
                        ),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.all(17),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: ColorM.seconde),
                      child: IconButton(
                          onPressed: () {},
                          icon: ImageIcon(
                            const AssetImage('assets/images/setting.png'),
                            size: 27,
                            color: ColorM.primary,
                          )),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
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
           SizedBox(
            height: 150,
             child: ListView(

               children:[SpecialOffers(
                          dis: '30',
                          title: 'Special Deal\nFor October!',
                          image: 'assets/images/bu.png',
                          color: ColorM.primary),
                          SpecialOffers(
                        dis: '30',
                        title: 'Special Deal\nFor October!',
                        image: 'assets/images/bu.png',
                        color: ColorM.primary),] 
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
              SizedBox(
                width: double.infinity,
                height: 150,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: topRateData['item'].length,
                  itemBuilder: (context, index) => HomeItem(
                    icon: topRateData['item'][index]['icon'],
                    title: topRateData['item'][index]['title'],
                    price: topRateData['item'][index]['price'],
                    onPressed: () {},
                  ),
                ),
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
              SizedBox(
                width: double.infinity,
                height: 150,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: nearToData['item'].length,
                  itemBuilder: (context, index) => HomeItem(
                    icon: nearToData['item'][index]['icon'],
                    title: nearToData['item'][index]['title'],
                    price: nearToData['item'][index]['price'],
                    onPressed: () {},
                  ),
                ),
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
