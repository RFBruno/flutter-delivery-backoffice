import 'package:flutter/material.dart';

import '../../../core/ui/widget/base_header.dart';

class PaymentTypeHeader extends StatelessWidget {
  const PaymentTypeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseHeader(
      title: 'ADMINISTRAR FORMAS DE PAGAMENTO',
      buttonLabel: 'ADICIONAR',
      buttonPressed: () {},
      filterWidget: DropdownButton(
        value: true,
        onChanged: (value) {
          
        },
        items: const [
          DropdownMenuItem(
            value: null,
            child: Text('Todos'),
          ),
          DropdownMenuItem(
            value: true,
            child: Text('Ativos'),
          ),
          DropdownMenuItem(
            value: false,
            child: Text('Inativos'),
          ),
        ],
      ),
    );
  }
}
