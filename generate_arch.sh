#!/bin/bash 
# إنشاء المجلدات الأساسية 
mkdir -p assets/images 
mkdir -p assets/icons 
mkdir -p assets/fonts 

mkdir -p lib/features 

mkdir -p lib/core/error 
mkdir -p lib/core/helper_function 
mkdir -p lib/core/network 
mkdir -p lib/core/services 
mkdir -p lib/core/utils
mkdir -p lib/core/widgets 

# إنشاء ملفات error 
# 1. failures
cat <<EOT > lib/core/error/failures.dart 
abstract class Failure {
  final String message;
  const Failure(this.message);
}

class ServerFailure extends Failure{
  ServerFailure(super.message);
}
EOT

# 2. exceptions
cat <<EOT > lib/core/error/exceptions.dart
class CustomExceptions implements Exception{
  final String message;

  CustomExceptions({required this.message});

  @override
  String toString() {
    return message;
  }
}
EOT

# انشاء ملفات helper_function
# onGenerateRoutes
cat <<EOT > lib/core/helper_function/on_generate_route.dart
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings){
  switch(settings.name){
    //TODO cases
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
EOT

# إنشاء ملفات network
touch lib/core/network/api_service.dart

# إنشاء ملفات services 
cat <<EOT > lib/core/services/get_it_service.dart
//import 'package:get_it/get_it.dart';

void setupGetIt() {
  // Register all dependencies here
}
EOT

# إنشاء ملفات utils 
touch lib/core/utils/constants.dart 

# App TextStyles
cat <<EOT > lib/core/utils/app_text_styles.dart 
import 'package:flutter/material.dart';

abstract class TextStyles {
/*  static const TextStyle bold13 = TextStyle(
    fontFamily: 'Cairo',
    fontWeight: FontWeight.bold,
    fontSize: 13,
  );*/
}
EOT

# App Colors
cat <<EOT > lib/core/utils/app_colors.dart 
import 'package:flutter/material.dart';

abstract class AppColors {
  //static const Color primaryColor = Color(0xff000000);
}
EOT

# App Validators
cat <<EOT > lib/core/utils/app_validators.dart 
abstract class AppValidators {}
EOT

# إنشاء widgets عامة 
touch lib/core/widgets/custom_button.dart

echo "✅  The Architecture is generated successfully!"