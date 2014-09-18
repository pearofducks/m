USE_PKGBUILD=1
include /usr/local/share/luggage/luggage.make

TITLE=ansible_install
PACKAGE_NAME=ansible_install
REVERSE_DOMAIN=com.opera.intint
PAYLOAD=\
				pack-script\
				pack-Library-LaunchDaemons-com.opera.intint.ansible_install.plist \
    
pack-script:
	@sudo mkdir -p ${WORK_D}/usr/local/ansible_install
	@sudo ${CP} ansible_install ${WORK_D}/usr/local/ansible_install/ansible_install
	@sudo chmod 700 ${WORK_D}/usr/local/ansible_install/ansible_install
	@sudo ${CP} ansible_runner ${WORK_D}/usr/local/ansible_runner
	@sudo chmod 700 ${WORK_D}/usr/local/ansible_runner
