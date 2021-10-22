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


#95 「新規作成：タイプ」
driver.find_element(:xpath,'//*[@id="main-node-6-e"]/img').click
sleep 2

driver.find_element(:xpath,'//*[@id="main-node-6"]/li[1]/a[2]/span').click
sleep 1

driver.find_element(:xpath,'//*[@id="property_head"]/ul/li[2]').click
sleep 1

driver.find_element(:link_text,'新規作成').click
sleep 2

#96 「新規作成：タイプ」クラス
#97 「新規作成：タイプ」タイプ名
#98 「新規作成：タイプ」日誌フォームタイプ
#99 「新規作成：タイプ」を各項目を入力し、保存をクリック
driver.find_element(:link_text, 'タイプ = ローカルシステム').click
sleep 3

element = driver.find_element(:id, 'nodes-form_core-console-ci_store_type-sub_class')
bloodType = '日誌フォーム'
select = Selenium::WebDriver::Support::Select.new(element)
select.select_by(:text, bloodType)
sleep 1

a=SecureRandom.alphanumeric(3)
b=SecureRandom.alphanumeric(3)
c=SecureRandom.alphanumeric(3)


driver.find_element(:xpath,'//*[@id="store_name_seed"]').send_keys(a)
sleep 1
driver.find_element(:xpath, '//*[@id="store_display_name"]').send_keys(b)
sleep 1
driver.find_element(:xpath, '//*[@id="store_line_template"]').send_keys(c)
sleep 1
driver.find_element(:xpath, '//*[@id="save"]').click
sleep 6



#100 「新規作成：タイプ」を各項目を入力し、キャンセルをクリック
driver.find_element(:link_text,'新規作成').click
sleep 2

driver.find_element(:link_text, 'タイプ = ローカルシステム').click
sleep 3

element = driver.find_element(:xpath, '//*[@id="nodes-form_core-console-ci_store_type-sub_class"]')
bloodType = 'ダイス'
select = Selenium::WebDriver::Support::Select.new(element)
select.select_by(:text, bloodType)
sleep 1

driver.find_element(:xpath,'//*[@id="store_name_seed"]').send_keys(a)
sleep 2

driver.find_element(:xpath, '//*[@id="store_display_name"]').send_keys(b)
sleep 1
driver.find_element(:xpath, '//*[@id="store_line_template"]').send_keys(c)
sleep 1
driver.find_element(:xpath, '//*[@id="cancel"]').click
sleep 1

#101 タイプ横の鉛筆をクリック
driver.find_element(:xpath, '/html/body/div[2]/div[9]/div[2]/div[2]/div[2]/table/tbody/tr[1]/td[1]/a/img').click
sleep 1

#102 「編集：タイプ」クラス
#103 「編集：タイプ」タイプ名

driver.find_element(:xpath, '//*[@id="store_display_name"]').clear
driver.find_element(:xpath, '//*[@id="store_display_name"]').send_keys('x')
sleep 2

#104 「編集：タイプ」を各項目を変更し、保存をクリック
driver.find_element(:xpath, '//*[@id="store_line_template"]').clear
driver.find_element(:xpath, '//*[@id="store_line_template"]').send_keys('y')
sleep 1

driver.find_element(:xpath, '//*[@id="save"]').click
sleep 3

#105 「編集：タイプ」を各項目を変更し、キャンセルをクリック
driver.find_element(:xpath, '//*[@id="property_body_list"]/div[2]/table/tbody/tr[1]/td[1]/a/img').click
sleep 2
driver.find_element(:xpath, '//*[@id="store_display_name"]').clear
driver.find_element(:xpath, '//*[@id="store_display_name"]').send_keys('a')
sleep 1
driver.find_element(:xpath, '//*[@id="store_line_template"]').clear
driver.find_element(:xpath, '//*[@id="store_line_template"]').send_keys('b')
sleep 1
driver.find_element(:xpath, '//*[@id="cancel"]').click
sleep 3

