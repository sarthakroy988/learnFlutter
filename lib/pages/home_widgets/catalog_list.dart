import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/pages/home_widgets/catalog_image.dart';
import 'package:flutter_catalog/widget/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items[index];
        return CatalogItem(catalog: catalog);
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;
  const CatalogItem({Key? key, required this.catalog})
      // ignore: unnecessary_null_comparison
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          CatalogImage(
            image: catalog.image,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                catalog.name.text.bold.lg.color(MyTheme.darkBluishColor).make(),
                catalog.desc.text.textStyle(context.captionStyle!).make(),
                2.heightBox,
                ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  buttonPadding: Vx.mH8,
                  children: [
                    "\$${catalog.price}".text.bold.lg.make(),
                    ElevatedButton(
                      onPressed: () {},
                      child: "Buy".text.make(),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              MyTheme.darkBluishColor),
                          shape:
                              MaterialStateProperty.all(const StadiumBorder())),
                    ),
                  ],
                ).pOnly(right: 4.0),
              ],
            ),
          )
        ],
      ),
    ).white.square(150).roundedLg.make().py16();
  }
}


