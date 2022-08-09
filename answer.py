from selenium import webdriver
from selenium.webdriver.common.keys import Keys
#import pandas as pd
import time
from selenium.webdriver.firefox.service import Service
from googlesearch import search
import sys

from pyvirtualdisplay import Display


# Browser

display = Display(visible=0, size=(800, 600))
display.start()

driver = webdriver.Firefox()




## GET LINK PART  


query = "Toppr " + str(sys.argv[1:])

for j in search(query):
    website=j
    break

## GET ANSWWER PART

#website = 'https://www.toppr.com/ask/question/xrightarrow-a-left-xrightarrow-a-times-xrightarrow-b/'

driver.get(website)

#Solution_html__KkUW2

# xpath => //tagName[@AttributeName="Value"]

# xpath => /html/body/div[1]/div/div[2]/div/div[2]/div[1]/div/div/div/h2/span

players = driver.find_element("xpath", '//h2[@class="Solution_html__KkUW2"]').text

print(players) 

display.stop()
