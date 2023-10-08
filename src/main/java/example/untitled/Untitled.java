
package example.untitled;



import org.bukkit.event.EventHandler;
import org.bukkit.event.Listener;
import org.bukkit.event.player.PlayerMoveEvent;
import org.bukkit.plugin.java.JavaPlugin;
import org.jetbrains.annotations.NotNull;

public class Untitled extends JavaPlugin implements Listener {

    @Override
    public void onEnable() {
        getServer().getPluginManager().registerEvents(this, this);
    }

    @EventHandler
    public void onPlayerJump(@NotNull PlayerMoveEvent event) {
        if (event.getFrom().getY() < event.getTo().getY()) {
            event.getPlayer().sendMessage( "\u041c\u043e\u043b\u043e\u0434\u0435\u0446!");
        }
    }

}
