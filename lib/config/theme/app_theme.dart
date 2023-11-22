import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_text_styles.dart';

class AppTheme {
  ThemeData get appLightTheme {
    return ThemeData(
      primaryColor: AppColors().primary,
      backgroundColor: AppColors().primary,
      scaffoldBackgroundColor: AppColors().primary,
      errorColor: AppColors().red,
      canvasColor: AppColors().primary,
      splashColor: AppColors().secondary.withOpacity(0.5),
      progressIndicatorTheme:
          ProgressIndicatorThemeData(color: AppColors().secondary),
      appBarTheme: AppBarTheme(
        elevation: 0,
        titleTextStyle: AppTextStyles().headlineSmall.copyWith(
              color: AppColors().darkActive,
            ),
        backgroundColor: AppColors().transparent,
        foregroundColor: AppColors().darkActive,
        centerTitle: false,
        iconTheme: IconThemeData(color: AppColors().darkActive, size: 26),
      ),
      unselectedWidgetColor: AppColors().normalActive,
      bottomAppBarTheme: BottomAppBarTheme(
        color: AppColors().primary,
        elevation: 15,
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: AppColors().primary,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(30.0),
          ),
        ),
        clipBehavior: Clip.hardEdge,
      ),
      floatingActionButtonTheme:
          const FloatingActionButtonThemeData(elevation: 2),
      dividerTheme: DividerThemeData(thickness: 1, color: AppColors().normal),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) =>
                states.contains(MaterialState.disabled)
                    ? AppColors().normalActive
                    : AppColors().secondary,
          ),
          foregroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) =>
                states.contains(MaterialState.disabled)
                    ? AppColors().primary
                    : AppColors().primary,
          ),
          textStyle: MaterialStateProperty.all<TextStyle>(
            AppTextStyles().bodyMedium.copyWith(
                  wordSpacing: 1,
                  letterSpacing: 0.5,
                ),
          ),
          minimumSize: MaterialStateProperty.all<Size>(
            const Size(double.infinity, 50),
          ),
          maximumSize: MaterialStateProperty.all<Size>(
            const Size(double.infinity, 50),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all<Color>(
            AppColors().secondaryHover,
          ),
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) =>
                states.contains(MaterialState.disabled)
                    ? AppColors().normalHover
                    : AppColors().transparent,
          ),
          foregroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) =>
                states.contains(MaterialState.disabled)
                    ? AppColors().normalActive
                    : AppColors().secondary,
          ),
          side: MaterialStateProperty.resolveWith<BorderSide>(
            (Set<MaterialState> states) =>
                states.contains(MaterialState.disabled)
                    ? BorderSide(color: AppColors().normalActive)
                    : BorderSide(color: AppColors().secondary),
          ),
          textStyle: MaterialStateProperty.all<TextStyle>(
            AppTextStyles()
                .bodyMedium
                .copyWith(wordSpacing: 1, letterSpacing: 0.5),
          ),
          minimumSize: MaterialStateProperty.all<Size>(
            Size(double.infinity, 40),
          ),
          maximumSize: MaterialStateProperty.all<Size>(
            Size(double.infinity, 40),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ),
      ),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: AppColors().secondary,
        selectionColor: AppColors().secondary,
        selectionHandleColor: AppColors().secondary,
      ),
      cardTheme: CardTheme(
        color: AppColors().primaryLight,
        elevation: 1,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: AppColors().normal),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: AppColors().primary,
        onPrimary: AppColors().darkActive,
        secondary: AppColors().secondary,
        onSecondary: AppColors().primary,
        error: AppColors().red,
        onError: AppColors().lightRed,
        background: AppColors().primary,
        onBackground: AppColors().darkActive,
        surface: AppColors().primary,
        onSurface: AppColors().darkActive,
        secondaryContainer: AppColors().secondaryLight,
        onSecondaryContainer: AppColors().secondaryHover,
        primaryContainer: AppColors().primaryLight,
        surfaceVariant: AppColors().normalHover,
        onSurfaceVariant: AppColors().normal,
        tertiary: AppColors().dark,
        surfaceTint: AppColors().yellow,
        shadow: AppColors().normalHover,
      ),
      tabBarTheme: TabBarTheme(
        labelColor: AppColors().dark,
        labelStyle: AppTextStyles().bodyMedium,
        unselectedLabelColor: AppColors().dark,
        unselectedLabelStyle: AppTextStyles().bodyMedium,
        labelPadding: const EdgeInsets.all(10),
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors().secondary,
        ),
      ),
      textTheme: TextTheme(
        headlineLarge: AppTextStyles().headlineLarge,
        headlineMedium: AppTextStyles().headlineMedium,
        headlineSmall: AppTextStyles().headlineSmall,
        titleLarge: AppTextStyles().titleLarge,
        titleMedium: AppTextStyles().titleMedium,
        titleSmall: AppTextStyles().titleSmall,
        bodyLarge: AppTextStyles().bodyLarge,
        bodyMedium: AppTextStyles().bodyMedium,
        bodySmall: AppTextStyles().bodySmall,
        labelLarge: AppTextStyles().labelLarge,
      ),
    );
  }

  ThemeData get appDarkTheme {
    return ThemeData(
      primaryColor: AppColors().primaryDark,
      backgroundColor: AppColors().primaryDark,
      scaffoldBackgroundColor: AppColors().primaryDark,
      errorColor: AppColors().red,
      canvasColor: AppColors().primaryDark,
      progressIndicatorTheme:
      ProgressIndicatorThemeData(color: AppColors().secondary),
      appBarTheme: AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: AppColors().primary,
            statusBarBrightness: Brightness.dark,
        ),
        elevation: 0,
        titleTextStyle: AppTextStyles().headlineSmall.copyWith(
          color: AppColors().lightActiveDark,
        ),
        backgroundColor: AppColors().transparent,
        foregroundColor: AppColors().primary,
        centerTitle: false,
        iconTheme: IconThemeData(color: AppColors().lightActiveDark, size: 26),
      ),
      unselectedWidgetColor: AppColors().normalActive,
      bottomAppBarTheme: BottomAppBarTheme(
        color: AppColors().primaryDark,
        elevation: 15,
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: AppColors().primary,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(30.0),
          ),
        ),
        clipBehavior: Clip.hardEdge,
      ),
      floatingActionButtonTheme:
      const FloatingActionButtonThemeData(elevation: 2),
      dividerTheme: DividerThemeData(thickness: 1, color: AppColors().normal),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) =>
            states.contains(MaterialState.disabled)
                ? AppColors().normalActive
                : AppColors().secondary,
          ),
          foregroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) =>
            states.contains(MaterialState.disabled)
                ? AppColors().primary
                : AppColors().primary,
          ),
          textStyle: MaterialStateProperty.all<TextStyle>(
            AppTextStyles().bodyMedium.copyWith(
              wordSpacing: 1,
              letterSpacing: 0.5,
            ),
          ),
          minimumSize: MaterialStateProperty.all<Size>(
            const Size(double.infinity, 50),
          ),
          maximumSize: MaterialStateProperty.all<Size>(
            const Size(double.infinity, 50),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all<Color>(
            AppColors().secondaryHover,
          ),
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) =>
            states.contains(MaterialState.disabled)
                ? AppColors().normalHover
                : AppColors().transparent,
          ),
          foregroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) =>
            states.contains(MaterialState.disabled)
                ? AppColors().normalActive
                : AppColors().secondary,
          ),
          side: MaterialStateProperty.resolveWith<BorderSide>(
                (Set<MaterialState> states) =>
            states.contains(MaterialState.disabled)
                ? BorderSide(color: AppColors().normalActive)
                : BorderSide(color: AppColors().secondary),
          ),
          textStyle: MaterialStateProperty.all<TextStyle>(
            AppTextStyles()
                .bodyMedium
                .copyWith(wordSpacing: 1, letterSpacing: 0.5),
          ),
          minimumSize: MaterialStateProperty.all<Size>(
            const Size(double.infinity, 50),
          ),
          maximumSize: MaterialStateProperty.all<Size>(
            const Size(double.infinity, 50),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ),
      ),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: AppColors().secondary,
        selectionColor: AppColors().secondary,
        selectionHandleColor: AppColors().secondary,
      ),
      cardTheme: CardTheme(
        color: AppColors().primaryLightDark,
        elevation: 1,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: AppColors().normal),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      colorScheme: ColorScheme(
        brightness: Brightness.dark,
        primary: AppColors().primaryDark,
        onPrimary: AppColors().lightActiveDark,
        secondary: AppColors().secondary,
        onSecondary: AppColors().primaryDark,
        error: AppColors().red,
        onError: AppColors().lightRed,
        background: AppColors().primaryDark,
        onBackground: AppColors().lightActiveDark,
        surface: AppColors().primary,
        onSurface: AppColors().primary,
        secondaryContainer: AppColors().secondaryDark,
        onSecondaryContainer: AppColors().secondaryHover,
        primaryContainer: AppColors().primaryLightDark,
        surfaceVariant: AppColors().normalHover,
        onSurfaceVariant: AppColors().normal,
        tertiary: AppColors().lighterDark,
        surfaceTint: AppColors().yellow,
        shadow: AppColors().normalHover,
      ),
      tabBarTheme: TabBarTheme(
        labelColor: AppColors().lightActiveDark,
        labelStyle: AppTextStyles().bodyMedium,
        unselectedLabelColor: AppColors().lightActiveDark,
        unselectedLabelStyle: AppTextStyles().bodyMedium,
        labelPadding: const EdgeInsets.all(10),
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors().secondary,
        ),
      ),
      textTheme: TextTheme(
        headlineLarge: AppTextStyles().headlineLarge,
        headlineMedium: AppTextStyles().headlineMedium,
        headlineSmall: AppTextStyles().headlineSmall,
        titleLarge: AppTextStyles().titleLarge,
        titleMedium: AppTextStyles().titleMedium,
        titleSmall: AppTextStyles().titleSmall,
        bodyLarge: AppTextStyles().bodyLarge,
        bodyMedium: AppTextStyles().bodyMedium,
        bodySmall: AppTextStyles().bodySmall,
        labelLarge: AppTextStyles().labelLarge,
      ),
    );
  }
}
