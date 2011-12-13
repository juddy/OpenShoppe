#!/bin/bash
#================
# FILE          : config.sh
#----------------
# PROJECT       : OpenSuSE KIWI Image System
# COPYRIGHT     : (c) 2006 SUSE LINUX Products GmbH. All rights reserved
#               :
# AUTHOR        : Marcus Schaefer <ms@suse.de>
#               :
# BELONGS TO    : Operating System images
#               :
# DESCRIPTION   : configuration script for SUSE based
#               : operating systems
#               :
#               :
# STATUS        : BETA
#----------------
#======================================
# Functions...
#--------------------------------------
test -f /.kconfig && . /.kconfig
test -f /.profile && . /.profile

#======================================
# Greeting...
#--------------------------------------
echo "Configure image: [$name]..."

#======================================
# SuSEconfig
#--------------------------------------
echo "** Running suseConfig..."
suseConfig

echo "** Running ldconfig..."
/sbin/ldconfig

sed --in-place -e 's/icewm/icewm-session/' /usr/bin/wmlist

#======================================
# Firewall Configuration
#--------------------------------------
echo '** Configuring firewall...'
chkconfig SuSEfirewall2_init on
chkconfig SuSEfirewall2_setup on

#======================================
# RPM GPG Keys Configuration
#--------------------------------------
echo '** Importing GPG Keys...'
rpm --import /studio/studio_rpm_key_0
rm /studio/studio_rpm_key_0
rpm --import /studio/studio_rpm_key_1
rm /studio/studio_rpm_key_1
rpm --import /studio/studio_rpm_key_2
rm /studio/studio_rpm_key_2
rpm --import /studio/studio_rpm_key_3
rm /studio/studio_rpm_key_3
rpm --import /studio/studio_rpm_key_4
rm /studio/studio_rpm_key_4
rpm --import /studio/studio_rpm_key_5
rm /studio/studio_rpm_key_5
rpm --import /studio/studio_rpm_key_6
rm /studio/studio_rpm_key_6
rpm --import /studio/studio_rpm_key_7
rm /studio/studio_rpm_key_7
rpm --import /studio/studio_rpm_key_8
rm /studio/studio_rpm_key_8
rpm --import /studio/studio_rpm_key_9
rm /studio/studio_rpm_key_9
rpm --import /studio/studio_rpm_key_10
rm /studio/studio_rpm_key_10
rpm --import /studio/studio_rpm_key_11
rm /studio/studio_rpm_key_11
rpm --import /studio/studio_rpm_key_12
rm /studio/studio_rpm_key_12
rpm --import /studio/studio_rpm_key_13
rm /studio/studio_rpm_key_13
rpm --import /studio/studio_rpm_key_14
rm /studio/studio_rpm_key_14
rpm --import /studio/studio_rpm_key_15
rm /studio/studio_rpm_key_15
rpm --import /studio/studio_rpm_key_16
rm /studio/studio_rpm_key_16
rpm --import /studio/studio_rpm_key_17
rm /studio/studio_rpm_key_17
rpm --import /studio/studio_rpm_key_18
rm /studio/studio_rpm_key_18
rpm --import /studio/studio_rpm_key_19
rm /studio/studio_rpm_key_19
rpm --import /studio/studio_rpm_key_20
rm /studio/studio_rpm_key_20
rpm --import /studio/studio_rpm_key_21
rm /studio/studio_rpm_key_21
rpm --import /studio/studio_rpm_key_22
rm /studio/studio_rpm_key_22
rpm --import /studio/studio_rpm_key_23
rm /studio/studio_rpm_key_23
rpm --import /studio/studio_rpm_key_24
rm /studio/studio_rpm_key_24

sed --in-place -e 's/# solver.onlyRequires.*/solver.onlyRequires = true/' /etc/zypp/zypp.conf

# Enable sshd
chkconfig sshd on

