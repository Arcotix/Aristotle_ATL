from selenium import webdriver
from selenium.webdriver.common.keys import Keys
#import pandas as pd
import time
from selenium.webdriver.firefox.service import Service
from googlesearch import search
import sys

from pyvirtualdisplay import Display

# Start Webserver

display = Display(visible=0, size=(800, 600))
display.start()

driver = webdriver.Firefox()


# W (Geography)
website = "https://www.toppr.com/ask/content/cbse/class-9/geography/physical-features-of-india/"
driver.get(website)

for x in range(1, 11):
    x = str(x);
    question = driver.find_element("xpath", '/html/body/div[1]/div/div[4]/div/div/section/div[2]/a['+x+']/div/div/div[1]/div/div/h3').text
    print(question.rstrip()+"\n")
    