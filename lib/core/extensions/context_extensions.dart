import 'package:flutter/material.dart';

/// توسیع‌های BuildContext
extension بسط_متن_محیط on BuildContext {
  /// دریافت عرض صفحه
  double get عرض_صفحه => MediaQuery.of(this).size.width;
  
  /// دریافت ارتفاع صفحه
  double get ارتفاع_صفحه => MediaQuery.of(this).size.height;
  
  /// بررسی اینکه دستگاه موبایل است یا نه
  bool get آیا_موبایل_است => عرض_صفحه < 600;
  
  /// بررسی اینکه دستگاه تبلت است یا نه
  bool get آیا_تبلت_است => عرض_صفحه >= 600 && عرض_صفحه < 1200;
  
  /// بررسی اینکه دستگاه دسکتاپ است یا نه
  bool get آیا_دسکتاپ_است => عرض_صفحه >= 1200;
  
  /// نمایش Snackbar
  void نمایش_پیام(String پیام, {Color؟ رنگ}) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(پیام),
        backgroundColor: رنگ,
      ),
    );
  }
  
  /// نمایش Dialog ساده
  Future<bool؟> نمایش_تایید_دیالوگ(
    String عنوان,
    String پیام, {
    String متن_تایید = 'بله',
    String متن_انصراف = 'خیر',
  }) {
    return showDialog<bool>(
      context: this,
      builder: (context) => AlertDialog(
        title: Text(عنوان),
        content: Text(پیام),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text(متن_انصراف),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: Text(متن_تایید),
          ),
        ],
      ),
    );
  }
}
