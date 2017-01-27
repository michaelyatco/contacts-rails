class Contact < ApplicationRecord
  def friendly_time
    created_at.strftime("%b %d, %Y")
  end

  def friendly_updated_at
    updated_at.strftime("%b %e, %l:%M %p")
  end

  def full_name
    "#{first_name} #{middle_name} #{last_name}"
  end

  def japanese_number
    "+81-" + phone_number
  end

  def get_address
    geo_localization = "#{latitude},#{longitude}"
    query = Geocoder.search(geo_localization).first
    query.address
  end

  def self.all_johns
    where(first_name: "John")
  end
end
