import 'package:flutter/material.dart';

class GetNowWidget extends StatelessWidget {
  const GetNowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 19, top: 24),
                width: 285,
                height: 130,
                decoration: BoxDecoration(
                    color: const Color(0xffF17547),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "20% OFF DURING THE\nWEEKEND",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Colors.white),
                    ),
                    const SizedBox(height: 13.44),
                    SizedBox(
                      width: 95,
                      height: 34.12,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(17.65))),
                        onPressed: () {},
                        child: const Text(
                          "Get Now",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                              color: Color(0xffF17547)),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                  right: 0,
                  top: 18,
                  child: Image.asset(
                      "assets/hand-holding-shopping-bags-plain-background_23-2148286215-removebg-preview 1.png"))
            ],
          ),
          const SizedBox(width: 19),
          Stack(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 19, top: 24),
                width: 285,
                height: 130,
                decoration: BoxDecoration(
                    color: const Color(0xff1383F1),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "20% OFF DURING THE\nWEEKEND",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Colors.white),
                    ),
                    const SizedBox(height: 13.44),
                    SizedBox(
                      width: 95,
                      height: 34.12,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: const Color(0xff50D63B),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(17.65))),
                        onPressed: () {},
                        child: const Text(
                          "Get Now",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                              color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                  right: 0,
                  top: 18,
                  child: Image.asset(
                      "assets/hand-holding-shopping-bags-plain-background_23-2148286215-removebg-preview 1.png"))
            ],
          ),
        ],
      ),
    );
  }
}
