class Organization
  def self.get_homeless_organizations
    @homeless_response = JSON.parse(RestClient.get('http://localhost:3001/organizations?category=Homelessness'))
    @homeless_response.each do |organization|
      p organization.values_at('name', 'description', 'address', 'phone', 'website')
    end
  end
  def self.get_music_and_art_organizations
    @music_and_art_response = JSON.parse(RestClient.get('http://localhost:3001/organizations?category=Music+and+Art'))
    @music_and_art_response.each do |organization|
      p organization.values_at('name', 'description', 'address', 'phone', 'website')
    end
  end
  def self.get_animal_welfare_organizations
    @animal_welfare_repsonse = JSON.parse(RestClient.get('http://localhost:3001/organizations?category=Animal+welfare'))
    @animal_welfare_repsonse.each do |organization|
      p organization.values_at('name', 'description', 'address', 'phone', 'website')
    end
  end
end
