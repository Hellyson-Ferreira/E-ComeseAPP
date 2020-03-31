import 'package:e_commerce_app/app/models/product-item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'components/sidebar-widget.dart';
import 'models/product.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    List<ProductModel> listProduct = [
      ProductModel(
          id: 1,
          title: 'Potato',
          picture:
              'https://superprix.vteximg.com.br/arquivos/ids/178620-292-292/Batata-Especial-1kg.png?v=636857520320030000',
          price: 30,
          per: 'kg',
          color: Colors.brown[300]),
      ProductModel(
          id: 2,
          title: 'Cabbage',
          picture:
              'https://lh3.googleusercontent.com/proxy/aUZnkJX3kJ3I5WUTLLMwfGWbx4mLXvMJjaVWwwWhpUGJjHE6C9i1XTuGRPnk1EWJwN-WbO_Yt2unpy0ip8K5PfyCmvgCIyppqGEhbhy0eobd4vBKdhyBW6OpORYrgIFnzEBPWoQa',
          price: 25,
          per: 'pc',
          color: Colors.purpleAccent),
      ProductModel(
          id: 3,
          title: 'CauliFlower',
          picture:
              'https://purepng.com/public/uploads/medium/purepng.com-cauliflowercauliflowerplantsgreen-cauliflowerfood-1701527244149w2p41.png',
          price: 30,
          per: 'pc',
          color: Colors.lightGreen),
      ProductModel(
          id: 4,
          title: 'Pumpkin',
          picture:
              'https://pluspng.com/img-png/pumpkin-png-pumpkin-png-image-3288.png',
          price: 45,
          color: Colors.orangeAccent),
      ProductModel(
          id: 5,
          title: 'Beet',
          picture:
              'https://i.dlpng.com/static/png/1488215-beet-png-beet-png-527_286_preview.png',
          price: 120,
          color: Colors.redAccent),
      ProductModel(
          id: 5,
          title: 'Beet',
          picture:
              'https://i.dlpng.com/static/png/1488215-beet-png-beet-png-527_286_preview.png',
          price: 120,
          color: Colors.redAccent),
      ProductModel(
          id: 5,
          title: 'Beet',
          picture:
              'https://i.dlpng.com/static/png/1488215-beet-png-beet-png-527_286_preview.png',
          price: 120,
          color: Colors.redAccent),
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
                  child: GridView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: listProduct.length,
                    // staggeredTileBuilder: (int index) => StaggeredTile.count(1,2),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 2,
                      mainAxisSpacing: 0.01,
                      childAspectRatio:(MediaQuery.of(context).size.width) /(MediaQuery.of(context).size.height - 80),
                    ),
                    itemBuilder: (context, index) {
                      ProductModel productModel = listProduct[index];
                     
                      return ProductItem(
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
