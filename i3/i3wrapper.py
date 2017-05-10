#!/usr/bin/env python3
import os
import pystache
import sys
import configparser

HOME          = os.getenv("HOME")
I3_DIR        = os.path.join(HOME, '.i3')
TEMPLATE_DIR  = os.path.join(I3_DIR, 'config.d')
CONF_INI      = os.path.join(I3_DIR, 'config.ini')
CONFIG        = os.path.join(I3_DIR, 'config')
I3STATUS_CONF = os.path.join(HOME, '.i3status.conf')

def getIniVariables():
    conf = configparser.ConfigParser()
    conf.read(CONF_INI)
    font = conf.get('appearance', 'font')
    return { 'font': font }

def writeConfiguration(i3Conf, i3StatusConf):
    with open(CONFIG, 'w+') as of:
        print(i3Conf, file=of)
    with open(I3STATUS_CONF, 'w+') as of:
        print(i3StatusConf, file=of)

def renderI3Conf():
    renderer = pystache.Renderer()
    renderer.search_dirs = [TEMPLATE_DIR]
    return renderer.render('{{> config}}', getIniVariables())

def renderI3StatusConf():
    renderer = pystache.Renderer()
    renderer.search_dirs = [TEMPLATE_DIR]
    return renderer.render('{{> i3status.conf}}', getIniVariables())

def updateConfig():
    i3Conf = renderI3Conf()
    i3StatusConf = renderI3StatusConf()
    writeConfiguration(i3Conf, i3StatusConf)


if __name__ == '__main__':
    updateConfig()
    if len(sys.argv) == 1:
        os.system('i3')
    elif sys.argv[1] == 'reload':
        os.system('i3-msg reload')
    elif sys.argv[1] == 'restart':
        os.system('i3-msg restart')
