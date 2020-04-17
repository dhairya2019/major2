#!/usr/bin/python36
import cgi
import cgitb
import time
cgitb.enable()

from container_caas import Container
from port import Port
import subprocess as sp


class URL:
	def __init__(self):
		url=""
	def getUrl(self):
		test=Container()
		newPort=test.createContainer()
		#print(newPort)
		self.url="https://192.168.251.3:"+str(newPort)
		return self.url

