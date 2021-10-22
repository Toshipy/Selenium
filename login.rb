require "selenium-webdriver"


Selenium::WebDriver::Driver#file_detector 
DEBUG_SHOW = true
FILE_PATH  = "test.xlsx"


driver = Selenium::WebDriver.for :chrome


driver.get('http://192.168.1.47:60002/nodes')

#4 "間違ったログインID、パスワードを入力し、ログインボタンを押す"

driver.find_element(:id, 'login_uid').send_keys('abcde')
driver.find_element(:id, 'login_pwd').send_keys('abcde')

sleep 1

elem5 = driver.find_element(:xpath, '//*[@id="page_body"]/div/form/table/tbody/tr[4]/td/input')
elem5.click


#5 "正しいログインID、パスワードを入力し、ログインボタンを押す"
driver.find_element(:id, 'login_uid').send_keys('')
driver.find_element(:id, 'login_pwd').send_keys('')

sleep 3

elem6 = driver.find_element(:xpath, '//*[@id="page_body"]/div/form/table/tbody/tr[4]/td/input')
elem6.click
sleep 3

#ポップアップ表示を保存クリック
driver.find_element(:xpath, '//*[@id="save"]').click

sleep 3

#6 ヘルプをクリック
elem7 = driver.find_element(:xpath, '//*[@id="page_head"]/div[2]/span[4]/a')
elem7.click
sleep 3

# 元のタブへ切り替え
driver.switch_to().window(driver.window_handles[0]);
sleep 2

#7 ログアウトをクリック
driver.find_element(:xpath, '//*[@id="page_head"]/div[2]/span[3]/a').click

driver.find_element(:id, 'login_uid').send_keys('root')
driver.find_element(:id, 'login_pwd').send_keys('')
sleep 2

driver.find_element(:xpath, '//*[@id="page_body"]/div/form/table/tbody/tr[4]/td/input').click
sleep 3
#ポップアップ表示を保存クリック
driver.find_element(:xpath, '//*[@id="save"]').click

#8 ユーザー情報をクリック
driver.find_element(:xpath, '//*[@id="page_head"]/div[2]/span[1]/a').click
sleep 2

#9 「現在のユーザー」画面で各項目を変更し、保存する
element0 = driver.find_element(:id, 'current_user_login_pwd')
element0.clear
element0.send_keys('asdf1234')
driver.find_element(:id, 'current_user_login_pwd_confirmation').send_keys('asdf1234')
sleep 3
element1 = driver.find_element(:id, 'current_user_name')
element1.clear
sleep 1
element1.send_keys('Technoplus')
sleep 3
element2 = driver.find_element(:id, 'current_user_mail')
element2.clear
sleep 1
element2.send_keys('arai@technoplus.co.jp')
sleep 5
driver.find_element(:xpath, '//*[@id="save"]').click
sleep 3

driver.find_element(:xpath, '//*[@id="page_head"]/div[2]/span[1]/a')
.click

sleep 2

#10「現在のユーザー」画面でパスワードとパスワード確認の項目に別々の値を入力し、保存する
#11「現在のユーザー」画面で各項目を変更し、キャンセルする
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
