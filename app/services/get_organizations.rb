class Organization
  def self.get_homeless_organizations
    response = JSON.parse(RestClient.get('http://localhost:3001/organizations?category=Homelessness'))
    response.each do |organization|
      p organization.values_at('name', 'description', 'address', 'phone', 'website')
    end
  end
  def self.get_music_and_art_organizations
    response = JSON.parse(RestClient.get('http://localhost:3001/organizations?category=Music+and+Art'))
    response.each do |organization|
      p organization.values_at('name', 'description', 'address', 'phone', 'website')
    end
  end
  def self.get_animal_welfare_organizations
    response = JSON.parse(RestClient.get('http://localhost:3001/organizations?category=Animal+welfare'))
    response.each do |organization|
      p organization.values_at('name', 'description', 'address', 'phone', 'website')
    end
  end
end
