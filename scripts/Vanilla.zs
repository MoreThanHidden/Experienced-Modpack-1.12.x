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
recipes.remove(<ore:blockIron>);
recipes.remove(<ore:blockGold>);
recipes.remove(<ore:blockEnderium>);
recipes.remove(<ore:blockLumium>);
recipes.remove(<ore:blockSignalum>);
recipes.remove(<ore:blockConstantan>);
recipes.remove(<ore:blockBronze>);
recipes.remove(<ore:blockInvar>);
recipes.remove(<ore:blockElectrum>);
recipes.remove(<ore:blockElectrumFlux>);
recipes.remove(<ore:blockSteel>);
recipes.remove(<ore:blockMithril>);
recipes.remove(<ore:blockIridium>);
recipes.remove(<ore:blockPlatinum>);
recipes.remove(<ore:blockNickel>);
recipes.remove(<ore:blockAluminum>);
recipes.remove(<ore:blockLead>);
recipes.remove(<ore:blockSilver>);
recipes.remove(<ore:blockTin>);
recipes.remove(<ore:blockCopper>);
recipes.remove(<ore:blockZinc>);
recipes.remove(<ore:blockTungstensteel>);
recipes.remove(<ore:blockTungsten>);
recipes.remove(<ore:blockTitanium>);
recipes.remove(<ore:blockChrome>);
recipes.remove(<ore:blockBrass>);
recipes.remove(<ore:blockAlubrass>);
recipes.remove(<ore:blockPigiron>);
recipes.remove(<ore:blockKnightslime>);
recipes.remove(<ore:blockManyullyn>);
recipes.remove(<ore:blockArdite>);
recipes.remove(<ore:blockCobalt>);
recipes.remove(<ore:ingotIron> * 9);
recipes.remove(<ore:ingotGold> * 9);
recipes.remove(<ore:ingotEnderium> * 9);
recipes.remove(<ore:ingotLumium> * 9);
recipes.remove(<ore:ingotSignalum> * 9);
recipes.remove(<ore:ingotConstantan> * 9);
recipes.remove(<ore:ingotBronze> * 9);
recipes.remove(<ore:ingotInvar> * 9);
recipes.remove(<ore:ingotElectrum> * 9);
recipes.remove(<ore:ingotElectrumFlux> * 9);
recipes.remove(<ore:ingotSteel> * 9);
recipes.remove(<ore:ingotMithril> * 9);
recipes.remove(<ore:ingotIridium> * 9);
recipes.remove(<ore:ingotPlatinum> * 9);
recipes.remove(<ore:ingotNickel> * 9);
recipes.remove(<ore:ingotAluminum> * 9);
recipes.remove(<ore:ingotLead> * 9);
recipes.remove(<ore:ingotSilver> * 9);
recipes.remove(<ore:ingotTin> * 9);
recipes.remove(<ore:ingotCopper> * 9);
recipes.remove(<ore:ingotZinc> * 9);
recipes.remove(<ore:ingotTungstensteel> * 9);
recipes.remove(<ore:ingotTungsten> * 9);
recipes.remove(<ore:ingotTitanium> * 9);
recipes.remove(<ore:ingotChrome> * 9);
recipes.remove(<ore:ingotBrass> * 9);
recipes.remove(<ore:ingotAlubrass> * 9);
recipes.remove(<ore:ingotPigiron> * 9);
recipes.remove(<ore:ingotKnightslime> * 9);
recipes.remove(<ore:ingotManyullyn> * 9);
recipes.remove(<ore:ingotArdite> * 9);
recipes.remove(<ore:ingotCobalt> * 9);


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
    recipes.addShapeless(plank * 2, [log]);
}

recipes.removeShaped(<minecraft:stick>);
recipes.addShaped("emp-stick", <minecraft:stick> * 2, [[<ore:plankWood>],[<ore:plankWood>]]);
