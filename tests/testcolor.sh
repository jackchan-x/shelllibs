#!/bin/bash

WORKDIR_TESTCOLOR=$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)
. ${WORKDIR_TESTCOLOR}/../libs/color.sh

echo -e "${RESET}${FG_BLUE}------------------------------------------------------${RESET}"
echo -e "${RESET} Normal ${BOLD} Bold ${RESET}${ITALIC} Italic ${RESET}${UNDERLINE} Underline ${RESET}${SLOWBLINK} Slowblink ${RESET}${REVERSE} Reverse ${RESET}${HIDE} hide ${RESET}"
echo -e " black  red  green  yellow  blue  magenta  cyan  white "
echo -e "${RESET}${FG_BLACK} black ${FG_RED} red ${FG_GREEN} green ${FG_YELLOW} yellow ${FG_BLUE} blue ${FG_MAGENTA} magenta ${FG_CYAN} cyan ${FG_WHITE} white ${RESET}"
echo -e "${RESET}${BOLD}${FG_BLACK} black ${FG_RED} red ${FG_GREEN} green ${FG_YELLOW} yellow ${FG_BLUE} blue ${FG_MAGENTA} magenta ${FG_CYAN} cyan ${FG_WHITE} white ${RESET}"
echo -e "${RESET}${BG_BLACK} black ${BG_RED} red ${BG_GREEN} green ${BG_YELLOW} yellow ${BG_BLUE} blue ${BG_MAGENTA} magenta ${BG_CYAN} cyan ${BG_WHITE} white ${RESET}"
echo -e "${RESET}${BOLD}${BG_BLACK} black ${BG_RED} red ${BG_GREEN} green ${BG_YELLOW} yellow ${BG_BLUE} blue ${BG_MAGENTA} magenta ${BG_CYAN} cyan ${BG_WHITE} white ${RESET}"
echo -e "${RESET}${FG_BLUE}------------------------------------------------------${RESET}"
