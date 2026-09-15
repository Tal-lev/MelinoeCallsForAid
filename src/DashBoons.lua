------ Adding GameStateRequirements for all
-- Zeus
TraitData.ZeusSprintBoon.GameStateRequirements = TraitData.ZeusSprintBoon.GameStateRequirements or {}
-- Hera
TraitData.HeraSprintBoon.GameStateRequirements = TraitData.HeraSprintBoon.GameStateRequirements or {}
-- Poseidon
TraitData.PoseidonSprintBoon.GameStateRequirements = TraitData.PoseidonSprintBoon.GameStateRequirements or {}
-- Demeter
TraitData.DemeterSprintBoon.GameStateRequirements = TraitData.DemeterSprintBoon.GameStateRequirements or {}
-- Apollo
TraitData.ApolloSprintBoon.GameStateRequirements = TraitData.ApolloSprintBoon.GameStateRequirements or {}
-- Aphrodite
TraitData.AphroditeSprintBoon.GameStateRequirements = TraitData.AphroditeSprintBoon.GameStateRequirements or {}
-- Hephaestus
TraitData.HephaestusSprintBoon.GameStateRequirements = TraitData.HephaestusSprintBoon.GameStateRequirements or {}
-- Hestia
TraitData.HestiaSprintBoon.GameStateRequirements = TraitData.HestiaSprintBoon.GameStateRequirements or {}
-- Ares
TraitData.AresSprintBoon.GameStateRequirements = TraitData.AresSprintBoon.GameStateRequirements or {}
-- Artemis
-- Dionaysus
-- Hades

------ Removing old Sprint from pool
-- Zeus
table.insert(TraitData.ZeusSprintBoon.GameStateRequirements, {
  Path = {"CurrentRun", "Hero", "TraitDictionary"},
  HasNone = {"ChronosAspect"}
})
-- Hera
table.insert(TraitData.HeraSprintBoon.GameStateRequirements, {
  Path = {"CurrentRun", "Hero", "TraitDictionary"},
  HasNone = {"ChronosAspect"}
})
-- Poseidon
table.insert(TraitData.PoseidonSprintBoon.GameStateRequirements, {
  Path = {"CurrentRun", "Hero", "TraitDictionary"},
  HasNone = {"ChronosAspect"}
})
-- Demeter
table.insert(TraitData.DemeterSprintBoon.GameStateRequirements, {
  Path = {"CurrentRun", "Hero", "TraitDictionary"},
  HasNone = {"ChronosAspect"}
})
-- Apollo
table.insert(TraitData.ApolloSprintBoon.GameStateRequirements, {
  Path = {"CurrentRun", "Hero", "TraitDictionary"},
  HasNone = {"ChronosAspect"}
})
-- Aphrodite
table.insert(TraitData.AphroditeSprintBoon.GameStateRequirements, {
  Path = {"CurrentRun", "Hero", "TraitDictionary"},
  HasNone = {"ChronosAspect"}
})
-- Hephaestus works fine

-- Hestia
table.insert(TraitData.HestiaSprintBoon.GameStateRequirements, {
  Path = {"CurrentRun", "Hero", "TraitDictionary"},
  HasNone = {"ChronosAspect"}
})
-- Ares works fine

-- Artemis
-- Dionaysus
-- Hades