#!/usr/bin/env python3
import os
import pystache
import sys
import configparser

HOME          = os.getenv("HOME")
I3_DIR        = os.path.join(HOME, '.config', 'i3')
TEMPLATE_DIR  = os.path.join(I3_DIR, 'config.d')
CONF_INI      = os.path.join(I3_DIR, 'config.ini')
CONFIG        = os.path.join(I3_DIR, 'config')
I3STATUS_CONF = os.path.join(HOME, '.i3status.conf')
COLORS_SH     = os.path.join(HOME, 'colors.sh')

def getIniVariables():
    conf = configparser.ConfigParser()
    conf.read(CONF_INI)
    font = conf.get('appearance', 'font')
    return {
        'font': font,
        'foreground': conf.get('appearance', 'foreground'),
        'background': conf.get('appearance', 'background'),
        'background_alt': conf.get('appearance', 'background_alt'),
        'accent': conf.get('appearance', 'accent')
    }

def writeConfiguration(i3Conf, i3StatusConf, colorsSh):
    with open(CONFIG, 'w+') as of:
        print(i3Conf, file=of)
    with open(I3STATUS_CONF, 'w+') as of:
        print(i3StatusConf, file=of)
    with open(COLORS_SH, 'w+') as of:
        print(colorsSh, file=of)

def renderI3Conf():
    renderer = pystache.Renderer()
    renderer.search_dirs = [TEMPLATE_DIR]
    return renderer.render('{{> config}}', getIniVariables())

def renderI3StatusConf():
    renderer = pystache.Renderer()
    renderer.search_dirs = [TEMPLATE_DIR]
    return renderer.render('{{> i3status.conf}}', getIniVariables())

def renderColorsSh():
    vars = getIniVariables()
    return f"""export ALE_DARK_BG1="{vars['background']}"
export ALE_DARK_BG_ALT="{vars['background_alt']}"
export ALE_ACCENT="{vars['accent']}"
export ALE_FOREGROUND="{vars['foreground']}"
"""


def updateConfig():
    i3Conf = renderI3Conf()
    i3StatusConf = renderI3StatusConf()
    colorsSh = renderColorsSh()
    writeConfiguration(i3Conf, i3StatusConf, colorsSh)


if __name__ == '__main__':
    updateConfig()
    if len(sys.argv) == 1:
        os.system('i3')
    elif sys.argv[1] == 'reload':
        os.system('i3-msg reload')
    elif sys.argv[1] == 'restart':
        os.system('i3-msg restart')
    else: 
        print('config created')
