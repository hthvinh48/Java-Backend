Bài tập: Hệ thống quản lý đơn hàng Thương mại điện tử

## 1. Thực thể và khóa chính

- Khách hàng (Customer): customerID **(PK)**, họ tên, email, số điện thoại, địa chỉ
- Sản phẩm (Product): productID **(PK)**, tên sản phẩm, giá, mô tả, loại hàng
- Đơn hàng (Orders): orderID **(PK)**, ngày đặt hàng, tổng tiền, trạng thái
- Chi tiết đơn hàng (OrderDetail): orderID **(PK, FK)**, productID **(PK, FK)**, số lượng, đơn giá tại thời điểm mua
- Nhân viên (Staff): staffID **(PK)**, họ tên, vị trí, ngày vào làm
- Loại hàng (Category): categoryID **(PK)**, tên loại hàng

## 2. Mối quan hệ

- Khách hàng đặt đơn hàng:
  - Customer 1 - N Orders
  - FK: customerID trong Orders

- Một đơn hàng chứa nhiều sản phẩm:
  - Orders 1 - N OrderDetail N - 1 Product
  - FK: orderID, productID trong OrderDetail

- Nhân viên xử lý đơn hàng:
  - Staff 1 - N Orders
  - FK: staffID trong Orders

- Một loại hàng có nhiều sản phẩm:
  - Category 1 - N Product
  - FK: categoryID trong Product

## 3.ERD:
![ERD](Database\imgs\E-commerceOrderManagementSystem.png)
[Open ERD](Database\imgs\E-commerceOrderManagementSystem.png)




