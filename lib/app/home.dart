
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'components/ discount.dart';
import 'components/product-item.dart';
import 'components/sidebar-widget.dart';
import 'models/discount-model.dart';
import 'models/product.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    List listDiscount =[
      DiscoutModel(
        id: 0,
        title: 'Spring Offer',
        discout: 20,
        circularText: 'SPRING FOOD',
        description: 'Use this coupon\n for discout',
        color: Colors.lightGreen[200]
      )
    ];
    List listProduct = [
      ProductModel(),
      ProductModel(
          id: 1,
          title: 'Potato',
          picture:
              'https://superprix.vteximg.com.br/arquivos/ids/178620-292-292/Batata-Especial-1kg.png?v=636857520320030000',
          price: 30,
          per: 'kg',
          color: Color(0xFFE3CDA3)),
      ProductModel(
          id: 2,
          title: 'Cabbage',
          picture:
              'https://lh3.googleusercontent.com/proxy/aUZnkJX3kJ3I5WUTLLMwfGWbx4mLXvMJjaVWwwWhpUGJjHE6C9i1XTuGRPnk1EWJwN-WbO_Yt2unpy0ip8K5PfyCmvgCIyppqGEhbhy0eobd4vBKdhyBW6OpORYrgIFnzEBPWoQa',
          price: 25,
          per: 'pc',
          color: Color(0XFFDFA2D7)),
      ProductModel(
          id: 3,
          title: 'CauliFlower',
          picture:
              'https://purepng.com/public/uploads/medium/purepng.com-cauliflowercauliflowerplantsgreen-cauliflowerfood-1701527244149w2p41.png',
          price: 30,
          per: 'pc',
          color: Color(0xFFB0D47D)),
      ProductModel(
          id: 4,
          title: 'Pumpkin',
          per: 'pc',
          picture:
              'https://pluspng.com/img-png/pumpkin-png-pumpkin-png-image-3288.png',
          price: 45,
          color: Color(0xFFF5C58D),),
      ProductModel(
          id: 5,
          title: 'Beet',
          picture:
              'https://i.dlpng.com/static/png/1488215-beet-png-beet-png-527_286_preview.png',
          price: 120,
          color: Color(0xFFECA0B2),
          per: 'kg'  
        ),
      ProductModel(
          id: 5,
          title: 'Bell pepper',
          picture:
              'https://www.pngkey.com/png/full/164-1643396_reb-bell-pepper-png-1-red-bell-pepper.png',
          price: 100,
          per: 'kg',
          color: Color(0xFFEE7F82)),
      ProductModel(
          id: 5,
          title: 'Chayote',
          picture:
              'https://i.dlpng.com/static/png/1488215-beet-png-beet-png-527_286_preview.png',
          price: 120,
          color: Color(0xFFB0D47D),
          per: 'kg'
        
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            icon: Icon(
              Icons.short_text,
              color: Colors.black,
            ),
            onPressed: () {}),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.shopping_basket,
                color: Colors.black,
              ),
              onPressed: () {})
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.green,
            ),
            title: Text('1'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.card_giftcard,
              color: Color(0xffB3B4A9),
            ),
            title: Text('2'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.phone,
              color: Color(0xffB3B4A9),
            ),
            title: Text('3'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              color: Color(0xffB3B4A9),
            ),
            title: Text('4'),
          ),
        ],
      ),
      body: Wrap(
        // mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                  // prefix: Icon(Icons.search, color: Colors.black,),
                  hintText: 'Search Your Product',
                  contentPadding: EdgeInsets.fromLTRB(20.0, 10, 200, 10),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0))),
            ),
          ),
          //Sidebar(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Sidebar(),
              Expanded(
                child: Container(
                  height: size.height,
                  child: StaggeredGridView.countBuilder(
                    crossAxisCount: 2,
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 1,
                    itemCount: listProduct.length,
                    itemBuilder: (context, index) {
                      ProductModel productModel = listProduct[index];
                      DiscoutModel discoutModel = listDiscount[0];

                      return index==0? DiscountCard(
                        title: discoutModel.title,
                        description: discoutModel.description,
                        circularText: discoutModel.circularText,
                        discout: discoutModel.discout,
                        color: discoutModel.color,
                        
                      )
                        
                        :ProductItem(
                        title: productModel.title,
                        picture: productModel.picture,
                        price: productModel.price,
                        per: productModel.per,
                        color: productModel.color,
                        onTap: () {
                          //Navigator.push(context, MaterialPageRoute(builder: (context) => DE))
                        },
                      ); 
                    },
                    staggeredTileBuilder: (index) {
                      return StaggeredTile.count(1, index==0 ? 1 : 1.399);
                    },
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
