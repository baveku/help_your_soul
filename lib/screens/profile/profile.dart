import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final localize = AppLocalizations.of(context);
    return Scaffold(
      body: Text(localize.news),
    );
  }
}
