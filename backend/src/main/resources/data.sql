-- Inserting into zones table
INSERT INTO zones (id, restriction_type, created_at) VALUES
(1, 'PERMITTED', NOW()),
(2, 'RESTRICTED', NOW()),
(3, 'CONDITIONAL', NOW()),
(4, 'CONDITIONAL', NOW()),
(5, 'RESTRICTED', NOW()),
(6, 'PERMITTED', NOW()),
(7, 'RESTRICTED', NOW()),
(8, 'CONDITIONAL', NOW()),
(9, 'PERMITTED', NOW()),
(10, 'RESTRICTED', NOW()),
(11, 'PERMITTED', NOW()),
(12, 'PERMITTED', NOW()),
(13, 'RESTRICTED', NOW()),
(14, 'CONDITIONAL', NOW()),
(15, 'PERMITTED', NOW());

-- Inserting zone coordinates for PERMITTED zone (ID: 1)
INSERT INTO zone_coordinates (id, location, zone_id) VALUES
(1, ST_GeomFromText('POINT(-180 -90)', 4326), 1),
(2, ST_GeomFromText('POINT(180 -90)', 4326), 1),
(3, ST_GeomFromText('POINT(180 90)', 4326), 1),
(4, ST_GeomFromText('POINT(-180 90)', 4326), 1),
(5, ST_GeomFromText('POINT(-180 -90)', 4326), 1);

-- Inserting zone coordinates for RESTRICTED zone (ID: 2)
INSERT INTO zone_coordinates (id, location, zone_id) VALUES
(6, ST_GeomFromText('POINT(73.934 18.550)', 4326), 2),
(7, ST_GeomFromText('POINT(73.938 18.553)', 4326), 2),
(8, ST_GeomFromText('POINT(73.940 18.556)', 4326), 2),
(9, ST_GeomFromText('POINT(73.943 18.558)', 4326), 2),
(10, ST_GeomFromText('POINT(73.944 18.556)', 4326), 2),
(11, ST_GeomFromText('POINT(73.942 18.554)', 4326), 2),
(12, ST_GeomFromText('POINT(73.940 18.552)', 4326), 2),
(13, ST_GeomFromText('POINT(73.937 18.550)', 4326), 2),
(14, ST_GeomFromText('POINT(73.935 18.549)', 4326), 2),
(15, ST_GeomFromText('POINT(73.934 18.550)', 4326), 2);

-- Inserting zone coordinates for CONDITIONAL zone (ID: 3)
INSERT INTO zone_coordinates (id, location, zone_id) VALUES
(16, ST_GeomFromText('POINT(73.924 18.540)', 4326), 3),
(17, ST_GeomFromText('POINT(73.928 18.543)', 4326), 3),
(18, ST_GeomFromText('POINT(73.930 18.546)', 4326), 3),
(19, ST_GeomFromText('POINT(73.932 18.549)', 4326), 3),
(20, ST_GeomFromText('POINT(73.934 18.548)', 4326), 3),
(21, ST_GeomFromText('POINT(73.936 18.545)', 4326), 3),
(22, ST_GeomFromText('POINT(73.935 18.542)', 4326), 3),
(23, ST_GeomFromText('POINT(73.932 18.540)', 4326), 3),
(24, ST_GeomFromText('POINT(73.928 18.539)', 4326), 3),
(25, ST_GeomFromText('POINT(73.924 18.540)', 4326), 3);

-- Inserting zone coordinates for RESTRICTED zone (ID: 4)
INSERT INTO zone_coordinates (id, location, zone_id) VALUES
(26, ST_GeomFromText('POINT(73.930 18.550)', 4326), 4),
(27, ST_GeomFromText('POINT(73.933 18.553)', 4326), 4),
(28, ST_GeomFromText('POINT(73.935 18.555)', 4326), 4),
(29, ST_GeomFromText('POINT(73.937 18.552)', 4326), 4),
(30, ST_GeomFromText('POINT(73.935 18.549)', 4326), 4),
(31, ST_GeomFromText('POINT(73.932 18.548)', 4326), 4),
(32, ST_GeomFromText('POINT(73.930 18.550)', 4326), 4);

-- Inserting zone coordinates for CONDITIONAL zone (ID: 5)
INSERT INTO zone_coordinates (id, location, zone_id) VALUES
(33, ST_GeomFromText('POINT(73.920 18.538)', 4326), 5),
(34, ST_GeomFromText('POINT(73.924 18.541)', 4326), 5),
(35, ST_GeomFromText('POINT(73.926 18.544)', 4326), 5),
(36, ST_GeomFromText('POINT(73.928 18.542)', 4326), 5),
(37, ST_GeomFromText('POINT(73.927 18.540)', 4326), 5),
(38, ST_GeomFromText('POINT(73.924 18.539)', 4326), 5),
(39, ST_GeomFromText('POINT(73.920 18.538)', 4326), 5);

-- Inserting zone coordinates for PERMITTED zone (ID: 6)
INSERT INTO zone_coordinates (id, location, zone_id) VALUES
(40, ST_GeomFromText('POINT(73.920 18.552)', 4326), 6),
(41, ST_GeomFromText('POINT(73.925 18.555)', 4326), 6),
(42, ST_GeomFromText('POINT(73.928 18.554)', 4326), 6),
(43, ST_GeomFromText('POINT(73.924 18.551)', 4326), 6),
(44, ST_GeomFromText('POINT(73.920 18.552)', 4326), 6);

