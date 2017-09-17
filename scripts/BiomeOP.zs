import crafttweaker.data.IData;
import crafttweaker.item.IItemStack;

var biomesoplentyLogs = [
<biomesoplenty:log_0:4>,
<biomesoplenty:log_0:5>,
<biomesoplenty:log_0:6>,
<biomesoplenty:log_0:7>,
<biomesoplenty:log_1:4>,
<biomesoplenty:log_1:5>,
<biomesoplenty:log_1:6>,
<biomesoplenty:log_1:7>,
<biomesoplenty:log_2:4>,
<biomesoplenty:log_2:5>,
<biomesoplenty:log_2:6>,
<biomesoplenty:log_2:7>,
<biomesoplenty:log_3:4>,
<biomesoplenty:log_3:5>,
<biomesoplenty:log_3:6>,
<biomesoplenty:log_3:7>
] as IItemStack[];

var biomesoplentyPlanks = [
<biomesoplenty:planks_0:0>,
<biomesoplenty:planks_0:1>,
<biomesoplenty:planks_0:2>,
<biomesoplenty:planks_0:3>,
<biomesoplenty:planks_0:4>,
<biomesoplenty:planks_0:5>,
<biomesoplenty:planks_0:6>,
<biomesoplenty:planks_0:7>,
<biomesoplenty:planks_0:8>,
<biomesoplenty:planks_0:9>,
<biomesoplenty:planks_0:10>,
<biomesoplenty:planks_0:11>,
<biomesoplenty:planks_0:12>,
<biomesoplenty:planks_0:13>,
<biomesoplenty:planks_0:14>,
<biomesoplenty:planks_0:15>
] as IItemStack[];


for i, log in biomesoplentyLogs {
    var plank = biomesoplentyPlanks[i];
    recipes.removeShapeless(plank, [log]);
    recipes.addShapeless("emp-" + plank.displayName, plank * 2, [log]);
}