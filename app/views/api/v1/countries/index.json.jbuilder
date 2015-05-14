json.countries @countries do |country|
	
	json.Name country.name
	json.Continent country.continent
	json.Population country.population
	json.size country.size
	json.government_type country.government_type
	json.highest_officer country.highest_officer

end