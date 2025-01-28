# Prerequisites

This project is only tested in WSL2.

Install the **devkitARM** toolchain of [devkitPro](https://devkitpro.org/wiki/Getting_Started) and add its environment variables.

	export DEVKITPRO=/opt/devkitpro
	echo "export DEVKITPRO=$DEVKITPRO" >> ~/.bashrc
	export DEVKITARM=$DEVKITPRO/devkitARM
	echo "export DEVKITARM=$DEVKITARM" >> ~/.bashrc

# Installation

To set up the repository:

	git clone https://github.com/jellees/bkgr
	git clone https://github.com/jiangzhengwenjz/agbcc

	cd ./agbcc
    git checkout new_newlib_pret
	./build.sh
	./install.sh ../bkgr

	cd ../bkgr

To build run

    make

# Notes

For this project I opted to use `jiangzhengwenjz/agbcc` for the debug_line fix. This project should also compile matching with `pret/agbcc`.