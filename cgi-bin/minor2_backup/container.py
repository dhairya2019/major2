#!/usr/bin/python36

import subprocess as sp
from port import Port
class Container:
	def createVlcContainer(self):
		port=Port()
		newPort=port.getNewPort()
		sp.getoutput("sudo docker run -dit --device /dev/snd  -p {}:3333  xpra_vlc:v4".format(newPort))
		return newPort
	def createSplunkContainer(self):
		port=Port()
		newPort=port.getNewPort()
		sp.getoutput("sudo docker run -dit -p {}:8000  splunk:v4 spl".format(newPort))
		return newPort
