import 'package:cattle_app/AppLayer/Provider.dart';
import 'package:cattle_app/pitem/PitemManager.dart';
import 'package:cattle_app/pitem/Pitem.dart';
import 'package:flutter/material.dart';


class PitemView extends StatefulWidget {
  @override
  _PitemViewState createState() => _PitemViewState();
}

class _PitemViewState extends State<PitemView> {

  @override
  Widget build(BuildContext context) {
    PitemManager manager = Provider.of(context).fetch(PitemManager);

    return Scaffold(
      appBar: AppBar(
        title: Text("Pitem"),
      ),
      body: StreamBuilder<List<Pitem>>(
          stream: manager.productList,
          builder: (BuildContext context, AsyncSnapshot <List<Pitem>>snapshot) {

            List<Pitem> _productList  = snapshot.data;
            return ListView.separated(
              itemCount: _productList?.length ?? 0,
              itemBuilder: (BuildContext context,int index) {
                Pitem _pitem = _productList[index];
                return ListTile(
                  leading: CircleAvatar(),
                  //
                  title: Text( _pitem.name),
                  subtitle: Text(_pitem.description),
                );
              },
              separatorBuilder: (context,index){
                return Divider(
                  color: Colors.blue,
                );
              },
            );
          }
      ),
    );
  }


}
