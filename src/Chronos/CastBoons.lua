------ Adding GameStateRequirements for all
-- Zeus
-- Hera
-- Poseidon
TraitData.PoseidonExCastBoon.GameStateRequirements = TraitData.PoseidonExCastBoon.GameStateRequirements or {}
-- Demeter
-- Apollo
TraitData.ApolloExCastBoon.GameStateRequirements = TraitData.ApolloExCastBoon.GameStateRequirements or {}
-- Aphrodite
-- Hephaestus
-- Hestia
-- Ares
TraitData.AresExCastBoon.GameStateRequirements = TraitData.AresExCastBoon.GameStateRequirements or {}
-- Artemis
-- Dionaysus
-- Hades


------ Removing old Sprint from pool
-- Zeus
-- Hera
-- Poseidon
table.insert(TraitData.PoseidonExCastBoon.GameStateRequirements, {
  Path = {"CurrentRun", "Hero", "TraitDictionary"},
  HasNone = {"ChronosAspect"}
})
-- Demeter
-- Apollo
table.insert(TraitData.ApolloExCastBoon.GameStateRequirements, {
  Path = {"CurrentRun", "Hero", "TraitDictionary"},
  HasNone = {"ChronosAspect"}
})
-- Aphrodite
-- Hephaestus
-- Hestia
-- Ares
table.insert(TraitData.AresExCastBoon.GameStateRequirements, {
  Path = {"CurrentRun", "Hero", "TraitDictionary"},
  HasNone = {"ChronosAspect"}
})
-- Artemis
-- Dionaysus
-- Hades