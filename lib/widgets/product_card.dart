import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final Map<String, Object> product;
  final int index;

  const ProductCard({
    super.key,
    required this.product,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 8,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 16,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: index.isEven
            ? const Color.fromRGBO(216, 240, 253, 1)
            : const Color.fromRGBO(240, 240, 240, 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product['title'] as String,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Text(
            '\$ ${product['price']}',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(
            height: 16,
          ),
          Center(
            child: Image(
              image: AssetImage(product['imageUrl'] as String),
              height: 152,
            ),
          ),
        ],
      ),
    );
  }
}