#106 「編集：タイプ」の削除をクリック
driver.find_element(:xpath, '//*[@id="property_body_list"]/div[2]/table/tbody/tr[1]/td[1]/a/img').click
sleep 1
driver.find_element(:xpath, '//*[@id="store_submit"]').click
sleep 1
driver.switch_to.alert.accept
sleep 3

#107 タイプのアイテム一覧を開き、「新規作成：タイプ属性」をクリック
driver.find_element(:xpath, '/html/body/div[2]/div[8]/ul/li/ul/li[1]/ul/li[1]/ul/li[1]/a[2]/span').click
sleep 2

driver.find_element(:xpath, '//*[@id="property_head"]/ul/li[2]').click
sleep 1

driver.find_element(:link_text,'新規作成').click
sleep 1

driver.find_element(:link_text,'タイプ属性 = ローカルシステム').click
sleep 2



#108 「新規作成：タイプ属性」の各項目を入力し、保存をクリック
driver.find_element(:xpath, '//*[@id="store_name"]').send_keys(SecureRandom.alphanumeric(5).delete("^A-Z"))
sleep 1

element1 = driver.find_element(:xpath, '//*[@id="store_value_type"]')
bloodType = '実数'
select = Selenium::WebDriver::Support::Select.new(element1)
select.select_by(:text, bloodType)
sleep 1

driver.find_element(:xpath, '//*[@id="store_display_name"]').send_keys(SecureRandom.alphanumeric(5).delete("^A-Z"))
sleep 1

element2 = driver.find_element(:xpath, '//*[@id="store_input_method"]')
bloodType = 'チェック'
select = Selenium::WebDriver::Support::Select.new(element2)
select.select_by(:text, bloodType)
sleep 1

element3 = driver.find_element(:xpath, '//*[@id="store_accessibility"]')
bloodType = '管理'
select = Selenium::WebDriver::Support::Select.new(element3)
select.select_by(:text, bloodType)
sleep 1

element4 = driver.find_element(:xpath, '//*[@id="store_group"]')
bloodType = '標準レポート'
select = Selenium::WebDriver::Support::Select.new(element4)
select.select_by(:text, bloodType)
sleep 1


driver.find_element(:xpath,'//*[@id="store_view_property"]').click
sleep 1

driver.find_element(:xpath,'//*[@id="store_view_report_aspect_daily"]').click
sleep 1

driver.find_element(:xpath, '//*[@id="store_view_report_aspect_monthly"]').click
sleep 1

element5 = driver.find_element(:xpath, '//*[@id="store_position"]')
bloodType = '1'
select = Selenium::WebDriver::Support::Select.new(element5)
select.select_by(:text, bloodType)
sleep 3

element6 = driver.find_element(:xpath, '//*[@id="store_series_position"]')
bloodType = '最初'
select = Selenium::WebDriver::Support::Select.new(element6)
select.select_by(:text, bloodType)
sleep 1


driver.find_element(:xpath,'//*[@id="store_required"]').click
sleep 1

element7 = driver.find_element(:xpath, '//*[@id="store_option_list_id"]')
bloodType = '部署'
select = Selenium::WebDriver::Support::Select.new(element7)
select.select_by(:text, bloodType)
sleep 1

driver.find_element(:xpath,'//*[@id="store_validator"]').send_keys('test')
sleep 1

driver.find_element(:xpath,'//*[@id="dialog_tab_1"]/a').click
sleep 1
driver.find_element(:xpath,'//*[@id="store_formula"]').send_keys('test1')
sleep 1
driver.find_element(:xpath,'//*[@id="store_sum_formula"]').send_keys('test2')
sleep 1
driver.find_element(:xpath,'//*[@id="dialog_tab_2"]/a').click
sleep 1

element8 = driver.find_element(:xpath, '//*[@id="store_style"]')
bloodType = '真のとき「通常」'
select = Selenium::WebDriver::Support::Select.new(element8)
select.select_by(:text, bloodType)
sleep 1

element9 = driver.find_element(:xpath, '//*[@id="store_style_target"]')
bloodType = 'レポート(日別)'
select = Selenium::WebDriver::Support::Select.new(element9)
select.select_by(:text, bloodType)
sleep 1

