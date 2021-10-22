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


  # 177 「新規作成 : カスタムメディア | マスタアカウント」をクリック
  driver.find_element(:link_text, 'メディア管理').click
  sleep 2
  driver.find_element(:xpath, '//*[@id="property_head"]/ul/li[2]').click
  sleep 2
  driver.find_element(:link_text,'新規作成').click

  sleep 2
  driver.find_element(:link_text,'マスタアカウント = カスタムメディア').click
  sleep 3

  #178 「新規作成：マスタアカウント」画面の各項目を入力し、保存をクリック
  driver.find_element(:xpath, '//*[@id="store_name"]').send_keys('test')
  sleep 1
  driver.find_element(:xpath, '//*[@id="nodes-form_core-xmedia-master_accounts-report_filter"]').send_keys('test')
  sleep 1
  driver.find_element(:xpath, '//*[@id="nodes-form_core-xmedia-master_accounts-extra2"]').send_keys('test')
  sleep 1
  driver.find_element(:xpath, '//*[@id="dialog_tab_1"]/a').click
  sleep 1
  driver.find_element(:xpath, '//*[@id="store_token"]').send_keys('test')
  sleep 1
  driver.find_element(:xpath, '//*[@id="save"]').click
  sleep 6


  #179 「新規作成：マスタアカウント」画面の各項目を入力し、キャンセルをクリック
  driver.find_element(:link_text,'新規作成').click
  sleep 2
  driver.find_element(:link_text,'マスタアカウント = カスタムメディア').click
  sleep 3
  driver.find_element(:xpath, '//*[@id="store_name"]').send_keys('test2')
  sleep 1
  driver.find_element(:xpath, '//*[@id="nodes-form_core-xmedia-master_accounts-report_filter"]').send_keys('test2')
  sleep 1
  driver.find_element(:xpath, '//*[@id="nodes-form_core-xmedia-master_accounts-extra2"]').send_keys('test2')
  sleep 1
  driver.find_element(:xpath, '//*[@id="cancel"]').click
  sleep 2

  #180 カスタムメディア横の鉛筆をクリック
  driver.find_element(:xpath, '//*[@id="property_body_list"]/div[2]/table/tbody/tr[41]/td[1]/a/img').click
  sleep 3

  #181 「編集：マスタアカウント」画面の各項目を変更し、保存をクリック
  driver.find_element(:xpath, '//*[@id="store_name"]').clear
  driver.find_element(:xpath, '//*[@id="store_name"]').send_keys('edited')
  sleep 1
  driver.find_element(:xpath, '//*[@id="nodes-form_core-xmedia-master_accounts-report_filter"]').clear
  driver.find_element(:xpath, '//*[@id="nodes-form_core-xmedia-master_accounts-report_filter"]').send_keys('edited')
  sleep 1
  driver.find_element(:xpath, '//*[@id="nodes-form_core-xmedia-master_accounts-extra2"]').send_keys('edited')
  driver.find_element(:xpath, '//*[@id="save"]').click
  sleep 2

  #182 「編集：マスタアカウント」画面の各項目を変更し、キャンセルをクリック
  driver.find_element(:xpath, '//*[@id="property_body_list"]/div[2]/table/tbody/tr[41]/td[1]/a/img').click
  sleep 2
  driver.find_element(:xpath, '//*[@id="store_name"]').send_keys('edited2')
  sleep 1
  driver.find_element(:xpath, '//*[@id="nodes-form_core-xmedia-master_accounts-report_filter"]').send_keys('edited2')
  sleep 1
  driver.find_element(:xpath, '//*[@id="nodes-form_core-xmedia-master_accounts-extra2"]').send_keys('edited2')
  sleep 1
  driver.find_element(:xpath, '//*[@id="cancel"]').click
  sleep 2

  # 183 「編集：マスタアカウント」画面の削除をクリック
  driver.find_element(:xpath, '//*[@id="property_body_list"]/div[2]/table/tbody/tr[41]/td[1]/a/img').click
  sleep 2
  driver.find_element(:xpath, '//*[@id="store_submit"]').click
  sleep 1
  driver.switch_to.alert.accept
  sleep 5

  # 184「新規作成 : カスタムツール | マスタアカウント」をクリック
  driver.find_element(:link_text,'新規作成').click
  sleep 2
  driver.find_element(:link_text,'マスタアカウント = カスタムツール').click
  sleep 3
  #185「新規作成：マスタアカウント」画面の各項目を入力し、保存をクリック
  driver.find_element(:xpath, '//*[@id="store_name"]').send_keys('test')
  sleep 1
  driver.find_element(:xpath, '//*[@id="nodes-form_core-xtool-master_accounts-extra2"]').send_keys('test')
  sleep 1
  driver.find_element(:xpath, '//*[@id="dialog_tab_1"]/a').click
  sleep 1
  driver.find_element(:xpath, '//*[@id="store_token"]').send_keys('test')
  sleep 1
  driver.find_element(:xpath, '//*[@id="save"]').click
  sleep 5

  #186「新規作成：マスタアカウント」画面の各項目を入力し、キャンセルをクリック
  driver.find_element(:link_text,'新規作成').click
  sleep 2
  driver.find_element(:link_text,'マスタアカウント = カスタムツール').click
  sleep 3
  driver.find_element(:xpath, '//*[@id="store_name"]').send_keys('test2')
  sleep 1
  driver.find_element(:xpath, '//*[@id="nodes-form_core-xtool-master_accounts-extra2"]').send_keys('test2')
  sleep 1
  driver.find_element(:xpath, '//*[@id="dialog_tab_1"]/a').click
  sleep 1
  driver.find_element(:xpath, '//*[@id="store_token"]').send_keys('test2')
  sleep 1
  driver.find_element(:xpath, '//*[@id="cancel"]').click
  sleep 1

  #187 カスタムツール横の鉛筆をクリック
  driver.find_element(:xpath, '//*[@id="property_body_list"]/div[2]/table/tbody/tr[42]/td[1]/a/img').click
  sleep 2

  #188 「編集：マスタアカウント」画面の各項目を変更し、保存をクリック
  driver.find_element(:xpath, '//*[@id="store_name"]').clear
  driver.find_element(:xpath, '//*[@id="store_name"]').send_keys('edited')
  sleep 1
  driver.find_element(:xpath, '//*[@id="nodes-form_core-xtool-master_accounts-extra2"]').clear
  driver.find_element(:xpath, '//*[@id="nodes-form_core-xtool-master_accounts-extra2"]').send_keys('edited')
  driver.find_element(:xpath, '//*[@id="dialog_tab_1"]/a').click
  sleep 1
  driver.find_element(:xpath, '//*[@id="store_token"]').clear
  driver.find_element(:xpath, '//*[@id="store_token"]').send_keys('edited')
  sleep 1
  driver.find_element(:xpath, '//*[@id="save"]').click
  sleep 5

  #189「編集：マスタアカウント」画面の各項目を変更し、キャンセルをクリック
  driver.find_element(:xpath, '//*[@id="property_body_list"]/div[2]/table/tbody/tr[42]/td[1]/a/img').click
  sleep 3

  driver.find_element(:xpath, '//*[@id="store_name"]').clear
  driver.find_element(:xpath, '//*[@id="store_name"]').send_keys('edited2')
  sleep 1

  driver.find_element(:xpath, '//*[@id="nodes-form_core-xtool-master_accounts-extra2"]').clear
  driver.find_element(:xpath, '//*[@id="nodes-form_core-xtool-master_accounts-extra2"]').send_keys('edited2')
  sleep 1

  driver.find_element(:xpath, '//*[@id="dialog_tab_1"]/a').click
  driver.find_element(:xpath, '//*[@id="store_token"]').clear
  driver.find_element(:xpath, '//*[@id="store_token"]').send_keys('edited2')
  sleep 2
  driver.find_element(:xpath, '//*[@id="cancel"]').click
  sleep 2

  #190「編集：マスタアカウント」画面の削除をクリック
  driver.find_element(:xpath, '//*[@id="property_body_list"]/div[2]/table/tbody/tr[42]/td[1]/a/img').click
  sleep 2
  driver.find_element(:xpath, '//*[@id="store_submit"]').click
  sleep 2
  driver.switch_to.alert.accept
  sleep 5


  #191~197は飛ばす

  # #191 Googleのマスタアカウントの「新規作成 : Google アドワーズ | アカウント」をクリック
  # driver.find_element(:link_text,'新規作成').click
  # sleep 2
  # driver.find_element(:link_text, 'マスタアカウント = Google 広告').click
  # sleep 3
  # #192 「新規作成 : Google アドワーズ | アカウント」画面の各項目を入力し、保存をクリック
  # driver.find_element(:xpath, '//*[@id="store_name"]').send_keys('test1')
  # sleep 1
  # driver.find_element(:xpath, '//*[@id="store_token"]').send_keys('9bAVYDl_-xI1i  k7VuL88g')
  # sleep 1
  # driver.find_element(:xpath, '//*[@id="store_user"]').send_keys('387390402727-g25cd0iierrpec0gos5k966ld62j3jf6.apps.googleusercontent.com')
  # driver.find_element(:xpath, '//*[@id="store_pass"]').send_keys('AdnccfJYyftUF0aEceMVzzv1')
  # sleep 1
  # driver.find_element(:xpath, '//*[@id="store_auth_token"]').send_keys('1/DDCOe7p4C05f8iKNFFLkGzN3VDQ-Ghu5czLZE7NyxU4')
  # sleep 1
  # driver.find_element(:xpath, '//*[@id ="save"]').click
  # sleep 15

  # #193 「新規作成 : Google アドワーズ | アカウント」画面の各項目を入力し、キャンセルをクリック
  # driver.find_element(:link_text,'新規作成').click
  # driver.find_element(:link_text, 'マスタアカウント = Google 広告').click
  # sleep 3

  # driver.find_element(:xpath, '//*[@id="store_name"]').send_keys('test2')
  # sleep 1
  # driver.find_element(:xpath, '//*[@id="store_token"]').send_keys('9bAVYDl_-xI1igk7VuL88g')
  # sleep 1
  # driver.find_element(:xpath, '//*[@id="store_user"]').send_keys('387390402727-g25cd0iierrpec0gos5k966ld62j3jf6.apps.googleusercontent.com')
  # sleep 1
  # driver.find_element(:xpath, '//*[@id="store_pass"]').send_keys('AdnccfJYyftUF0aEceMVzzv1')
  # sleep 1
  # driver.find_element(:xpath, '//*[@id="store_auth_token"]').send_keys('1/DDCOe7p4C05f8iKNFFLkGzN3VDQ-Ghu5czLZE7NyxU4')
  # sleep 1

  # driver.find_element(:xpath, '//*[@id ="cancel"]').click
  # sleep 2

  # #194 アカウント横の鉛筆をクリック

  # driver.find_element(:xpath,'').click
  # sleep 2


  # #195 「編集 : Google アドワーズ | アカウント」画面の各項目を変更し、保存をクリック
  # ddriver.find_element(:xpath, '//*[@id="store_name"]').send_keys('edit1')
  # sleep 1
  # driver.find_element(:xpath, '//*[@id="store_user"]').clear
  # driver.find_element(:xpath, '//*[@id="store_user"]').send_keys('387390402727-g25cd0iierrpec0gos5k966ld62j3jf6.apps.googleusercontent.com')
  # sleep 1
  # driver.find_element(:xpath, '//*[@id="store_token"]').clear
  # driver.find_element(:xpath, '//*[@id="store_token"]').send_keys('9bAVYDl_-xI1igk7VuL88g')
  # sleep 1
  # driver.find_element(:xpath, '//*[@id="store_pass"]').clear
  # driver.find_element(:xpath, '//*[@id="store_pass"]').send_keys('AdnccfJYyftUF0aEceMVzzv1')
  # sleep 1
  # driver.find_element(:xpath, '//*[@id="store_auth_token"]').clear
  # driver.find_element(:xpath, '//*[@id="store_auth_token"]').send_keys('1/DDCOe7p4C05f8iKNFFLkGzN3VDQ-Ghu5czLZE7NyxU4')
  # sleep 1
  # driver.find_element(:xpath, '//*[@id ="save"]').click
  # sleep 5

  # #196 「編集 : Google アドワーズ | アカウント」画面の各項目を変更し、キャンセルをクリック
  # driver.find_element(:xpath,'').click
  # sleep 2

  # driver.find_element(:xpath, '//*[@id="store_name"]').send_keys('edit2')
  # driver.find_element(:xpath, '//*[@id="store_user"]').clear
  # driver.find_element(:xpath, '//*[@id="store_user"]').send_keys('387390402727-g25cd0iierrpec0gos5k966ld62j3jf6.apps.googleusercontent.com')
  # driver.find_element(:xpath, '//*[@id="store_token"]').clear
  # driver.find_element(:xpath, '//*[@id="store_token"]').send_keys('9bAVYDl_-xI1igk7VuL88g')
  # driver.find_element(:xpath, '//*[@id="store_pass"]').clear
  # driver.find_element(:xpath, '//*[@id="store_pass"]').send_keys('AdnccfJYyftUF0aEceMVzzv1')
  # driver.find_element(:xpath, '//*[@id="store_auth_token"]').clear
  # driver.find_element(:xpath, '//*[@id="store_auth_token"]').send_keys('1/DDCOe7p4C05f8iKNFFLkGzN3VDQ-Ghu5czLZE7NyxU4')
  # sleep 1
  # driver.find_element(:xpath, '//*[@id ="cancel"]').click
  # sleep 5

  # #197 「編集 : Google アドワーズ | アカウント」画面の削除をクリック
  # driver.find_element(:xpath,'').click
  # sleep 2

  # driver.find_element(:xpath,'//*[@id="store_submit"]').click
  # sleep 2

  # driver.switch_to.alert.accept 
  # sleep 3

  # #198  "Yahoo!（V3）のマスタアカウントの「新規作成  Yahoo! スポンサードサーチ(v3) | アカウント」をクリック"
  # driver.find_element(:link_text,'新規作成').click
  # sleep 2
  # driver.find_element(:link_text, 'マスタアカウント = Yahoo!広告 検索広告').click
  # sleep 2

  # #199 「新規作成 : Yahoo! スポンサードサーチ(v3) | アカウント」画面の各項目を入力し、保存をクリック
  # driver.find_element(:xpath, '//*[@id="store_name"]').send_keys('test1')
  # driver.find_element(:xpath, '//*[@id="store_user"]').send_keys('a425d41eb5d2da76a284c933f859b20c7bf1ef04346678803cf9866112064450')
  # driver.find_element(:xpath, '//*[@id="store_pass"]').send_keys('7b68411da3f72df5420479d0f480d2b9e7a933ef0b81b95bb0827130869cc51f')
  # driver.find_element(:xpath, '//*[@id="store_flag_authorize_each"]').click
  # driver.find_element(:xpath, '//*[@id ="save"]').click
  # sleep 5


  # #200 「新規作成 : Yahoo! スポンサードサーチ(v3) | アカウント」画面の各項目を入力し、キャンセルをクリック
  # driver.find_element(:link_text,'新規作成').click
  # sleep 2
  # driver.find_element(:link_text, 'マスタアカウント = Yahoo!広告 検索広告').click
  # sleep 2

  # driver.find_element(:xpath, '//*[@id="store_name"]').send_keys('test2')
  # driver.find_element(:xpath, '//*[@id="store_user"]').send_keys('a425d41eb5d2da76a284c933f859b20c7bf1ef04346678803cf9866112064450')
  # driver.find_element(:xpath, '//*[@id="store_pass"]').send_keys('7b68411da3f72df5420479d0f480d2b9e7a933ef0b81b95bb0827130869cc51f')
  # driver.find_element(:xpath, '//*[@id="store_flag_authorize_each"]').click
  # driver.find_element(:xpath, '//*[@id ="cancel"]').click
  # sleep 5

  # #201 アカウント横の鉛筆をクリック
  # driver.find_element(:xpath,'').click
  # sleep 2

  # #202 「編集 : Yahoo! スポンサードサーチ(v3) | アカウント」画面の各項目を変更し、保存をクリック
  # driver.find_element(:xpath, '//*[@id="store_name"]').clear
  # driver.find_element(:xpath, '//*[@id="store_name"]').send_keys('edit1')
  # driver.find_element(:xpath, '//*[@id="store_user"]').clear
  # driver.find_element(:xpath, '//*[@id="store_user"]').send_keys('a425d41eb5d2da76a284c933f859b20c7bf1ef04346678803cf9866112064450')
  # driver.find_element(:xpath, '//*[@id="store_pass"]').clear
  # driver.find_element(:xpath, '//*[@id="store_pass"]').send_keys('7b68411da3f72df5420479d0f480d2b9e7a933ef0b81b95bb0827130869cc51f')

  # driver.find_element(:xpath, '//*[@id ="save"]').click
  # sleep 5

  # #203 「編集 : Yahoo! スポンサードサーチ(v3) | アカウント」画面の各項目を変更し、キャンセルをクリック
  # driver.find_element(:xpath,'').click
  # sleep 2

  # driver.find_element(:xpath, '//*[@id="store_name"]').clear
  # driver.find_element(:xpath, '//*[@id="store_name"]').send_keys('edit2')
  # driver.find_element(:xpath, '//*[@id="store_user"]').clear
  # driver.find_element(:xpath, '//*[@id="store_user"]').send_keys('a425d41eb5d2da76a284c933f859b20c7bf1ef04346678803cf9866112064450')
  # driver.find_element(:xpath, '//*[@id="store_pass"]').clear
  # driver.find_element(:xpath, '//*[@id="store_pass"]').send_keys('7b68411da3f72df5420479d0f480d2b9e7a933ef0b81b95bb0827130869cc51f')

  # driver.find_element(:xpath, '//*[@id ="cancel"]').click
  # sleep 5

  # #204 「編集 : Yahoo! スポンサードサーチ(v3) | アカウント」画面の削除をクリック
  # driver.find_element(:xpath,'').click
  # sleep 2

  # driver.find_element(:xpath,'//*[@id="store_submit"]').click
  # sleep 2

  # driver.switch_to.alert.accept 
  # sleep 3

  #205 "Yahoo!（v2）のマスタアカウントの「新規作成  Yahoo! スポンサードサーチ(v2) | アカウント」をクリック"
  #206 「新規作成 : Yahoo! スポンサードサーチ(v2) | アカウント」画面の各項目を入力し、保存をクリック
  #207 「新規作成 : Yahoo! スポンサードサーチ(v2) | アカウント」画面の各項目を入力し、キャンセルをクリック
  #208 アカウント横の鉛筆をクリック
  #219 「編集 : Yahoo! スポンサードサーチ(v2) | アカウント」画面の各項目を変更し、保存をクリック
  #210 「編集 : Yahoo! スポンサードサーチ(v2) | アカウント」画面の各項目を変更し、キャンセルをクリック
  #211 「編集 : Yahoo! スポンサードサーチ(v2) | アカウント」画面の削除をクリック
  #205~211 はSS(v2)がないため、省略


  #212~234は別途手動で確認
  #212 新規作成：ファイル又は編集：ファイルの画面で、自動設定を行い、実行日を迎える
  #213 新規作成：ファイル又は編集：ファイルの画面で、自動設定を行い、実行日を迎える
  #214 "ダイスの属性にメールアドレス(プロパティ属性)を追加、ダイスのプロパティにメールアドレスを入力し、レポートの自動作成を行う"


  driver.quit

end

