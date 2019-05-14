#!/usr/bin/python

import subprocess

cmd = ['upower', '-i', '/org/freedesktop/UPower/devices/DisplayDevice']

o = subprocess.check_output(cmd).decode('utf-8').split('\n')

state = o[6].split(':')[1].strip()

if (state == 'charging'):
    percentage = o[12].split(':')[1].strip().split('.')[0]
    time_to_full = o[11].split(':')[1].strip()
    print('{}%, {} to full'.format(percentage, time_to_full))
    print('{}%, {} to full'.format(percentage, time_to_full))
    print('#FFFF00')
elif (state == 'discharging'):
    percentage = o[12].split(':')[1].strip().split('.')[0]
    time_to_empty = o[11].split(':')[1].strip()
    print('{}%, {} to empty'.format(percentage, time_to_empty))
    print('{}%, {} to empty'.format(percentage, time_to_empty))
    print('#FFFF00')
elif (state == 'fully-charged'):
    percentage = o[11].split(':')[1].strip().split('.')[0]
    print('Charged')
    print('Charged')
    print('#008000')
