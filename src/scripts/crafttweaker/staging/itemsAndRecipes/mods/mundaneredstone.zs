import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageThree;

static stagedItems as IIngredient[][string] = {
	stageThree.stage: [
		<mundaneredstone:redstone_ore:0>,
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.mundaneredstone.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
