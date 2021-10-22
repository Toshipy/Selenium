require "selenium-webdriver"
require 'securerandom'

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

driver.find_element(:xpath,'//*[@id="property_head"]/ul/li[3]').click
sleep 2

#51 スケジュールの表示
driver.find_element(:xpath, '/html/body/div[2]/div[8]/ul/li/ul/li[3]/a[1]/img').click
sleep 4
driver.find_element(:link_text, 'ATARA-MCC').click
sleep 2
driver.find_element(:xpath, '/html/body/div[2]/div[9]/div[1]/ul/li[4]').click
sleep 4

#52「削除：過去の実行予約」クリック
driver.find_element(:link_text,'一括削除').click
sleep 2
driver.find_element(:link_text,'過去のスケジュール').click
sleep 2
driver.switch_to.alert.accept
sleep 2

#53「削除：全ての実行予約」クリック
driver.find_element(:link_text,'一括削除').click
sleep 2
driver.find_element(:link_text,'全てのスケジュール').click
sleep 2
driver.switch_to.alert.accept
sleep 2

# #54「新規作成：レポートの取得」をクリック
driver.find_element(:link_text,'新規作成').click
sleep 2
driver.find_element(:link_text,'媒体レポート取得').click
sleep 2

#55 「新規作成：実行予約」画面（実行予定日時）
driver.find_element(:xpath,'//*[@id="job_template_year"]').send_keys('2020')
sleep 1
driver.find_element(:xpath,'//*[@id="job_template_month"]').send_keys('1')
sleep 1
driver.find_element(:xpath,'//*[@id="job_template_day"]').send_keys('1')
sleep 1
driver.find_element(:xpath,'//*[@id="job_template_wday"]').send_keys('月')
sleep 1
driver.find_element(:xpath,'//*[@id="job_template_hour"]').send_keys('1')
sleep 1
driver.find_element(:xpath,'//*[@id="job_template_minute"]').send_keys('1')
sleep 1

#56 「新規作成：実行予約」画面（レポート種別）
driver.find_element(:xpath,'//*[@id="job_template_report_type"]').send_keys('広告別')
sleep 1
#57「新規作成：実行予約」画面（集約方式）
driver.find_element(:xpath,'//*[@id="job_template_report_summary"]').send_keys('月別')
sleep 1
#58 「新規作成：実行予約」画面（期間）
driver.find_element(:xpath,'//*[@id="_null_attr"]').send_keys('1日前')
sleep 1
#59 「新規作成：レポートの取得」の各項目を入力し、保存する
driver.find_element(:xpath,'//*[@id="save"]').click
sleep 2

# #60 「新規作成：レポートの取得」の各項目を入力し、キャンセルする
# driver.find_element(:link_text,'新規作成').click
# sleep 1
# driver.find_element(:link_text,'媒体レポート取得').click
# sleep 1
# driver.find_element(:xpath,'//*[@id="cancel"]').click
# sleep 2

#61 スケジュール横の鉛筆をクリック
driver.find_element(:xpath,'/html/body/div[2]/div[9]/div[2]/div[2]/div[2]/table/tbody/tr[2]/td[1]/a/img').click
sleep 2

#62 「編集：レポートの取得」の各項目を入力し、保存する
driver.find_element(:xpath,'//*[@id="job_template_year"]').send_keys('2019')
driver.find_element(:xpath,'//*[@id="job_template_month"]').send_keys('3')
driver.find_element(:xpath,'//*[@id="job_template_day"]').send_keys('3')
driver.find_element(:xpath,'//*[@id="job_template_wday"]').send_keys('水')
driver.find_element(:xpath,'//*[@id="job_template_hour"]').send_keys('3')
driver.find_element(:xpath,'//*[@id="job_template_minute"]').send_keys('3')
sleep 2

driver.find_element(:xpath,'//*[@id="job_template_report_type"]').send_keys('キャンペーンアクション別')

driver.find_element(:xpath,'//*[@id="job_template_report_summary"]').send_keys('日別')

driver.find_element(:xpath,'//*[@id="_null_attr"]').send_keys('3日前')

driver.find_element(:xpath,'//*[@id="save"]').click
sleep 3

#63 「編集：レポートの取得」の各項目を入力し、キャンセルする
driver.find_element(:xpath,'//*[@id="property_body_list"]/div[2]/table/tbody/tr[2]/td[1]/a/img').click
sleep 2
driver.find_element(:xpath,'//*[@id="job_template_year"]').send_keys('2018')
driver.find_element(:xpath,'//*[@id="job_template_month"]').send_keys('4')
driver.find_element(:xpath,'//*[@id="job_template_day"]').send_keys('4')
driver.find_element(:xpath,'//*[@id="job_template_wday"]').send_keys('木')
driver.find_element(:xpath,'//*[@id="job_template_hour"]').send_keys('4')
driver.find_element(:xpath,'//*[@id="job_template_minute"]').send_keys('4')
sleep 2

driver.find_element(:xpath,'//*[@id="job_template_report_type"]').send_keys('キーワード別')

driver.find_element(:xpath,'//*[@id="job_template_report_summary"]').send_keys('月別')

driver.find_element(:xpath,'//*[@id="_null_attr"]').send_keys('4日前')

