<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    SELECT no_pencatatan,
    // Mengubah format tanggal menjadi YYYY-MM-DD dengan kondisi jika format tanggal adalah 'dd-mm-yyyy' maka format tanggal diubah menjadi 'yyyy-mm-dd' dan jika format tanggal adalah 'dd/mm/yyyy' maka format tanggal diubah menjadi 'yyyy-mm-dd'
    CASE
        WHEN REGEXP_LIKE(tanggal_catat, '([0-9]{2})-([0-9]{2})-([0-9]{4})')
            THEN REGEXP_REPLACE(tanggal_catat, '([0-9]{2})-([0-9]{2})-([0-9]{4})', '$3-$2-$1')
        ELSE
            REGEXP_REPLACE(tanggal_catat, '([0-9]{2})/([0-9]{2})/([0-9]{4})', '$3-$1-$2')
    END AS tanggal_catat,
    kota,
    REGEXP_REPLACE(jumlah_member, '[^0-9]', '') AS jumlah_member,
    REGEXP_REPLACE(staf_pencatat, 'Sen.?ja','Senja') AS staf_pencatat
    FROM dqlabregex;

    SELECT
	SUM(REGEXP_REPLACE(jumlah_member, '[^0-9]', '')) AS total_member,
	REGEXP_REPLACE(staf_pencatat, 'Sen.?ja', 'Senja') AS staf_pencatat FROM dqlabregex
    GROUP BY 2 ORDER BY 1;
    ?>    
</body>
</html>