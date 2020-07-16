require 'gpt3'

preprompt = <<END
Name: Bowstaff of Glory
Made of: Wood & stone
Description: The bow that King Lao was using when he conquered the Chuns in the Battle of Luhan

Name: Dragon Tear
Made of: Crystallized dragon tear
Description: A blue crystal that shimmers in the light and can cure any disease.

Name: Shadowblade
Made of: Onyx
Description: A blade carved out of a sheet of onyx thinner than its own shadow.

Name: Bow of Sorrows
Made of: Wood, bone, and sinew
Description: A bow used by the Dark Elves to commit atrocities.

Name: The Water of the Gods
Made of: A mixture of sacred herbs and medicinal plants
Description: A transparent, colorless liquid that is a panacea for all kinds of ailments.
END

gpt = GPT3::Completion.create(
  preprompt,
  temperature: 0.75,
  stop:        "\n\n",
  verbose:     true
)
puts gpt.fetch('choices', [])
  .map { |choice| choice.fetch('text') }