driver.find_element(:xpath,'//*[@id="store_style_condition"]').send_keys('test3')
sleep 1

driver.find_element(:xpath,'//*[@id="dialog_tab_4"]/a').click
sleep 1

driver.find_element(:xpath,'//*[@id="store_notice_motd"]').click
sleep 1

driver.find_element(:xpath,'//*[@id="store_notice_condition"]').send_keys('test4')
sleep 1

element10 = driver.find_element(:xpath, '//*[@id="store_notice_user_store_attr_id"]')
bloodType = 'CV' 
select = Selenium::WebDriver::Support::Select.new(element10)
select.select_by(:text, bloodType)
sleep 1

element11 = driver.find_element(:xpath, '//*[@id="store_notice_period_store_attr_id"]')
bloodType = 'Clicks' 
select = Selenium::WebDriver::Support::Select.new(element11)
select.select_by(:text, bloodType)
sleep 1

driver.find_element(:xpath,'//*[@id="store_notice_subject"]').send_keys('test5')
sleep 1

driver.find_element(:xpath,'//*[@id="store_notice_text"]').send_keys('test6')
sleep 1

driver.find_element(:xpath,'//*[@id="save"]').click
sleep 5


#109 「新規作成：タイプ属性」を各項目を入力し、キャンセルをクリック
driver.find_element(:link_text,'新規作成').click
sleep 1

driver.find_element(:link_text,'タイプ属性 = ローカルシステム').click
sleep 2

driver.find_element(:xpath, '//*[@id="store_name"]').send_keys(SecureRandom.alphanumeric(5).delete("^A-Z"))
sleep 1

element1 = driver.find_element(:xpath, '//*[@id="store_value_type"]')
bloodType = '文字列'
select = Selenium::WebDriver::Support::Select.new(element1)
select.select_by(:text, bloodType)
sleep 1

driver.find_element(:xpath, '//*[@id="store_display_name"]').send_keys(SecureRandom.alphanumeric(5).delete("^A-Z"))
sleep 1

element2 = driver.find_element(:xpath, '//*[@id="store_input_method"]')
bloodType = '期間'
select = Selenium::WebDriver::Support::Select.new(element2)
select.select_by(:text, bloodType)
sleep 1

element3 = driver.find_element(:xpath, '//*[@id="store_accessibility"]')
bloodType = 'パワー'
select = Selenium::WebDriver::Support::Select.new(element3)
select.select_by(:text, bloodType)
sleep 1

element4 = driver.find_element(:xpath, '//*[@id="store_group"]')
bloodType = '解析ツールレポート'
select = Selenium::WebDriver::Support::Select.new(element4)
select.select_by(:text, bloodType)
sleep 1

driver.find_element(:xpath,'//*[@id="store_view_list"]').click
sleep 1

driver.find_element(:xpath,'//*[@id="cancel"]').click
sleep 1


#110 タイプ属性横の鉛筆をクリック
driver.find_element(:xpath, '//*[@id="property_body_list"]/div[2]/table/tbody/tr[1]/td[1]/a/img').click
sleep 2


#111 「編集：タイプ属性」を各項目を変更し、保存をクリック

element1 = driver.find_element(:xpath, '//*[@id="store_value_type"]')
bloodType = '率'
select = Selenium::WebDriver::Support::Select.new(element1)
select.select_by(:text, bloodType)
sleep 1

x=driver.find_element(:xpath, '//*[@id="store_display_name"]')
x.clear
x.send_keys(SecureRandom.alphanumeric(3))
sleep 1

element2 = driver.find_element(:xpath, '//*[@id="store_input_method"]')
bloodType = '内部計算用'
select = Selenium::WebDriver::Support::Select.new(element2)
select.select_by(:text, bloodType)
sleep 1

element3 = driver.find_element(:xpath, '//*[@id="store_accessibility"]')
bloodType = '参照'
select = Selenium::WebDriver::Support::Select.new(element3)
select.select_by(:text, bloodType)
sleep 1

element5 = driver.find_element(:xpath, '//*[@id="store_position"]')
bloodType = '1'
select = Selenium::WebDriver::Support::Select.new(element5)
select.select_by(:text, bloodType)
sleep 3

