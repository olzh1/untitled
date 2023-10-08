
package example.untitled;

import co.aikar.commands.BukkitCommandManager;
import org.bukkit.plugin.java.JavaPlugin;

public class Untitled extends JavaPlugin {

    @Override
    public void onEnable() {

        BukkitCommandManager manager = new BukkitCommandManager(this);


        manager.registerCommand(new event());
    }}