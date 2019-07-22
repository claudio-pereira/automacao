# Generated by Selenium IDE
import pytest
import time
import json
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.action_chains import ActionChains
from selenium.webdriver.support import expected_conditions
from selenium.webdriver.support.wait import WebDriverWait
from selenium.webdriver.common.keys import Keys

class TestTesteCompleto():
  def setup_method(self, method):
    self.driver = webdriver.Firefox()
    self.vars = {}
  
  def teardown_method(self, method):
    self.driver.quit()
  
  def test_testeCompleto(self):
    # Test name: Teste_Completo
    # Step # | name | target | value | comment
    # 1 | open | https://docs.google.com/forms/d/e/1FAIpQLSfWfPcADbvEPrGDePWhY-agioR1TAyFZTW-hwNTucN28-VACg/viewform |  | 
    self.driver.get("https://docs.google.com/forms/d/e/1FAIpQLSfWfPcADbvEPrGDePWhY-agioR1TAyFZTW-hwNTucN28-VACg/viewform")
    # 2 | setWindowSize | 1144x915 |  | 
    self.driver.set_window_size(1144, 915)
    # 3 | click | name=entry.897504641 |  | 
    self.driver.find_element(By.NAME, "entry.897504641").click()
    # 4 | type | name=entry.897504641 | Claudio da Silva Pereira | 
    self.driver.find_element(By.NAME, "entry.897504641").send_keys("Claudio da Silva Pereira")
    # 5 | click | name=entry.2071102152 |  | 
    self.driver.find_element(By.NAME, "entry.2071102152").click()
    # 6 | type | name=entry.2071102152 | claudio.pereira@b2wdigital.com | 
    self.driver.find_element(By.NAME, "entry.2071102152").send_keys("claudio.pereira@b2wdigital.com")
    # 7 | click | css=.freebirdFormviewerViewItemsRadioOptionContainer:nth-child(2) .quantumWizTogglePaperradioOffRadio |  | 
    self.driver.find_element(By.CSS_SELECTOR, ".freebirdFormviewerViewItemsRadioOptionContainer:nth-child(2) .quantumWizTogglePaperradioOffRadio").click()
    # 8 | clickAt | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | 
    self.driver.find_element(By.CSS_SELECTOR, ".isActive > .quantumWizTogglePapercheckboxInnerBox").click()
    # 9 | click | css=.isSelected > .quantumWizMenuPaperselectContent |  | 
    self.driver.find_element(By.CSS_SELECTOR, ".isSelected > .quantumWizMenuPaperselectContent").click()
    # 10 | click | css=.exportSelectPopup > .isSelected > .quantumWizMenuPaperselectContent |  | 
    self.driver.find_element(By.CSS_SELECTOR, ".exportSelectPopup > .isSelected > .quantumWizMenuPaperselectContent").click()
    # 11 | clickAt | css=.isActive .quantumWizTogglePaperradioOffRadio |  | O quanto você gosta de animas?
    self.driver.find_element(By.CSS_SELECTOR, ".isActive .quantumWizTogglePaperradioOffRadio").click()
    # 12 | clickAt | css=.isActive .quantumWizTogglePaperradioOffRadio |  | 
    self.driver.find_element(By.CSS_SELECTOR, ".isActive .quantumWizTogglePaperradioOffRadio").click()
    # 13 | clickAt | css=.isActive .quantumWizTogglePaperradioOffRadio |  | 
    self.driver.find_element(By.CSS_SELECTOR, ".isActive .quantumWizTogglePaperradioOffRadio").click()
    # 14 | clickAt | css=.isActive .quantumWizTogglePaperradioOffRadio |  | 
    self.driver.find_element(By.CSS_SELECTOR, ".isActive .quantumWizTogglePaperradioOffRadio").click()
    # 15 | clickAt | css=.isActive .quantumWizTogglePaperradioOffRadio |  | 
    self.driver.find_element(By.CSS_SELECTOR, ".isActive .quantumWizTogglePaperradioOffRadio").click()
    # 16 | click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | pao1
    self.driver.find_element(By.CSS_SELECTOR, ".isActive > .quantumWizTogglePapercheckboxInnerBox").click()
    # 17 | click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | pao2
    self.driver.find_element(By.CSS_SELECTOR, ".isActive > .quantumWizTogglePapercheckboxInnerBox").click()
    # 18 | click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | pao3
    self.driver.find_element(By.CSS_SELECTOR, ".isActive > .quantumWizTogglePapercheckboxInnerBox").click()
    # 19 | click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | pao4
    self.driver.find_element(By.CSS_SELECTOR, ".isActive > .quantumWizTogglePapercheckboxInnerBox").click()
    # 20 | storeText | css=.freebirdFormviewerViewNumberedItemContainer:nth-child(8) .freebirdFormviewerViewItemsGridRow:nth-child(2) > .freebirdFormviewerViewItemsGridRowHeader | sand_1 | 
    self.vars["sand_1"] = self.driver.find_element(By.CSS_SELECTOR, ".freebirdFormviewerViewNumberedItemContainer:nth-child(8) .freebirdFormviewerViewItemsGridRow:nth-child(2) > .freebirdFormviewerViewItemsGridRowHeader").text
    # 21 | storeText | css=.freebirdFormviewerViewNumberedItemContainer:nth-child(8) .freebirdFormviewerViewItemsGridRow:nth-child(3) > .freebirdFormviewerViewItemsGridRowHeader | sand_2 | 
    self.vars["sand_2"] = self.driver.find_element(By.CSS_SELECTOR, ".freebirdFormviewerViewNumberedItemContainer:nth-child(8) .freebirdFormviewerViewItemsGridRow:nth-child(3) > .freebirdFormviewerViewItemsGridRowHeader").text
    # 22 | storeText | css=.freebirdFormviewerViewNumberedItemContainer:nth-child(8) .freebirdFormviewerViewItemsGridRow:nth-child(4) > .freebirdFormviewerViewItemsGridRowHeader | sand_3 | 
    self.vars["sand_3"] = self.driver.find_element(By.CSS_SELECTOR, ".freebirdFormviewerViewNumberedItemContainer:nth-child(8) .freebirdFormviewerViewItemsGridRow:nth-child(4) > .freebirdFormviewerViewItemsGridRowHeader").text
    # 23 | storeText | css=.freebirdFormviewerViewNumberedItemContainer:nth-child(8) .freebirdFormviewerViewItemsGridRow:nth-child(5) > .freebirdFormviewerViewItemsGridRowHeader | sand_4 | 
    self.vars["sand_4"] = self.driver.find_element(By.CSS_SELECTOR, ".freebirdFormviewerViewNumberedItemContainer:nth-child(8) .freebirdFormviewerViewItemsGridRow:nth-child(5) > .freebirdFormviewerViewItemsGridRowHeader").text
    # 24 | if | ( ${sand_1} == 'Vegetariano' || ${sand_1} == 'Xburguer' || ${sand_1} == 'EggXburger' ) |  | 
    if self.driver.execute_script("return (( arguments[0] == \'Vegetariano\' || arguments[0] == \'Xburguer\' || arguments[0] == \'EggXburger\' ))", self.vars["sand_1"]):
      # 25 | click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | queijo1
      self.driver.find_element(By.CSS_SELECTOR, ".isActive > .quantumWizTogglePapercheckboxInnerBox").click()
      # 26 | end |  |  | 
    # 27 | if | ( ${sand_2} == 'Vegetariano' || ${sand_2} == 'Xburguer' || ${sand_2} == 'EggXburger' ) |  | 
    if self.driver.execute_script("return (( arguments[0] == \'Vegetariano\' || arguments[0] == \'Xburguer\' || arguments[0] == \'EggXburger\' ))", self.vars["sand_2"]):
      # 28 | click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | queijo2
      self.driver.find_element(By.CSS_SELECTOR, ".isActive > .quantumWizTogglePapercheckboxInnerBox").click()
      # 29 | end |  |  | 
    # 30 | if | ( ${sand_3} == 'Vegetariano' || ${sand_3} == 'Xburguer' || ${sand_3} == 'EggXburger' ) |  | 
    if self.driver.execute_script("return (( arguments[0] == \'Vegetariano\' || arguments[0] == \'Xburguer\' || arguments[0] == \'EggXburger\' ))", self.vars["sand_3"]):
      # 31 | click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | queijo3
      self.driver.find_element(By.CSS_SELECTOR, ".isActive > .quantumWizTogglePapercheckboxInnerBox").click()
      # 32 | end |  |  | 
    # 33 | if | ( ${sand_4} == 'Vegetariano' || ${sand_4} == 'Xburguer' || ${sand_4} == 'EggXburger' ) |  | 
    if self.driver.execute_script("return (( arguments[0] == \'Vegetariano\' || arguments[0] == \'Xburguer\' || arguments[0] == \'EggXburger\' ))", self.vars["sand_4"]):
      # 34 | click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | queijo4
      self.driver.find_element(By.CSS_SELECTOR, ".isActive > .quantumWizTogglePapercheckboxInnerBox").click()
      # 35 | end |  |  | 
    # 36 | if | ( ${sand_1} == 'Hamburguer' || ${sand_1} == 'Xburguer' || ${sand_1} == 'EggXburger' ) |  | 
    if self.driver.execute_script("return (( arguments[0] == \'Hamburguer\' || arguments[0] == \'Xburguer\' || arguments[0] == \'EggXburger\' ))", self.vars["sand_1"]):
      # 37 | click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | carne1
      self.driver.find_element(By.CSS_SELECTOR, ".isActive > .quantumWizTogglePapercheckboxInnerBox").click()
      # 38 | end |  |  | 
    # 39 | if | ( ${sand_2} == 'Hamburguer' || ${sand_2} == 'Xburguer' || ${sand_2} == 'EggXburger' ) |  | 
    if self.driver.execute_script("return (( arguments[0] == \'Hamburguer\' || arguments[0] == \'Xburguer\' || arguments[0] == \'EggXburger\' ))", self.vars["sand_2"]):
      # 40 | click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | carne2
      self.driver.find_element(By.CSS_SELECTOR, ".isActive > .quantumWizTogglePapercheckboxInnerBox").click()
      # 41 | end |  |  | 
    # 42 | if | ( ${sand_3} == 'Hamburguer' || ${sand_3} == 'Xburguer' || ${sand_3} == 'EggXburger' ) |  | 
    if self.driver.execute_script("return (( arguments[0] == \'Hamburguer\' || arguments[0] == \'Xburguer\' || arguments[0] == \'EggXburger\' ))", self.vars["sand_3"]):
      # 43 | click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | carne3
      self.driver.find_element(By.CSS_SELECTOR, ".isActive > .quantumWizTogglePapercheckboxInnerBox").click()
      # 44 | end |  |  | 
    # 45 | if | ( ${sand_4} == 'Hamburguer' || ${sand_4} == 'Xburguer' || ${sand_4} == 'EggXburger' ) |  | 
    if self.driver.execute_script("return (( arguments[0] == \'Hamburguer\' || arguments[0] == \'Xburguer\' || arguments[0] == \'EggXburger\' ))", self.vars["sand_4"]):
      # 46 | click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | carne4
      self.driver.find_element(By.CSS_SELECTOR, ".isActive > .quantumWizTogglePapercheckboxInnerBox").click()
      # 47 | end |  |  | 
    # 48 | if | ${sand_1} == 'EggXburger' |  | 
    if self.driver.execute_script("return (arguments[0] == \'EggXburger\')", self.vars["sand_1"]):
      # 49 | click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | ovo1
      self.driver.find_element(By.CSS_SELECTOR, ".isActive > .quantumWizTogglePapercheckboxInnerBox").click()
      # 50 | end |  |  | 
    # 51 | if | ${sand_2} == 'EggXburger' |  | 
    if self.driver.execute_script("return (arguments[0] == \'EggXburger\')", self.vars["sand_2"]):
      # 52 | click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | ovo2
      self.driver.find_element(By.CSS_SELECTOR, ".isActive > .quantumWizTogglePapercheckboxInnerBox").click()
      # 53 | end |  |  | 
    # 54 | if | ${sand_3} == 'EggXburger' |  | 
    if self.driver.execute_script("return (arguments[0] == \'EggXburger\')", self.vars["sand_3"]):
      # 55 | click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | ovo3
      self.driver.find_element(By.CSS_SELECTOR, ".isActive > .quantumWizTogglePapercheckboxInnerBox").click()
      # 56 | end |  |  | 
    # 57 | if | ${sand_4} == 'EggXburger' |  | 
    if self.driver.execute_script("return (arguments[0] == \'EggXburger\')", self.vars["sand_4"]):
      # 58 | click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | ovo4
      self.driver.find_element(By.CSS_SELECTOR, ".isActive > .quantumWizTogglePapercheckboxInnerBox").click()
      # 59 | end |  |  | 
    # 60 | click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | salada1
    self.driver.find_element(By.CSS_SELECTOR, ".isActive > .quantumWizTogglePapercheckboxInnerBox").click()
    # 61 | click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | salada2
    self.driver.find_element(By.CSS_SELECTOR, ".isActive > .quantumWizTogglePapercheckboxInnerBox").click()
    # 62 | click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | salada3
    self.driver.find_element(By.CSS_SELECTOR, ".isActive > .quantumWizTogglePapercheckboxInnerBox").click()
    # 63 | click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | salada4
    self.driver.find_element(By.CSS_SELECTOR, ".isActive > .quantumWizTogglePapercheckboxInnerBox").click()
    # 64 | click | css=.freebirdFormviewerViewItemsDateDateInputs .quantumWizTextinputPaperinputInput |  | 
    self.driver.find_element(By.CSS_SELECTOR, ".freebirdFormviewerViewItemsDateDateInputs .quantumWizTextinputPaperinputInput").click()
    # 65 | TypeTodaysDate | css=.freebirdFormviewerViewItemsDateDateInputs .quantumWizTextinputPaperinputInput |  | 
    # 66 | click | css=.freebirdFormviewerViewItemsTimeNumberEdit:nth-child(1) .quantumWizTextinputPaperinputInput |  | 
    self.driver.find_element(By.CSS_SELECTOR, ".freebirdFormviewerViewItemsTimeNumberEdit:nth-child(1) .quantumWizTextinputPaperinputInput").click()
    # 67 | type | css=.freebirdFormviewerViewItemsTimeNumberEdit:nth-child(1) .quantumWizTextinputPaperinputInput | 00 | 
    self.driver.find_element(By.CSS_SELECTOR, ".freebirdFormviewerViewItemsTimeNumberEdit:nth-child(1) .quantumWizTextinputPaperinputInput").send_keys("00")
    # 68 | click | css=.freebirdFormviewerViewItemsTimeNumberEdit:nth-child(3) .quantumWizTextinputPaperinputInput |  | 
    self.driver.find_element(By.CSS_SELECTOR, ".freebirdFormviewerViewItemsTimeNumberEdit:nth-child(3) .quantumWizTextinputPaperinputInput").click()
    # 69 | type | css=.freebirdFormviewerViewItemsTimeNumberEdit:nth-child(3) .quantumWizTextinputPaperinputInput | 58 | 
    self.driver.find_element(By.CSS_SELECTOR, ".freebirdFormviewerViewItemsTimeNumberEdit:nth-child(3) .quantumWizTextinputPaperinputInput").send_keys("58")
    # 70 | click | css=.quantumWizButtonPaperbuttonLabel |  | 
    self.driver.find_element(By.CSS_SELECTOR, ".quantumWizButtonPaperbuttonLabel").click()
  