element6 = driver.find_element(:xpath, '//*[@id="store_series_position"]')
bloodType = '最初'
select = Selenium::WebDriver::Support::Select.new(element6)
select.select_by(:text, bloodType)
sleep 1

driver.find_element(:xpath, '//*[@id="store_view_report_aspect_monthly"]').click
sleep 1

driver.find_element(:xpath,'//*[@id="store_required"]').click
sleep 1

element7 = driver.find_element(:xpath, '//*[@id="store_option_list_id"]')
bloodType = '部署'
select = Selenium::WebDriver::Support::Select.new(element7)
select.select_by(:text, bloodType)
sleep 1

driver.find_element(:xpath,'//*[@id="store_validator"]').send_keys('test')
sleep 1

driver.find_element(:xpath,'//*[@id="dialog_tab_1"]/a').click
sleep 1
driver.find_element(:xpath,'//*[@id="store_formula"]').clear
driver.find_element(:xpath,'//*[@id="store_formula"]').send_keys('test1')
sleep 1
driver.find_element(:xpath,'//*[@id="store_sum_formula"]').clear
driver.find_element(:xpath,'//*[@id="store_sum_formula"]').send_keys('test2')
sleep 1
driver.find_element(:xpath,'//*[@id="dialog_tab_2"]/a').click
sleep 1

element8 = driver.find_element(:xpath, '//*[@id="store_style"]')
bloodType = '真のとき「通常」'
select = Selenium::WebDriver::Support::Select.new(element8)
select.select_by(:text, bloodType)
sleep 1

element9 = driver.find_element(:xpath, '//*[@id="store_style_target"]')
bloodType = 'レポート(日別)'
select = Selenium::WebDriver::Support::Select.new(element9)
select.select_by(:text, bloodType)
sleep 1

driver.find_element(:xpath,'//*[@id="store_style_condition"]').clear
driver.find_element(:xpath,'//*[@id="store_style_condition"]').send_keys('test3')
sleep 1

driver.find_element(:xpath,'//*[@id="dialog_tab_4"]/a').click
sleep 1

driver.find_element(:xpath,'//*[@id="store_notice_motd"]').click
sleep 1

driver.find_element(:xpath,'//*[@id="store_notice_condition"]').clear
driver.find_element(:xpath,'//*[@id="store_notice_condition"]').send_keys('test4')
sleep 1

element10 = driver.find_element(:xpath, '//*[@id="store_notice_user_store_attr_id"]')
bloodType = 'CVR'
select = Selenium::WebDriver::Support::Select.new(element10)
select.select_by(:text, bloodType)
sleep 1

element11 = driver.find_element(:xpath, '//*[@id="store_notice_period_store_attr_id"]')
bloodType = 'Clicks' 
select = Selenium::WebDriver::Support::Select.new(element11)
select.select_by(:text, bloodType)
sleep 1

driver.find_element(:xpath,'//*[@id="store_notice_subject"]').clear
driver.find_element(:xpath,'//*[@id="store_notice_subject"]').send_keys('test5')
sleep 1

driver.find_element(:xpath,'//*[@id="store_notice_text"]').clear
driver.find_element(:xpath,'//*[@id="store_notice_text"]').send_keys('test6')
sleep 1

driver.find_element(:xpath,'//*[@id="save"]').click
sleep 5

#112 「編集：タイプ属性」を各項目を変更し、キャンセルをクリック
driver.find_element(:xpath, '//*[@id="property_body_list"]/div[2]/table/tbody/tr[1]/td[1]/a/img').click
sleep 2

element1 = driver.find_element(:xpath, '//*[@id="store_value_type"]')
bloodType = 'ユーザ'
select = Selenium::WebDriver::Support::Select.new(element1)
select.select_by(:text, bloodType)
sleep 1

y=driver.find_element(:xpath, '//*[@id="store_display_name"]')
y.clear
y.send_keys(SecureRandom.alphanumeric(3))
sleep 1

