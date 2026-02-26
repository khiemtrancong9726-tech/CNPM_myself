# 📚 Library Management System (LMS) - Group 12
![Python](https://img.shields.io/badge/Python-3.9+-blue)
![Docker](https://img.shields.io/badge/Docker-Enabled-blue)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)
Chào mừng đến với dự án **Hệ thống Quản lý Thư viện (Console-based)**.  
Ứng dụng quản lý quy trình mượn trả sách, quản lý độc giả và kho sách.  
Dự án xây dựng theo kiến trúc MVC, sử dụng **Python** và lưu trữ dữ liệu bằng **JSON / SQL**.
---

## 🚀 Tính năng nổi bật

Hệ thống được phân quyền rõ ràng giữa:

- **Khách (Guest)**
- **Thành viên (Member)**
- **Thủ thư (Librarian/Admin)**

---
### 👮 Dành cho Thủ thư (Admin)

- 📦 **Quản lý Kho sách**
  - Thêm sách mới
  - Cập nhật số lượng tồn kho

- 👥 **Quản lý Độc giả**
  - Xem danh sách thành viên
  - Chặn (Block) / Mở khóa (Unblock) tài khoản

- 🔄 **Lưu thông (Circulation)**
  - Check-out: Mượn sách
  - Check-in: Trả sách, tính phí trễ hạn

- 📊 **Giám sát**
  - Xem danh sách các phiếu mượn đang hoạt động

---

### 👤 2. Dành cho Thành viên (Member)

- 🔎 **Tìm kiếm thông minh**  
  - Tìm sách theo **Tên** hoặc **Năm xuất bản**  
  - Xem chi tiết số lượng tồn kho / khả dụng  

- 🛒 **Giỏ sách (Book Bag)**  
  - Thêm sách vào giỏ với số lượng tùy chọn  
  - Xác nhận mượn chính thức sau khi kiểm tra  

- 📜 **Quản lý cá nhân**  
  - Xem lịch sử giao dịch (Transaction History)  
  - Cập nhật thông tin cá nhân  

- ⛔ **Quy tắc mượn**  
  - Tự động chặn mượn mới nếu đang giữ sách quá hạn (Overdue)  

---

### 🌐 3. Tính năng chung

- 🔐 **Bảo mật**  
  - Mật khẩu được mã hóa bằng thuật toán **SHA-256**

- 🔑 **Quên mật khẩu**  
  - Hỗ trợ gửi mã OTP qua email (mô phỏng) để đặt lại mật khẩu  

- 💾 **Dữ liệu bền vững**  
  - Tự động lưu trữ vào file `library_data.json`  
  - Không mất dữ liệu khi tắt ứng dụng  

---
---

## 🛠️ Công nghệ sử dụng

- 🐍 **Ngôn ngữ:** Python 3.9+
- 🏗️ **Kiến trúc:** MVC (Model - View - Controller)
- 💾 **Cơ sở dữ liệu:** JSON (File-based storage) / SQL
- 🐳 **Đóng gói:** Docker, Docker Compose
- 🛠️ **Công cụ phát triển:** VS Code, Git

---
## 🔑 Tài khoản Mặc định

Ngay sau khi khởi chạy lần đầu, bạn có thể đăng nhập bằng tài khoản Admin quản trị:

Vai trò	Username	Password
Admin (Librarian)	admin	123456

📌 Lưu ý: Member không có sẵn. Người dùng tự tạo tài khoản mới.
LIBRARY-MANAGEMENT-SYSTEM/
│
├── SourceCode/
│   ├── controllers/      # Xử lý logic nghiệp vụ (Business Logic)
│   ├── models/           # Định nghĩa dữ liệu (Model)
│   ├── data.json         # Dữ liệu JSON (File-based storage)
│   ├── utils.py          # Các tiện ích (Helper)
│   └── main.py           # Entry point của hệ thống
│
├── Dockerfile            # Cấu hình Docker
└── README.md             # Hướng dẫn sử dụng
