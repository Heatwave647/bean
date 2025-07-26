# Red Line Loading Screen (`rd-loading`)

A sleek, animated, and configurable loading screen for FiveM, built for the "Red Line: Cayo Perico Anomaly" server concept. This resource provides an atmospheric and informative entry point for players, designed to be easily modified and integrated into any server.

It is fully standalone and does not require any specific framework.

![image](https://i.imgur.com/VYLBpFH.png) 

## Features

- **Code-Only Animated Background:** A lightweight, non-intrusive animated grid and "temporal anomaly" effect that runs without any video files.
- **Custom Mouse Cursor:** A clean, theme-appropriate custom cursor.
- **Background Music & Controls:** Includes a looping background music player with volume and play/pause controls.
* **Informational Tabs:** A clean, tabbed interface to show players server information, rules, guides, staff, and connection links.
* **Highly Configurable:** Easily change text, links, and theme colors.
* **Automatic Hiding:** The loading screen automatically disappears as soon as the player spawns into the game, requiring no button press.
* **Well-Commented Code:** All files (`HTML`, `CSS`, `JS`, `Lua`) are thoroughly commented for easy understanding and modification.

---

## Installation

1.  **Download:** Download the `rd-loading` resource from this repository.
2.  **Place in Resources:** Unzip the file and place the `rd-loading` folder into your server's `resources` directory.
3.  **Configure Server:** Add the following line to your `server.cfg` file:

    ```cfg
    ensure rd-loading
    ```

4.  **Restart Server:** Restart your FiveM server. The new loading screen will be active for anyone who connects.

---

## Configuration & Customization

Customizing the loading screen is designed to be straightforward. Most changes are made in the `html/index.html` and `html/style.css` files.

### 🎵 Changing the Music

1.  Get your desired music track and make sure it is in `.mp3` format.
2.  Name the file `music.mp3`.
3.  Place your `music.mp3` file inside the `html/assets/` folder, replacing the placeholder file. The script will automatically pick it up.

### 📝 Editing Text and Links

All text content (rules, guides, etc.) and connection links are located in the **`html/index.html`** file. Open it with any text editor to make changes.

**Example: Changing a rule**
Find this section:
```html
<section id="rules" class="content-section">
    <h2>Field Regulations</h2>
    <ul>
        <li><i class="fas fa-ban"></i> <strong>Zero Tolerance:</strong> Cheating, exploiting, or hacking.</li>
        </ul>
</section>
```
Simply edit the text within the `<li>` tags to match your server's rules.

**Example: Changing the Discord link**
Find this section:
```html
<section id="connect" class="content-section">
    <h2>Establish Comms</h2>
    <div class="connect-links">
       <a href="#" target="_blank"><i class="fab fa-discord"></i> Join our Discord</a>
       </div>
</section>
```
Replace the `#` in `href="#"` with your actual Discord invite link.

### 🎨 Changing Theme Colors

You can easily change the main theme color (the red highlights) by editing the CSS variables at the top of the **`html/style.css`** file.

```css
/* Define CSS Variables (Custom Properties) for easy theme changes */
:root {
    --primary-red: #ff3333; /* CHANGE THIS VALUE */
    --dark-red: #d10000;   /* CHANGE THIS VALUE */
    /* ... other colors ... */
    --border-color: rgba(255, 51, 51, 0.5); /* This one is also based on red */
}
```
Change the hex codes for `--primary-red` and `--dark-red` to any color you like to instantly re-theme the entire loading screen.
