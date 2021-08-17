require "selenium-webdriver"
require 'open-uri'
require 'nokogiri'


driver = Selenium::WebDriver.for :chrome

driver.get('http://192.168.1.23:60001/sessions/new')


#有効なログインIDとパスワードでログイン
driver.find_element(:id, 'login_uid').send_keys('root')
driver.find_element(:id, 'login_pwd').send_keys('')


 driver.find_element(:xpath, '//*[@id="page_body"]/div/form/table/tbody/tr[4]/td/input').click

 sleep 1

#ポップアップ表示を保存クリック
driver.find_element(:xpath, '//*[@id="save"]').click

sleep 1

# アイテムtabをクリック
driver.find_element(:xpath, '//*[@id="property_head"]/ul/li[2]').click

sleep 1
# sleep 1

# 新規作成をクリック
# driver.find_element(:xpath, '//*[@title="新規作成"]').click

# sleep 2

# driver.find_element(:link_text,'フォルダ').click


# sleep 2

# 14 フォルダに名前を入力して保存する
# driver.find_element(:id, 'store_name').send_keys('Sample1')

# sleep 1

# driver.find_element(:xpath, '//*[@id="save"]').click

# sleep 2

# 15 フォルダに名前を入力してキャンセルを押す

# driver.find_element(:xpath, '//*[@title="新規作成"]').click



# driver.find_element(:link_text,'フォルダ').click

# sleep 1

# driver.find_element(:id, 'store_name').send_keys('Sample2')


# driver.find_element(:xpath, '//*[@id="cancel"]').click

# sleep 1

# 16 フォルダの編集（フォルダ名を変更して保存）


# 16 フォルダの編集（フォルダ名を変更してキャンセル）

# 17 フォルダの削除

# # 20 「新規作成：ファイル」をクリック
#  driver.find_element(:xpath, '//*[@title="新規作成"]').click
#  sleep 1

# # 21 「新規作成：ファイル」のファイル選択項目の参照ボタンをクリック
#  driver.find_element(:link_text,'ファイル').click
#  sleep 1

# # 22 「アップロードファイル選択ダイアログ」でキャンセルボタンを押下
#  sleep 1

# # 23 「アップロードファイル選択ダイアログ」でファイルを選択し開くボタンを押下


# #24 ファイル選択項目にフルパスが表示されている状態でアップロードボタンをクリック

# #25 オプションのレポートテンプレートとして使用にチェックを付ける

# driver.find_element(:xpath, '//*[@id="nodes-form_core-console-file-flag_template"]').click
# sleep 1


# #26 オプションのレポートテンプレートとして使用のチェックを外す
# driver.find_element(:xpath, '//*[@id="nodes-form_core-console-file-flag_template"]').click
# sleep 1

# #27 レポート自動作成タブをクリック
# driver.find_element(:xpath, '//*[@id="nodes-form_core-console-file-flag_template"]').click
# sleep 1
# driver.find_element(:xpath, '//*[@id="nodes-form_core-console-file-flag_auto"]').click
# sleep 1
# driver.find_element(:xpath, '//*[@id="dialog_tab_1"]/a').click
# sleep 1
# select = Selenium::WebDriver::Support::Select.new(driver.find_element(:id => "nodes-form_core-console-file-report_condition_id_0" ))
# select.select_by(:value, '1') # 1つ目のドロップダウンリストだけ3が選択される
# sleep 1
# select = Selenium::WebDriver::Support::Select.new(driver.find_element(:id => "nodes-form_core-console-file-report_condition_id_1"))
# select.select_by(:value, '1002') # 1つ目のドロップダウンリストだけ3が選択される
# sleep 2

# driver.find_element(:xpath, '//*[@id="dialog_tab_0"]/a').click
# sleep 2

# #28 「新規作成：ファイル」の各項目を入力し、保存
# driver.find_element(:xpath, '//*[@id="nodes-form_core-console-file-name"]').send_keys('Atara')
# sleep 1

# driver.find_element(:xpath, '//*[@id="store_note"]').send_keys('AtaraJP')
# sleep 1

# driver.find_element(:xpath, '//*[@id="save"]').click
# sleep 1

# #29 「新規作成：ファイル」の各項目を入力し、キャンセル

# driver.find_element(:xpath, '//*[@title="新規作成"]').click
# sleep 1


# driver.find_element(:link_text,'ファイル').click
# sleep 1
# driver.find_element(:xpath, '//*[@id="nodes-form_core-console-file-name"]').send_keys('Atara')
# sleep 1

# driver.find_element(:xpath, '//*[@id="store_note"]').send_keys('AtaraJP')
# sleep 1

# driver.find_element(:xpath, '//*[@id="cancel"]').click

# sleep 1

#icon tap テスト　driver.find_element(:xpath, '//*[@alt="Op_edit"]').click

# sleep 5


#34 "「新規作成：ファイル」（オプション：レポートテンプレートとして使用）"

driver.find_element(:xpath, '//*[@title="新規作成"]').click
sleep 1

#35 "「新規作成：ダイス | ×××」をクリック

driver.find_element(:link_text,'ダイス = 定常テスト用').click
sleep 1


#36 「タイプ管理」で追加した属性の「表示ビュー」項目が「プロパティ」項目がある
#37 「新規作成：ダイス」の各項目を入力し、保存

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
driver.find_element(:link_text,'A').click
sleep 2
driver.find_element(:link_text,'プロパティ').click
sleep 2

#38 「新規作成：ダイス」の各項目を入力し、キャンセル





driver.quit
