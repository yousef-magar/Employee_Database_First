# Init-Project-Database

مشروع ASP.NET Core MVC مع **Entity Framework Core (Database First)**.
الهدف هو إنشاء تطبيق بسيط متصل بقاعدة بيانات SQL Server باستخدام الـ **Scaffolding** لتوليد الـ Models والـ Controllers والـ Views بشكل تلقائي.

---

## 📦 المتطلبات (Prerequisites)

قبل ما تبدأ، لازم تكون محمل عندك:

* [Visual Studio 2022](https://visualstudio.microsoft.com/) (مع ASP.NET و Web Development workload)
* [SQL Server LocalDB](https://learn.microsoft.com/en-us/sql/database-engine/configure-windows/sql-server-express-localdb)
* .NET 6.0 أو أحدث
* NuGet Package Manager (موجود افتراضي مع Visual Studio)

---

## 🗄️ إنشاء قاعدة البيانات

1. افتح **SQL Server Management Studio (SSMS)** أو أي أداة تانية.
2. اعمل Database جديدة باسم:

   ```sql
   CREATE DATABASE EmpDB;
   ```
3. أنشئ الجداول المطلوبة (مثال: Employees, Departments ...).

---

## ⚙️ إعداد المشروع (Project Setup)

1. افتح **Visual Studio**.
2. اعمل مشروع جديد:

   * ابحث عن: `ASP.NET Core Web App (Model-View-Controller)`
   * اختر اسم المشروع (مثلاً: `EmployeeDBFirst`).
   * اضغط **Create**.

---

## 📥 تثبيت الـ Packages

من **Solution Explorer**:

1. Right-click على **Dependencies** → اختار **Manage NuGet Packages**.
2. نزل الحزم التالية:

   ```bash
   Microsoft.EntityFrameworkCore.SqlServer
   Microsoft.EntityFrameworkCore.Tools
   ```

---

## 🛠️ عمل Scaffold للـ Database

1. من Visual Studio:

   * Tools → NuGet Package Manager → Package Manager Console.
2. شغل الأمر ده:

   ```powershell
   Scaffold-DbContext "Server=(localdb)\MSSQLLocalDB;Database=EmpDB;Trusted_Connection=True;" Microsoft.EntityFrameworkCore.SqlServer -OutputDir Models
   ```

ده هيولد الموديلز (Models) الخاصة بالـ Database داخل فولدر `Models/`.

---

## 🏗️ إضافة الـ Controllers والـ Views

1. Right-click على فولدر **Controllers** → Add → Controller.
2. اختار:

   ```
   MVC Controller with views, using Entity Framework
   ```
3. اختار الـ Model المطلوب (مثلاً `Employee`) والـ DbContext اللي اتعمل تلقائي (`EmpDBContext`).
4. اضغط Add.

دلوقتي اتولدلك Controller كامل ومعاه Views (CRUD Operations).

---

## 🚀 تشغيل المشروع

1. اضغط **F5** أو Run من Visual Studio.
2. افتح الرابط الافتراضي (عادةً):

   ```
   https://localhost:5001/
   ```
3. جرّب تروح للـ Controllers اللي عملتها (مثلاً `/Employees` أو `/Departments`).

---

## 📖 ملاحظات

* ممكن تعدل اسماء الـ Controllers أو الـ Routes حسب رغبتك.
* لو غيرت الـ Database structure، لازم تعمل Scaffold من جديد.
* حافظ على الـ Connection String في `appsettings.json` بدل ما يكون مكتوب صريح في الكود.

---
