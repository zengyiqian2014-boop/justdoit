#!/bin/bash

echo "🌿 Rebuilding GREEN PREMIUM WEBSITE (stable + no 404)..."

# =========================
# CLEAN
# =========================
rm -rf css js civilisations
rm -f *.html

mkdir css
mkdir js
mkdir civilisations

# =========================
# CSS - 高级绿色版本
# =========================
cat > css/style.css << 'EOF'
body{
    margin:0;
    font-family:Arial,sans-serif;
    background:#f4f7f4;
    color:#222;
}

/* 顶部导航 */
header{
    background:#0f3d2e;
    padding:15px 30px;
}

nav ul{
    display:flex;
    gap:20px;
    list-style:none;
    margin:0;
    padding:0;
}

nav a{
    color:white;
    text-decoration:none;
    font-weight:bold;
    font-size:18px;
}

/* 🌿 高级绿色 Hero（重点恢复） */
.hero{
    background:
    linear-gradient(135deg, rgba(15,61,46,0.75), rgba(27,94,32,0.75)),
    url('https://images.unsplash.com/photo-1506744038136-46273834b3fb?auto=format&fit=crop&w=1600&q=80');

    background-size:cover;
    background-position:center;

    color:white;
    text-align:center;
    padding:150px 20px;
}

.hero h1{
    font-size:64px;
    margin-bottom:20px;
    letter-spacing:1px;
}

.hero h2{
    font-size:28px;
    font-weight:300;
}

/* 第二层绿色条 */
.subbar{
    background:linear-gradient(90deg,#0f3d2e,#1b5e20);
    color:white;
    text-align:center;
    padding:16px;
    font-size:16px;
    letter-spacing:0.5px;
}

/* 内容区 */
.content{
    max-width:1100px;
    margin:40px auto;
    background:white;
    padding:35px;
    border-radius:20px;
    box-shadow:0 6px 25px rgba(0,0,0,0.1);
    line-height:1.8;
    font-size:18px;
}

/* 卡片 */
.card-grid{
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(250px,1fr));
    gap:25px;
}

.card{
    background:#fff;
    border-radius:15px;
    overflow:hidden;
    box-shadow:0 5px 18px rgba(0,0,0,0.08);
}

.card img{
    width:100%;
    height:180px;
    object-fit:cover;
}

.card-content{
    padding:20px;
}

/* footer */
footer{
    background:#0f3d2e;
    color:white;
    text-align:center;
    padding:20px;
    margin-top:50px;
}
EOF

# =========================
# JS
# =========================
cat > js/script.js << 'EOF'
console.log("Premium green site loaded");
EOF

# =========================
# INDEX (全部用绝对路径，彻底解决404)
# =========================
cat > index.html << 'EOF'
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sustainability Project</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>

<header>
<nav>
<ul>
<li><a href="/bigmac/index.html">Home</a></li>
<li><a href="/bigmac/about.html">About</a></li>
<li><a href="/bigmac/civilisations/index.html">Civilisations</a></li>
<li><a href="/bigmac/singapore.html">Singapore</a></li>
<li><a href="/bigmac/solution.html">Solution</a></li>
<li><a href="/bigmac/reflection.html">Reflection</a></li>
</ul>
</nav>
</header>

<div class="hero">
<h1>Ancient Civilisations</h1>
<h2>Green Sustainability Inspiration</h2>
</div>

<div class="subbar">
Explore how ancient systems solve modern problems
</div>

<div class="content">
<h2>Overview</h2>
<p>This project shows how ancient civilisations inspire sustainable urban design today.</p>
</div>

<footer>© 2026 Made by Eric</footer>

</body>
</html>
EOF

# =========================
# SIMPLE PAGE FUNCTION
# =========================
page () {
FILE=$1
TITLE=$2
TEXT=$3

cat > $FILE << EOF
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>$TITLE</title>
<link rel="stylesheet" href="/bigmac/css/style.css">
</head>
<body>

<header>
<nav>
<ul>
<li><a href="/bigmac/index.html">Home</a></li>
<li><a href="/bigmac/civilisations/index.html">Civilisations</a></li>
</ul>
</nav>
</header>

<div class="hero">
<h1>$TITLE</h1>
</div>

<div class="subbar">
Green sustainability project
</div>

<div class="content">
<p>$TEXT</p>
</div>

<footer>© 2026 Made by Eric</footer>

</body>
</html>
EOF
}

# =========================
# ROOT PAGES
# =========================
page "about.html" "About" "This project studies sustainability in ancient civilisations."
page "singapore.html" "Singapore Challenges" "Urban heat and water management issues."
page "solution.html" "Solution" "Use ancient systems for modern city planning."
page "reflection.html" "Reflection" "Ancient wisdom still matters today."

# =========================
# CIVILISATIONS INDEX
# =========================
cat > civilisations/index.html << 'EOF'
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Civilisations</title>
<link rel="stylesheet" href="/bigmac/css/style.css">
</head>
<body>

<header>
<nav>
<ul>
<li><a href="/bigmac/index.html">Home</a></li>
<li><a href="/bigmac/civilisations/index.html">Civilisations</a></li>
</ul>
</nav>
</header>

<div class="hero">
<h1>Ancient Civilisations</h1>
</div>

<div class="subbar">
Select a civilisation
</div>

<div class="content">
<ul>
<li><a href="/bigmac/civilisations/indus.html">Indus Valley</a></li>
<li><a href="/bigmac/civilisations/egypt.html">Ancient Egypt</a></li>
<li><a href="/bigmac/civilisations/rome.html">Roman Aqueducts</a></li>
</ul>
</div>

<footer>© 2026 Made by Eric</footer>

</body>
</html>
EOF

# =========================
# DETAIL PAGES
# =========================
page "civilisations/indus.html" "Indus Valley" "Advanced drainage and city planning."
page "civilisations/egypt.html" "Ancient Egypt" "Nile-based irrigation system."
page "civilisations/rome.html" "Roman Aqueducts" "Gravity-based water transport."

echo "✅ DONE: GREEN PREMIUM VERSION + 404 FIXED"
echo "🚀 RUN:"
git add .
git commit -m 'final green premium fix'
git push