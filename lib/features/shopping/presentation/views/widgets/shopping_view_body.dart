import 'package:flutter/material.dart';

import '../../../data/models/product_model.dart';
import '../../../data/models/rating.dart';
import 'products_grid_view.dart';

class ShoppingViewBody extends StatelessWidget {
  const ShoppingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ProductsGridView(
      products: [
        ProductModel(
          id: 1,
          title: "Nike Jordon",
          price: 109.95,
          description:
              "Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday",
          category: "men's clothing",
          image:
              "https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_t.png",
          rating: Rating(rate: 3.9, count: 120),
        ),
        ProductModel(
          id: 1,
          title: "Fjallraven - Foldsack No.",
          price: 109.95,
          description:
              "Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday",
          category: "men's clothing",
          image:
              "https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_t.png",
          rating: Rating(rate: 3.9, count: 120),
        ),
        ProductModel(
          id: 1,
          title: "Nike Jordon",
          price: 109.95,
          description:
              "Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday",
          category: "men's clothing",
          image:
              "https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_t.png",
          rating: Rating(rate: 3.9, count: 120),
        ),
        ProductModel(
          id: 1,
          title: "Nike Jordon",
          price: 109.95,
          description:
              "Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday",
          category: "men's clothing",
          image:
              "https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_t.png",
          rating: Rating(rate: 3.9, count: 120),
        ),
      ],
    );
  }
}