#======================================
# Setting up overlay files 
#--------------------------------------
echo '** Setting up overlay files...'
echo mkdir -p /home/pos/
mkdir -p /home/pos/
echo tar xfp /image/OLPOS-admin-X-env.20090412.tar.gz-ju2USk6C -C /home/pos/
tar xfp /image/OLPOS-admin-X-env.20090412.tar.gz-ju2USk6C -C /home/pos/
echo rm /image/OLPOS-admin-X-env.20090412.tar.gz-ju2USk6C
rm /image/OLPOS-admin-X-env.20090412.tar.gz-ju2USk6C
echo mkdir -p /etc/skel/
mkdir -p /etc/skel/
echo tar xfp /image/OLPOS-admin-X-env.20090412.tar.gz-ju2USk6C -C /etc/skel/
tar xfp /image/OLPOS-admin-X-env.20090412.tar.gz-ju2USk6C -C /etc/skel/
echo rm /image/OLPOS-admin-X-env.20090412.tar.gz-ju2USk6C
rm /image/OLPOS-admin-X-env.20090412.tar.gz-ju2USk6C
echo mkdir -p /opt/
mkdir -p /opt/
echo tar xfp /image/FreeMercator-0.8.0.tgz-Lky6vej2 -C /opt/
tar xfp /image/FreeMercator-0.8.0.tgz-Lky6vej2 -C /opt/
echo rm /image/FreeMercator-0.8.0.tgz-Lky6vej2
rm /image/FreeMercator-0.8.0.tgz-Lky6vej2
xargs -L 256 chown nobody:nobody < /image/archive-manifest-t7k43Te5.txt
xargs -L 256 chown admin:users < /image/archive-manifest-OG2QMuQj.txt
echo mkdir -p /
mkdir -p /
echo tar xfp /image/IS4c-OpenLPOS.tar-mQ7mwshN -C /
tar xfp /image/IS4c-OpenLPOS.tar-mQ7mwshN -C /
echo rm /image/IS4c-OpenLPOS.tar-mQ7mwshN
rm /image/IS4c-OpenLPOS.tar-mQ7mwshN
xargs -L 256 chown nobody:nobody < /image/archive-manifest-TuFUMT2Z.txt
xargs -L 256 chown nobody:nobody < /image/archive-manifest-2qDUBwZJ.txt
xargs -L 256 chown nobody:nobody < /image/archive-manifest-5C5JjBLe.txt
xargs -L 256 chown admin:users < /image/archive-manifest-V2km7SOU.txt
echo mkdir -p /
mkdir -p /
echo tar xfp /image/OpenLPOS-Appearance2009.tar-0TRc2f6c -C /
tar xfp /image/OpenLPOS-Appearance2009.tar-0TRc2f6c -C /
echo rm /image/OpenLPOS-Appearance2009.tar-0TRc2f6c
rm /image/OpenLPOS-Appearance2009.tar-0TRc2f6c
echo mkdir -p /opt/
mkdir -p /opt/
echo tar xfp /image/OpenLPOS-opt-common-20090407.tar.bz2-WtG0aOgh -C /opt/
tar xfp /image/OpenLPOS-opt-common-20090407.tar.bz2-WtG0aOgh -C /opt/
echo rm /image/OpenLPOS-opt-common-20090407.tar.bz2-WtG0aOgh
rm /image/OpenLPOS-opt-common-20090407.tar.bz2-WtG0aOgh
echo mkdir -p /usr/share/icons/
mkdir -p /usr/share/icons/
echo tar xfp /image/OpenLPOS-POS-Cursor.tar-04SwUwpA -C /usr/share/icons/
tar xfp /image/OpenLPOS-POS-Cursor.tar-04SwUwpA -C /usr/share/icons/
echo rm /image/OpenLPOS-POS-Cursor.tar-04SwUwpA
rm /image/OpenLPOS-POS-Cursor.tar-04SwUwpA
echo mkdir -p /usr/share/icons/
mkdir -p /usr/share/icons/
echo tar xfp /image/POS-Cursor.tar.gz-b3bW7D6M -C /usr/share/icons/
tar xfp /image/POS-Cursor.tar.gz-b3bW7D6M -C /usr/share/icons/
echo rm /image/POS-Cursor.tar.gz-b3bW7D6M
rm /image/POS-Cursor.tar.gz-b3bW7D6M
mkdir -p /home/admin/
mv /studio/overlay-tmp/files//home/admin//.bash_login /home/admin//.bash_login
chown admin:root /home/admin//.bash_login
chmod 644 /home/admin//.bash_login
mkdir -p /etc/YaST2/
mv /studio/overlay-tmp/files//etc/YaST2//control.xml /etc/YaST2//control.xml
chown nobody:nobody /etc/YaST2//control.xml
chmod 644 /etc/YaST2//control.xml
mkdir -p /home/admin/Utils/
mv /studio/overlay-tmp/files//home/admin/Utils//ingenico_image_creator.sh /home/admin/Utils//ingenico_image_creator.sh
chown nobody:root /home/admin/Utils//ingenico_image_creator.sh
chmod 644 /home/admin/Utils//ingenico_image_creator.sh
mkdir -p /opt/ofbiz-release4.0/framework/images/webapp/images/
mv /studio/overlay-tmp/files//opt/ofbiz-release4.0/framework/images/webapp/images//ofbiz_logo.jpg /opt/ofbiz-release4.0/framework/images/webapp/images//ofbiz_logo.jpg
chown nobody:nobody /opt/ofbiz-release4.0/framework/images/webapp/images//ofbiz_logo.jpg
chmod 644 /opt/ofbiz-release4.0/framework/images/webapp/images//ofbiz_logo.jpg
mkdir -p /opt/Utils/POSmenu/
mv /studio/overlay-tmp/files//opt/Utils/POSmenu//posmenu /opt/Utils/POSmenu//posmenu
chown admin:nobody /opt/Utils/POSmenu//posmenu
chmod 644 /opt/Utils/POSmenu//posmenu
mkdir -p /opt/POS-Cursor/
mv /studio/overlay-tmp/files//opt/POS-Cursor//set_pos_cursor /opt/POS-Cursor//set_pos_cursor
chown admin:users /opt/POS-Cursor//set_pos_cursor
chmod 644 /opt/POS-Cursor//set_pos_cursor
mkdir -p /etc/sysconfig/
mv /studio/overlay-tmp/files//etc/sysconfig//windowmanager /etc/sysconfig//windowmanager
chown root:root /etc/sysconfig//windowmanager
chmod 644 /etc/sysconfig//windowmanager
mkdir -p /root/.xinitrc/
mv /studio/overlay-tmp/files//root/.xinitrc//xinitrc /root/.xinitrc//xinitrc
chown nobody:nobody /root/.xinitrc//xinitrc
chmod 644 /root/.xinitrc//xinitrc
mkdir -p /home/admin/
mv /studio/overlay-tmp/files//home/admin//xinitrc /home/admin//xinitrc
chown nobody:nobody /home/admin//xinitrc
chmod 644 /home/admin//xinitrc
mkdir -p /home/admin/
mv /studio/overlay-tmp/files//home/admin//.xinitrc /home/admin//.xinitrc
chown nobody:nobody /home/admin//.xinitrc
chmod 644 /home/admin//.xinitrc
chown root:root /build-custom
chmod +x /build-custom
# run custom build_script after build
/build-custom
chown root:root /etc/init.d/suse_studio_custom
chmod +x /etc/init.d/suse_studio_custom
test -d /studio || mkdir /studio
cp /image/.profile /studio/profile
cp /image/config.xml /studio/config.xml
rm -rf /studio/overlay-tmp
true#======================================
# Configure MySQL database
#--------------------------------------

