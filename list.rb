require "selenium-webdriver"
require 'securerandom'

class Login

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

    driver.find_element(:xpath, '/html/body/div[2]/div[8]/ul/li/ul/li[1]/a[1]/img').click
    sleep 1

    #143 「新規作成：リスト」をクリック
    driver.find_element(:link_text, 'リスト管理').click
    sleep 1

    driver.find_element(:xpath, '//*[@id="property_head"]/ul/li[2]').click
    sleep 1

    driver.find_element(:link_text,'新規作成').click
    sleep 2

    driver.find_element(:link_text,'リスト = ローカルシステム').click
    sleep 2

    #144  「新規作成：リスト」画面(リスト名)

    driver.find_element(:xpath, '//*[@id="store_name"]').send_keys('test1')
    sleep 2

    #145  「新規作成：リスト」画面(備考)
    driver.find_element(:xpath, '//*[@id="store_description"]').send_keys('test2')
    sleep 2

    #146  「新規作成：リスト」画面の各項目を入力し保存
    driver.find_element(:xpath, '//*[@id="save"]').click
    sleep 2


    #147 「新規作成：リスト」画面の各項目を入力しキャンセル

    driver.find_element(:link_text,'新規作成').click
    sleep 1

    driver.find_element(:link_text,'リスト = ローカルシステム').click
    sleep 2

    driver.find_element(:xpath, '//*[@id="store_name"]').send_keys('test3')
    sleep 2

    driver.find_element(:xpath, '//*[@id="store_description"]').send_keys('test4')
    sleep 2

    driver.find_element(:xpath, '//*[@id="cancel"]').click
    sleep 2


    #148  リスト横の鉛筆をクリック
    driver.find_element(:xpath, '//*[@id="property_body_list"]/div[2]/table/tbody/tr[1]/td[1]/a/img
    ').click
    sleep 2


    #149 「編集：リスト」画面(リスト名)


    #150 「編集：リスト」画面(備考)
    driver.find_element(:xpath, '//*[@id="store_description"]').clear
    driver.find_element(:xpath, '//*[@id="store_description"]').send_keys('edit2')
    sleep 6


    #151 「編集：リスト」画面で各項目を変更し、保存する

    driver.find_element(:xpath, '//*[@id="save"]').click
    sleep 2

    #152 「編集：リスト」画面で各項目を変更し、キャンセルする

    driver.find_element(:xpath, '//*[@id="property_body_list"]/div[2]/table/tbody/tr[1]/td[1]/a/img
    ').click
    sleep 2

    driver.find_element(:xpath, '//*[@id="store_description"]').clear
    driver.find_element(:xpath, '//*[@id="store_description"]').send_keys('edit3')
    sleep 2


    driver.find_element(:xpath, '//*[@id="cancel"]').click
    sleep 2


    #153 「編集：リスト」画面で削除をクリック
    driver.find_element(:xpath, '//*[@id="property_body_list"]/div[2]/table/tbody/tr[1]/td[1]/a/img
    ').click
    sleep 2

    driver.find_element(:xpath, '//*[@id="store_submit"]').click
    sleep 2

    driver.switch_to.alert.accept
    sleep 3

    #154 リストのアイテム一覧の「新規作成：リスト項目」をクリック
    
    driver.find_element(:link_text,'新規作成').click
    sleep 2
    driver.find_element(:link_text,'リスト = ローカルシステム').click
    sleep 2
    driver.find_element(:xpath, '//*[@id="store_name"]').send_keys('test1')
    sleep 2
    driver.find_element(:xpath, '//*[@id="store_description"]').send_keys('test2')
    sleep 2
    driver.find_element(:xpath, '//*[@id="save"]').click
    sleep 5


    driver.find_element(:link_text, 'test1').click
    sleep 1
    
    driver.find_element(:link_text,'新規作成').click
    sleep 2

    driver.find_element(:link_text,'リスト項目 = ローカルシステム').click
    sleep 2


    #155 「新規作成：リスト項目」の各項目を入力し保存
    driver.find_element(:xpath, '//*[@id="store_name"]').send_keys('test1')
    sleep 2

    driver.find_element(:xpath, '//*[@id="store_display_name"]').send_keys('test2')
    sleep 2

    driver.find_element(:xpath, '//*[@id="store_description"]').send_keys('test3')
    sleep 2

    driver.find_element(:xpath, '//*[@id="save"]').click
    sleep 4


    #156 「新規作成：リスト項目」の各項目を入力しキャンセル
    driver.find_element(:link_text,'新規作成').click
    sleep 1

    driver.find_element(:link_text,'リスト項目 = ローカルシステム').click
    sleep 2

    driver.find_element(:xpath, '//*[@id="store_name"]').send_keys('test4')
    sleep 2

    driver.find_element(:xpath, '//*[@id="store_display_name"]').send_keys('test5')
    sleep 2

    driver.find_element(:xpath, '//*[@id="store_description"]').send_keys('test6')
    sleep 2

    driver.find_element(:xpath, '//*[@id="cancel"]').click
    sleep 2


    #157 リスト項目横の鉛筆をクリック
    driver.find_element(:xpath, '//*[@id="property_body_list"]/div[2]/table/tbody/tr/td[1]/a/img').click
    sleep 1


    #158 「編集：リスト項目」画面で各項目を変更し、保存する
    driver.find_element(:xpath, '//*[@id="store_name"]').clear
    driver.find_element(:xpath, '//*[@id="store_name"]').send_keys('edit1')
    sleep 2

    driver.find_element(:xpath, '//*[@id="store_display_name"]').clear
    driver.find_element(:xpath, '//*[@id="store_display_name"]').send_keys('edit2')
    sleep 2

    driver.find_element(:xpath, '//*[@id="store_description"]').clear
    driver.find_element(:xpath, '//*[@id="store_description"]').send_keys('edit3')
    sleep 2

    driver.find_element(:xpath, '//*[@id="save"]').click
    sleep 2

    #159「編集：リスト項目」画面で各項目を変更し、キャンセルする
    driver.find_element(:xpath, '//*[@id="property_body_list"]/div[2]/table/tbody/tr/td[1]/a/img').click
    sleep 1

    driver.find_element(:xpath, '//*[@id="store_name"]').clear
    driver.find_element(:xpath, '//*[@id="store_name"]').send_keys('edit4')
    sleep 2

    driver.find_element(:xpath, '//*[@id="store_display_name"]').clear
    driver.find_element(:xpath, '//*[@id="store_display_name"]').send_keys('edit5')
    sleep 2

    driver.find_element(:xpath, '//*[@id="store_description"]').clear
    driver.find_element(:xpath, '//*[@id="store_description"]').send_keys('edit6')
    sleep 2

    driver.find_element(:xpath, '//*[@id="cancel"]').click
    sleep 2

    #160 「編集：リスト項目」画面で削除をクリック
    driver.find_element(:xpath, '//*[@id="property_body_list"]/div[2]/table/tbody/tr/td[1]/a/img').click
    sleep 1

    driver.find_element(:xpath, '//*[@id="store_submit"]').click
    sleep 1

    driver.switch_to.alert.accept
    sleep 2

    driver.quit
end
 