element2 = driver.find_element(:xpath, '//*[@id="store_input_method"]')
bloodType = '複数行テキスト'
select = Selenium::WebDriver::Support::Select.new(element2)
select.select_by(:text, bloodType)
sleep 1

element3 = driver.find_element(:xpath, '//*[@id="store_accessibility"]')
bloodType = 'ゲスト'
select = Selenium::WebDriver::Support::Select.new(element3)
select.select_by(:text, bloodType)
sleep 1

driver.find_element(:xpath,'//*[@id="cancel"]').click


#113 「編集：タイプ属性」の削除をクリック ←そもそも削除ボタンがない


#114 "「新規作成：タイプ属性」画面（カラム名）で半角英数字又は"_"を入力し、保存をクリック"
driver.find_element(:link_text,'新規作成').click
sleep 1

driver.find_element(:link_text,'タイプ属性 = ローカルシステム').click
sleep 2

str = SecureRandom.alphanumeric(5)
driver.find_element(:xpath, '//*[@id="store_name"]').send_keys(str + '_')
sleep 3

element1 = driver.find_element(:xpath, '//*[@id="store_value_type"]')
bloodType = '実数'
select = Selenium::WebDriver::Support::Select.new(element1)
select.select_by(:text, bloodType)
sleep 1

driver.find_element(:xpath, '//*[@id="store_display_name"]').send_keys(SecureRandom.alphanumeric(5).delete("^A-Z") + '_')
sleep 1

element2 = driver.find_element(:xpath, '//*[@id="store_input_method"]')
bloodType = 'チェック'
select = Selenium::WebDriver::Support::Select.new(element2)
select.select_by(:text, bloodType)
sleep 1

element3 = driver.find_element(:xpath, '//*[@id="store_accessibility"]')
bloodType = '管理'
select = Selenium::WebDriver::Support::Select.new(element3)
select.select_by(:text, bloodType)
sleep 1

element4 = driver.find_element(:xpath, '//*[@id="store_group"]')
bloodType = '標準レポート'
select = Selenium::WebDriver::Support::Select.new(element4)
select.select_by(:text, bloodType)
sleep 1


driver.find_element(:xpath,'//*[@id="store_view_property"]').click
sleep 1

driver.find_element(:xpath,'//*[@id="store_view_report_aspect_daily"]').click
sleep 1


driver.find_element(:xpath,'//*[@id="save"]').click
sleep 5


#115 「新規作成：タイプ属性」画面（カラム名）で全角文字又は"_"以外の記号を入力し、保存をクリック
driver.find_element(:link_text,'新規作成').click
sleep 2

driver.find_element(:link_text,'タイプ属性 = ローカルシステム').click
sleep 2

driver.find_element(:xpath, '//*[@id="store_name"]').send_keys("ＡＺ")
sleep 1
driver.find_element(:xpath,'//*[@id="save"]').click
sleep 1

driver.switch_to.alert.accept
sleep 3

driver.find_element(:xpath, '//*[@id="store_name"]').clear
driver.find_element(:xpath, '//*[@id="store_name"]').send_keys('#%"')
sleep 1
driver.find_element(:xpath,'//*[@id="save"]').click
sleep 1

driver.switch_to.alert.accept
sleep 3

driver.find_element(:xpath,'//*[@id="cancel"]').click
sleep 1


#116 「新規作成：タイプ属性」画面（カラム名）を未入力で保存をクリック

driver.find_element(:link_text,'新規作成').click
sleep 1

driver.find_element(:link_text,'タイプ属性 = ローカルシステム').click
sleep 2

driver.find_element(:xpath, '//*[@id="store_name"]').send_keys('')
driver.find_element(:xpath,'//*[@id="save"]').click
sleep 2

driver.switch_to.alert.accept
sleep 3

#117 "「新規作成：タイプ属性」画面（カラム名）すでに存在するカラム名を入力し、保存をクリック"

driver.find_element(:xpath, '//*[@id="store_name"]').send_keys('test1')
sleep 1
driver.find_element(:xpath,'//*[@id="save"]').click
sleep 5
driver.switch_to.alert.accept
sleep 2
driver.find_element(:xpath,'//*[@id="cancel"]').click
sleep 1


