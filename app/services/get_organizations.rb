class Organization
  def self.get_homeless_organizations
    binding.pry
    response = RestClient.get('http://localhost:3001/organizations?category=Homelessness')
      JSON.parse(response)
      response.each do |response|
        puts response
        puts "#{response['name']['description']['address']['phone']['website']}"
      end
  end
  # def self.get_music_and_art_organizations
  #   response = RestClient.get('http://localhost:3001/organizations?category=Music+and+Art')
  #   JSON.parse(response)["name"]["category"]["description"]["address"]["phone"]["website"]
  # end
  # def self.get_animal_welfare_organizations
  #   response = RestClient.get('http://localhost:3001/organizations?category=Animal+welfare')
  #   JSON.parse(response)["name"]["category"]["description"]["address"]["phone"]["website"]
  # end
end