-- Inserting zone coordinates for RESTRICTED zone (ID: 7)
INSERT INTO zone_coordinates (id, location, zone_id) VALUES
(45, ST_GeomFromText('POINT(73.932 18.546)', 4326), 7),
(46, ST_GeomFromText('POINT(73.935 18.549)', 4326), 7),
(47, ST_GeomFromText('POINT(73.937 18.548)', 4326), 7),
(48, ST_GeomFromText('POINT(73.934 18.544)', 4326), 7),
(49, ST_GeomFromText('POINT(73.932 18.546)', 4326), 7);

-- Inserting zone coordinates for CONDITIONAL zone (ID: 8)
INSERT INTO zone_coordinates (id, location, zone_id) VALUES
(50, ST_GeomFromText('POINT(73.914 18.540)', 4326), 8),
(51, ST_GeomFromText('POINT(73.918 18.543)', 4326), 8),
(52, ST_GeomFromText('POINT(73.920 18.546)', 4326), 8),
(53, ST_GeomFromText('POINT(73.916 18.548)', 4326), 8),
(54, ST_GeomFromText('POINT(73.914 18.545)', 4326), 8),
(55, ST_GeomFromText('POINT(73.914 18.540)', 4326), 8);

-- Inserting zone coordinates for PERMITTED zone (ID: 9)
INSERT INTO zone_coordinates (id, location, zone_id) VALUES
(56, ST_GeomFromText('POINT(73.929 18.540)', 4326), 9),
(57, ST_GeomFromText('POINT(73.931 18.542)', 4326), 9),
(58, ST_GeomFromText('POINT(73.932 18.540)', 4326), 9),
(59, ST_GeomFromText('POINT(73.930 18.539)', 4326), 9),
(60, ST_GeomFromText('POINT(73.929 18.540)', 4326), 9);

-- Inserting zone coordinates for RESTRICTED zone (ID: 10)
INSERT INTO zone_coordinates (id, location, zone_id) VALUES
(61, ST_GeomFromText('POINT(73.918 18.550)', 4326), 10),
(62, ST_GeomFromText('POINT(73.922 18.553)', 4326), 10),
(63, ST_GeomFromText('POINT(73.925 18.552)', 4326), 10),
(64, ST_GeomFromText('POINT(73.922 18.548)', 4326), 10),
(65, ST_GeomFromText('POINT(73.918 18.550)', 4326), 10);

-- Inserting zone coordinates for CONDITIONAL zone (ID: 11)
INSERT INTO zone_coordinates (id, location, zone_id) VALUES
(66, ST_GeomFromText('POINT(73.915 18.545)', 4326), 11),
(67, ST_GeomFromText('POINT(73.917 18.547)', 4326), 11),
(68, ST_GeomFromText('POINT(73.919 18.545)', 4326), 11),
(69, ST_GeomFromText('POINT(73.916 18.543)', 4326), 11),
(70, ST_GeomFromText('POINT(73.915 18.545)', 4326), 11);

-- Inserting zone coordinates for PERMITTED zone (ID: 12)
INSERT INTO zone_coordinates (id, location, zone_id) VALUES
(71, ST_GeomFromText('POINT(73.938 18.548)', 4326), 12),
(72, ST_GeomFromText('POINT(73.941 18.550)', 4326), 12),
(73, ST_GeomFromText('POINT(73.943 18.548)', 4326), 12),
(74, ST_GeomFromText('POINT(73.940 18.547)', 4326), 12),
(75, ST_GeomFromText('POINT(73.938 18.548)', 4326), 12);

-- Inserting zone coordinates for RESTRICTED zone (ID: 13)
INSERT INTO zone_coordinates (id, location, zone_id) VALUES
(76, ST_GeomFromText('POINT(73.924 18.555)', 4326), 13),
(77, ST_GeomFromText('POINT(73.927 18.558)', 4326), 13),
(78, ST_GeomFromText('POINT(73.929 18.556)', 4326), 13),
(79, ST_GeomFromText('POINT(73.926 18.553)', 4326), 13),
(80, ST_GeomFromText('POINT(73.924 18.555)', 4326), 13);

-- Inserting zone coordinates for CONDITIONAL zone (ID: 14)
INSERT INTO zone_coordinates (id, location, zone_id) VALUES
(81, ST_GeomFromText('POINT(73.920 18.540)', 4326), 14),
(82, ST_GeomFromText('POINT(73.923 18.543)', 4326), 14),
(83, ST_GeomFromText('POINT(73.922 18.541)', 4326), 14),
(84, ST_GeomFromText('POINT(73.920 18.540)', 4326), 14);

-- Inserting zone coordinates for PERMITTED zone (ID: 15)
INSERT INTO zone_coordinates (id, location, zone_id) VALUES
(85, ST_GeomFromText('POINT(73.935 18.558)', 4326), 15),
(86, ST_GeomFromText('POINT(73.937 18.560)', 4326), 15),
(87, ST_GeomFromText('POINT(73.938 18.558)', 4326), 15),
(88, ST_GeomFromText('POINT(73.936 18.557)', 4326), 15),
(89, ST_GeomFromText('POINT(73.935 18.558)', 4326), 15);