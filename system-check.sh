#!/bin/bash
# -------------------------------------------
# Script: system-check.sh
# الهدف: فحص صحة النظام (الكمبيوتر/السيرفر)
# -------------------------------------------

# 1. اكتب التاريخ والوقت في الملف
echo "===== تقرير فحص النظام =====" > system_report.log
echo "التاريخ والوقت: $(date)" >> system_report.log
echo "" >> system_report.log

# 2. تحقق من الانترنت (ping على google.com)
echo "🔎 اختبار الانترنت:" >> system_report.log
ping -c 3 google.com >> system_report.log
echo "" >> system_report.log

# 3. تحقق من مساحة القرص
echo "💽 مساحة القرص:" >> system_report.log
df -h >> system_report.log
echo "" >> system_report.log

# 4. أكبر 5 ملفات في مجلد /home
echo "📂 أكبر 5 ملفات في /home:" >> system_report.log
find /home -type f -exec du -h {} + 2>/dev/null | sort -rh | head -5 >> system_report.log
echo "" >> system_report.log

# 5. عمل نسخة احتياطية من مجلد (غير اسم 'username' لاسمك)
echo "📦 عمل نسخة احتياطية من /home/username ..." >> system_report.log
tar -czf backup_$(date +%F).tar.gz /home/username 2>/dev/null
echo "تم إنشاء النسخة الاحتياطية: backup_$(date +%F).tar.gz" >> system_report.log

# النهاية
echo "" >> system_report.log
echo "✅ انتهى الفحص!" >> system_report.log
