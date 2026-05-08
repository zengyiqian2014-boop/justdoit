#!/bin/bash

echo "Building SSS Exhibition Website..."

# =========================
# 目录结构
# =========================

mkdir -p ancient singapore solution assets/css assets/img

# =========================
# CSS（SSS绿色+展览风）
# =========================

cat > assets/css/style.css <<EOF
body {
    font-family: Arial;
    margin: 0;
    background: linear-gradient(to bottom, #f3f9f4, #eaf6ec);
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
    margin: 20px auto;
    padding: 20px;
    width: 85%;
    border-radius: 12px;
    box-shadow: 0 5px 15px rgba(0,0,0,0.1);
    border-left: 6px solid #2ecc71;
}

.grid {
    display: flex;
    gap: 20px;
    margin: 30px;
}

.box {
    flex: 1;
    background: white;
    padding: 20px;
    border-radius: 12px;
    text-align: center;
    box-shadow: 0 4px 10px rgba(0,0,0,0.08);
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
# INDEX (主页)
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
    <p>St. Stephen's School Sustainability Exhibition</p>
</div>

<div class="card">
    <h2>About This Project</h2>
    <p>
        Inspired by SSS values: Smart, Selfless, Sustainability.
        This project shows how ancient civilisations influence Singapore's sustainability.
    </p>
</div>

<div class="grid">

<div class="box">
    <h3>Ancient Civilisations</h3>
    <p>Egypt, Indus Valley, Rome</p>
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
    <p>© 2026 Made by Eric. All rights reserved.</p>
</footer>

</body>
</html>
EOF

# =========================
# ANCIENT
# =========================

mkdir -p ancient

cat > ancient/index.html <<EOF
<h1>Ancient Civilisations</h1>

<div class="card">
Ancient civilisations used natural systems like rivers for sustainability.
</div>

<ul>
<li><a href="egypt.html">Egypt</a></li>
<li><a href="indus.html">Indus Valley</a></li>
<li><a href="rome.html">Rome</a></li>
</ul>

<a href="../index.html">Back</a>

<footer class="footer">
© 2026 Made by Eric. All rights reserved.
</footer>
EOF

cat > ancient/egypt.html <<EOF
<h1>Ancient Egypt</h1>

<div class="card">
Nile River flooding provided irrigation and fertile soil for farming.
</div>

<a href="index.html">Back</a>

<footer class="footer">
© 2026 Made by Eric. All rights reserved.
</footer>
EOF

cat > ancient/indus.html <<EOF
<h1>Indus Valley</h1>

<div class="card">
Advanced drainage systems and planned cities supported sustainability.
</div>

<a href="index.html">Back</a>

<footer class="footer">
© 2026 Made by Eric. All rights reserved.
</footer>
EOF

cat > ancient/rome.html <<EOF
<h1>Ancient Rome</h1>

<div class="card">
Aqueducts transported clean water efficiently across cities.
</div>

<a href="index.html">Back</a>

<footer class="footer">
© 2026 Made by Eric. All rights reserved.
</footer>
EOF

# =========================
# SINGAPORE
# =========================

mkdir -p singapore

cat > singapore/index.html <<EOF
<h1>Singapore Sustainability Issues</h1>

<div class="card">
Singapore faces water scarcity, land limitation, and climate challenges.
</div>

<ul>
<li><a href="water.html">Water Management</a></li>
<li><a href="green.html">Green City</a></li>
</ul>

<a href="../index.html">Back</a>

<footer class="footer">
© 2026 Made by Eric. All rights reserved.
</footer>
EOF

cat > singapore/water.html <<EOF
<h1>Water Management</h1>

<div class="card">
NEWater recycles wastewater into clean drinking water.
</div>

<a href="index.html">Back</a>

<footer class="footer">
© 2026 Made by Eric. All rights reserved.
</footer>
EOF

cat > singapore/green.html <<EOF
<h1>Green City</h1>

<div class="card">
Singapore integrates greenery into urban planning for sustainability.
</div>

<a href="index.html">Back</a>

<footer class="footer">
© 2026 Made by Eric. All rights reserved.
</footer>
EOF

# =========================
# SOLUTION
# =========================

mkdir -p solution

cat > solution/index.html <<EOF
<h1>Proposed Solution</h1>

<div class="card">
Smart Water Recycling System inspired by ancient irrigation systems.
</div>

<div class="card">
Rainwater is collected, treated, and reused for parks and greenery.
</div>

<a href="../index.html">Back</a>

<footer class="footer">
© 2026 Made by Eric. All rights reserved.
</footer>
EOF

# =========================
# GIT PUSH
# =========================

git add .
git commit -m "SSS exhibition full website"
git push origin main

echo "DONE - Website deployed"