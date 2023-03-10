import 'package:emart_app/views/category_screen/item_details.dart';
import 'package:emart_app/widgets_common/bg_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:emart_app/consts/consts.dart';
import 'package:get/get.dart';

class CategoryDetails extends StatelessWidget {
  final String? title;
  const CategoryDetails({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        appBar: AppBar(title: title!.text.fontFamily(bold).white.make(),

        
        ),
        body: Container(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(6, (index) => "Baby Clothing".text.size(12).fontFamily(semibold).color(darkFontGrey).
                  makeCentered().box.white.rounded.size(120,60).margin
                  (EdgeInsets.symmetric(horizontal: 4)).make())
              
                  
                ),
              ),
              20.heightBox,
              //item container
              Expanded(child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: 6,
                
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisExtent: 250,
                crossAxisSpacing: 8,mainAxisSpacing: 8

              ), itemBuilder: (context,index){
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(imgP5,width: 200,
                    height: 150,
                    fit: BoxFit.cover,),
                  
                    "Laptop 4GB/64GB".text.fontFamily(semibold).color(darkFontGrey).make(),
                    10.heightBox,
                    "\$600".text.color(redColor).fontFamily(bold).size(16).make(),
                    10.heightBox,
                  
                  ],
                ).box.white.margin(const EdgeInsets.symmetric(horizontal: 4)).roundedSM.outerShadowSm.
                padding(EdgeInsets.all(12)).make().onTap(() { 
                  Get.to(()=>ItemDetails(title: "Dummy item"));
                });
                  
              }))
            ],
          ),
        ),
      )
    );
  }
}