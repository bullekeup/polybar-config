# polybar-dwm-config - My polybar config used with my build of dwm and polybar-dwm-module

Config based on [@adi1090x](https://github.com/adi1090x/polybar-themes) theme polybar-13, modified to use
a single bar and dwm module with [polybar-dwm-module](https://github.com/mihirlad55/polybar-dwm-module).

Used with [my build of dwm](https://github.com/bullekeup/dwm), along with my [dwm startup and config scripts](https://github.com/bullekeup/dwm-config).

Font + icons : MesloLGS Nerd Font

Note that certain values are loaded from env vars located in ~/.config/env_vars file to prevent arbitrary values (like interface names) from being added to the repo.

Example of used env vars :

``` bash
export NETIF_WIRELESS=wlan0
export NETIF_WIRED=eno1
export SENSOR_TEMP_PATH=/sys/devices/platform/xxx/hwmon/tempx_input
```

Weather is retrieved from OpenWeatherAPI using a slightly modified version of [https://github.com/polybar/polybar-scripts/tree/master/polybar-scripts/openweathermap-fullfeatured], which loads the api KEY var from ~/.config/api_keys file, OPENWEATHER_API_KEY var.

