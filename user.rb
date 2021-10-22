require "selenium-webdriver"
require 'securerandom'


class Login

  driver = Selenium::WebDriver.for :chrome

  driver.get('http://192.168.1.23:60001/')

  #有効なログインIDとパスワードでログイン
  driver.find_element(:id, 'login_uid').send_keys('root')
  driver.find_element(:id, 'login_pwd').send_keys('')
  sleep 2

  driver.find_element(:xpath, '//*[@id="page_body"]/div/form/table/tbody/tr[4]/td/input').click
  sleep 2

  driver.find_element(:xpath, '//*[@id="save"]').click
  sleep 3

  #161 「新規作成：グループ」をクリック

  driver.find_element(:xpath,'//*[@id="main-node-5"]/li[2]/a[2]/span').click
  sleep 1
  driver.find_element(:link_text,'アイテム').click
  sleep 1

  driver.find_element(:link_text,'新規作成').click
  sleep 1
  driver.find_element(:link_text,'ユーザグループ').click
  sleep 1

  #162 「新規作成：グループ画面のグループ名を入力し、保存する
  driver.find_element(:xpath,'//*[@id="store_name"]').send_keys('ABC')
  driver.find_element(:xpath,'//*[@id="save"]').click
  sleep 5

  #163 「新規作成：グループ画面のグループ名を入力し、キャンセルする
  driver.find_element(:link_text,'新規作成').click
  sleep 1
  driver.find_element(:link_text,'ユーザグループ').click
  sleep 2
  driver.find_element(:xpath,'//*[@id="store_name"]').send_keys('Z')
  driver.find_element(:xpath,'//*[@id="cancel"]').click
  sleep 2

  #164 グループ横の鉛筆をクリック
  driver.find_element(:xpath, '//*[@src = "/images/op_edit.png?1629261518"]').click
  sleep 3
  #165 「編集：グループ」画面の各項目を変更し、保存する
  driver.find_element(:xpath,'//*[@id="store_name"]').clear
  driver.find_element(:xpath,'//*[@id="store_name"]').send_keys('WOW')
  sleep 2
  driver.find_element(:xpath,'//*[@id="save"]').click
  sleep 5


  #166 「編集：グループ画面のグループ名を変更し、キャンセルする
  driver.find_element(:xpath, '//*[@src = "/images/op_edit.png?1629261518"]').click
  sleep 2
  driver.find_element(:xpath,'//*[@id="store_name"]').clear
  driver.find_element(:xpath,'//*[@id="store_name"]').send_keys('wow')
  sleep 2
  driver.find_element(:xpath,'//*[@id="cancel"]').click
  sleep 2

  #167 「編集：グループ画面で削除をクリックする
  driver.find_element(:xpath, '//*[@src = "/images/op_edit.png?1629261518"]').click
  sleep 2
  driver.find_element(:xpath,'//*[@id="store_submit"]').click
  sleep 3
  driver.switch_to.alert.accept #Google Alerts で通知をOKにする
  sleep 5

  #168 「新規作成：ユーザ」をクリック
  driver.find_element(:link_text,'新規作成').click
  driver.find_element(:link_text,'ユーザ').click
  sleep 2
  #169 「新規作成：ユーザ」画面の各項目を入力し、保存する
  driver.find_element(:xpath,'//*[@id="store_login_uid"]').send_keys('atara')
  sleep 1
  driver.find_element(:xpath,'//*[@id="store_login_pwd_new"]').send_keys('atara')
  sleep 1
  driver.find_element(:xpath,'//*[@id="store_name"]').send_keys('atara')
  sleep 1
  driver.find_element(:xpath,'//*[@id="store_mail"]').send_keys('atara')
  sleep 1
  driver.find_element(:xpath,'//*[@id="save"]').click
  sleep 5


  #170 「新規作成：ユーザ」画面の各項目を入力し、キャンセルする
  driver.find_element(:link_text,'新規作成').click
  driver.find_element(:link_text,'ユーザ').click
  sleep 2
  driver.find_element(:xpath,'//*[@id="store_login_uid"]').send_keys('technoplus')
  sleep 1
  driver.find_element(:xpath,'//*[@id="store_login_pwd_new"]').send_keys('technoplus')
  driver.find_element(:xpath,'//*[@id="store_name"]').send_keys('technoplus')
  driver.find_element(:xpath,'//*[@id="store_mail"]').send_keys('technoplus')
  sleep 2
  driver.find_element(:xpath,'//*[@id="cancel"]').click
  sleep 2

  #171 ユーザー横の鉛筆をクリック
  driver.find_element(:xpath, '//*[@id="property_body_list"]/div[2]/table/tbody/tr[4]/td[1]/a/img').click
  sleep 1

  #172 「編集：ユーザ」画面の各項目を変更し、保存する
  driver.find_element(:xpath,'//*[@id="store_name"]').clear
  driver.find_element(:xpath,'//*[@id="store_name"]').send_keys('edited')
  driver.find_element(:xpath,'//*[@id="store_mail"]').clear
  driver.find_element(:xpath,'//*[@id="store_mail"]').send_keys('edited')
  sleep 2
  driver.find_element(:xpath,'//*[@id="save"]').click
  sleep 1

  #173 「編集：ユーザ」画面の各項目を変更し、キャンセルする
  driver.find_element(:xpath, '//*[@id="property_body_list"]/div[2]/table/tbody/tr[4]/td[1]/a/img').click
  sleep 2

  driver.find_element(:xpath,'//*[@id="store_name"]').clear
  sleep 1
  driver.find_element(:xpath,'//*[@id="store_name"]').send_keys('edited2')
  sleep 1
  driver.find_element(:xpath,'//*[@id="store_mail"]').clear
  driver.find_element(:xpath,'//*[@id="store_mail"]').send_keys('edited2')
  sleep 2
  driver.find_element(:xpath,'//*[@id="cancel"]').click
  sleep 1

  #174 「編集：ユーザ」画面で削除をクリックする
  driver.find_element(:xpath, '//*[@id="property_body_list"]/div[2]/table/tbody/tr[4]/td[1]/a/img').click
  sleep 1
  driver.find_element(:xpath,'//*[@id="store_submit"]').click
  sleep 3
  driver.switch_to.alert.accept
  sleep 6

  #175 ユーザーの有効・無効
  driver.find_element(:link_text,'新規作成').click
  sleep 1
  driver.find_element(:link_text,'ユーザ').click
  sleep 3

  driver.find_element(:xpath,'//*[@id="store_login_uid"]').send_keys(SecureRandom.alphanumeric(5).delete("^A-Z"))
  sleep 1
  driver.find_element(:xpath,'//*[@id="store_login_pwd_new"]').send_keys(SecureRandom.alphanumeric(5).delete("^A-Z"))
  sleep 1
  driver.find_element(:xpath,'//*[@id="store_name"]').send_keys(SecureRandom.alphanumeric(5).delete("^A-Z"))
  sleep 1
  driver.find_element(:xpath,'//*[@id="store_mail"]').send_keys(SecureRandom.alphanumeric(5).delete("^A-Z"))
  sleep 1
  driver.find_element(:xpath,'//*[@id="save"]').click
  sleep 5

  driver.find_element(:xpath, '//*[@id="property_body_list"]/div[2]/table/tbody/tr[4]/td[1]/a/img').click
  sleep 1

  driver.find_element(:xpath, '//*[@id="store_status"]').click
  sleep 1


  #176 作成ユーザー実行権限
  element10 = driver.find_element(:xpath, '//*[@id="store_privilege"]')
  bloodType = '管理' 
  select = Selenium::WebDriver::Support::Select.new(element10)
  select.select_by(:text, bloodType)
  sleep 2

  driver.find_element(:xpath,'//*[@id="save"]').click
  sleep 6


  driver.quit

end


