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
sleep 2

driver.find_element(:xpath, '//*[@title="新規作成"]').click
sleep 2

driver.find_element(:link_text,'フォルダ').click
sleep 2

driver.find_element(:id, 'store_name').send_keys('test1')
sleep 1
driver.find_element(:xpath, '//*[@id="save"]').click
sleep 3

driver.find_element(:xpath, '//*[@title="新規作成"]').click
sleep 2

driver.find_element(:link_text,'ダイス = 定常テスト用').click
sleep 2

driver.find_element(:id, 'store_name').send_keys('test')
driver.find_element(:id, 'store_client_tanto').send_keys('2')
driver.find_element(:id, 'store_address').send_keys('3')
driver.find_element(:id, 'store_sales_personnel').send_keys('4')
driver.find_element(:id, 'store_sales_section').send_keys('5')
driver.find_element(:id, 'store_official_name').send_keys('6')
driver.find_element(:id, 'store_ex2').send_keys('7')
sleep 2
driver.find_element(:id, 'save').click
sleep 3

driver.find_element(:xpath, '//*[@id="main-node-5"]/li[6]/a[2]/span').click
sleep 1

driver.find_element(:link_text, '整理').click
sleep 1

driver.find_element(:xpath, '//*[@title="新規作成"]').click
sleep 2

driver.find_element(:link_text,'ダイス = 定常テスト用').click
sleep 2

driver.find_element(:id, 'store_name').send_keys('test2')
driver.find_element(:id, 'store_client_tanto').send_keys('2')
driver.find_element(:id, 'store_address').send_keys('3')
driver.find_element(:id, 'store_sales_personnel').send_keys('4')
driver.find_element(:id, 'store_sales_section').send_keys('5')
driver.find_element(:id, 'store_official_name').send_keys('6')
driver.find_element(:id, 'store_ex2').send_keys('7')
sleep 2
driver.find_element(:id, 'save').click
sleep 3

driver.find_element(:xpath, '//*[@id="main-node-5"]/li[6]/a[2]/span').click
sleep 1

driver.find_element(:link_text, '整理').click
sleep 1


#42 「ここへリンク」をクリック
driver.find_element(:link_text, 'ここへリンク').click
sleep 3

#43 「ここへリンク」画面でリンクしたいアイテムを選択し、保存

e1 = driver.find_element(:xpath, '/html/body/div[2]/div[1]/form/div[3]/div/ul/li/ul/li[9]/input')
e1.click
sleep 3

driver.find_element(:xpath, '//*[@id="save"]').click
sleep 2

#44 「ここへリンク」」画面でリンクしたいアイテムを選択し、キャンセル
driver.find_element(:link_text,'整理').click
sleep 1
driver.find_element(:link_text,'ここへリンク').click
sleep 2

driver.find_element(:xpath, '/html/body/div[2]/div[1]/form/div[3]/div/ul/li/ul/li[9]/input').click
sleep 2

driver.find_element(:xpath, '//*[@id="cancel"]').click
sleep 1

#45 リンクしたアイテム横の鉛筆をクリック
driver.find_element(:xpath, '//*[@id="property_body_list"]/div[2]/table/tbody/tr/td[1]/a/img').click
sleep 2

#46 POPした画面の「リンク解除」ボタンをクリック
driver.find_element(:xpath, '//*[@id="store_submit"]').click
sleep 1
driver.switch_to.alert.accept
sleep 1

#47 「ここへ移動」をクリック
driver.find_element(:link_text,'整理').click
sleep 1
driver.find_element(:link_text,'ここへ移動').click
sleep 1

#48「ここへ移動」画面で移動したいアイテムを選択し、保存
sleep 1

driver.find_element(:xpath, '/html/body/div[2]/div[1]/form/div[3]/div/ul/li/ul/li[10]/input').click
sleep 2

driver.find_element(:xpath, '//*[@id="save"]').click
sleep 3


#49「ここへ移動」」画面で移動したいアイテムを選択し、キャンセル

driver.find_element(:link_text,'整理').click
sleep 1

driver.find_element(:link_text,'ここへ移動').click
sleep 2

driver.find_element(:xpath, '/html/body/div[2]/div[1]/form/div[3]/div/ul/li/ul/li[7]/input').click
sleep 3

driver.find_element(:xpath, '//*[@id="cancel"]').click
sleep 2

driver.quit

end