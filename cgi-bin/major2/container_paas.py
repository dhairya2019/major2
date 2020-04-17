#!/usr/bin/python36

import subprocess as sp
from port import Port
class Container:
	def createContainer(self):
		port=Port()
		newPort=port.getNewPort()
		sp.getoutput("sudo docker run -dit -p {}:4200  paas:v1".format(newPort))
		return newPort
