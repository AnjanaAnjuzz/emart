import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/lists.dart';
import 'package:emart_app/views/profile_screen/components/details_card.dart';
import 'package:emart_app/widgets_common/bg_widget.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child:Scaffold(
        body:SafeArea(child: Column(
          children: [

            //added profile Button

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topRight,
                
                child: Icon(Icons.edit,color: whiteColor,)).onTap(() { }),
            ),
            //userdetails section

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Image.asset(imgProfile2,width: 100,fit:BoxFit.cover).box.roundedFull.clip(Clip.antiAlias).make(),
                  10.widthBox,
               Expanded(child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  "dummy User".text.fontFamily(semibold).white.make(),
                       
                  "custamer@example.com".text.white.make(),
                ],
               )),
               OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    color: whiteColor,
                  )
                ),
                
                onPressed: (){}, child:logout.text.fontFamily(semibold).white.make() )
                ],
              ),
            ),
            20.heightBox,
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            
            children: [
            
          detailsCard( 00, "in your cart",context.screenWidth/3.4),
           detailsCard( 32, "in your wishlist",context.screenWidth/3.4),
            detailsCard( 675, "your orders",context.screenWidth/3.4),
           ],),
           //buttons section


           
           ListView.separated(
            shrinkWrap: true,
            separatorBuilder: (context,index){
              return Divider(
                color: lightGrey,

              );
            },
            itemCount: profileButtonsList.length,
            
            itemBuilder:(BuildContext,int index){
            return ListTile(
              leading: Image.asset(profileButtonsIcon[index],width: 22,),
              title: profileButtonsList[index].text.fontFamily(semibold).color(darkFontGrey).make(),
            );
           }).box.white.rounded.margin(EdgeInsets.all(12)).padding(EdgeInsets.symmetric(horizontal: 16)).shadowSm.make().box.color(redColor).make(),
            
          ],
        ))
      )
    );
  }
}