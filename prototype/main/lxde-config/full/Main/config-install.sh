#!/usr/bin/env bash

set -e


################################################################################
### Head: lxde
##

lxde_config_run_pre () {

	lxde_service_stop


	return 0

}

lxde_config_run_post () {

	lxde_service_start


	return 0

}

lxde_service_stop () {

	lxde_service_stop_xfconfd

	#lxde_service_stop_xfsettingsd


	return 0

}

lxde_service_stop_xfconfd () {

	if killall -9 xfconfd; then
		return 0
	fi


	return 0

}

lxde_service_stop_xfsettingsd () {

	if killall -9 xfsettingsd; then
		return 0
	fi


	return 0

}

lxde_service_start () {


	return 0

}

lxde_config_install () {

	echo
	echo "##"
	echo "## Config: lxde"
	echo "##"
	echo


	lxde_config_install_by_dir


	echo

}

lxde_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}"
	mkdir -p "${HOME}"


	echo
	echo "cp -rf ./asset/overlay/etc/skel/. ${HOME}"
	cp -rf "./asset/overlay/etc/skel/." "${HOME}"


}

##
### Tail: lxde
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	lxde_config_run_pre

	lxde_config_install

	lxde_config_run_post

}

##
### Tail: config_install
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	main_config_install

}

##
## Start
##
__main__

##
### Tail: Main
################################################################################