# 118 「新規作成：タイプ属性」画面（カラム名）
# 119 「新規作成：タイプ属性」(データ型）
# 120 「編集：タイプ属性」(カラム名)
# 121 「編集：タイプ属性」(データ型)
# 122 "「新規作成：タイプ属性」画面（表示名）「編集：タイプ属性」画面（表示名）上記で、全角・半角の漢英数字・記号を入力"
# 123 "「新規作成：タイプ属性」画面（入力方式）「編集：タイプ属性」画面（入力方式）"
# 124 "「新規作成：タイプ属性」画面（表示ビュー）「編集：タイプ属性」画面（表示ビュー）"
# 125 "「新規作成：タイプ属性」画面（表示順位）「編集：タイプ属性」画面（表示順位）"
# 126 "「新規作成：タイプ属性」画面（ シリーズ表示位置）「編集：タイプ属性」画面（シリーズ表示位置 ）"
# 127 "「新規作成：タイプ属性」画面（省略不可→入力必須？）「編集：タイプ属性」画面（省略不可→入力必須？）"
# 128 "「新規作成：タイプ属性」画面（リスト）「編集：タイプ属性」画面（リスト）"
# 129 "「新規作成：タイプ属性」画面（入力チェック→入力規則？）「編集：タイプ属性」画面（入力チェック→入力規則？）"
# 130 「新規作成：タイプ属性」「編集：タイプ属性」画面で計算方式をクリック
# 131 "「新規作成：タイプ属性」画面（計算式）「編集：タイプ属性」画面（計算式）"
# 132 "「新規作成：タイプ属性」画面（集計式 ）「編集：タイプ属性」画面（集計式）"
# 133 "「新規作成：タイプ属性」画面（アラートスタイル ）「編集：タイプ属性」画面（アラートスタイル ）"
# 134 "「新規作成：タイプ属性」画面（アラート表示ビュー）「編集：タイプ属性」画面（アラート表示ビュー）"
# 135 "「新規作成：タイプ属性」画面（アラート条件式）「編集：タイプ属性」画面（アラート条件式）"
# 136 「新規作成：タイプ属性」「編集：タイプ属性」画面で通知設定をクリック
# 137 "「新規作成：タイプ属性」画面（通知手段）「編集：タイプ属性」画面（通知手段）"
# 138 "「新規作成：タイプ属性」画面（通知条件）「編集：タイプ属性」画面（通知条件）"
# 139 "「新規作成：タイプ属性」画面（通知先属性 ）「編集：タイプ属性」画面（通知先属性 ）"
# 140 "「新規作成：タイプ属性」画面（通知期間属性）「編集：タイプ属性」画面（通知期間属性）"
# 141 "「新規作成：タイプ属性」画面（通知タイトル）「編集：タイプ属性」画面（通知タイトル）"
# 142 "「新規作成：タイプ属性」画面（通知テキスト）「編集：タイプ属性」画面（通知テキスト）"

# 118~142は #109,#112,#114と下記で検証済み

driver.find_element(:xpath, '/html/body/div[2]/div[9]/div[2]/div[2]/div[2]/table/tbody/tr[1]/td[1]/a/img').click
sleep 1

driver.find_element(:xpath, '//*[@id="store_name"]').clear
driver.find_element(:xpath, '//*[@id="store_name"]').send_keys(SecureRandom.alphanumeric(5).delete("^A-Z"))
sleep 1

element1 = driver.find_element(:xpath, '//*[@id="store_value_type"]')
bloodType = '日付'
select = Selenium::WebDriver::Support::Select.new(element1)
select.select_by(:text, bloodType)
sleep 1

driver.find_element(:xpath, '//*[@id="store_display_name"]').send_keys(SecureRandom.alphanumeric(5).delete("^A-Z"))
sleep 1

element2 = driver.find_element(:xpath, '//*[@id="store_input_method"]')
bloodType = '内部計算用'
select = Selenium::WebDriver::Support::Select.new(element2)
select.select_by(:text, bloodType)
sleep 1

