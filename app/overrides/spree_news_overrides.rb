Deface::Override.new(:virtual_path => "spree/layouts/admin",
                     :name => "news_admin_tab",
                     :insert_bottom => "[data-hook='admin_tabs']",
                     :text => "<%= tab(:posts) %>",
                     :disabled => false)

#Deface::Override.new(:virtual_path => "spree/home/index",
#                     :name => "index_news_partial",
#                     :insert_after => "[data-hook='homepage_products']",
#                     #:insert_after => "[data-hook='inside_head']",
#                     :partial => "shared/news",
#                     :disabled => false)

Deface::Override.new(:virtual_path => 'spree/shared/_store_menu',
                     :name => 'index_news_partial',
                     :insert_before => 'li#home-link',
                     :partial => "shared/news",
                     :disabled => false)