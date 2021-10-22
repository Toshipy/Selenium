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

driver.find_element(:xpath, '//*[@id="property_head"]/ul/li[2]').click
sleep 3

#34 "「新規作成：ダイス | ×××」をクリック
driver.find_element(:xpath, '//*[@title="新規作成"]').click
sleep 2

driver.find_element(:link_text,'ダイス = 定常テスト用').click
sleep 1

#35 「タイプ管理」で追加した属性の「表示ビュー」項目が「プロパティ」項目がある
#36 「新規作成：ダイス」の各項目を入力し、保存

driver.find_element(:id, 'store_name').send_keys('A')
driver.find_element(:id, 'store_client_tanto').send_keys('B')
driver.find_element(:id, 'store_address').send_keys('C')
driver.find_element(:id, 'store_sales_personnel').send_keys('D')
driver.find_element(:id, 'store_sales_section').send_keys('E')
driver.find_element(:id, 'store_official_name').send_keys('F')
driver.find_element(:id, 'store_ex2').send_keys('G')
sleep 2
driver.find_element(:id, 'save').click
sleep 3

driver.find_element(:xpath, '//*[@title="新規作成"]').click
sleep 1


#37 「新規作成：ダイス」の各項目を入力し、キャンセル
driver.find_element(:link_text,'ダイス = 定常テスト用').click
sleep 1

driver.find_element(:id, 'store_name').send_keys('Z')
driver.find_element(:id, 'store_client_tanto').send_keys('B')
driver.find_element(:id, 'store_address').send_keys('C')
driver.find_element(:id, 'store_sales_personnel').send_keys('D')
driver.find_element(:id, 'store_sales_section').send_keys('E')
driver.find_element(:id, 'store_official_name').send_keys('F')
driver.find_element(:id, 'store_ex2').send_keys('G')
sleep 2
driver.find_element(:id, 'cancel').click
sleep 3

#38 ダイス横の鉛筆をクリック

driver.find_element(:link_text,'A').click
sleep 2
driver.find_element(:link_text,'プロパティ').click
sleep 2


#39 「編集：ダイス」画面で各項目を変更し、保存する

driver.find_element(:xpath, '//*[@id="property_body_main"]/table/tbody/tr/td/a/img').click
sleep 1

driver.find_element(:id, 'store_name').clear
driver.find_element(:id, 'store_name').send_keys('a')
driver.find_element(:id, 'store_client_tanto').clear
driver.find_element(:id, 'store_client_tanto').send_keys('b')
driver.find_element(:id, 'store_address').clear
driver.find_element(:id, 'store_address').send_keys('c')
driver.find_element(:id, 'store_sales_personnel').clear
driver.find_element(:id, 'store_sales_personnel').send_keys('d')
driver.find_element(:id, 'store_sales_section').clear
driver.find_element(:id, 'store_sales_section').send_keys('e')
driver.find_element(:id, 'store_official_name').clear
driver.find_element(:id, 'store_official_name').send_keys('f')
driver.find_element(:id, 'store_ex2').clear
driver.find_element(:id, 'store_ex2').send_keys('g')
sleep 2
driver.find_element(:id, 'save').click
sleep 3


#40 「編集：ダイス」画面で各項目を変更し、キャンセル

driver.find_element(:xpath, '//*[@id="property_body_main"]/table/tbody/tr/td/a/img').click
sleep 1

driver.find_element(:id, 'store_name').clear
driver.find_element(:id, 'store_name').send_keys('0')
driver.find_element(:id, 'store_client_tanto').clear
driver.find_element(:id, 'store_client_tanto').send_keys('1')
driver.find_element(:id, 'store_address').clear
driver.find_element(:id, 'store_address').send_keys('2')
driver.find_element(:id, 'store_sales_personnel').clear
driver.find_element(:id, 'store_sales_personnel').send_keys('3')
driver.find_element(:id, 'store_sales_section').clear
driver.find_element(:id, 'store_sales_section').send_keys('4')
driver.find_element(:id, 'store_official_name').clear
driver.find_element(:id, 'store_official_name').send_keys('5')
driver.find_element(:id, 'store_ex2').clear
driver.find_element(:id, 'store_ex2').send_keys('6')
sleep 2
driver.find_element(:id, 'cancel').click
sleep 3

#41 「編集：ダイス」画面で削除をクリック

driver.find_element(:xpath, '//*[@id="property_body_main"]/table/tbody/tr/td/a/img').click
sleep 1

driver.find_element(xpath, '//*[@id="store_submit"]').click
sleep 5

driver.quit

end