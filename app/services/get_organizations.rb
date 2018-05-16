class Organization
  def self.get_homeless_organizations
    response = RestClient.get('http://localhost:3001/organizations?category=Homelessness')
    JSON.parse(response)
end
  def self.get_music_and_art_organizations
    response = RestClient.get('http://localhost:3001/organizations?category=Music+and+Art')
    JSON.parse(response)
  end
  def self.get_animal_welfare_organizations
    response = RestClient.get('http://localhost:3001/organizations?category=Animal+welfare')
    JSON.parse(response)
  end
end
