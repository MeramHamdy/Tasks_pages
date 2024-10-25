import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool one=true;

  bool two=false;

  bool three=false;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Column(
          children: [
            //App bar
            Container(
              height: 120,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/images/1.png",
                      width: 50,
                      height: 60,
                      fit: BoxFit.fill,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("مرحبا بك شريف",style: TextStyle(
                          fontSize: 20,
                        ),),
                        Text("يوم سعيد..ابتسم",style: TextStyle(
                          fontSize: 20,
                        ),),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.menu,size: 30,),
                        const SizedBox(width: 15,),
                        Icon(Icons.arrow_forward_outlined,size: 30,),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // Alarm
            Container(
              width: MediaQuery.of(context).size.width,
              height: 30,
              alignment: Alignment.centerRight,
              color: Colors.red[900],
              child: const Padding(
                padding: EdgeInsets.only(right: 16.0),
                child: Text("تنويه عام",style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),),
              ),
            ),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  InkWell(
                    onTap:(){
                      setState(() {
                        one = true;
                        two=false;
                        three=false;
                      });
                    },
                    child: Container(
                      color:one==true? Colors.lime[800]:Colors.grey,
                      height: 40,
                      alignment: Alignment.center,

                      width: MediaQuery.of(context).size.width *.25,
                      child:  Text("مهمات جديدة",style: TextStyle(
                        fontSize: 16,
                        color:one==true? Colors.white:Colors.black,
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                  ),
                  InkWell(
                    onTap:(){
                      setState(() {
                        one = false;
                        two=true;
                        three=false;
                      });
                    },
                    child: Container(
                      color: two==true? Colors.lime[800]:Colors.grey,
                      height: 40,
                      alignment: Alignment.center,

                      width: MediaQuery.of(context).size.width *.25,
                      child:  Text("مهمات منتهية",style: TextStyle(
                        fontSize: 16,
                        color: two==true? Colors.white:Colors.black,
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                  ),
                  InkWell(
                    onTap:(){
                      setState(() {
                        one = false;
                        two=false;
                        three=true;
                      });
                    },
                    child: Container(
                      color: three==true? Colors.lime[800]:Colors.grey,
                      alignment: Alignment.center,
                      height: 40,
                      width: MediaQuery.of(context).size.width *.25,
                      child:  Text("مهمات مؤجلة",style: TextStyle(
                        fontSize: 16,
                        color: three==true? Colors.white:Colors.black,
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                  ),
                ],
              ),

            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 16.0),
            child:
            Container(
              width: MediaQuery.of(context).size.width,
              height: 400,
              decoration: BoxDecoration(
                border:Border.all( color:Colors.black38,width: 2),
              ),

              child:Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                  Padding(
                  padding: EdgeInsets.fromLTRB(0, 5, 4, 0),
                    child:
                    Text("لديك اليوم 12 مهمة",style: TextStyle(fontSize: 16),),
                  ),
                Expanded(
                    child: ListView(
                      children: [
                      Padding(
                      padding:EdgeInsets.symmetric(horizontal: 4.0),
                          child: Container(
                              height: 60,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(5),
                                border:Border.all( color:Colors.lime,width: 2),
                              ),
                              child: Padding(
                                padding:EdgeInsets.symmetric(horizontal: 4.0)  ,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: [
                                    Text("سباكة حمام رقم (4) النادي الاجتماعي (رجالي)",style: TextStyle(fontWeight: FontWeight.bold,fontSize:17),),
                                    Text("الأحواض ،المرحاض(أرضي/معلق) ",style: TextStyle(color: Colors.grey[600],fontSize:14),)
                                  ],
                                ),
                              ))
                      ),
                        Padding(
                            padding:EdgeInsets.fromLTRB(4, 10, 4, 5),
                            child: Container(
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(5),
                                  border:Border.all( color:Colors.lime,width: 2),
                                ),
                                child: Padding(
                                  padding:EdgeInsets.symmetric(horizontal: 4.0)  ,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      Text("سباكة حمام رقم (4) النادي الاجتماعي (رجالي)",style: TextStyle(fontWeight: FontWeight.bold,fontSize:17),),
                                      Text("السخانات،الصرف،الاكسسوارات ",style: TextStyle(color: Colors.grey[600],fontSize:14),)
                                    ],
                                  ),
                                ))
                        ),
                        Padding(
                            padding:EdgeInsets.fromLTRB(4, 5, 4, 5),
                            child: Container(
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(5),
                                  border:Border.all( color:Colors.lime,width: 2),
                                ),
                                child: Padding(
                                  padding:EdgeInsets.symmetric(horizontal: 4.0)  ,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      Text("فحص تكيف الوحدة رقم 12345",style: TextStyle(fontWeight: FontWeight.bold,fontSize:17),),
                                      Text("تنظيف/عمل فلتر الهواء ",style: TextStyle(color: Colors.grey[600],fontSize:14),)
                                    ],
                                  ),
                                ))
                        ),
                        Padding(
                            padding:EdgeInsets.fromLTRB(4, 5, 4, 5),
                            child: Container(
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(5),
                                  border:Border.all( color:Colors.lime,width: 2),
                                ),
                                child: Padding(
                                  padding:EdgeInsets.symmetric(horizontal: 4.0)  ,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      Text("مكافحة افات مبني النادي",style: TextStyle(fontWeight: FontWeight.bold,fontSize:17),),
                                      Text("صيانة شاملة",style: TextStyle(color: Colors.grey[600],fontSize:14),)
                                    ],
                                  ),
                                ))
                        )
                      ],
                    ))
                  ]
              )
            )
            ),
            Padding( padding:EdgeInsets.fromLTRB(0, 45, 200, 5),
            child: Row(
              children: [
                Text("اتصل بالمشرف 387733777",style: TextStyle(color: Colors.lime[800],fontWeight: FontWeight.bold),),
                Icon(Icons.phone ),],
            ),
           ),
            Container(
              margin: EdgeInsets.fromLTRB(16, 38, 16, 0),
              height: 40,
              width: double.infinity,
              color: Colors.lime[800],
              child: Center(
                child:Text("تحديث",style: TextStyle(color: Colors.white,fontSize: 20),),
              )
            )

          ],
        ),
      ),
    );
  }
}
