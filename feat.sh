#!/bin/bash

# طلب اسم الميزة من المستخدم
echo "Enter Feature Name: "
read feature_name

# تحويل الاسم إلى CamelCase للكلاسات
feature_cap=$(echo "$feature_name" | sed -E 's/(^| )([a-zA-Z])/\U\2/g' | tr -d ' ')

# تحويل الاسم الي lower case لتسميه الملفات
feature_low=$(echo "$feature_name" | tr '[:upper:]' '[:lower:]' | sed 's/ /_/g')

# تحديد المسار الرئيسي
BASE_PATH="lib/features/$feature_low"

# إنشاء الهيكل
mkdir -p $BASE_PATH/data/datasources
mkdir -p $BASE_PATH/data/models
mkdir -p $BASE_PATH/data/repositories
mkdir -p $BASE_PATH/domain/entities
mkdir -p $BASE_PATH/domain/repositories
mkdir -p $BASE_PATH/domain/usecases
mkdir -p $BASE_PATH/presentation/manager
mkdir -p $BASE_PATH/presentation/views/widgets

# 1. Entity
cat <<EOT > $BASE_PATH/domain/entities/${feature_low}_entity.dart
class ${feature_cap}Entity {
    // TODO: Add only fields used by UI & business logic

  const ${feature_cap}Entity();
}
EOT

# 2. Model 
cat <<EOT > $BASE_PATH/data/models/${feature_low}_model.dart
import '../../domain/entities/${feature_low}_entity.dart';

class ${feature_cap}Model{
  const ${feature_cap}Model();

  factory ${feature_cap}Model.fromJson(Map<String, dynamic> json) {
    return ${feature_cap}Model();
  }
}
EOT

# 3. Repository Interface (Domain)
cat <<EOT > $BASE_PATH/domain/repositories/${feature_low}_repository.dart
import '../entities/${feature_low}_entity.dart';

abstract class ${feature_cap}Repository {
  // Define your methods here
}
EOT

# 4. Repository Implementation (Data)
cat <<EOT > $BASE_PATH/data/repositories/${feature_low}_repository_impl.dart
import '../../domain/repositories/${feature_low}_repository.dart';

class ${feature_cap}RepositoryImpl implements ${feature_cap}Repository {
  // Implementation of methods
}
EOT

# 5. UI View
cat <<EOT > $BASE_PATH/presentation/views/${feature_low}_view.dart
import 'package:flutter/material.dart';

class ${feature_cap}View extends StatelessWidget {
  const ${feature_cap}View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('${feature_cap}')),
      body: const Center(child: Text('${feature_cap} Feature')),
    );
  }
}
EOT

echo "🔥 Feature [$feature_name] Injected Successfully!"