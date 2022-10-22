-- the order of values is related to the name of field.
-- Updating is necessary, if the name is changed


-- ----------------------------
-- Table structure for product_category

-- ----------------------------
-- Records of product_category
-- ----------------------------
INSERT INTO "public"."product_category" VALUES (1, 'Machinery', 0, '2021-04-18 11:56:04.061', '2021-04-18 11:56:04.061');
INSERT INTO "public"."product_category" VALUES (2, 'Tools', 1, '2021-04-18 11:57:04.061', '2021-04-18 11:57:04.061');


-- ----------------------------
-- Records of product_in_order
-- ----------------------------


-- ----------------------------
-- Records of product_info
-- ----------------------------
INSERT INTO "public"."product_info" (product_id,category_type,create_time,product_description,product_icon,product_name,product_owner,product_price,product_status,product_stock,update_time,dealer_contact_no,product_location) VALUES ('M0001', 0, '2021-04-18 12:03:04.061', 'Brand -RAINA,Model Name/Number- RAPL-MSP/GR-200,Number of Blades -48,Speed -Multi Speed,Tilling Width- 7 feetBlade Type -L Type', 'https://5.imimg.com/data5/SY/KA/VI/SELLER-7743344/ultra-48-500x500.png', 'Rotavator','Revathy', 1500.00, 1, 2, '2021-04-18 12:03:04.061','7012154478','Sakthi Nagar, Chengalpattu');
INSERT INTO "public"."product_info" (product_id,category_type,create_time,product_description,product_icon,product_name,product_owner,product_price,product_status,product_stock,update_time,dealer_contact_no,product_location) VALUES ('M0002', 0, '2021-04-18 12:04:04.061', 'Capacity: 8-10 tons/ hrs,Material: Mild Steel,Weight: Approx 350 Kg,Horse Power: 35 HP,Overall Height: 130 cm,Overall Length: 410 cm', 'https://5.imimg.com/data5/SS/SW/MY-24355906/round-straw-baler-500x500.jpg', 'Straw baler','Revathy', 40.00, 0, 3, '2021-04-18 12:04:04.061','7012154478','Sakthi Nagar, Chengalpattu');
INSERT INTO "public"."product_info" (product_id,category_type,create_time,product_description,product_icon,product_name,product_owner,product_price,product_status,product_stock,update_time,dealer_contact_no,product_location) VALUES ('M0003', 0, '2021-04-18 12:05:04.061', 'Brand: JCB,Gross Power: 72 HP at 1800rpm Capacity: 2000 kg,Backhoe Bucket Capacity: 0.2 cum,Loader Bucket Capacity: 1.8 cum,Maximum Operating Weight: 5000 Kg', 'https://5.imimg.com/data5/SELLER/Default/2020/10/XE/UX/ET/4352756/jcb-nxt-140-excavator-500x500.jpg','JCP','Revathy',9500, 0, 1, '2021-04-18 12:05:04.061','7012154478','Sakthi Nagar, Chengalpattu');
INSERT INTO "public"."product_info" (product_id,category_type,create_time,product_description,product_icon,product_name,product_owner,product_price,product_status,product_stock,update_time,dealer_contact_no,product_location) VALUES ('M0004', 0, '2021-04-18 12:06:04.061', 'Usage/Application -Agriculture & Farming,Brand- Yanmar,Number Of Transplanting Rows -4,Row Spacing -30 - 35 cm,Fuel Tank Capacity- 4 L,Weight -155 kg', 'https://5.imimg.com/data5/PC/KJ/TZ/ANDROID-42159037/product-jpeg-500x500.jpeg', 'Rice tranplanter','Revathy', 1800.00, 0, 5, '2021-04-18 12:06:04.061','7012154478','Sakthi Nagar, Chengalpattu');
INSERT INTO "public"."product_info" (product_id,category_type,create_time,product_description,product_icon,product_name,product_owner,product_price,product_status,product_stock,update_time,dealer_contact_no,product_location) VALUES ('M0005', 0, '2021-04-18 12:07:04.061', 'Cutter Bar Width: 2300 mm,Length Of Drum: 765 mm,Speed Of Drum: 600 to 950 rpm,Number Of Spike: 90,Number Of Straw Walker: 4,Brand: Kartar',  'https://5.imimg.com/data5/DF/DB/JS/ANDROID-3871859/prod-20200812-1859298218114976434823532-jpg-500x500.jpg','Paddy harvester','Revathy', 1800.00, 0, 1, '2021-04-18 12:07:04.061','7012154478','Sakthi Nagar, Chengalpattu');
INSERT INTO "public"."product_info" (product_id,category_type,create_time,product_description,product_icon,product_name,product_owner,product_price,product_status,product_stock,update_time,dealer_contact_no,product_location) VALUES ('M0006', 0, '2021-04-18 12:08:04.061', 'Material -Mild Steel,Number Of Discs- 3,Usage/Application- Agriculture,Tractor Power -30-50 HP,Country of Origin- Made in India,Disc Diameter 2-6 Inch',  'https://5.imimg.com/data5/SH/VA/WA/SELLER-52963293/mild-steel-tractor-mounted-disc-plough-500x500.png','Disc plough','Revathy', 1200.00, 0, 2, '2021-04-18 12:08:04.061','7012154478','Sakthi Nagar, Chengalpattu');
INSERT INTO "public"."product_info" (product_id,category_type,create_time,product_description,product_icon,product_name,product_owner,product_price,product_status,product_stock,update_time,dealer_contact_no,product_location) VALUES ('M0007', 0, '2021-04-18 12:09:04.061', 'Usage/Application: Agriculture,Brand :IPL,Material: Mild Steel,Country of Origin :Made in India,Efficiency: 1.6-2.0 hm2/h,Laser Beam: Accept Angle 360 Degree', 'https://5.imimg.com/data5/VT/NF/CC/ANDROID-16127957/product-jpeg-500x500.jpg','Laser land leveller','Revathy', 1000.00, 0, 3, '2021-04-18 12:09:04.061','7012154478','Sakthi Nagar, Chengalpattu');
INSERT INTO "public"."product_info" (product_id,category_type,create_time,product_description,product_icon,product_name,product_owner,product_price,product_status,product_stock,update_time,dealer_contact_no,product_location) VALUES ('M0008', 0, '2021-04-18 12:10:04.061', 'Working Width :72 inches,Size : Medium,Brand: Vishwakarma,Type :Rigid Tines,Tractor Power :40 hp,Tyne Spacing :9 inch', 'https://4.imimg.com/data4/SF/OT/ANDROID-288604/product-500x500.jpeg', 'Cultivator','Revathy',  750.00, 0, 4, '2021-04-18 12:10:04.061','7012154478','Sakthi Nagar, Chengalpattu');
INSERT INTO "public"."product_info" (product_id,category_type,create_time,product_description,product_icon,product_name,product_owner,product_price,product_status,product_stock,update_time,dealer_contact_no,product_location) VALUES ('M0009', 0, '2021-04-18 12:11:04.061', 'Brand :Bajaj,Model Name/Number: 8899969461,Fuel Type :Diesel,Seating Capacity :2,Engine Type :447cc,5fit,500.5 kg ,loder 12 inch smoot interior bs6', 'https://5.imimg.com/data5/TF/FQ/DA/ANDROID-52581806/product-jpeg-500x500.jpg', 'Mini auto','Revathy', 700.00, 0, 2, '2021-04-18 12:11:04.061','7012154478','Sakthi Nagar, Chengalpattu');
INSERT INTO "public"."product_info" (product_id,category_type,create_time,product_description,product_icon,product_name,product_owner,product_price,product_status,product_stock,update_time,dealer_contact_no,product_location) VALUES ('M0010', 0, '2021-04-18 12:12:04.061', 'Engine Power: 15 HP,Model Name/Number :Yuvraj 215 NXT,Lifting Capacity :778 kg,Cubic Capacity: 863.5,Number Of Gears: 6 Forward + 3 Reverse,Transmission Type: Sliding Mesh', 'https://5.imimg.com/data5/JJ/ZS/YP/SELLER-11460189/massey-ferguson-6028-28-hp-tractor-500x500.jpg', 'Mini tractor','Revathy', 350.00, 0, 3, '2021-04-18 12:12:04.061','7012154478','Sakthi Nagar, Chengalpattu');
INSERT INTO "public"."product_info" (product_id,category_type,create_time,product_description,product_icon,product_name,product_owner,product_price,product_status,product_stock,update_time,dealer_contact_no,product_location) VALUES ('T0001', 1, '2021-04-18 12:13:04.061', 'Head Material :Mild Steel,Usage/Application: Used for digging soil and weeding in small gardens or vegetable farms.,Handle Length :5",Brand :UNISON,Material: Mild Steel', 'https://5.imimg.com/data5/OJ/NF/HD/SELLER-113147/1183-500x500.jpg', 'Digging tool','Revathy', 50.00, 0, 4, '2021-04-18 12:13:04.061','7012154478','Sakthi Nagar, Chengalpattu');
INSERT INTO "public"."product_info" (product_id,category_type,create_time,product_description,product_icon,product_name,product_owner,product_price,product_status,product_stock,update_time,dealer_contact_no,product_location) VALUES ('T0002', 1, '2021-04-18 12:14:04.061', 'Fuel :Petrol,Brand: VARSHA,Power: 5hp,Engine Model :VARSHA 5GD PE','https://5.imimg.com/data5/FI/HQ/HX/SELLER-90040563/husqvarna-tf-544-power-tillers-500x500.jpg', 'Power Tiller','Revathy', 700.00, 0, 2, '2021-04-18 12:14:04.061','7012154478','Sakthi Nagar, Chengalpattu');
INSERT INTO "public"."product_info" (product_id,category_type,create_time,product_description,product_icon,product_name,product_owner,product_price,product_status,product_stock,update_time,dealer_contact_no,product_location) VALUES ('T0003', 1, '2021-04-18 12:15:04.061', 'SKUTJ-Ba-133,Brand:Balwaan,Category:Brush Cutter', 'https://www.tractorjunction.com/assets/images/toolsproducts/tools-0-1601825799.jpg', 'Crop Cutter','Revathy', 350.00, 1, 1, '2021-04-18 12:15:04.061','7012154478','Sakthi Nagar, Chengalpattu');
INSERT INTO "public"."product_info" (product_id,category_type,create_time,product_description,product_icon,product_name,product_owner,product_price,product_status,product_stock,update_time,dealer_contact_no,product_location) VALUES ('T0004', 1, '2021-04-18 12:16:04.061', 'Brand:Balwaan,Category:Brush Cutter', 'https://www.tractorjunction.com/assets/images/toolsproducts/tools-0-1608720997.jpg', 'Brush Cutter','Revathy',  250.00, 0, 2, '2021-04-18 12:16:04.061','7012154478','Sakthi Nagar, Chengalpattu');
INSERT INTO "public"."product_info" (product_id,category_type,create_time,product_description,product_icon,product_name,product_owner,product_price,product_status,product_stock,update_time,dealer_contact_no,product_location) VALUES ('T0005', 1, '2021-04-18 12:17:04.061', 'SKUTJ-Hu-52,Brand:Husqvarna,Category:Mowers & Trimmers','https://www.tractorjunction.com/assets/images/toolsproducts/tools-0-1593167396.jpg', 'Movers/Trimmers','Revathy', 450.00, 0, 1, '2021-04-18 12:17:04.061','7012154478','Sakthi Nagar, Chengalpattu');
INSERT INTO "public"."product_info" (product_id,category_type,create_time,product_description,product_icon,product_name,product_owner,product_price,product_status,product_stock,update_time,dealer_contact_no,product_location) VALUES ('T0006', 1, '2021-04-18 12:18:04.061', 'SKUTJ-Sh-124,Brand:Shrachi,Category:Power Weeder', 'https://www.tractorjunction.com/assets/images/toolsproducts/tools-0-1594031402.jpg', 'Power Weeder','Ashika', 650.00, 0, 2, '2021-04-18 12:18:04.061','6912879971','Lakshmi Nagar, Chennai');
INSERT INTO "public"."product_info" (product_id,category_type,create_time,product_description,product_icon,product_name,product_owner,product_price,product_status,product_stock,update_time,dealer_contact_no,product_location) VALUES ('T0007', 1, '2021-04-18 12:19:04.061', 'SKUTJ-Sh-125,Brand:Shrachi,Category:Power Reaper', 'https://www.tractorjunction.com/assets/images/toolsproducts/tools-0-1594031980.jpg', 'Power Reaper','Ashika', 950.00, 0, 1, '2021-04-18 12:19:04.061','6912879971','Lakshmi Nagar, Chennai');

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO "public"."users" VALUES (1, 't', 'Test', 'TestUser1@email.com', 'TestUser1', '$2y$12$7n.ysDyZRwRd6zXCFWkjM.6aonhj5QVHGybXto2ke.h5JSZvw0FRq', '9790082521', 'ROLE_CUSTOMER');
INSERT INTO "public"."users" VALUES (5, 't', 'Test', 'TestUser2@email.com', 'TestUser2', '$2y$12$kqJosmSB6092cPrkofqV8en46MIFWLcRbEgmjoP6/EP.sR1LxCVBy', '8790072521', 'ROLE_CUSTOMER');
INSERT INTO "public"."users" VALUES (2, 't', 'Chengalpattu', 'Roobini@email.com', 'Roobini', '$2y$12$/a2nUmBGIpT9dbGiaKD8fOWKFgcZSMxBYZL1KKqa1BN//qrVuyRly', '9876554321', 'ROLE_MANAGER');
INSERT INTO "public"."users" VALUES (3, 't', 'Tambaram', 'Revathy@email.com', 'Revathy', '$2y$12$yZj85JHVIi.tbZHFBtt5L.SMqH0jgLrWIkKVymFbhi/FwYM80Zu1a', '7999851124', 'ROLE_EMPLOYEE');
INSERT INTO "public"."users" VALUES (4, 't', 'Chrompet', 'Ashika@email.com', 'Ashika', '$2y$12$v7SXWxezMCKseiqtiSkCnusodDVBsKDZA4n.jO8SljE/12QO/oqOu', '6234345677', 'ROLE_EMPLOYEE');

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO "public"."cart" VALUES (1);
INSERT INTO "public"."cart" VALUES (2);
INSERT INTO "public"."cart" VALUES (3);
INSERT INTO "public"."cart" VALUES (4);




