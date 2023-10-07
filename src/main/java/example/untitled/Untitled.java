
package example.untitled;

import java.util.logging.Logger;
import org.bukkit.plugin.java.JavaPlugin;

public final class Untitled extends JavaPlugin {

    @Override
    public void onEnable() {
        Logger nm = getLogger();
        nm.info("hello");

    }
    

    @Override
    public void onDisable() {

    }
}