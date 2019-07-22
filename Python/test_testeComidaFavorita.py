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

class TestTesteComidaFavorita():
  def setup_method(self, method):
    self.driver = webdriver.Firefox()
    self.vars = {}
  
  def teardown_method(self, method):
    self.driver.quit()
  
  def test_testeComidaFavorita(self):
    # Test name: Teste_Comida_Favorita
    # Step # | name | target | value | comment
    # 1 | open | https://docs.google.com/forms/d/e/1FAIpQLSfWfPcADbvEPrGDePWhY-agioR1TAyFZTW-hwNTucN28-VACg/viewform |  | 
    self.driver.get("https://docs.google.com/forms/d/e/1FAIpQLSfWfPcADbvEPrGDePWhY-agioR1TAyFZTW-hwNTucN28-VACg/viewform")
    # 2 | setWindowSize | 1144x915 |  | 
    self.driver.set_window_size(1144, 915)
    # 3 | //click | name=entry.897504641 |  | 
    # 4 | //type | name=entry.897504641 | Claudio da Silva Pereira | 
    # 5 | //click | name=entry.2071102152 |  | 
    # 6 | //type | name=entry.2071102152 | claudio.pereira@b2wdigital.com | 
    # 7 | //click | css=.freebirdFormviewerViewItemsRadioOptionContainer:nth-child(2) .quantumWizTogglePaperradioOffRadio |  | 
    # 8 | //clickAt | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | 
    # 9 | click | css=.isSelected |  | 
    self.driver.find_element(By.CSS_SELECTOR, ".isSelected").click()
    # 10 | verifyElementPresent | css=.isSelected > .quantumWizMenuPaperselectContent |  | 
    elements = self.driver.find_elements(By.CSS_SELECTOR, ".isSelected > .quantumWizMenuPaperselectContent")
    assert len(elements) > 0
    # 11 | click | css=.exportSelectPopup > .isSelected |  | 
    self.driver.find_element(By.CSS_SELECTOR, ".exportSelectPopup > .isSelected").click()
    # 12 | //clickAt | css=.isActive .quantumWizTogglePaperradioOffRadio |  | O quanto você gosta de animas?
    # 13 | //clickAt | css=.isActive .quantumWizTogglePaperradioOffRadio |  | 
    # 14 | //clickAt | css=.isActive .quantumWizTogglePaperradioOffRadio |  | 
    # 15 | //clickAt | css=.isActive .quantumWizTogglePaperradioOffRadio |  | 
    # 16 | //clickAt | css=.isActive .quantumWizTogglePaperradioOffRadio |  | 
    # 17 | //click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | pao1
    # 18 | //click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | pao2
    # 19 | //click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | pao3
    # 20 | //click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | pao4
    # 21 | //storeText | css=.freebirdFormviewerViewNumberedItemContainer:nth-child(8) .freebirdFormviewerViewItemsGridRow:nth-child(2) > .freebirdFormviewerViewItemsGridRowHeader | sand_1 | 
    # 22 | //storeText | css=.freebirdFormviewerViewNumberedItemContainer:nth-child(8) .freebirdFormviewerViewItemsGridRow:nth-child(3) > .freebirdFormviewerViewItemsGridRowHeader | sand_2 | 
    # 23 | //storeText | css=.freebirdFormviewerViewNumberedItemContainer:nth-child(8) .freebirdFormviewerViewItemsGridRow:nth-child(4) > .freebirdFormviewerViewItemsGridRowHeader | sand_3 | 
    # 24 | //storeText | css=.freebirdFormviewerViewNumberedItemContainer:nth-child(8) .freebirdFormviewerViewItemsGridRow:nth-child(5) > .freebirdFormviewerViewItemsGridRowHeader | sand_4 | 
    # 25 | //if | ( ${sand_1} == 'Vegetariano' || ${sand_1} == 'Xburguer' || ${sand_1} == 'EggXburger' ) |  | 
    # 26 | //click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | queijo1
    # 27 | //end |  |  | 
    # 28 | //if | ( ${sand_2} == 'Vegetariano' || ${sand_2} == 'Xburguer' || ${sand_2} == 'EggXburger' ) |  | 
    # 29 | //click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | queijo2
    # 30 | //end |  |  | 
    # 31 | //if | ( ${sand_3} == 'Vegetariano' || ${sand_3} == 'Xburguer' || ${sand_3} == 'EggXburger' ) |  | 
    # 32 | //click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | queijo3
    # 33 | //end |  |  | 
    # 34 | //if | ( ${sand_4} == 'Vegetariano' || ${sand_4} == 'Xburguer' || ${sand_4} == 'EggXburger' ) |  | 
    # 35 | //click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | queijo4
    # 36 | //end |  |  | 
    # 37 | //if | ( ${sand_1} == 'Hamburguer' || ${sand_1} == 'Xburguer' || ${sand_1} == 'EggXburger' ) |  | 
    # 38 | //click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | carne1
    # 39 | //end |  |  | 
    # 40 | //if | ( ${sand_2} == 'Hamburguer' || ${sand_2} == 'Xburguer' || ${sand_2} == 'EggXburger' ) |  | 
    # 41 | //click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | carne2
    # 42 | //end |  |  | 
    # 43 | //if | ( ${sand_3} == 'Hamburguer' || ${sand_3} == 'Xburguer' || ${sand_3} == 'EggXburger' ) |  | 
    # 44 | //click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | carne3
    # 45 | //end |  |  | 
    # 46 | //if | ( ${sand_4} == 'Hamburguer' || ${sand_4} == 'Xburguer' || ${sand_4} == 'EggXburger' ) |  | 
    # 47 | //click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | carne4
    # 48 | //end |  |  | 
    # 49 | //if | ${sand_1} == 'EggXburger' |  | 
    # 50 | //click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | ovo1
    # 51 | //end |  |  | 
    # 52 | //if | ${sand_2} == 'EggXburger' |  | 
    # 53 | //click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | ovo2
    # 54 | //end |  |  | 
    # 55 | //if | ${sand_3} == 'EggXburger' |  | 
    # 56 | //click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | ovo3
    # 57 | //end |  |  | 
    # 58 | //if | ${sand_4} == 'EggXburger' |  | 
    # 59 | //click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | ovo4
    # 60 | //end |  |  | 
    # 61 | //click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | salada1
    # 62 | //click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | salada2
    # 63 | //click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | salada3
    # 64 | //click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | salada4
    # 65 | //click | css=.freebirdFormviewerViewItemsDateDateInputs .quantumWizTextinputPaperinputInput |  | 
    # 66 | //TypeTodaysDate | css=.freebirdFormviewerViewItemsDateDateInputs .quantumWizTextinputPaperinputInput |  | 
    # 67 | //click | css=.freebirdFormviewerViewItemsTimeNumberEdit:nth-child(1) .quantumWizTextinputPaperinputInput |  | 
    # 68 | //type | css=.freebirdFormviewerViewItemsTimeNumberEdit:nth-child(1) .quantumWizTextinputPaperinputInput | 00 | 
    # 69 | //click | css=.freebirdFormviewerViewItemsTimeNumberEdit:nth-child(3) .quantumWizTextinputPaperinputInput |  | 
    # 70 | //type | css=.freebirdFormviewerViewItemsTimeNumberEdit:nth-child(3) .quantumWizTextinputPaperinputInput | 58 | 
    # 71 | click | css=.quantumWizButtonPaperbuttonLabel |  | 
    self.driver.find_element(By.CSS_SELECTOR, ".quantumWizButtonPaperbuttonLabel").click()
  
