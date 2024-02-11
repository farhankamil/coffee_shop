import 'package:coffee_shop/common/theme.dart';
import 'package:coffee_shop/presentation/widgets/content.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/home';
  const HomePage({super.key});
  Widget header() {
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin,
        left: defaultMargin,
        right: defaultMargin,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Location',
                  style: primaryTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Bilzen, Tanjungbalai',
                      style: primaryTextStyle.copyWith(
                          fontSize: 14, fontWeight: semiBold),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            width: 54,
            height: 54,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/image_profile.png'),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget search() {
    return Container(
      height: 52,
      margin: EdgeInsets.symmetric(
        horizontal: defaultMargin,
      ),
      padding: const EdgeInsets.only(
        left: 16,
        right: 4,
      ),
      decoration: BoxDecoration(
        color: transparentColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: Row(
          children: [
            const Icon(
              Icons.search,
              size: 30,
              color: Colors.white,
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: TextFormField(
                // controller: null,
                style: blackTextStyle,
                decoration: const InputDecoration.collapsed(
                  hintText: 'Search Coffee',
                  hintStyle: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            // Container(
            //   color: Colors.amber,
            //   height: 20,
            //   width: 20,
            // ),
            Image.asset(
              'assets/adjust.png',
            ),
          ],
        ),
      ),
    );
  }

  Widget banner() {
    return Container(
      height: 160,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage('assets/banner_coffee.png'),
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }

  Widget categories() {
    return Container(
      margin: const EdgeInsets.only(top: 80),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: defaultMargin,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              margin: const EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: backgroundColor2,
              ),
              child: Text(
                'Cappuccino',
                style: primaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: semiBold,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              margin: const EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
              child: Text(
                'Machiato',
                style: blackTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: semiBold,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              margin: const EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
              child: Text(
                'Latte',
                style: blackTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: semiBold,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              margin: const EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
              child: Text(
                'Americano',
                style: blackTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: semiBold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget content() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: defaultMargin,
      ),
      child: GridView.count(
        childAspectRatio: 0.6,
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        shrinkWrap: true,
        children: const [
          HomeContentItem(
            imageUrl: 'assets/coffee_1.png',
            title: 'Cappucino',
            description: 'with Chocolate',
            price: '\$ 4.53',
            rating: '4.8',
          ),
          HomeContentItem(
            imageUrl: 'assets/coffee_2.png',
            title: 'Cappucino',
            description: 'with Oat Milk',
            price: '\$ 3.90',
            rating: '4.9',
          ),
          HomeContentItem(
            imageUrl: 'assets/coffee_3.png',
            title: 'Cappucino',
            description: 'with Chocolate',
            price: '\$ 4.90',
            rating: '4.5',
          ),
          HomeContentItem(
            imageUrl: 'assets/coffee_4.png',
            title: 'Cappucino',
            description: 'with Oat Milk',
            price: '\$ 2.59',
            rating: '4.0',
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            alignment: Alignment.topCenter,
            child: Stack(
              clipBehavior: Clip.none,
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                ClipRRect(
                    child: Container(
                  color: blackColor,
                  height: 280,
                  child: Column(children: [
                    header(),
                    const SizedBox(height: 28),
                    search(),
                  ]),
                  // width: 100,
                )),
                Positioned(
                  top: 204,
                  right: defaultMargin,
                  left: defaultMargin,
                  child: Container(
                    height: 150,
                    alignment: Alignment.center,
                    child: banner(),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          categories(),
          const SizedBox(
            height: 10,
          ),
          content(),
        ],
      ),
    );
  }
}
