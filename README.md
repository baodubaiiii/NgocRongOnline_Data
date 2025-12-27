🚀 HƯỚNG DẪN CÀI ĐẶT & SETUP SERVER NGỌC RỒNG ONLINE (.NET 8.0)

Tài liệu này hướng dẫn cài đặt đầy đủ môi trường và cấu hình để chạy server Ngọc Rồng Online trên VPS hoặc máy local.

I. Chuẩn bị công cụ cần thiết

Cài đặt các phần mềm sau:

Tên	Link
.NET SDK 8.0	https://dotnet.microsoft.com/en-us/download/dotnet/8.0

XAMPP / AppServ / Apache tùy chọn	https://www.apachefriends.org

Navicat (quản lý database)	https://navicat.com

VPS Windows / PC Windows	Windows 10 / 11 / Server
II. Cài đặt XAMPP & MySQL

Tải và cài đặt XAMPP

Mở XAMPP Control Panel

Bấm Start 2 dịch vụ đầu tiên:

Apache
MySQL

III. Tạo Database cho server

Mở Navicat hoặc phpMyAdmin:

Tạo database:
Tên Database
7vnr_acc
7vnr_server

Mỗi database sử dụng chuẩn mã hóa:
utf8mb4_general_ci

IV. Cấu hình file config server

Mở file cấu hình server (ví dụ: appsettings.json, config.json, hoặc file cấu hình riêng của source):

Chỉnh các thông số sau:

{
  "host": "IPV4_CUA_VPS",
  "link_game": "IPV4_CUA_VPS",
  "port": 14445,
  "exp_up": 3
}

Tham số	Ý nghĩa
host	IPv4 VPS
link_game	IP kết nối game
port	Cổng chạy server
exp_up	Tỉ lệ tiềm năng – sức mạnh toàn server
V. Mở cổng firewall cho game

Mở:

Windows Defender Firewall with Advanced Security


Chọn:

Inbound Rules → New Rule


Chọn:

Port → TCP → Specific local ports: 14445


Allow the connection → Apply toàn bộ Domain / Private / Public

Đặt tên rule: NR Online Server

VI. Chạy Server

Mở thư mục server → Shift + chuột phải → Open Terminal / CMD

dotnet run


Hoặc build file exe:

dotnet publish -c Release -r win-x64 --self-contained true


File server nằm tại:

/bin/Release/net8.0/win-x64/publish/

VII. Kiểm tra kết nối

Mở CMD:

netstat -an | find "14445"


Nếu thấy trạng thái LISTENING là server đã hoạt động.

VIII. Các thông số trong config
Tên	Chức năng
exp_up	Tỉ lệ cộng tiềm năng – sức mạnh toàn server

Ví dụ:

exp_up = 5  → x5 EXP cho toàn bộ người chơi
