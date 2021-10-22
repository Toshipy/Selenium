require "selenium-webdriver"

class Login
    def self.start()

driver = Selenium::WebDriver.for :chrome

driver.get('http://192.168.1.23:60001/')


#有効なログインIDとパスワードでログイン
driver.find_element(:id, 'login_uid').send_keys('root')
driver.find_element(:id, 'login_pwd').send_keys('')
sleep 1

driver.find_element(:xpath, '//*[@id="page_body"]/div/form/table/tbody/tr[4]/td/input').click
sleep 1

driver.find_element(:xpath, '//*[@id="save"]').click
sleep 1

#12 アイテムtabをクリック
driver.find_element(:xpath, '//*[@id="property_head"]/ul/li[2]').click
sleep 1

driver.find_element(:xpath, '//*[@title="新規作成"]').click
sleep 2
driver.find_element(:link_text,'フォルダ').click
sleep 2

#13 フォルダに名前を入力して保存する
driver.find_element(:id, 'store_name').send_keys('Sample1')
sleep 1
driver.find_element(:xpath, '//*[@id="save"]').click
sleep 2

#14 フォルダに名前を入力してキャンセルを押す
driver.find_element(:xpath, '//*[@title="新規作成"]').click
driver.find_element(:link_text,'フォルダ').click
sleep 1
driver.find_element(:id, 'store_name').send_keys('Sample2')
sleep 1
driver.find_element(:xpath, '//*[@id="cancel"]').click
sleep 1

#15 フォルダ横の鉛筆をクリック
#16 フォルダの編集（フォルダ名を変更して保存）
driver.find_element(:xpath, '//*[@id="property_body_list"]/div[2]/table/tbody/tr[6]/td[1]/a/img').click
sleep 2
driver.find_element(:xpath, '//*[@id="store_name"]').clear
sleep 2
driver.find_element(:xpath, '//*[@id="store_name"]').send_keys('Sample3')
sleep 2
driver.find_element(:xpath, '//*[@id="save"]').click
sleep 4

#17 フォルダの編集（フォルダ名を変更してキャンセル）
driver.find_element(:xpath, '//*[@id="property_body_list"]/div[2]/table/tbody/tr[8]/td[1]/a/img').click
sleep 2
driver.find_element(:xpath, '//*[@id="store_name"]').clear
sleep 2
driver.find_element(:xpath, '//*[@id="store_name"]').send_keys('Sample5')
sleep 2
driver.find_element(:xpath, '//*[@id="cancel"]').click
sleep 4

#18 フォルダの削除
driver.find_element(:xpath, '//*[@id="property_body_list"]/div[2]/table/tbody/tr[6]/td[1]/a/img').click
sleep 1
driver.find_element(:xpath, '//*[@id="store_submit"]').click
sleep 1
driver.switch_to.alert.accept
sleep 2

driver.quit

end
