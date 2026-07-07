# 📝 My Quarto Blog Workflow

This repository contains the source files for my Quarto blog, which is deployed to Netlify via a **Pre-rendered / Static HTML tracking loop**. 

Because Netlify acts as a direct file host for this project, all compilation happens locally on your computer using `quarto render`. The final production assets are served directly from the `_site/` directory.

---

## 🚀 How to Create a New Post

### Step 1: Create the Post Folder and File
Inside your root directory, navigate to the `posts/` folder and create a new subfolder named after your post title (use hyphens for spaces):
```text
posts/
└── my-awesome-new-post/
    ├── index.qmd       <-- Your blog post content file
    └── image1.png      <-- Any local images or charts used in the post
```

### Step 2: Write your Front Matter (YAML)
Open your new `index.qmd` file and structure the top metadata like this. Ensure you tag it with `categories` so it registers inside your home page's responsive filter pills:

```yaml
---
title: "My Awesome New Post"
description: "A quick summary of what this blog post is about."
date: "2026-06-21"
categories: [Craft, Other, Pallet Projects, Ties]
---

## Introduction
Start writing your post content here...

### Adding an Image with a Caption
![This is my image caption text](image1.png)
```
---

### Step 3: Add Page View Counter code
At the bottom of the .qmd file add:
```
<br><br>

<p style="text-align: center; margin-top: 2rem; font-size: 0.85rem; font-weight: 500; color: gray;">
  This page has been read <span id="goat-count" style="font-weight: bold; color: currentColor;">...</span> times.
</p>

<script>
  (function() {
    let path = window.location.pathname;

    // Strip trailing slashes to accurately match your "postfolder.json" format
    if (path.length > 1 && path.endsWith('/')) {
      path = path.slice(0, -1);
    }

    const targetUrl = 'https://bengin.goatcounter.com/counter//' + path + '.json';

    fetch(targetUrl)
      .then(response => {
        // If it's a 404 error, GoatCounter is saying "This page has 0 historical views"
        if (response.status === 404) {
          return { count: 0 }; 
        }
        // Catch actual fatal server network drops
        if (!response.ok) {
          throw new Error('API or CORS issue');
        }
        return response.json();
      })
      .then(data => {
        // Seamless pluralization checker for perfect grammar
        let count = data.count;
        document.getElementById('goat-count').innerText = count;
      })
      .catch(err => {
        // Only falls back to "a few" if an adblocker blocks the connection completely
        document.getElementById('goat-count').innerText = "a few";
      });
  })();
</script>
```


## 🚀 How to update with new tie knot

### Step 1: Update tie config
Update the `tbl_update_date` variable.
Update the `ties_input_df` tibble.
```text
shared_code/
└── tie_config.R
```

### Step 2: Include tie image file
Copy the tie image file to the "img" folder with the file name the same as `name` variable in the `ties_input_df` tibble.

---
## Important note about images
To keep the image file size small, open the image in Gimp, then export with about 12% quality.

---

## 🛠️ Testing and Building Locally

Before you publish to the web, always test your changes locally to ensure the responsive CSS layouts look perfect on both mobile and desktop screens.

1. **Preview the blog:**
   Run the preview engine to open a live-updating copy of the site in your browser:
   ```bash
   quarto preview
   ```
2. **Compile the final site (CRITICAL):**
   Once you are happy with the post, you **must compile the markdown into HTML** before committing. This bakes all modifications into the final `_site/` directory:
   ```bash
   quarto render
   ```

---

## 🐙 Git Commit & Deployment Workflow

Because Netlify automatically updates the live site the moment you push to GitHub, you must commit the exact mix of your source files and your compiled production folder.

### 1. File Tracking Reference

| File / Folder | Action | Why? |
| :--- | :--- | :--- |
| `posts/my-awesome-new-post/` | **COMMIT** ✅ | Contains your source text, markdown content, and local images. |
| `styles.css` | **COMMIT** ✅ | Holds your custom horizontal layout styles for the category filter pills. |
| `blog.qmd` | **COMMIT** ✅ | Houses your primary post list homepage metadata settings. |
| `_site/` | **COMMIT** ✅ | **CRITICAL.** Netlify requires this folder to display your live pages. |
| `_freeze/` | *IGNORE* ❌ | Left out of Git; local code execution outputs are already baked inside `_site/`. |
| `.quarto/` | *IGNORE* ❌ | Temporary internal system cache directory. |

### 2. The Terminal Deployment Commands

Run quarto render to create the _site files:

```bash
# Step A: Compile the newest post and updates into the local _site folder
quarto render

```
For a new blog post we add all files under the new post folder, as well as the rendered _site folder:
```bash

git add posts/my-awesome-new-post/
git add _site/
```

For updating the tie config, we commit changes to the "tie_config.R" file as well as the tie image under the folder "img".

---

## ⚙️ Project Infrastructure Note
Your project's `.gitignore` file must look like this to ensure system caches stay out of your remote repository while allowing your production code to push safely:
```text
# Block internal cache and freeze folders
/.quarto/
/_freeze/
/netlify.toml

# ALLOW tracking of the build output folder (Do NOT add _site/ here)
```
