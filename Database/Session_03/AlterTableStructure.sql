-- Thêm cột genre vào bảng books
ALTER TABLE library.books
ADD COLUMN genre VARCHAR(100);


-- Đổi tên cột available thành is_available
ALTER TABLE library.books
RENAME COLUMN available TO is_available;


-- Xóa cột email khỏi bảng members
ALTER TABLE library.members
DROP COLUMN email;


-- Xóa bảng order_details khỏi schema sales
DROP TABLE sales.order_details;