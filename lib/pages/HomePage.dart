import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/CustomNavBar.dart';
import 'package:flutter_application_1/widgets/UpcomingWidget.dart';
import 'package:flutter_application_1/widgets/NewMoviesWidge.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var clipRRect = ClipRRect;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children:[
              Padding(padding : const EdgeInsets.symmetric(vertical: 18, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "NETFLIX",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 28,
                            fontWeight: FontWeight.bold, 
                          ),
                          ),
                        const Text(
                          "Bạn muốn xem gì?", 
                          style: TextStyle(
                          color: Colors.white54),
                        ), 
                       ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          width: 100,
                          height: 30,
                          decoration: BoxDecoration(color:Colors.red,
                          borderRadius: BorderRadius.circular(10)
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "ĐĂNG NHẬP", 
                           style: TextStyle(
                            color: Colors.white, 
                            fontSize: 15, 
                            fontWeight: FontWeight.w500
                            ),
                            ),                        
                        ),
                        Container(
                          width: 100,
                          height: 30,
                          decoration: BoxDecoration(color:Colors.red,
                          borderRadius: BorderRadius.circular(10)
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "ĐĂNG KÍ", 
                           style: TextStyle(
                            color: Colors.white, 
                            fontSize: 15, 
                            fontWeight: FontWeight.w500
                            ),
                            ),                        
                        ),
                        
                      ],
                    )
                  ],
                ),

              ),
              Container(
                height: 60,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: const Color(0xFF292B37),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Row(children: [
                  const Icon(Icons.search,
                   color: Colors.white54,
                   size: 30,
                  ),
                  Container(
                    width: 300,
                    margin: EdgeInsets.only(left: 5),
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Tìm kiếm",
                        hintStyle: TextStyle(color: Colors.white54),
                      ),
                    ),
                  ),
                ]),
              ),
              SizedBox(height: 30),
              UpcomingWidget(),
              SizedBox(height: 40),
              NewMoviesWidget(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomNarbar(),
    );
  }
  
  
}


