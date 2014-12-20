require '../lib/client'
require '../lib/request'

@client = CensusApi::Client.new(ENV['CENSUS_API_KEY'], {vintage: 2010, dataset: 'SF1'})

# CSA New Mexico
data = @client.where({ fields: 'P0010001', level: 'CSA', within: 'STATE:35' })
puts data
# CSA Oregon
data = @client.where({ fields: 'P0010001', level: 'CSA', within: 'STATE:41' })
puts data

# State
data = @client.where({ fields: 'P0010001', level: 'STATE' })
puts data

# County
data = @client.where({ fields: 'P0010001', level: 'COUNTY' })
#puts data

# Counties New Mexico
data = @client.where({ fields: 'P0010001', level: 'COUNTY', within: 'STATE:35' })
puts data

# Counties Oregon
data = @client.where({ fields: 'P0010001', level: 'COUNTY', within: 'STATE:41' })
puts data

# Bernalillo County
data = @client.where({ fields: 'P0010001', level: 'COUNTY:001', within: 'STATE:35' })
puts data

# Places in New Mexico
@client = CensusApi::Client.new(ENV['CENSUS_API_KEY'], {vintage: 2010, dataset: 'SF1'})
data = @client.where({ fields: 'P0010001', level: 'PLACE', within: 'STATE:35' })
puts data
puts; puts; puts

@client = CensusApi::Client.new(ENV['CENSUS_API_KEY'], {vintage: 2000, dataset: 'SF1'})
data = @client.where({ fields: 'P001001', level: 'PLACE:73260', within: 'STATE:35' })
puts data

# Silver City in New Mexico
@client = CensusApi::Client.new(ENV['CENSUS_API_KEY'], {vintage: 2010, dataset: 'SF1'})
data = @client.where({ fields: 'P0010001', level: 'PLACE:73260', within: 'STATE:35' })
puts data
puts

@client = CensusApi::Client.new(ENV['CENSUS_API_KEY'], {vintage: 2000, dataset: 'SF1'})
data = @client.where({ fields: 'P001001', level: 'PLACE:70500', within: 'STATE:35' })
puts data

@client = CensusApi::Client.new(ENV['CENSUS_API_KEY'], {vintage: 2010, dataset: 'SF1'})
data = @client.where({ fields: 'P0010001', level: 'PLACE:70500', within: 'STATE:35' })
puts data
puts

@client = CensusApi::Client.new(ENV['CENSUS_API_KEY'], {vintage: 2000, dataset: 'SF1'})
data = @client.where({ fields: 'P001001', level: 'PLACE:02000', within: 'STATE:35' })
puts data

@client = CensusApi::Client.new(ENV['CENSUS_API_KEY'], {vintage: 2010, dataset: 'SF1'})
data = @client.where({ fields: 'P0010001', level: 'PLACE:02000', within: 'STATE:35' })
puts data
