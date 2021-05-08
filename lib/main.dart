import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: OrientationBuilder(
          builder: (context, snapshot) {
            return MyHomePage(title: 'Flutter Demo Home Page');
          },
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        // color: Colors.red,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //for example:
              Align(
                alignment: Alignment.center,
                child: Container(
                  alignment: Alignment.center,
                  width: (MediaQuery.of(context).size.width - 40.w),
                  height: 160.h,
                  margin: EdgeInsets.only(top: 20.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/images/tree.jpeg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sample Text',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              _title('Feature'),
              _horozontalListview(),
              _title('Recent'),
              _horozontalListview2(),
              _title('Radius'),
              _horozontalListview3(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

  Widget _horozontalListview() {
    return Container(
      margin: EdgeInsets.only(top: 5.h),
      height: 140.h,
      // color: Colors.red,
      // width: (MediaQuery.of(context).size.width - 40.w),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 50,
        itemBuilder: (context, int index) {
          return Padding(
            padding: index == 49
                ? EdgeInsets.only(right: 20.w, left: 10)
                : index == 0
                    ? EdgeInsets.only(left: 20.w)
                    : EdgeInsets.only(left: 10),
            child: Column(
              children: [
                Container(
                  width: 110.h,
                  height: 110.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/images/tree.jpeg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5.h),
                  width: 110.h,
                  child: Text(
                    'Title',
                    style: TextStyle(fontSize: 15.sp),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _horozontalListview2() {
    return Container(
      margin: EdgeInsets.only(top: 5.h),
      height: 150.h,
      // width: (MediaQuery.of(context).size.width - 40.w),
      // color: Colors.red,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 50,
        itemBuilder: (context, int index) {
          return Padding(
            padding: index == 49
                ? EdgeInsets.only(right: 20.w, left: 10)
                : index == 0
                    ? EdgeInsets.only(left: 20.w)
                    : EdgeInsets.only(left: 10),
            child: Column(
              children: [
                Container(
                  width: 125.h,
                  height: 125.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/images/tree.jpeg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5.h),
                  width: 125.h,
                  child: Text(
                    'Title',
                    style: TextStyle(fontSize: 15.sp),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _horozontalListview3() {
    return Container(
      margin: EdgeInsets.only(top: 5.h),
      height: 150.h,
      // width: (MediaQuery.of(context).size.width - 40.w),
      // color: Colors.red,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 50,
        itemBuilder: (context, int index) {
          return Padding(
            padding: index == 49
                ? EdgeInsets.only(right: 20.w, left: 10)
                : index == 0
                    ? EdgeInsets.only(left: 20.w)
                    : EdgeInsets.only(left: 10),
            child: Column(
              children: [
                Container(
                  width: 70.h,
                  height: 70.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/images/tree.jpeg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5.h),
                  width: 70.h,
                  child: Text(
                    'Title',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15.sp),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _title(String title) {
    return Padding(
      padding: EdgeInsets.only(top: 10.h, left: 20.w),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
