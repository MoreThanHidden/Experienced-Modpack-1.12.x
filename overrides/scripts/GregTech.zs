//Steel Casing
recipes.remove(<actuallyadditions:block_misc:9>);
recipes.addShaped(<actuallyadditions:block_misc:9>, [[<ore:plateSteel>, <ore:stickSteel>, <ore:plateSteel>], [<ore:stickSteel>, null, <ore:stickSteel>], [<ore:plateSteel>, <ore:stickSteel>, <ore:plateSteel>]]);

//Solar
recipes.remove(<environmentaltech:photovoltaic_cell>);
recipes.remove(<solarflux:mirror> * 3);
recipes.addShaped(<environmentaltech:photovoltaic_cell> * 2, [[<ore:plateSteel>, <ore:gemLapis>, <ore:plateSteel>], [<ore:gemLapis>, <minecraft:quartz>, <ore:gemLapis>], [<ore:plateSteel>, <ore:gemLapis>, <ore:plateSteel>]]);
recipes.addShaped(<solarflux:mirror> * 3, [[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>], [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

//Nether Blocked
recipes.remove(<minecraft:flint_and_steel>);
recipes.addShaped(<minecraft:flint_and_steel>, [[<ore:nuggetStainlessSteel>, null], [null, <minecraft:flint>]]);

//Aluminium or Aluminum
recipes.remove(<ore:ingotAluminum> * 2);
recipes.remove(<ore:ingotAluminum>);
recipes.remove(<ore:ingotAluminium> * 2);
recipes.remove(<ore:ingotAluminium>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:132>);
furnace.remove(<gregtech:meta_item_1:10001>);
furnace.remove(<thermalfoundation:material:132>);
recipes.addShapeless(<gregtech:meta_item_1:10001>, [<ore:ingotAluminum>]);
recipes.addShapeless(<thermalfoundation:material:132>, [<ore:ingotAluminium>]);

//Frames
recipes.remove(<rftools:machine_frame>);
recipes.remove(<extrautils2:machine>);
recipes.addShaped(<rftools:machine_frame>, [[<ore:ingotSteel>, <ore:gemLapis>, <ore:ingotSteel>], [<ore:plateGold>, null, <ore:plateGold>], [<ore:ingotSteel>, <ore:gemLapis>, <ore:ingotSteel>]]);
recipes.addShaped(<extrautils2:machine>, [[<ore:ingotSteel>, <minecraft:redstone>, <ore:ingotSteel>], [<minecraft:redstone>, <ore:chest>, <ore:dustRedstone>], [<ore:ingotSteel>, <minecraft:redstone>, <ore:ingotSteel>]]);

//integrated dynamics
recipes.remove(<integrateddynamics:cable> * 3);
recipes.remove(<integrateddynamics:squeezer>);
recipes.addShaped(<integrateddynamics:cable> * 3, [[<integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>], [<ore:stickSteel>, <ore:dustRedstone>, <ore:stickSteel>], [<integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>]]);
recipes.addShaped(<integrateddynamics:cable> * 3, [[<integrateddynamics:crystalized_menril_chunk>, <ore:stickSteel>, <integrateddynamics:crystalized_menril_chunk>], [<integrateddynamics:crystalized_menril_chunk>, <ore:dustRedstone>, <integrateddynamics:crystalized_menril_chunk>], [<integrateddynamics:crystalized_menril_chunk>, <ore:stickSteel>, <integrateddynamics:crystalized_menril_chunk>]]);
recipes.addShaped(<integrateddynamics:squeezer>, [[<ore:stickSteel>, <ore:blockSteel>, <ore:stickSteel>], [<ore:stickSteel>, null, <ore:stickSteel>], [<minecraft:stone>, <ore:ingotSteel>, <minecraft:stone>]]);
