#!/bin/sh

SCRIPT_DIR="$(dirname $0)"
RUNDIR="$(pwd)"
cd ${SCRIPT_DIR}

FORCE_INSTALL=0;
while [ $# -gt 0 ]; do
  case $1 in
    --update | -u | --force ) FORCE_INSTALL=1; shift;;
    * ) shift;;
  esac
done

if [ ${FORCE_INSTALL} -eq 1 ] || [ ! -e "${HOME}/.config/polybar" ]; then
  [ -e "${HOME}/.config/polybar" ] && rm -Rf "${HOME}/.config/polybar"
  install -d "${HOME}/.config/polybar/scripts/themes"
  install -m644 ./*.ini "${HOME}/.config/polybar/"
  install -m755 ./launch.sh "${HOME}/.config/polybar"
  install -m755 ./scripts/* "${HOME}/.config/polybar/scripts"
  install -m644 ./scripts/themes/* "${HOME}/.config/polybar/scripts/themes"
fi

cd ${RUNDIR}
