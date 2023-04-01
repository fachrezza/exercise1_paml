import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage(User user, {super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class User {
  final String username, email, password;
  const User(this.username, this.email, this.password);
}
