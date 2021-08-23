import 'package:covid/src/canvas/arrow_clip_path.dart';
import 'package:covid/src/component/covid_statistics_viewer.dart';
import 'package:covid/src/controller/covid_statistics_controller.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'component/bar_chart.dart';

class App extends GetView<CovidStatisticsController> {
  App({Key? key}) : super(key: key);

  late double headerTopZone;

  Widget infowidget(String title, String value) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          Text(
            "$value",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ],
      ),
    );
  }

  List<Widget> _background() {
    return [
      Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
                colors: [
              Color.fromRGBO(56, 110, 120, 1),
              Color.fromRGBO(63, 119, 129, 1)
            ])),
      ),
      Positioned(
        left: -110,
        top: headerTopZone + 40,
        child: Container(
          child: Image.asset(
            'assets/covid_img.png',
            width: Get.size.width * 0.7,
          ),
        ),
      ),
      Positioned(
        top: headerTopZone + 20,
        left: 0,
        right: 0,
        child: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromRGBO(21, 94, 103, 1)),
            child: Obx(() => Text(
                  controller.todayData.standardDayString,
                  // controller.todayData.stateTime
                  //     '07.24 00:00 기준',
                  style: TextStyle(color: Colors.white),
                )),
          ),
        ),
      ),
      Positioned(
        top: headerTopZone + 60,
        right: 40,
        child: Obx(
          () => CovidStatisticsViewer(
            title: '확진자',
            addedCount: controller.todayData.calcDecideCnt,
            totalCount: controller.todayData.decideCnt ?? 0,
            titleColor: Colors.white,
            subValueColor: Colors.white,
            upDown:
                controller.calculrateUpDown(controller.todayData.calcDecideCnt),
          ),
        ),
        // child: Column(
        //   children: [
        //     Text(
        //       '확진자',
        //       style: TextStyle(
        //         color: Colors.white,
        //         fontSize: 18,
        //       ),
        //     ),
        //     SizedBox(
        //       height: 5,
        //     ),
        //     Row(
        //       children: [
        //         ClipPath(
        //           clipper: ArrowClipPath(),
        //           child: Container(
        //             width: 20,
        //             height: 20,
        //             color: Colors.red[300],
        //           ),
        //         ),
        //         Text(
        //           '1,629',
        //           style: TextStyle(
        //             color: Colors.red[300],
        //             fontWeight: FontWeight.bold,
        //             fontSize: 50,
        //           ),
        //         ),
        //       ],
        //     ),
        //     Text(
        //       '187,362',
        //       style: TextStyle(
        //         color: Colors.white,
        //         fontSize: 20,
        //       ),
        //     ),
        //   ],
        // )
      )
    ];
  }

  Widget _todayStatistics() {
    return Obx(
      () => Row(
        children: [
          Expanded(
            child: CovidStatisticsViewer(
              title: '격리해제',
              addedCount: controller.todayData.calcClearCnt,
              totalCount: controller.todayData.clearCnt ?? 0,
              upDown: controller
                  .calculrateUpDown(controller.todayData.calcClearCnt),
              dense: true,
            ),
          ),
          Container(
            height: 60,
            child: VerticalDivider(
              color: Color.fromRGBO(195, 195, 195, 1),
            ),
          ),
          Expanded(
            child: CovidStatisticsViewer(
              title: '검사중',
              addedCount: controller.todayData.calcExamCnt,
              totalCount: controller.todayData.examCnt ?? 0,
              upDown:
                  controller.calculrateUpDown(controller.todayData.calcExamCnt),
              dense: true,
            ),
          ),
          Container(
            height: 60,
            child: VerticalDivider(
              color: Color.fromRGBO(195, 195, 195, 1),
            ),
          ),
          Expanded(
            child: CovidStatisticsViewer(
              title: '사망자',
              addedCount: controller.todayData.calcDeathCnt,
              totalCount: controller.todayData.deathCnt ?? 0,
              upDown: controller
                  .calculrateUpDown(controller.todayData.calcDeathCnt),
              dense: true,
            ),
          ),
        ],
      ),
    );
  }

  Widget _covidTrendsChart() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          '확진자 추이',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        AspectRatio(
          aspectRatio: 1.7,
          child: Obx(
            () => controller.weekDays.length == 0
                ? Container()
                : CovidBarChart(
                    covidDatas: controller.weekDays,
                    maxY: controller.maxDecideValue,
                  ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    headerTopZone = Get.mediaQuery.padding.top + AppBar().preferredSize.height;
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          elevation: 0,
          title: Text(
            '코로나 일별 현황',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          actions: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
            )
          ],
        ),
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            ..._background(),
            Positioned(
              top: headerTopZone + 200,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(25),
                    child: Column(
                      children: [
                        _todayStatistics(),
                        SizedBox(
                          height: 20,
                        ),
                        _covidTrendsChart(),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// padding: const EdgeInsets.all(15),
//           child: Obx(() {
//             var info = controller.covidStatistic.value;
//             return Column(
//               children: [
//                 infowidget("기준일 : ", info.stateDt ?? ''),
//                 infowidget("기준시간 : ", info.stateTime ?? ''),
//                 infowidget("확진자 수 : ", info.deathCnt ?? ''),
//                 infowidget("검사진행 수 : ", info.examCnt ?? ''),
//                 infowidget("사망자 수 : ", info.deathCnt ?? ''),
//                 infowidget("치료중 환자 수 : ", info.careCnt ?? ''),
//                 infowidget("결과 음성 수 : ", info.resutlNegCnt ?? ''),
//                 infowidget("누적 검사 수 : ", info.accExamCnt ?? ''),
//                 infowidget("누적 검사 완료 수 : ", info.accExamCompCnt ?? ''),
//                 infowidget("누적 확진률 : ", info.accDefRate ?? ''),
//               ],
//             );
//           }),
