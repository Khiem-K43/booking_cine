import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/CustomNavBar.dart';
import 'package:flutter_application_1/widgets/MoviePageButtons.dart';
import 'package:flutter_application_1/widgets/RecommendWidget.dart';


class MoviePage extends StatelessWidget {
  final int i;
  const MoviePage(this.i);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Opacity(
            opacity: 0.4,
            child: Image.asset(
              "images/movie_bg$i.jpg",
              height: 280,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back, 
                            color: Colors.white,
                            size: 30,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 60),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 8,
                                ),
                            ]
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              "images/movie$i.jpg",
                               height: 250, 
                               width: 180,
                               fit: BoxFit.fill,
                               ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 200, top: 80),
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.red,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 8,
                              )
                            ]
                          ),
                          child: Icon(
                            Icons.play_arrow,
                            color: Colors.white, 
                            size: 60,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  MoviePageButtons(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          movie_name[i],
                           style: TextStyle(
                            color: Colors.white, 
                            fontSize: 25,
                            fontWeight: FontWeight.w500
                            ),
                        ),
                        SizedBox(height: 15),
                         Text(
                          movie_descrip[i],
                           style: TextStyle(
                            color: Colors.white, 
                            fontSize: 16
                          ),
                          textAlign: TextAlign.justify,

                        ),
                      ],
                    ),

                  ),
                  SizedBox(height: 10),
                  // ignore: prefer_const_constructors
                  RecommendWidget(),

                ],
              )
            ),
           )
        ],
      ),
      bottomNavigationBar: CustomNarbar(),
    );
  }
}

List<String> movie_name=[
  "Kẻ hủy diệt",
  "Avarta",
  "Thế giới khủng long",
  "Venom đối mặt tử thù",
  "Beyond redemtion",
  "Plane bay vào tử địa",
  "Jonh Wick 4",
  "Sweet Home",
  "Avenger Endgame",
  "UPDATING"
];

List<String> movie_descrip=[
  "Câu chuyện phim vẫn bắt đầu với cảnh John Connor (Jason Clarke) chuẩn bị cho cuộc chiến cuối cùng chống lại nhóm robot của Skynet trước khi gửi người bạn thân nhất - Kyle Reese (Jai Courtney) - về quá khứ để bảo vệ mẹ mình là Sarah Connor (Emilia Clarke). Nhưng bất ngờ thay, quá khứ lại không hề như những gì Kyle hay người hâm mộ Terminator tưởng tượng. Chính Sarah đã tới giải nguy Kyle khi anh bị tấn công, trong khi một Kẻ Hủy Diệt (Arnold Schwarzenegger) với gương mặt già nua lại xuất hiện và tấn công phiên bản thời trẻ của mình. Kẻ thù của họ trong phần này là T-1000 (Lee Byung Hun) hay chính bản thân John Connor từ tương lai sau khi bị chuyển hoá thành kẻ huỷ diệt T-3000...",
  "Jake Sully và Neytiri, giờ đã thành đôi, nguyện sẽ ở bên nhau. Tuy nhiên, cả hai buộc phải rời khỏi nhà và khám phá những miền đất mới trên mặt trăng Pandora, cũng chính là lúc những mối nguy cũ trở lại với họ. ",
  "Những con khủng long đã thoát khỏi nơi giam cầm và tiến vào thế giới loài người. Giờ đây, chúng xuất hiện ở khắp mọi nơi. Sinh vật to lớn ấy không còn chỉ ở trên đảo như trước nữa mà gần ngay trước mắt, thậm chí còn có thể chạm",
  "Khi Eddie Brock và Venom cố gắng xoay xở với mối quan hệ chông gai của họ, mối đe dọa mới xuất hiện từ sát nhân hàng loạt Cletus Kasady và symbiote ngoài hành tinh mới.",
  "Một cảnh sát chìm mệt mỏi phải duy trì vỏ bọc của mình trong khi cố gắng cứu con gái của một Triad Boss khét tiếng khỏi trở thành thiệt hại tài sản thế chấp trong một hoạt động sai lầm.",
  "Bay Vào Tử Địa kể về sự cố sét đánh đã làm cho chuyến bay của cơ trưởng Brodie phụ trách rơi xuống quần đảo do phiến quân chiếm đóng. Cú rơi chỉ là sự khởi đầu cho những cơn ác mộng khi cơ trưởng buộc phải hợp tác với một kẻ sát nhân để giành lại mạng sống cho cả đoàn.",
  "John Wick (Keanu Reeves) đã khám phá ra con đường để đánh bại High Table. Nhưng trước khi có thể kiếm được tự do, Wick phải đối đầu với kẻ thù mới với những liên minh hùng mạnh trên toàn cầu và những lực lượng biến những người bạn cũ thành kẻ thù.",
  "Sweet Home: Thế Giới Ma Quái kể về khi con người biến thành quái vật man rợ gieo rắc kinh hoàng, một thiếu niên trăn trở và hàng xóm ở căn hộ của cậu phải chiến đấu để sinh tồn – và giữ lấy nhân tính.",
  "Sau những sự kiện tàn khốc của Avengers: Infinity War (2018), vũ trụ chìm trong đống đổ nát. Với sự giúp đỡ của các đồng minh còn lại, nhóm Avengers tập hợp lại một lần nữa để đảo ngược hành động của Thanos và khôi phục lại sự cân bằng cho vũ trụ.",
  "UPDATING"
];