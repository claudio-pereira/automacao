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

class TestTesteAberturaFormulario():
  def setup_method(self, method):
    self.driver = webdriver.Firefox()
    self.vars = {}
  
  def teardown_method(self, method):
    self.driver.quit()
  
  def test_testeAberturaFormulario(self):
    # Test name: Teste_Abertura _Formulario
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
    # 9 | //click | css=.isSelected > .quantumWizMenuPaperselectContent |  | 
    # 10 | //click | css=.exportSelectPopup > .isSelected > .quantumWizMenuPaperselectContent |  | 
    # 11 | //clickAt | css=.isActive .quantumWizTogglePaperradioOffRadio |  | O quanto você gosta de animas?
    # 12 | //clickAt | css=.isActive .quantumWizTogglePaperradioOffRadio |  | 
    # 13 | //clickAt | css=.isActive .quantumWizTogglePaperradioOffRadio |  | 
    # 14 | //clickAt | css=.isActive .quantumWizTogglePaperradioOffRadio |  | 
    # 15 | //clickAt | css=.isActive .quantumWizTogglePaperradioOffRadio |  | 
    # 16 | //click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | pao1
    # 17 | //click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | pao2
    # 18 | //click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | pao3
    # 19 | //click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | pao4
    # 20 | //storeText | css=.freebirdFormviewerViewNumberedItemContainer:nth-child(8) .freebirdFormviewerViewItemsGridRow:nth-child(2) > .freebirdFormviewerViewItemsGridRowHeader | sand_1 | 
    # 21 | //storeText | css=.freebirdFormviewerViewNumberedItemContainer:nth-child(8) .freebirdFormviewerViewItemsGridRow:nth-child(3) > .freebirdFormviewerViewItemsGridRowHeader | sand_2 | 
    # 22 | //storeText | css=.freebirdFormviewerViewNumberedItemContainer:nth-child(8) .freebirdFormviewerViewItemsGridRow:nth-child(4) > .freebirdFormviewerViewItemsGridRowHeader | sand_3 | 
    # 23 | //storeText | css=.freebirdFormviewerViewNumberedItemContainer:nth-child(8) .freebirdFormviewerViewItemsGridRow:nth-child(5) > .freebirdFormviewerViewItemsGridRowHeader | sand_4 | 
    # 24 | //if | ( ${sand_1} == 'Vegetariano' || ${sand_1} == 'Xburguer' || ${sand_1} == 'EggXburger' ) |  | 
    # 25 | //click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | queijo1
    # 26 | //end |  |  | 
    # 27 | //if | ( ${sand_2} == 'Vegetariano' || ${sand_2} == 'Xburguer' || ${sand_2} == 'EggXburger' ) |  | 
    # 28 | //click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | queijo2
    # 29 | //end |  |  | 
    # 30 | //if | ( ${sand_3} == 'Vegetariano' || ${sand_3} == 'Xburguer' || ${sand_3} == 'EggXburger' ) |  | 
    # 31 | //click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | queijo3
    # 32 | //end |  |  | 
    # 33 | //if | ( ${sand_4} == 'Vegetariano' || ${sand_4} == 'Xburguer' || ${sand_4} == 'EggXburger' ) |  | 
    # 34 | //click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | queijo4
    # 35 | //end |  |  | 
    # 36 | //if | ( ${sand_1} == 'Hamburguer' || ${sand_1} == 'Xburguer' || ${sand_1} == 'EggXburger' ) |  | 
    # 37 | //click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | carne1
    # 38 | //end |  |  | 
    # 39 | //if | ( ${sand_2} == 'Hamburguer' || ${sand_2} == 'Xburguer' || ${sand_2} == 'EggXburger' ) |  | 
    # 40 | //click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | carne2
    # 41 | //end |  |  | 
    # 42 | //if | ( ${sand_3} == 'Hamburguer' || ${sand_3} == 'Xburguer' || ${sand_3} == 'EggXburger' ) |  | 
    # 43 | //click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | carne3
    # 44 | //end |  |  | 
    # 45 | //if | ( ${sand_4} == 'Hamburguer' || ${sand_4} == 'Xburguer' || ${sand_4} == 'EggXburger' ) |  | 
    # 46 | //click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | carne4
    # 47 | //end |  |  | 
    # 48 | //if | ${sand_1} == 'EggXburger' |  | 
    # 49 | //click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | ovo1
    # 50 | //end |  |  | 
    # 51 | //if | ${sand_2} == 'EggXburger' |  | 
    # 52 | //click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | ovo2
    # 53 | //end |  |  | 
    # 54 | //if | ${sand_3} == 'EggXburger' |  | 
    # 55 | //click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | ovo3
    # 56 | //end |  |  | 
    # 57 | //if | ${sand_4} == 'EggXburger' |  | 
    # 58 | //click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | ovo4
    # 59 | //end |  |  | 
    # 60 | //click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | salada1
    # 61 | //click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | salada2
    # 62 | //click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | salada3
    # 63 | //click | css=.isActive > .quantumWizTogglePapercheckboxInnerBox |  | salada4
    # 64 | //click | css=.freebirdFormviewerViewItemsDateDateInputs .quantumWizTextinputPaperinputInput |  | 
    # 65 | //TypeTodaysDate | css=.freebirdFormviewerViewItemsDateDateInputs .quantumWizTextinputPaperinputInput |  | 
    # 66 | //click | css=.freebirdFormviewerViewItemsTimeNumberEdit:nth-child(1) .quantumWizTextinputPaperinputInput |  | 
    # 67 | //type | css=.freebirdFormviewerViewItemsTimeNumberEdit:nth-child(1) .quantumWizTextinputPaperinputInput | 00 | 
    # 68 | //click | css=.freebirdFormviewerViewItemsTimeNumberEdit:nth-child(3) .quantumWizTextinputPaperinputInput |  | 
    # 69 | //type | css=.freebirdFormviewerViewItemsTimeNumberEdit:nth-child(3) .quantumWizTextinputPaperinputInput | 58 | 
    # 70 | click | css=.quantumWizButtonPaperbuttonLabel |  | 
    self.driver.find_element(By.CSS_SELECTOR, ".quantumWizButtonPaperbuttonLabel").click()
  