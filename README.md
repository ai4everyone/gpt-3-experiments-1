#  GPT-3 Experiments for Worldbuilding

This repo contains example prompts for OpenAI's GPT-3 API and the resulting AI-generated texts for an assortment of worldbuilding tasks. Each task is meant to illustrate how GPT-3 can be integrated in the creative worldbuilding process for writers, game designers, roleplayers, and other worldbuilders. Each experiment's prompt is also intentionally designed to eventually be populated with notebook data from [Notebook.ai](https://www.notebook.ai) for the specific user doing the generation, which should result in output that is personalized to that user's world.

All generated texts in this repo are completely unedited and uncurated unless explicitly stated otherwise.

## Experiments

The following experiments are included in this repository:

### Generators

Generators are focused around generating individual, core worldbuilding pieces.

* [`ability-generator`](https://github.com/indentlabs/gpt-3-experiments/tree/master/experiments/ability-generator) generates fictional abilities for characters, detailing a strength and weakness.
* [`building-generator`](https://github.com/indentlabs/gpt-3-experiments/tree/master/experiments/building-generator) generates fictional buildings within a city.
* [`character-generator`](https://github.com/indentlabs/gpt-3-experiments/tree/master/experiments/character-generator) generates fictional characters' names, descriptions, and appearances. 
* [`condition-generator`](https://github.com/indentlabs/gpt-3-experiments/tree/master/experiments/condition-generator) generates sicknesses and diseases that characters may be afflicted by.
* [`creature-generator`](https://github.com/indentlabs/gpt-3-experiments/tree/master/experiments/creature-generator) generates fictional creatures with a brief description and leg count.
* [`flora-generator`](https://github.com/indentlabs/gpt-3-experiments/tree/master/experiments/flora-generator) generates fictional plants with a brief description and list of biomes they're found in.
* [`food-generator`](https://github.com/indentlabs/gpt-3-experiments/tree/master/experiments/food-generator) generates fictional foods with a brief description and high-level recipe instructions.
* [`group-generator`](https://github.com/indentlabs/gpt-3-experiments/tree/master/experiments/group-generator) generations ficticious groups of people that exist within the world.
* [`government-generator`](https://github.com/indentlabs/gpt-3-experiments/tree/master/experiments/government-generator) generates fictional governments and a brief description of how they're run.
* [`item-generator`](https://github.com/indentlabs/gpt-3-experiments/tree/master/experiments/item-generator) generates fictional items, including a description and the material(s) that item is made of.
* [`job-generator`](https://github.com/indentlabs/gpt-3-experiments/tree/master/experiments/job-generator) generates fictional jobs in the style of job postings, with descriptions and requirements.
* [`landmark-generator`](https://github.com/indentlabs/gpt-3-experiments/tree/master/experiments/landmark-generator) generates fictional landmarks, such as caves, bridges, mountains, and lakes.
* [`race-generator`](https://github.com/indentlabs/gpt-3-experiments/tree/master/experiments/race-generator) generates fictional races with a brief description.
* [`spell-generator`](https://github.com/indentlabs/gpt-3-experiments/tree/master/experiments/spell-generator) generates ficticious spells, including an incantation and instructions to cast.
* [`sport-generator`](https://github.com/indentlabs/gpt-3-experiments/tree/master/experiments/sport-generator) generates fictional sports with setup instructions, points explanations, and win conditions.
* [`sword-generator`](https://github.com/indentlabs/gpt-3-experiments/tree/master/experiments/sword-generator) generates ficticious swords with a description and legendary backstory.

### Expanders

Expanders take an existing worldbuilding piece and attempt to indiscriminately expound upon it.

* [`character-expander`](https://github.com/indentlabs/gpt-3-experiments/tree/master/experiments/character-expander) takes an incomplete character (here, Joe Clementz) and randomly adds additional information about that character.

### Suggesters

Suggesters take an existing worldbuilding piece and a field, and return a suggested value for that field. For example, a user might be looking for suggestions for "prejudices" or "hobbies" on an existing character and want to incorporate the whole character (age, profession, etc) as inputs to a "likely" value.

* [`character-suggester`](https://github.com/indentlabs/gpt-3-experiments/tree/master/experiments/character-suggester) takes an incomplete character (again, Joe Clementz) and a field ("prejudices") to return a suggested value

## Repository layout

Each experiment is isolated to its own folder in the /experiments folder with the following files:

| Filename        | Description                                                                         |
|-----------------|-------------------------------------------------------------------------------------|
| prompt.txt      | The input used in this experiment                                                   |
| settings.yml    | Any settings overrides for this experiment (changing engines, stop-characters, etc) |
| output-0_0.txt  | 10 outputs at temperature 0.0 (deterministic, repeating output). |
| output-0_25.txt | 10 outputs at temperature 0.25                                                      |
| output-0_5.txt  | 10 outputs at temperature 0.5                                                       |
| output-0_75.txt | 10 outputs at temperature 0.75                                                      |
| output-1_0.txt  | 10 outputs at temperature 1.0 (most chaotic)                                                       |

Experiments can be run from the repo's root directory with the following command:

```
ruby experiment.rb name-of-experiment
```

You will also need your OpenAI secret key set in the environment variable `OPENAI_SK`, as well as the [`gpt3`](https://github.com/indentlabs/gpt3-gem) gem installed.

## Disclaimer

This repository has no affiliation with OpenAI and was inspired by the similar thought-provoking repo by @minimaxir of [the same name](https://github.com/minimaxir/gpt-3-experiments).