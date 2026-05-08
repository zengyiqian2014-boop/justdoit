#!/bin/bash

echo "Building SSS Exhibition Website..."

# =========================
# 1. 创建目录结构
# =========================

mkdir -p ancient singapore solution assets/css

# =========================
# 2. CSS（SSS绿色展览风）
# =========================

cat > assets/css/style.css <<EOF
body {
    font-family: Arial;
    margin: 0;
    background: #f3f9f4;
    color: #1f2d1f;
}

.header {
    background: linear-gradient(135deg, #1f6f3d, #2ecc71);
    color: white;
    padding: 60px;
    text-align: center;
}

.card {
    background: white;
    margin: 20px;
    padding: 20px;
    border-radius: 12px;
    border-left: 6px solid #2ecc71;
    transition: 0.3s;
}

.card:hover {
    transform: scale(1.02);
}

.grid {
    display: flex;
    gap: 20px;
    margin: 20px;
}

.box {
    flex: 1;
    background: white;
    padding: 20px;
    border-radius: 12px;
    transition: 0.3s;
}

.box:hover {
    transform: translateY(-5px);
}

a {
    color: #1f6f3d;
    font-weight: bold;
    text-decoration: none;
}

.footer {
    background: #1f6f3d;
    color: white;
    text-align: center;
    padding: 20px;
    margin-top: 40px;
}
EOF

# =========================
# 3. 主页面
# =========================

cat > index.html <<EOF
<!DOCTYPE html>
<html>
<head>
    <title>SSS Sustainability Exhibition</title>
    <link rel="stylesheet" href="assets/css/style.css">
</head>

<body>

<div class="header">
    <h1>Learning From Ancient Civilisations</h1>
    <p>St. Stephen’s School Sustainability Exhibition</p>
</div>

<div class="card">
    <h2>About This Project</h2>
    <p>
        Inspired by SSS values: Smart, Selfless, Sustainability.
        This exhibition explores ancient solutions and Singapore’s modern sustainability.
    </p>
</div>

<div class="grid">

<div class="box">
    <h3>Ancient Civilisations</h3>
    <p>Egypt, Indus Valley, Greece</p>
    <a href="ancient/">Enter</a>
</div>

<div class="box">
    <h3>Singapore Issues</h3>
    <p>Water scarcity & urban challenges</p>
    <a href="singapore/">Enter</a>
</div>

<div class="box">
    <h3>Solution</h3>
    <p>Smart water recycling system</p>
    <a href="solution/">Enter</a>
</div>

</div>

<footer class="footer">
© 2026 Made by Eric. All rights reserved.
</footer>

</body>
</html>
EOF

# =========================
# 4. Ancient pages
# =========================

mkdir -p ancient

cat > ancient/index.html <<EOF
<h1>Ancient Civilisations</h1>

<div class="card">
Ancient civilisations used natural systems like rivers and water power for survival.
</div>

<ul>
<li><a href="egypt.html">Egypt - Nile Irrigation</a></li>
<li><a href="indus.html">Indus Valley - Cooling Architecture</a></li>
<li><a href="greece.html">Greece - Hydropower</a></li>
</ul>

<a href="../index.html">Back</a>
EOF

cat > ancient/egypt.html <<EOF
<h1>Egypt - Nile Irrigation</h1>

<div class="card">
Based on basin irrigation, Egyptians used Nile floods to naturally irrigate crops.
</div>

<a href="index.html">Back</a>
EOF

cat > ancient/indus.html <<EOF
<h1>Indus Valley</h1>

<div class="card">
Homes used natural ventilation and cooling architecture to reduce heat.
</div>

<a href="index.html">Back</a>
EOF

cat > ancient/greece.html <<EOF
<h1>Ancient Greece</h1>

<div class="card">
Early hydropower systems were used to reduce manual labour.
</div>

<a href="index.html">Back</a>
EOF

# =========================
# 5. Singapore pages
# =========================

mkdir -p singapore

cat > singapore/index.html <<EOF
<h1>Singapore Sustainability Issues</h1>

<div class="card">
Singapore faces water scarcity, limited land, and climate challenges.
</div>

<ul>
<li><a href="water.html">Water Management</a></li>
<li><a href="green.html">Green City</a></li>
</ul>

<a href="../index.html">Back</a>
EOF

cat > singapore/water.html <<EOF
<h1>Water Management</h1>

<div class="card">
NEWater recycles wastewater into clean drinking water.
</div>

<a href="index.html">Back</a>
EOF

cat > singapore/green.html <<EOF
<h1>Green City</h1>

<div class="card">
Singapore integrates greenery into urban planning.
</div>

<a href="index.html">Back</a>
EOF

# =========================
# 6. Solution page
# =========================

mkdir -p solution

cat > solution/index.html <<EOF
<h1>Proposed Solution</h1>

<div class="card">
Smart Water Recycling System inspired by ancient irrigation systems.
</div>

<div class="card">
Rainwater is collected, treated, and reused for parks and farming.
</div>

<a href="../index.html">Back</a>
EOF

# =========================
# 7. GitHub deploy
# =========================

git add .
git commit -m "SSS exhibition website updated"
git push origin main

echo "DONE - Website deployed to GitHub Pages"