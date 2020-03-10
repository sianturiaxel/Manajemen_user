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
