import crafttweaker.data.IData;
import crafttweaker.item.IItemStack;

var Logs = [
    <natura:overworld_logs:0>, 
    <natura:overworld_logs:1>, 
    <natura:overworld_logs:2>, 
    <natura:overworld_logs:3>, 
    <natura:overworld_logs2:0>, 
    <natura:overworld_logs2:1>, 
	<natura:overworld_logs2:2>, 
    <natura:overworld_logs2:3>,  
    <natura:redwood_logs:*>, 
    <natura:nether_logs:0>, 
    <natura:nether_logs2:0>,
    <natura:nether_logs:1>, 
    <natura:nether_logs:2>
     
] as IItemStack[];

var Planks = [
    <natura:overworld_planks:0>, 
    <natura:overworld_planks:1>, 
    <natura:overworld_planks:2>, 
    <natura:overworld_planks:3>, 
    <natura:overworld_planks:4>, 
    <natura:overworld_planks:5>, 
    <natura:overworld_planks:6>, 
    <natura:overworld_planks:7>, 
    <natura:overworld_planks:8>, 
    <natura:nether_planks:0>, 
    <natura:nether_planks:1>, 
    <natura:nether_planks:2>, 
    <natura:nether_planks:3> 
] as IItemStack[];

var Sticks = [
    <natura:sticks:0>, 
    <natura:sticks:1>, 
    <natura:sticks:2>, 
    <natura:sticks:3>, 
    <natura:sticks:4>, 
    <natura:sticks:5>, 
    <natura:sticks:6>, 
    <natura:sticks:7>, 
    <natura:sticks:8>, 
    <natura:sticks:9>, 
    <natura:sticks:12>, 
    <natura:sticks:10>, 
    <natura:sticks:11>
] as IItemStack[];

for i, log in Logs {
    var plank = Planks[i];
    var stick = Sticks[i];
    recipes.removeShapeless(plank, [log]);
    recipes.addShapeless("emp-" + plank.displayName, plank * 2, [log]);
	recipes.removeShaped(stick);
	recipes.addShaped("emp-" + stick.displayName, stick * 2, [[plank],[plank]]);
}
