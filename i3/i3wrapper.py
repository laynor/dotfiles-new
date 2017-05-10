#!/usr/bin/env python3
import os
import pystache
import sys
import configparser

HOME = os.getenv("HOME")

def updateConfig():
    conf = configparser.ConfigParser()
    conf.read(os.path.join(HOME, '.i3/config.ini'))
    font = conf.get('appearance', 'font')
    templateName = os.path.join(HOME,".i3/config.mustache" )
    outputName = os.path.join(HOME, ".i3/config")

    renderer = pystache.Renderer()

    with open(templateName, 'r') as tf:
        with open(outputName, 'w+') as of:
            template = tf.read()
            parsed = pystache.parse(template)
            rendered = renderer.render(template, {'font': font})
            print(rendered, file=of)


if __name__ == '__main__':
    updateConfig()
    if len(sys.argv) == 1:
        os.system('i3')
    elif sys.argv[1] == 'reload':
        os.system('i3-msg reload')
    elif sys.argv[1] == 'restart':
        os.system('i3-msg restart')
