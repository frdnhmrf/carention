import 'package:flutter/material.dart';
import 'package:projectflutterpemula/shared_theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isLocation = true;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    Widget info() {
      return Column(
        children: [
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 20,
                      child: Image.asset('assets/ic_info.png'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Information',
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 20,
                      child: Image.asset('assets/ic_notif.png'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Notifications',
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      );
    }

    Widget nearest() {
      return Column(
        children: [
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 22,
              vertical: 17,
            ),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: greyBackgroundColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'NEAREST CAR',
                  style: lightGreyTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 10),
                Image.asset(
                  'assets/image_1.png',
                  height: 125,
                ),
                const SizedBox(height: 3),
                Text(
                  'Fortuner GR',
                  style: blackTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: semiBold,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/ic_jam_gps.png',
                                  width: 16,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  '> 870km',
                                  style: lightGreyTextStyle.copyWith(
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/ic_gas.png',
                                  width: 16,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  '50 L',
                                  style: lightGreyTextStyle.copyWith(
                                    fontSize: 12,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '\$ 45,00/h',
                            style: blackTextStyle.copyWith(
                              fontWeight: semiBold,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      );
    }

    Widget profile() {
      return Column(
        children: [
          const SizedBox(height: 22),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: screenSize.height * 0.22,
                  padding: EdgeInsets.all(screenSize.aspectRatio * 0.05),
                  decoration: BoxDecoration(
                    color: greyBackgroundColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          width: screenSize.width * 0.11,
                          height: screenSize.height * 0.11,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/image_profile.jpeg',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: screenSize.height * 0.01),
                        Text(
                          'Ferdian',
                          style: blackTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: medium,
                          ),
                        ),
                        SizedBox(height: screenSize.height * 0.01),
                        Text(
                          '\$ 4,253',
                          style: blackTextStyle.copyWith(
                            fontWeight: bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 17),
              Expanded(
                child: isLocation == true
                    ? Container(
                        height: screenSize.height * 0.22,
                        decoration: BoxDecoration(
                            color: lightGreyColor,
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                                image: AssetImage('assets/maps.png'),
                                fit: BoxFit.cover)),
                      )
                    : Container(
                        height: screenSize.height * 0.22,
                        decoration: BoxDecoration(
                          color: greyBackgroundColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            'Status : Off',
                            style: blackTextStyle.copyWith(fontSize: 16),
                          ),
                        ),
                      ),
              )
            ],
          )
        ],
      );
    }

    Widget location() {
      return Column(
        children: [
          const SizedBox(height: 22),
          Container(
            padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.05),
            height: screenSize.height * 0.1,
            decoration: BoxDecoration(
              color: greyBackgroundColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Location',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
                Switch(
                  value: isLocation,
                  onChanged: (value) {
                    setState(() {
                      isLocation = value;
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      );
    }

    Widget more() {
      return Column(
        children: [
          const SizedBox(height: 22),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 20,
            ),
            decoration: BoxDecoration(
              color: darkBackgroundColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'More Cars',
                      style: lightGreyTextStyle.copyWith(
                        fontSize: 12,
                      ),
                    ),
                    Icon(
                      Icons.more_horiz_outlined,
                      color: lightGreyColor,
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Corolla Cross',
                          style: whiteTextStyle.copyWith(
                            fontSize: 20,
                            fontWeight: bold,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            Image.asset(
                              'assets/ic_jam_gps.png',
                              width: 16,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              '> 4km',
                              style: greyTextStyle.copyWith(
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(width: 17),
                            Image.asset(
                              'assets/ic_gas.png',
                              width: 16,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              '50 L',
                              style: greyTextStyle.copyWith(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: whiteColor,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                          iconSize: 30,
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_rounded,
                            color: blackColor,
                          )),
                    )
                  ],
                ),
                const SizedBox(height: 18),
                Divider(
                  color: lightGreyColor,
                  thickness: 1,
                ),
                const SizedBox(height: 18),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ionic 5',
                          style: whiteTextStyle.copyWith(
                            fontSize: 20,
                            fontWeight: bold,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            Image.asset(
                              'assets/ic_jam_gps.png',
                              width: 16,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              '> 8km',
                              style: greyTextStyle.copyWith(
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(width: 17),
                            Image.asset(
                              'assets/ic_battery.png',
                              width: 16,
                              color: lightGreyColor,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              '80 %',
                              style: greyTextStyle.copyWith(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: whiteColor,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                          iconSize: 30,
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_rounded,
                            color: blackColor,
                          )),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      );
    }

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.06),
        child: ListView(
          children: [
            info(),
            nearest(),
            profile(),
            location(),
            more(),
          ],
        ),
      ),
    );
  }
}
