import crafttweaker.data.IData;
import crafttweaker.item.IItemStack;

//Initial Inventory
	mods.initialinventory.InvHandler.addStartingItem(<minecraft:torch> * 8);

// Minecraft Cauldron
	recipes.remove(<minecraft:cauldron>);

	recipes.addShaped("emp-cauldron", <minecraft:cauldron>,
		[[<ore:plateSteel>, null, <ore:plateSteel>],
  		 [<ore:plateSteel>, null, <ore:plateSteel>],
  		 [<ore:plateSteel>, <ore:ingotSteel>, <ore:plateSteel>]]);

// Minecraft Flint and Steel
	recipes.remove(<minecraft:flint_and_steel>);

	recipes.addShaped("emp-flintandsteel", <minecraft:flint_and_steel>,
 		[[<ore:ingotSteel>, null],
 		 [null, <minecraft:flint>]]);


//SoulSand
	recipes.addShaped("emp-soulsand", <minecraft:soul_sand> * 4, 
		[[<ore:itemSkull>, <ore:itemSkull>, <ore:itemSkull>],
		 [<ore:itemSkull>, <ore:sand>, <ore:itemSkull>],
		 [<ore:itemSkull>, <ore:itemSkull>, <ore:itemSkull>]]);


//Brewing Stand
	recipes.remove(<minecraft:brewing_stand>);
	
	recipes.addShaped("emp-brewingstand", <minecraft:brewing_stand>,
		[[null, <minecraft:blaze_rod>, null],
		 [<ore:cobblestone>, <ore:plateSteel>, <ore:cobblestone>],
		 [<ore:plateSteel>, <ore:cobblestone>, <ore:plateSteel>]]);

//Piston
	recipes.remove(<minecraft:piston>);
	
	recipes.addShaped("emp-piston", <minecraft:piston>,
		[[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
		 [<ore:cobblestone>, <ore:ingotSteel>, <ore:cobblestone>],
		 [<ore:cobblestone>, <ore:dustRedstone>, <ore:cobblestone>]]);


//Ingot block fixes must use compressor/macerator/tinkers
var Ingots = [
	<ore:ingotIron>,
	<ore:ingotGold>,
	<ore:ingotEnderium>,
	<ore:ingotLumium>,
	<ore:ingotSignalum>,
	<ore:ingotConstantan>,
	<ore:ingotBronze>,
	<ore:ingotInvar>,
	<ore:ingotElectrum>,
	<ore:ingotElectrumFlux>,
	<ore:ingotSteel>,
	<ore:ingotMithril>,
	<ore:ingotIridium>,
	<ore:ingotPlatnium>,
	<ore:ingotNickel>,
	<ore:ingotAluminum>,
	<ore:ingotLead>,
	<ore:ingotSilver>,
	<ore:ingotTin>,
	<ore:ingotCopper>,
	<ore:ingotZinc>,
	<ore:ingotTungstensteel>,
	<ore:ingotTungsten>,
	<ore:ingotTitanium>,
	<ore:ingotChrome>,
	<ore:ingotBrass>,
	<ore:ingotAlubrass>,
	<ore:ingotPigiron>,
	<ore:ingotKnightslime>,
	<ore:ingotManyullyn>,
	<ore:ingotArdite>,
	<ore:ingotCobalt>
];

var Blocks = [
	<ore:blockIron>,
	<ore:blockGold>,
	<ore:blockEnderium>,
	<ore:blockLumium>,
	<ore:blockSignalum>,
	<ore:blockConstantan>,
	<ore:blockBronze>,
	<ore:blockInvar>,
	<ore:blockElectrum>,
	<ore:blockElectrumFlux>,
	<ore:blockSteel>,
	<ore:blockMithril>,
	<ore:blockIridium>,
	<ore:blockPlatnium>,
	<ore:blockNickel>,
	<ore:blockAluminum>,
	<ore:blockLead>,
	<ore:blockSilver>,
	<ore:blockTin>,
	<ore:blockCopper>,
	<ore:blockZinc>,
	<ore:blockTungstensteel>,
	<ore:blockTungsten>,
	<ore:blockTitanium>,
	<ore:blockChrome>,
	<ore:blockBrass>,
	<ore:blockAlubrass>,
	<ore:blockPigiron>,
	<ore:blockKnightslime>,
	<ore:blockManyullyn>,
	<ore:blockArdite>,
	<ore:blockCobalt>
];

for i, ingot in Ingots {
	var block = Blocks[i];
	recipes.removeShapeless(block, ingot * 9);
	recipes.removeShaped(block);
}

//Wood Fixes
var Logs = [
	<minecraft:log:0>,
	<minecraft:log:1>,
	<minecraft:log:2>,
	<minecraft:log:3>,
	<minecraft:log2:0>,
	<minecraft:log2:1>
] as IItemStack[];

var Planks = [
	<minecraft:planks:0>,
	<minecraft:planks:1>,
	<minecraft:planks:2>,
	<minecraft:planks:3>,
	<minecraft:planks:4>,
	<minecraft:planks:5>
] as IItemStack[];


for i, log in Logs {
    var plank = Planks[i];
    recipes.removeShapeless(plank, [log]);
    recipes.addShapeless("emp-" + plank.displayName, plank * 2, [log]);
}

recipes.removeShaped(<minecraft:stick>);
recipes.addShaped("emp-stick", <minecraft:stick> * 2, [[<ore:plankWood>],[<ore:plankWood>]]);
