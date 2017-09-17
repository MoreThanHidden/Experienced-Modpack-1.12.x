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
	recipes.remove("emp-flintandsteel", <minecraft:flint_and_steel>);

	recipes.addShaped(<minecraft:flint_and_steel>,
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


//Block fixes must use compressor/macerator/tinkers
	recipes.removeShapeless(<ore:gemDiamond> * 9);
	recipes.removeShapeless(<ore:gemEmerald> * 9);
	recipes.removeShapeless(<ore:ingotIron> * 9);
	recipes.removeShapeless(<ore:ingotGold> * 9);
	recipes.removeShaped(<ore:blockDiamond>);
	recipes.removeShaped(<ore:blockEmerald>);
	recipes.removeShaped(<ore:blockIron>);
	recipes.removeShaped(<ore:blockGold>);

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
recipes.addShaped("emp-" + <minecraft:stick>.displayName, <minecraft:stick> * 2, [[<ore:plankWood>],[<ore:plankWood>]]);
