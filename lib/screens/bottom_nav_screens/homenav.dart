import 'package:aspen_app/custom_widgets/ratings_widget.dart';
import 'package:aspen_app/screens/coeurdes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:aspen_app/custom_widgets/luxury_buttons.dart';

class Homenav extends StatefulWidget {
  const Homenav({super.key});
  @override
  State<Homenav> createState() => _HomenavState();
}

class _HomenavState extends State<Homenav> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(
          height: 40,
        ),
        SizedBox(
          height: 100,
          width: 200,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                //text of explore aspen
                SizedBox(
                  height: 100,
                  width: 110,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Explore',
                        style: GoogleFonts.montserrat(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                      Text(
                        'Aspen',
                        style: GoogleFonts.montserrat(
                            fontSize: 32,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 80,
                ),
                //the explore/location icon
                SizedBox(
                  height: 40,
                  width: 150,
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.location_on,
                          color: Color.fromARGB(255, 33, 89, 243),
                        ),
                      ),
                      Text(
                        'Aspen, USA',
                        style: GoogleFonts.montserrat(
                            color: Colors.grey[800], fontSize: 12),
                      ),
                      DropdownButton(
                        items: const [],
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          color: Colors.blue,
                        ),
                        onChanged: (value) {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: TextField(
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(24),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: const Color.fromARGB(255, 235, 237, 254),
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.grey,
                weight: 2,
              ),
              hintText: 'Find things to do',
              hintStyle: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w400, fontSize: 15),
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          width: 270,
          height: 60,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              const MyWidget(section: 'Location'),
              Container(
                height: 20,
                width: 89,
                margin: const EdgeInsets.all(10),
                child: const Center(
                  child: Text(
                    'Hotels',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Container(
                height: 20,
                width: 89,
                margin: const EdgeInsets.all(10),
                child: const Center(
                  child: Text(
                    'Food',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Container(
                height: 20,
                width: 89,
                margin: const EdgeInsets.all(10),
                child: const Center(
                  child: Text(
                    'Adventure',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Container(
                height: 20,
                width: 89,
                margin: const EdgeInsets.all(10),
                child: const Center(
                  child: Text(
                    'Relaxation',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ],
          ),
        ),
        //this is the popular segment
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Popular',
              style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              width: 160,
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'See all',
                style: TextStyle(
                  color: Color.fromARGB(255, 40, 33, 243),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 260,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                height: 250,
                width: 188,
                margin: const EdgeInsets.all(10),
                child: Stack(
                  children: [
                    Image.asset('assets/alley.png'),
                    const SizedBox(
                      height: 300,
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 150,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10, top: 10),
                            child: RateW(
                              wid: Text(
                                'Alley palace',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              RateS(rate: '4.1'),
                              SizedBox(
                                width: 50,
                              ),
                              SizedBox(
                                width: 24,
                                height: 24,
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 60,
                                  child: Icon(
                                    Icons.heart_broken,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: () {
                  PageRouteBuilder createRoute() {
                    return PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const Coescreen(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        const begin = Offset(1.0, 0.0);
                        const end = Offset.zero;
                        const curve = Curves.easeInOut;
                        var tween = Tween(begin: begin, end: end)
                            .chain(CurveTween(curve: curve));
                        var offsetAnimation = animation.drive(tween);

                        return SlideTransition(
                          position: offsetAnimation,
                          child: child,
                        );
                      },
                    );
                  }

                  Navigator.of(context).push(
                    createRoute(),
                  );
                },
                child: Hero(
                  tag: 'coe tag',
                  child: Container(
                    height: 250,
                    width: 188,
                    margin: const EdgeInsets.all(10),
                    child: Stack(
                      children: [
                        Image.asset('assets/coeurdes.png'),
                        const SizedBox(
                          height: 300,
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 150,
                              ),
                              RateW(
                                wid: Text(
                                  'Coeurdes',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                ),
                              ),
                              RateS(rate: '4.5'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        //this is the recommended section
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Recommended',
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w600, color: Colors.black, fontSize: 20),
          ),
        ),
        //this is the explore section
        SizedBox(
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                height: 110,
                width: 170,
                margin: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/recospen.png'),
                    const Text(
                      'Explore Aspen',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
              Container(
                height: 110,
                width: 170,
                margin: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/lux.png'),
                    const Text(
                      'Luxurious Aspen',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
