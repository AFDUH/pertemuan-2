SELECT 
(
SELECT B.nama_bagian FROM bagian_karyawan BK 
INNER JOIN bagian B ON BK.Bagian_id = B.id 
WHERE BK.karyawan_id = K.id 
ORDER BY BK.tanggal_mulai DESC LIMIT 1
) bagian_terakhir, 
COUNT(*) jumlah
FROM karyawan K
GROUP BY bagian_terakhir