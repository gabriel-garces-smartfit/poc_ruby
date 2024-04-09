module Screens
    class FeedScreen < BaseScreen

        def elements_feed
            {
                ## Header Feed
                xpath_home: '//android.view.View[@content-desc="Incrível! continue assim :D"]'
            }
        end

        def validate_feed
            wait_for_xpath elements_feed[:xpath_home]
        end
    end
end