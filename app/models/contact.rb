class Contact < ApplicationRecord
    has_many :category_contacts
    has_many :categories, through: :category_contacts

    def friendly_updated_at
        updated_at.strftime('%m-%e-%y %H:%M')
    end

    def full_name
        "#{first_name} #{last_name}"
    end

    def japanese_phone_number
        "+81 #{phone_number}"
    end

    def john
        full_name.include?("john")
    end
end
