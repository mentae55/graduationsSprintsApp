import 'package:flutter/material.dart';
import '../generated/l10n.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Function(Locale) onLocaleChange;
  final bool automaticallyImplyLeading;
  final String? title;

  const CustomAppBar({
    super.key,
    required this.onLocaleChange,
    this.automaticallyImplyLeading = true,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    Locale currentLocale = Localizations.localeOf(context);
    bool isArabic = currentLocale.languageCode == 'ar';

    return AppBar(
      title: Text(
        title ?? S.of(context).appTitle,
        style: const TextStyle(
          color: Colors.black,
          fontFamily: "Suwannaphum",
          fontWeight: FontWeight.bold,
        ),
      ),
      automaticallyImplyLeading: automaticallyImplyLeading,
      centerTitle: true,
      backgroundColor: const Color(0xFFe6bd3c),
      elevation: 0,
      actions: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 8.0),
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.black.withOpacity(0.3)),
          ),
          child: InkWell(
            onTap: () {
              print('Current locale before change: ${currentLocale.languageCode}');
              Locale newLocale = isArabic
                  ? const Locale('en')
                  : const Locale('ar');
              print('Changing to: ${newLocale.languageCode}');
              onLocaleChange(newLocale);

            
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(isArabic ? 'Changed to English' : 'تم التغيير للعربية'),
                  duration: const Duration(seconds: 1),
                ),
              );
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.language,
                  color: Colors.black,
                  size: 20,
                ),
                const SizedBox(width: 4),
                Text(
                  isArabic ? 'EN' : 'ع',
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