# Helper function to wait 30s for MySQL socket to appear.
wait_for_socket() {
  local i
  for((i=0; i<150; i++)); do
    sleep 0.2
    test -S $1 && i='' && break
  done
  test -z "$i" || return 1
  return 0
}

# Helper function to execute the given sql file.
execute_sql_file() {
  local socket=$1
  local sql_file=$2
  mysql --socket="$socket" -u root < "$sql_file" 2>&1
}

# Initialize MySQL
echo "## Initializing MySQL databases and tables..."
mysql_install_db --user=mysql

# Start MySQL without networking
echo "## Starting MySQL..."
mkdir -p /var/log/mysql/
socket=/var/run/mysql/mysql.sock
mysqld_safe --skip-networking --user=mysql --pid-file=/tmp/mysqld.pid --socket=$socket &
wait_for_socket $socket || {
  echo "## Error: $socket didn't appear within 30 seconds"
}

# Load MySQL data dump, if it exists
mysql_dump=/tmp/mysql_dump.sql
if [ -f "$mysql_dump" ]; then
  echo "## Loading MySQL data dump..."
  execute_sql_file "$socket" "$mysql_dump"
else
  echo "## No MySQL data dump found, skipping"
fi

# Load MySQL users and permissions, if setup file exists
mysql_perms=/tmp/mysql_config.sql
if [ -f "$mysql_perms" ]; then
  echo "## Loading MySQL users and perms..."
  execute_sql_file "$socket" "$mysql_perms"
else
  echo "## No MySQL user/perms config found, skipping"
fi

# Auto-start MySQL
echo "## Configuring MySQL to auto-start on boot..."
chkconfig mysql on

# Stop MySQL service (for uncontained builds)
echo "## Stopping MySQL..."
mysql_pid=/tmp/mysqld.pid
kill -TERM `cat $mysql_pid`

# Clean up temp files (for uncontained builds)
rm -f "$mysql_perms" "$mysql_dump" "$mysql_pid"

echo "## MySQL configuration complete"



sh /studio/configure_gdm_theme.sh



sh /studio/configure_gnome_background.sh

