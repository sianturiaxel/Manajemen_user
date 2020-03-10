# Manajemen_user pada Ubuntu Server 18.04
  Seorang System Administrator tentunya harus mengetahui segala kegiatan atau kejadian apa saja yang terjadi pada server nya. Hal 
  ini sangat penting karena kita mendapatkan amanat besar dari perusahaan dalam manajemen data center. Tentunya kita sebagai admin tidak 
  bisa membiarkan orang-orang yang tidak mempunyai kepentingan masuk kedalam server kita begitu saja, oleh karena itu kita harus 
  me-manage user yang ada pada server kita, kita harus memantau apa saja yang dilakukannya.Hal ini sangat penting karena kita 
  mendapatkan amanat besar dari perusahaan dalam manajemen data center. Tentunya kita sebagai admin tidak bisa membiarkan orang-orang 
  yang tidak mempunyai kepentingan masuk kedalam server kita begitu saja, oleh karena itu kita harus me-manage user yang ada pada 
  server kita, kita harus memantau apa saja yang dilakukannya.



>>Berikut beberapa command pada Ubuntu<<

-- List User --
cat /etc/passwd | grep -v 'nologin' | awk -F: '$3 >= 1000' (Melihat User)
cat /etc/passwd | grep -v 'nologin' | awk -F: '$3 >= 1000 {print $1}' (Melihat User)

deluser (nama_user) (cara menghapus user)
adduser (nama_user) (cara menambah user)
group del nama_group (menghapus group)
groupadd nama_froup (membuat group) 

ps -aux | grep nama_user(melihat log pada user)
sudo pkill -u nama_user (memberhentikan log pada user)

sudo usermod -a -G group_name user_name (add user to group)


-- Memberikan Permission Terhadap Direktori --
sudo chown -R :nama_group /Direktori
sudo chmod -R g+w /Direktori
sudo chmod -R o-x /Direktori
