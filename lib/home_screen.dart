import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF5F5F5),
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
                children: const [
                  Icon(
                    Icons.location_on,
                    color: Color(0xff0A9C2D),
                  ),
                  Text(
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
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 74,
                        height: 74,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFF5F5F5),
                        ),
                        child: const ImageIcon(
                          AssetImage('assets/images/fastfood.png'),
                          color: Color(0xFF0A9C2D),
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      const Text(
                        'Fast Food',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.normal),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 74,
                        height: 74,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFF5F5F5),
                        ),
                        child: const ImageIcon(
                          AssetImage('assets/images/maindishes.png'),
                          color: Color(0xFF0A9C2D),
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      const Text(
                        'Main Dishes',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.normal),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 74,
                        height: 74,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFF5F5F5),
                        ),
                        child: const ImageIcon(
                          AssetImage('assets/images/seafood.png'),
                          color: Color(0xFF0A9C2D),
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      const Text(
                        'Sea Food',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.normal),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 74,
                        height: 74,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFF5F5F5),
                        ),
                        child: const ImageIcon(
                          AssetImage('assets/images/dessert.png'),
                          color: Color(0xFF0A9C2D),
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      const Text(
                        'Dassert',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.normal),
                      )
                    ],
                  ),
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
                      child: const Text(
                        'See All',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Color(0xff0A9C2D)),
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
                        color: const Color(0xff0A9C2D)),
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
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff0A9C2D),
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
                      child: const Text(
                        'See All',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Color(0xff0A9C2D)),
                      ))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 115,
                    height: 144,
                    color: const Color(0xffF5F5F5),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/doner-kebab-shawarma-with-ingredients-beef-meat-lettuce-onion-tomatoes-spice.png',
                          height: 80,
                        ),
                        const Text('Food'),
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              minimumSize:
                                  MaterialStateProperty.all(const Size(73, 21)),
                              backgroundColor: MaterialStateProperty.all(
                                  const Color(0xff0A9C2D))),
                          child: const Text('2 JD'),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 115,
                    height: 144,
                    color: const Color(0xffF5F5F5),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/kisspng-hamburger-fried-chicken-chicken-sandwich-fast-food-hamburger-5a694e36561572.4592676415168507423526.png',
                          height: 80,
                        ),
                        const Text('Food'),
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              minimumSize:
                                  MaterialStateProperty.all(const Size(73, 21)),
                              backgroundColor: MaterialStateProperty.all(
                                  const Color(0xff0A9C2D))),
                          child: const Text('2 JD'),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 115,
                    height: 144,
                    color: const Color(0xffF5F5F5),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/46-pizza-png-image.png',
                          height: 80,
                        ),
                        const Text('Food'),
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              minimumSize:
                                  MaterialStateProperty.all(const Size(73, 21)),
                              backgroundColor: MaterialStateProperty.all(
                                  const Color(0xff0A9C2D))),
                          child: const Text('2 JD'),
                        )
                      ],
                    ),
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
                      child: const Text(
                        'See All',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Color(0xff0A9C2D)),
                      ))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 115,
                    height: 144,
                    color: const Color(0xffF5F5F5),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/PikPng.com_paloma-de-la-paz_5978276.png',
                          height: 80,
                        ),
                        const Text('Food'),
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              minimumSize:
                                  MaterialStateProperty.all(const Size(73, 21)),
                              backgroundColor: MaterialStateProperty.all(
                                  const Color(0xff0A9C2D))),
                          child: const Text('2 JD'),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 115,
                    height: 144,
                    color: const Color(0xffF5F5F5),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/PngItem_2251486.png',
                          height: 80,
                        ),
                        const Text('Food'),
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              minimumSize:
                                  MaterialStateProperty.all(const Size(73, 21)),
                              backgroundColor: MaterialStateProperty.all(
                                  const Color(0xff0A9C2D))),
                          child: const Text('2 JD'),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 115,
                    height: 144,
                    color: const Color(0xffF5F5F5),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/pngkey.com-recipe-png-9160285.png',
                          height: 80,
                        ),
                        const Text('Food'),
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              minimumSize:
                                  MaterialStateProperty.all(const Size(73, 21)),
                              backgroundColor: MaterialStateProperty.all(
                                  const Color(0xff0A9C2D))),
                          child: const Text('2 JD'),
                        )
                      ],
                    ),
                  ),
                ],
              ),
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
          selectedIconTheme: const IconThemeData(
            color: Color(0xff0A9C2D),
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
          backgroundColor: const Color(0xff0A9C2D),
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
