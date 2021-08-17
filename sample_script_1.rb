require "selenium-webdriver"



driver = Selenium::WebDriver.for :chrome

driver.get('http://192.168.1.23:60001/sessions/new')

#無効なログインIDとパスワードでログイン
driver.find_element(:id, 'login_uid').send_keys('abcde')
driver.find_element(:id, 'login_pwd').send_keys('abcde')

sleep 3

driver.find_element(:xpath, '//*[@id="page_body"]/div/form/table/tbody/tr[4]/td/input')
.click

sleep 3
#有効なログインIDとパスワードでログイン
driver.find_element(:id, 'login_uid').send_keys('root')
driver.find_element(:id, 'login_pwd').send_keys('')

sleep 3

driver.find_element(:xpath, '//*[@id="page_body"]/div/form/table/tbody/tr[4]/td/input')
.click

sleep 2

#ポップアップ表示を保存クリック
driver.find_element(:xpath, '//*[@id="save"]')
.click

sleep 3

#ヘルプをクリック
driver.find_element(:xpath, '//*[@id="page_head"]/div[2]/span[4]/a')
.click

#元のタブへ切り替え
sleep 2
driver.switch_to().window(driver.window_handles[0]);


sleep 2
#ログアウトをクリック
driver.find_element(:xpath, '//*[@id="page_head"]/div[2]/span[3]/a')
.click

driver.find_element(:id, 'login_uid').send_keys('root')
driver.find_element(:id, 'login_pwd').send_keys('')

sleep 2

driver.find_element(:xpath, '//*[@id="page_body"]/div/form/table/tbody/tr[4]/td/input')
.click

sleep 3

#ポップアップ表示を保存クリック
driver.find_element(:xpath, '//*[@id="save"]')
.click

#ユーザー情報をクリック
driver.find_element(:xpath, '//*[@id="page_head"]/div[2]/span[1]/a')
.click

sleep 2

#ユーザー情報を変更
element0 = driver.find_element(:id, 'current_user_login_pwd')
element0.clear
element0.send_keys('asdf1234')

driver.find_element(:id, 'current_user_login_pwd_confirmation').send_keys('asdf1234')

sleep 3


element1 = driver.find_element(:id, 'current_user_name')
element1.clear

sleep 1

element1.send_keys('Atara社長')

sleep 3

element2 = driver.find_element(:id, 'current_user_mail')
element2.clear

sleep 1

element2.send_keys('toshipy1209@gmail.com')

sleep 5

driver.find_element(:xpath, '//*[@id="save"]').click

sleep 3

#ユーザー情報をクリック
driver.find_element(:xpath, '//*[@id="page_head"]/div[2]/span[1]/a')
.click

sleep 2

#ユーザー情報を変更(別々のパスワードを入力)
element0 = driver.find_element(:id, 'current_user_login_pwd')
element0.clear
element0.send_keys('asdf1234')

driver.find_element(:id, 'current_user_login_pwd_confirmation').send_keys('asdf123')

sleep 3

driver.find_element(:xpath, '//*[@id="save"]').click

sleep 3

alert = driver.switch_to.alert

alert.accept

sleep 3

driver.find_element(:xpath, '//*[@id="cancel"]').click

sleep 3

#アイテムtabをクリック
driver.find_element(:xpath, '//*[@id="property_head"]/ul/li[2]').click

sleep 1

#新規作成をクリック
driver.find_element(:id, '//*[@id="from_6114bdb8_00ad"]').click

sleep 1

#一般フォルダをクリック
driver.find_element(:xpath, '//*[@id="menu_6114bdb8_00ac"]/li[2]/a').click

sleep 1

#フォルダ名を入力して保存
driver.find_element(:id, 'store_name').send_keys('Demo')
driver.find_element(:xpath, '//*[@id="save"]').click

sleep 3

#フォルダ名を入力してキャンセル
driver.find_element(:xpath, '//*[@id="property_head"]/ul/li[2]').click
sleep 1
driver.find_element(:id, '//*[@id="from_6114bdb8_00ad"]').click
sleep 1
driver.find_element(:xpath, '//*[@id="menu_6114bdb8_00ac"]/li[2]/a').click
sleep 1
driver.find_element(:id, 'store_name').send_keys('WoW')
driver.find_element(:xpath, '//*[@id="save"]').click

sleep 3

driver.quit




