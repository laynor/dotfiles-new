#!/usr/bin/env python3
import os
import pystache
import sys
import configparser

HOME         = os.getenv("HOME")
I3_DIR       = os.path.join(HOME, '.i3')
TEMPLATE_DIR = os.path.join(I3_DIR, 'config.d')
INI_FILE     = os.path.join(I3_DIR, 'config.ini')
CONFIG_FILE  = os.path.join(I3_DIR, 'config')

def getIniVariables():
    conf = configparser.ConfigParser()
    conf.read(INI_FILE)
    font = conf.get('appearance', 'font')
    return { 'font': font }

def writeOutputFile(rendered):
    with open(CONFIG_FILE, 'w+') as of:
        print(rendered, file=of)


def updateConfig():
    renderer = pystache.Renderer()
    renderer.search_dirs = [TEMPLATE_DIR]
    rendered = renderer.render('{{> config}}', getIniVariables())

    writeOutputFile(rendered)


if __name__ == '__main__':
    updateConfig()
    if len(sys.argv) == 1:
        os.system('i3')
    elif sys.argv[1] == 'reload':
        os.system('i3-msg reload')
    elif sys.argv[1] == 'restart':
        os.system('i3-msg restart')
