*** Variables ***
${blankPage}=                            about:blank
${url}=                                  https://www.digikala.com/
${browser}=                              chrome

#Login
${txtbox_username}=                      xpath=//input[@name="login[email_phone]"]
${txtbox_password}=                      xpath=//input[@name="login[password]"]
${btn_sign_up}=                          xpath=//a[contains(@href, '/users/login-register/?_back=https://www.digikala.com/')]
${btn_login1}=                           xpath=//html/body/main/div[2]/section/div[2]/form/button
${btn_login2}=                           xpath=//html/body/main/div[2]/section/div/form/button
${txt_error}=                            xpath=//html/body/main/div[1]/div
${err_btn}=                              xpath=//button[contains(@class, "js-toast-btn")]
${invalid_msg}=                          xpath=//div[@id="login[email_phone]-error"]
${msg_err_invalid}=                      "شماره موبایل یا ایمیل نادرست است"
${msg_err_empty}=                        "ایمیل یا شماره موبایل را وارد نمایید"
${valid_username}=                       #registered email/phone number
${correct_password}=                     #your correct registered password
${logged_in-username}=                   #user shown name
${profile_icon}=                         xpath=//html/body/header/div/div/div[2]/div[1]/div/a
${profile_dropdown}=                     xpath=//html/body/header/div/div/div[2]/div[1]/div/div

#Availibility
${Categories}=                           xpath=//html/body/header/nav/div/div/ul/li[1]/ul/li[2]/div[1]
${DigitalCategory}=                      xpath=//*[@id="categories-1"]/div/a
${AppleProducts}=                        xpath=//div[@id='categories-1']/ul/li[8]/a
${SecondPageIndicator}=                  xpath=//a[contains(text(),'۲')]
${SecondProduct}=                        xpath=//html[1]/body[1]/main[1]/div[2]/div[1]/div[1]/div[2]/div[2]/div[1]/article[1]/div[1]/ul[1]/li[2]/div[1]/div[2]/div[1]/div[1]/a[1]
${SecondProductClickable}=               css=li:nth-child(2) .c-product-box__content .js-product-url
${NotifyMeBox}=                          xpath=//div[@id='content']/div/div/article/section/div[2]/div[3]/div/button/label
${NotifyMeButton}=                       css=button.o-btn.o-btn--full-width.o-btn--contained-red-lg.c-product-stock__action.js-add-to-notify-button
${AddToNotifyList}=                      xpath=//button[@id='add-to-observed']
${SortOption-Popularity}=                css=.c-listing__sort > li:nth-child(3) > a

#Buy Product
${SellerCheckbox-Digikala}=              xpath=//body/main[@id='main']/div[@id='content']/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[5]/div[1]/div[2]/div[3]/div[1]/ul[1]/li[1]/label[2]/span[1]
${BrandCheckbox-Apple}=                  css=div:nth-child(1) > .c-filter > .c-box__scroll-container:nth-child(4) li:nth-child(3) .c-ui-checkbox__check
${Iphone13ProMax-1TB}=                   xpath=//a[contains(text(),'گوشی موبایل اپل مدل iPhone 13 Pro Max A2644 دو سیم‌ کارت ظرفیت 1 ترابایت و رم 6 گیگابایت')]
${btn-AddToCart}=                        xpath=//html[1]/body[1]/main[1]/div[2]/div[1]/div[1]/article[1]/section[1]/div[2]/div[3]/div[1]/div[1]/div[2]/a[1]
${btn-CompletePurchase}=                 css=.o-btn--contained-red-lg
${PurchaseValidation}=                   xpath=//button[contains(text(),'برای ادامه، زمان ارسال را تعیین کنید')]

#DDT
${Category-BooksAndMedia}=               css=.c-navi-new-list__inner-category--book-and-media
${Category-Inner-Magazines}=             xpath=(//a[contains(text(),'مجلات')])[4]

${Local-MagCategory}=                    css=.c-filter-shortcut__category-item:nth-child(1) > .c-filter-shortcut__category-image
${Local-CoverType}=                      xpath=//div[@id='js-list-aside']/div[10]/div
${Local-CoverType_paper}=                xpath=//label[contains(text(),'کاغذی')]
${Local-FirstItem}=                      css=li:nth-child(1) > .c-product-box img

${Global-MagCategory}=                   css=.c-filter-shortcut__category-item:nth-child(2)
${Global-CoverType}=                     css=.c-box:nth-child(13) > .c-box__header
${Global-CoverType_paper}=               xpath=//label[contains(text(),'کاغذی')]
${Global-FirstItem}=                     css=li:nth-child(1) > .c-product-box img

#Delete Product
${btn_Cart}=                             id=cart-button
${btn_dlt}=                              css=.c-cart-item__delete
${validate_emtpyCart}=                   css=.c-checkout-empty__title
