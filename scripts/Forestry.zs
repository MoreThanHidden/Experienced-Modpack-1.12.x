import crafttweaker.data.IData;
import crafttweaker.item.IItemStack;

var forestryLogs = [
<forestry:logs.0:0>,
<forestry:logs.0:1>,
<forestry:logs.0:2>,
<forestry:logs.0:3>,
<forestry:logs.1:0>,
<forestry:logs.1:1>,
<forestry:logs.1:2>,
<forestry:logs.1:3>,
<forestry:logs.2:0>,
<forestry:logs.2:1>,
<forestry:logs.2:2>,
<forestry:logs.2:3>,
<forestry:logs.3:0>,
<forestry:logs.3:1>,
<forestry:logs.3:2>,
<forestry:logs.3:3>,
<forestry:logs.4:0>,
<forestry:logs.4:1>,
<forestry:logs.4:2>,
<forestry:logs.4:3>,
<forestry:logs.5:0>,
<forestry:logs.5:1>,
<forestry:logs.5:2>,
<forestry:logs.5:3>,
<forestry:logs.6:0>,
<forestry:logs.6:1>,
<forestry:logs.6:2>,
<forestry:logs.6:3>,
<forestry:logs.7:0>,
<forestry:logs.fireproof.0:0>,
<forestry:logs.fireproof.0:1>,
<forestry:logs.fireproof.0:2>,
<forestry:logs.fireproof.0:3>,
<forestry:logs.fireproof.1:0>,
<forestry:logs.fireproof.1:1>,
<forestry:logs.fireproof.1:2>,
<forestry:logs.fireproof.1:3>,
<forestry:logs.fireproof.2:0>,
<forestry:logs.fireproof.2:1>,
<forestry:logs.fireproof.2:2>,
<forestry:logs.fireproof.2:3>,
<forestry:logs.fireproof.3:0>,
<forestry:logs.fireproof.3:1>,
<forestry:logs.fireproof.3:2>,
<forestry:logs.fireproof.3:3>,
<forestry:logs.fireproof.4:0>,
<forestry:logs.fireproof.4:1>,
<forestry:logs.fireproof.4:2>,
<forestry:logs.fireproof.4:3>,
<forestry:logs.fireproof.5:0>,
<forestry:logs.fireproof.5:1>,
<forestry:logs.fireproof.5:2>,
<forestry:logs.fireproof.5:3>,
<forestry:logs.fireproof.6:0>,
<forestry:logs.fireproof.6:1>,
<forestry:logs.fireproof.6:2>,
<forestry:logs.fireproof.6:3>,
<forestry:logs.fireproof.7:0>,
<forestry:logs.vanilla.fireproof.0:0>,
<forestry:logs.vanilla.fireproof.0:1>,
<forestry:logs.vanilla.fireproof.0:2>,
<forestry:logs.vanilla.fireproof.0:3>,
<forestry:logs.vanilla.fireproof.1:0>,
<forestry:logs.vanilla.fireproof.1:1>
] as IItemStack[];

var forestryPlanks = [
<forestry:planks.0:0>,
<forestry:planks.0:1>,
<forestry:planks.0:2>,
<forestry:planks.0:3>,
<forestry:planks.0:4>,
<forestry:planks.0:5>,
<forestry:planks.0:6>,
<forestry:planks.0:7>,
<forestry:planks.0:8>,
<forestry:planks.0:9>,
<forestry:planks.0:10>,
<forestry:planks.0:11>,
<forestry:planks.0:12>,
<forestry:planks.0:13>,
<forestry:planks.0:14>,
<forestry:planks.0:15>,
<forestry:planks.1:0>,
<forestry:planks.1:1>,
<forestry:planks.1:2>,
<forestry:planks.1:3>,
<forestry:planks.1:4>,
<forestry:planks.1:5>,
<forestry:planks.1:6>,
<forestry:planks.1:7>,
<forestry:planks.1:8>,
<forestry:planks.1:9>,
<forestry:planks.1:10>,
<forestry:planks.1:11>,
<forestry:planks.1:12>,
<forestry:planks.fireproof.0:0>,
<forestry:planks.fireproof.0:1>,
<forestry:planks.fireproof.0:2>,
<forestry:planks.fireproof.0:3>,
<forestry:planks.fireproof.0:4>,
<forestry:planks.fireproof.0:5>,
<forestry:planks.fireproof.0:6>,
<forestry:planks.fireproof.0:7>,
<forestry:planks.fireproof.0:8>,
<forestry:planks.fireproof.0:9>,
<forestry:planks.fireproof.0:10>,
<forestry:planks.fireproof.0:11>,
<forestry:planks.fireproof.0:12>,
<forestry:planks.fireproof.0:13>,
<forestry:planks.fireproof.0:14>,
<forestry:planks.fireproof.0:15>,
<forestry:planks.fireproof.1:0>,
<forestry:planks.fireproof.1:1>,
<forestry:planks.fireproof.1:2>,
<forestry:planks.fireproof.1:3>,
<forestry:planks.fireproof.1:4>,
<forestry:planks.fireproof.1:5>,
<forestry:planks.fireproof.1:6>,
<forestry:planks.fireproof.1:7>,
<forestry:planks.fireproof.1:8>,
<forestry:planks.fireproof.1:9>,
<forestry:planks.fireproof.1:10>,
<forestry:planks.fireproof.1:11>,
<forestry:planks.fireproof.1:12>,
<forestry:planks.vanilla.fireproof.0:0>,
<forestry:planks.vanilla.fireproof.0:1>,
<forestry:planks.vanilla.fireproof.0:2>,
<forestry:planks.vanilla.fireproof.0:3>,
<forestry:planks.vanilla.fireproof.0:4>,
<forestry:planks.vanilla.fireproof.0:5>
] as IItemStack[];


for i, log in forestryLogs {
    var plank = forestryPlanks[i];
    recipes.removeShapeless(plank, [log]);
    recipes.addShapeless("emp-" + plank.displayName, plank * 2, [log]);
}
