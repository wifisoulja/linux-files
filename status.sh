#! /bin/bash

dte(){
  dte="$(date +"%A, %B %d - %H:%M")"
  echo -e " $dte"
}

upd(){
  upd=`checkupdates | wc -l`
  echo -e " $upd updates"
}

cpu(){
  read cpu a b c previdle rest < /proc/stat
  prevtotal=$((a+b+c+previdle))
  sleep 0.5
  read cpu a b c idle rest < /proc/stat
  total=$((a+b+c+idle))
  cpu=$((100*( (total-prevtotal) - (idle-previdle) ) / (total-prevtotal) ))
  echo -e " $cpu% cpu"
}

while true; do
  xsetroot -name "$(cpu) | $(upd) | $(dte)"
  sleep 10
done &
