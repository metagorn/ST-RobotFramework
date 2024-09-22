*** Settings ***
Library         SeleniumLibrary
Resource        ../keywords/HomePageKeywords.robot
Resource        ../keywords/RegisterPageKeywords.robot
Variables       ../resources/config/config.yaml
Variables       ../resources/testdata/testdata.yaml
Suite Setup        Open Browser    ${baseUrl}    chrome
Suite Teardown     Close Browser


*** Test Cases ***
As a user, I want to register with my credential
    When user register to future skill platform with ${email_register} and ${firstname_register} and ${lastname_register} and ${phone_register} and ${password_register} and ${confirm_password_register}
    Then Wait until element is ready to read text    xpath=//h6[@class='text-center']    ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์
