



ALTER TABLE flutter.datamahasiswa MODIFY imageurl VARCHAR(200);


INSERT INTO flutter.datamahasiswa (
    nama,
    nim,
    prodi,
    fakultas,
    passw,
    alamat,
    imageurl,
    tempatlahir,
    tanggallahir
  )
VALUES (
    'Saputra Budianto',
    '211080200072',
    'Informatika',
    'Sains dan Teknologi',
    'KaliLinux',
    'Sidoarjo',
    'https://media.licdn.com/dms/image/D4D03AQFm99I7ryL32g/profile-displayphoto-shrink_400_400/0/1675770329460?e=1681344000&v=beta&t=nwFb-HReo4mBif-VHwMh9HkTMPfu_0gzhajFef5Qb_o',
    'Surabaya',
    '1999-11-23'
  );

  SELECT * FROM flutter.datamahasiswa;
  
  
  
  CREATE TABLE `invlette_umsida`.`mahasiswa` ( `nim` VARCHAR(20) NOT NULL , `nama` VARCHAR(50) NOT NULL , `fakultas` VARCHAR(50) NOT NULL , `prodi` VARCHAR(50) NOT NULL , `kelas` VARCHAR(3) NOT NULL , `alamat` VARCHAR(50) NULL DEFAULT NULL , `datebirth` DATE NULL DEFAULT NULL , `point` INT(20) NOT NULL ) ENGINE = InnoDB; 