driver.find_element(:xpath,'//*[@id="cancel"]').click
sleep 2
#64 「編集：レポートの取得」の削除をクリック
driver.find_element(:xpath,'//*[@id="property_body_list"]/div[2]/table/tbody/tr[2]/td[1]/a/img').click
sleep 2
driver.find_element(:xpath, '//*[@id="job_template_submit"]').click
sleep 3
#65 「全実行結果」を押す

driver.find_element(:link_text, '全実行結果').click
sleep 3

#66 スケジュールの実行
driver.find_element(:xpath, '/html/body/div[2]/div[9]/div[2]/div[2]/div[2]/table/tbody/tr[1]/td[1]/a[2]/img').click
driver.switch_to.alert.accept
sleep 3

#67 「再表示」をクリック
driver.find_element(:xpath,'//*[@id="schedules-_detail_core_control-submit"]').click
sleep 5

#68 全実行結果画面で実行中のスケジュール横の鉛筆ボタンをクリック
driver.find_element(:xpath, '/html/body/div[2]/div[9]/div[2]/div[2]/div[2]/table/tbody/tr[1]/td[1]/a[1]/img').click
sleep 2
driver.find_element(:xpath,'//*[@id="job_submit"]').click
sleep 3

#69 「全実行結果」を押す
#70 「実行予約日時」
#71 「結果」
#72 「再表示」をクリック
#73 「再実行：OK」
#74 「再実行：キャンセル」
#75 「一覧へ戻る」をクリック
#76 項目のプロパティ表示

#69~76 は省略

#77 レポートの表示
driver.find_element(:xpath,'/html/body/div[2]/div[9]/div[1]/ul/li[3]').click
sleep 5

driver.find_element(:xpath,'//*[@id="period_between"]').send_keys('先月')
sleep 2

driver.find_element(:xpath,'//*[@id="reports-list_core-control-submit"]').click
sleep 10

#78 レポートの内容
driver.find_element(:xpath,'/html/body/div[2]/div[8]/ul/li/ul/li[3]/ul/li[1]/a[1]/img').click
sleep 2

#79 各種条件を変更し、「再表示」をクリック
driver.find_element(:link_text,'条件詳細を開く').click
sleep 2

e1 = driver.find_element(:xpath, '//*[@id="reports-list_core-control_dimension-aspect"]')
bloodType = 'アカウント別'
select = Selenium::WebDriver::Support::Select.new(e1)
select.select_by(:text, bloodType)
sleep 1

e2 = driver.find_element(:xpath, '//*[@id="series"]')
bloodType = '月別'
select = Selenium::WebDriver::Support::Select.new(e2)
select.select_by(:text, bloodType)
sleep 1

e3 = driver.find_element(:xpath, '//*[@id="segment"]')
bloodType = 'デバイス別'
select = Selenium::WebDriver::Support::Select.new(e3)
select.select_by(:text, bloodType)
sleep 1

driver.find_element(:xpath,'//*[@id="reports-list_core-control-submit"]').click
sleep 10

#80 開始日時より前の日付に終了日時に設定し、「再表示」をクリック
driver.find_element(:xpath,'//*[@id="period_between"]').send_keys('カスタム')
sleep 1
driver.find_element(:xpath,'//*[@id="start_at"]').clear
sleep 1
driver.find_element(:xpath,'//*[@id="start_at"]').send_keys('2021-09-08')
sleep 1
driver.find_element(:xpath,'//*[@id="end_at"]').clear
sleep 1
driver.find_element(:xpath,'//*[@id="end_at"]').send_keys('2021-09-01')
sleep 1
driver.find_element(:xpath,'//*[@id="reports-list_core-control-submit"]').click
sleep 10

#81 「視点」
driver.find_element(:xpath,'//*[@id="reports-list_core-control_dimension-aspect"]').click
sleep 2
#82 「系列」
driver.find_element(:xpath,'//*[@id="series"]').click
sleep 2
#83 「期間」
driver.find_element(:xpath,'//*[@id="period_between"]').click
sleep 2
#84 「条件１」
driver.find_element(:xpath,'//*[@id="ui_post_filter_customs_0_name"]').send_keys('コスト')
driver.find_element(:xpath,'//*[@id="ui_post_filter_customs_0_mode"]').send_keys('=')
driver.find_element(:xpath,'//*[@id="ui_post_filter_customs_0_value"]').send_keys('1')


#85 「条件２」
driver.find_element(:xpath,'//*[@id="ui_post_filter_customs_1_name"]').send_keys('CTR')
driver.find_element(:xpath,'//*[@id="ui_post_filter_customs_1_mode"]').send_keys('<')
driver.find_element(:xpath,'//*[@id="ui_post_filter_customs_1_value"]').send_keys('2')

#86 「集計行」
driver.find_element(:xpath,'//*[@id="show_sum"]').send_keys('最初')
#87 「繰返列」
driver.find_element(:xpath,'//*[@id="attr_select"]').send_keys('全て')
#88 「グラフ列1」
driver.find_element(:xpath,'//*[@id="graph_column1"]').send_keys('CTR')
#89 「グラフ列2」
driver.find_element(:xpath,'//*[@id="graph_column2"]').send_keys('CPC')

#90 CSVダウンロード
driver.find_element(:link_text,'エクスポート').click
sleep 1
driver.find_element(:link_text,'Excel用CSV').click
sleep 5

#91~94 は別途チェック
driver.quit

end