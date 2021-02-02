part of 'pages.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(bottom: defaultMargin),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 110,
                height: 110,
                margin: EdgeInsets.only(top: 26),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/photo_border.png'))),
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(
                              (context.read<UserCubit>().state as UserLoaded)
                                  .user
                                  .picturePath),
                          fit: BoxFit.cover)),
                ),
              ),
              Container(
                  width: double.infinity,
                  height: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        (context.read<UserCubit>().state as UserLoaded)
                            .user
                            .name,
                        style: blackFontStyle1,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        (context.read<UserCubit>().state as UserLoaded)
                            .user
                            .email,
                        style: greyFontStyle.copyWith(
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  )),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          color: Colors.white,
          child: Column(
            children: [
              CustomTabbar(
                titles: ['Account', 'FoodMarket'],
                selectedIndex: selectedIndex,
                onTap: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
              ),
              SizedBox(height: 16),
              Column(
                  children: ((selectedIndex == 0)
                          ? [
                              'Edit Profile',
                              'Home Address',
                              'Security',
                              'Payment'
                            ]
                          : [
                              'Rate App',
                              'Help Center',
                              'Privacy & Policy',
                              'Term & Condition'
                            ])
                      .map((e) => Padding(
                            padding: EdgeInsets.only(
                                bottom: 16,
                                left: defaultMargin,
                                right: defaultMargin),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(e, style: blackFontStyle3),
                                SizedBox(
                                  height: 24,
                                  width: 24,
                                  child: Image.asset('assets/right_arrow.png',
                                      fit: BoxFit.contain),
                                ),
                              ],
                            ),
                          ))
                      .toList()),
            ],
          ),
        ),
        SizedBox(height: 80),
      ],
    );
  }
}
