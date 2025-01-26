Pagy::DEFAULT[:items] = 5  # items per page
Pagy::DEFAULT[:size]  = 9  # nav bar links
Pagy::DEFAULT[:limit] = 5

require "pagy/extras/overflow"
Pagy::DEFAULT[:overflow] = :last_page
