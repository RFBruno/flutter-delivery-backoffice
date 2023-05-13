// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../../core/ui/styles/text_styles.dart';
import '../../../../dto/order/order_dto.dart';
import '../../../../models/orders/order_status.dart';
import '../../order_controller.dart';

class OrderBottomBar extends StatelessWidget {
  final Radius bordas = Radius.circular(10);

  final OrderController controller;
  final OrderDto order;
  
  OrderBottomBar({
    Key? key,
    required this.controller,
    required this.order,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        OrderBottomBarButton(
          borderRadius: BorderRadius.only(topLeft: bordas, bottomLeft: bordas),
          buttonColor: Colors.blue,
          image: 'assets/images/icons/finish_order_white_ico.png',
          label: 'Finalizar',
          onPressed: order.status == OrderStatus.confirmado ? () {
            controller.changeStatus(OrderStatus.finalizado);
          } : null,
        ),
        OrderBottomBarButton(
          borderRadius: BorderRadius.zero,
          buttonColor: Colors.green,
          image: 'assets/images/icons/confirm_order_white_icon.png',
          label: 'Confirmar',
          onPressed: order.status == OrderStatus.pendente ? () {
            controller.changeStatus(OrderStatus.confirmado);
          }: null,

        ),OrderBottomBarButton(
          borderRadius: BorderRadius.only(topRight: bordas, bottomRight: bordas),
          buttonColor: Colors.red,
          image: 'assets/images/icons/cancel_order_white_icon.png',
          label: 'Cancelar',
          onPressed:order.status == OrderStatus.pendente ? () {
            controller.changeStatus(OrderStatus.cancelado);
          } : null,
        ),
      ],
    );
  }
}

class OrderBottomBarButton extends StatelessWidget {
  final BorderRadius borderRadius;
  final Color buttonColor;
  final String image;
  final String label;
  final VoidCallback? onPressed;

  const OrderBottomBarButton({
    Key? key,
    required this.borderRadius,
    required this.buttonColor,
    required this.image,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.tight,
      child: SizedBox(
        height: 60,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius,
            ),
            side: BorderSide(
              color: onPressed != null ? buttonColor : Colors.transparent,
            ),
            backgroundColor: buttonColor,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(image),
              const SizedBox(
                width: 5,
              ),
              Text(label, style: context.textStyles.textBold.copyWith(
                color: Colors.white
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
