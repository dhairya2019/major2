#!/usr/bin/python36
import cgi
import cgitb
import time
cgitb.enable()
#print("\n")

from container import Container
from port import Port
import subprocess as sp


class URL:
	def __init__(self):
		url=""
	def getVlcUrl(self):
		test=Container()
		newPort=test.createVlcContainer()
		#print(newPort)
		self.url="http://192.168.251.3:"+str(newPort)
		return self.url
	def getSplunkUrl(self):
		test=Container()
		newPort=test.createSplunkContainer()
		#print(newPort)
		self.url="http://192.168.251.3:"+str(newPort)
		return self.url

#req=URL()
#test.getUrl()
#time.sleep(4)
#print("location:{}".format(req.getUrl()))
#print("\n")
#print("hi")
