------ Adding GameStateRequirements for all
-- Zeus
-- Hera
-- Poseidon
TraitData.PoseidonExCastBoon.GameStateRequirements = TraitData.PoseidonExCastBoon.GameStateRequirements or {}
-- Demeter
TraitData.CastAttachBoon.GameStateRequirements = TraitData.CastAttachBoon.GameStateRequirements or {}
-- Apollo
TraitData.ApolloExCastBoon.GameStateRequirements = TraitData.ApolloExCastBoon.GameStateRequirements or {}
-- Aphrodite
-- Hephaestus
-- Hestia
-- Ares
TraitData.AresExCastBoon.GameStateRequirements = TraitData.AresExCastBoon.GameStateRequirements or {}
TraitData.SelfCastBoon.GameStateRequirements = TraitData.SelfCastBoon.GameStateRequirements or {}
--Hostile Environment
-- Artemis
TraitData.OmegaCastVolleyBoon.GameStateRequirements = TraitData.OmegaCastVolleyBoon.GameStateRequirements or {}

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
table.insert(TraitData.CastAttachBoon.GameStateRequirements, {
  Path = {"CurrentRun", "Hero", "TraitDictionary"},
  HasNone = {"ChronosAspect"}
})
-- Apollo
table.insert(TraitData.ApolloExCastBoon.GameStateRequirements, {
  Path = {"CurrentRun", "Hero", "TraitDictionary"},
  HasNone = {"ChronosAspect"}
})
-- Aphrodite
-- Hephaestus
-- Hestia
table.insert(TraitData.BurnSprintBoon.OnProjectileDeathFunction.ValidProjectiles, "PlayerChronosDashStasis")
-- Ares
table.insert(TraitData.AresExCastBoon.GameStateRequirements, {
  Path = {"CurrentRun", "Hero", "TraitDictionary"},
  HasNone = {"ChronosAspect"}
})
table.insert(TraitData.SelfCastBoon.GameStateRequirements, {
  Path = {"CurrentRun", "Hero", "TraitDictionary"},
  HasNone = {"ChronosAspect"}
})
-- Artemis
table.insert(TraitData.OmegaCastVolleyBoon.GameStateRequirements, {
  Path = {"CurrentRun", "Hero", "TraitDictionary"},
  HasNone = {"ChronosAspect"}
})
-- Dionaysus
-- Hades