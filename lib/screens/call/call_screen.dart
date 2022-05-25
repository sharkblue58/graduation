import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import '../../shared/component/component.dart';

class CallScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //space
              SizedBox(
                height:20.0,
              ),
              //chat list
              ListView.separated(
                  shrinkWrap:true,
                  physics:BouncingScrollPhysics(),
                  itemBuilder:(context,index)=>buildcallitem(),
                  separatorBuilder: (context,index)=>SizedBox(
                    height:20.0 ,
                  ),
                  itemCount: 15
              ),
            ]
        ),
      ),
    );

  }

}