element3 = driver.find_element(:xpath, '//*[@id="store_accessibility"]')
bloodType = '参照'
select = Selenium::WebDriver::Support::Select.new(element3)
select.select_by(:text, bloodType)
sleep 1

element4 = driver.find_element(:xpath, '//*[@id="store_group"]')
bloodType = '標準レポート'
select = Selenium::WebDriver::Support::Select.new(element4)
select.select_by(:text, bloodType)
sleep 1


driver.find_element(:xpath,'//*[@id="store_view_report_aspect_hours"]').click
sleep 1

driver.find_element(:xpath,'//*[@id="store_view_report_aspect_daily"]').click
sleep 1


element5 = driver.find_element(:xpath, '//*[@id="store_position"]')
bloodType = '15'
select = Selenium::WebDriver::Support::Select.new(element5)
select.select_by(:text, bloodType)
sleep 1

element6 = driver.find_element(:xpath, '//*[@id="store_series_position"]')
bloodType = '最後'
select = Selenium::WebDriver::Support::Select.new(element6)
select.select_by(:text, bloodType)
sleep 1

driver.find_element(:xpath, '//*[@id="store_view_report_aspect_monthly"]').click
sleep 1

driver.find_element(:xpath,'//*[@id="store_required"]').click
sleep 1

element7 = driver.find_element(:xpath, '//*[@id="store_option_list_id"]')
bloodType = '部署'
select = Selenium::WebDriver::Support::Select.new(element7)
select.select_by(:text, bloodType)
sleep 1

driver.find_element(:xpath,'//*[@id="store_validator"]').send_keys('test')
sleep 1

driver.find_element(:xpath,'//*[@id="dialog_tab_1"]/a').click
sleep 1
driver.find_element(:xpath,'//*[@id="store_formula"]').clear
driver.find_element(:xpath,'//*[@id="store_formula"]').send_keys('TEST1')
sleep 1
driver.find_element(:xpath,'//*[@id="store_sum_formula"]').send_keys('TEST2')
sleep 1
driver.find_element(:xpath,'//*[@id="dialog_tab_2"]/a').click
sleep 1

element8 = driver.find_element(:xpath, '//*[@id="store_style"]')
bloodType = '真のとき「警告」'
select = Selenium::WebDriver::Support::Select.new(element8)
select.select_by(:text, bloodType)
sleep 1

element9 = driver.find_element(:xpath, '//*[@id="store_style_target"]')
bloodType = 'レポート(月別)'
select = Selenium::WebDriver::Support::Select.new(element9)
select.select_by(:text, bloodType)
sleep 1

driver.find_element(:xpath,'//*[@id="store_style_condition"]').clear
driver.find_element(:xpath,'//*[@id="store_style_condition"]').send_keys('TEST3')
sleep 1

driver.find_element(:xpath,'//*[@id="dialog_tab_4"]/a').click
sleep 1

driver.find_element(:xpath,'//*[@id="store_notice_motd"]').click
sleep 1

driver.find_element(:xpath,'//*[@id="store_notice_condition"]').clear
driver.find_element(:xpath,'//*[@id="store_notice_condition"]').send_keys('TEST4')
sleep 1

element10 = driver.find_element(:xpath, '//*[@id="store_notice_user_store_attr_id"]')
bloodType = 'Impressions' 
select = Selenium::WebDriver::Support::Select.new(element10)
select.select_by(:text, bloodType)
sleep 1

element11 = driver.find_element(:xpath, '//*[@id="store_notice_period_store_attr_id"]')
bloodType = 'CTR' 
select = Selenium::WebDriver::Support::Select.new(element11)
select.select_by(:text, bloodType)
sleep 1

driver.find_element(:xpath,'//*[@id="store_notice_subject"]').clear
driver.find_element(:xpath,'//*[@id="store_notice_subject"]').send_keys('TEST5')
sleep 1

driver.find_element(:xpath,'//*[@id="store_notice_text"]').clear
driver.find_element(:xpath,'//*[@id="store_notice_text"]').send_keys('TEST6')
sleep 1

driver.find_element(:xpath,'//*[@id="save"]').click
sleep 5

  driver.quit
 
end


