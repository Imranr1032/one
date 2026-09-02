<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.5" />
  <title>NexusShop · friendly e‑commerce</title>
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&family=Playfair+Display:wght@700&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
  <style>
    /* ----- reset & base ----- */
    * { margin: 0; padding: 0; box-sizing: border-box; }
    body {
      font-family: 'Inter', system-ui, -apple-system, sans-serif;
      background: #f6f5f2;
      color: #1e1e2a;
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }
    :root {
      --accent: #d46a4a;
      --accent-soft: #f2d4c9;
      --accent-dark: #b8563a;
      --primary: #1e1e2a;
      --card: #ffffff;
      --muted: #6b6b7a;
      --light: #f0eeeb;
      --shadow: 0 8px 24px rgba(0,0,0,0.04);
      --shadow-hover: 0 16px 40px rgba(0,0,0,0.07);
      --radius: 18px;
      --radius-sm: 10px;
    }
    .container { max-width: 1280px; margin: 0 auto; padding: 0 20px; }
    img { max-width: 100%; display: block; }
    a { text-decoration: none; color: inherit; }
    button { background: none; border: none; font: inherit; cursor: pointer; color: inherit; }

    /* ----- header ----- */
    .header {
      background: rgba(255,255,255,0.92);
      backdrop-filter: blur(12px);
      -webkit-backdrop-filter: blur(12px);
      border-bottom: 1px solid rgba(0,0,0,0.03);
      position: sticky;
      top: 0;
      z-index: 100;
    }
    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 12px;
      padding: 8px 0;
      flex-wrap: wrap;
    }
    .brand {
      font-weight: 800;
      font-size: 1.5rem;
      letter-spacing: -0.3px;
      display: flex;
      align-items: center;
      gap: 8px;
      color: var(--primary);
    }
    .brand i { color: var(--accent); font-size: 1.7rem; }
    .brand span.accent { color: var(--accent); }

    .nav-links {
      display: flex;
      gap: 2px;
      list-style: none;
      align-items: center;
    }
    .nav-links a {
      padding: 8px 16px;
      border-radius: 40px;
      font-weight: 500;
      font-size: 0.9rem;
      color: var(--muted);
      transition: 0.2s;
    }
    .nav-links a:hover, .nav-links a.active {
      background: var(--light);
      color: var(--primary);
    }
    .nav-links a i { margin-right: 6px; }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 4px;
    }
    .icon-btn {
      width: 42px; height: 42px;
      display: grid;
      place-items: center;
      border-radius: 50%;
      color: var(--muted);
      transition: 0.2s;
      font-size: 1.2rem;
    }
    .icon-btn:hover { background: var(--light); color: var(--primary); }
    .cart-wrap { position: relative; }
    .cart-count {
      position: absolute;
      top: -4px; right: -4px;
      background: var(--accent);
      color: white;
      font-size: 0.65rem;
      font-weight: 700;
      width: 20px; height: 20px;
      border-radius: 50%;
      display: grid;
      place-items: center;
      border: 2px solid white;
      transition: 0.2s;
    }
    .search-wrap {
      display: flex;
      align-items: center;
      background: var(--light);
      border-radius: 40px;
      padding: 0 14px 0 18px;
      border: 2px solid transparent;
      transition: 0.2s;
      min-width: 180px;
    }
    .search-wrap:focus-within {
      border-color: var(--accent);
      background: white;
      box-shadow: 0 0 0 4px rgba(212,106,74,0.08);
    }
    .search-wrap input {
      border: 0;
      background: transparent;
      padding: 10px 0;
      font-size: 0.9rem;
      width: 100%;
      outline: none;
    }
    .search-wrap input::placeholder { color: #b0b0bc; }
    .search-wrap button { padding: 8px 0 8px 10px; color: var(--muted); }
    .search-wrap button:hover { color: var(--accent); }

    .mobile-toggle {
      display: none;
      width: 42px; height: 42px;
      border-radius: 50%;
      background: var(--light);
      font-size: 1.3rem;
    }
    #mobileMenu {
      display: none;
      background: white;
      border-top: 1px solid #eee;
      padding: 12px 0 20px;
    }
    #mobileMenu ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 2px;
    }
    #mobileMenu ul a {
      padding: 12px 16px;
      display: flex;
      align-items: center;
      gap: 12px;
      font-weight: 500;
      border-radius: var(--radius-sm);
    }
    #mobileMenu ul a:hover { background: var(--light); }

    /* ----- hero ----- */
    .hero {
      background: linear-gradient(135deg, #1a1a2e 0%, #2d2d44 100%);
      border-radius: var(--radius);
      margin: 20px 20px 0;
      padding: 60px 40px;
      position: relative;
      overflow: hidden;
      color: white;
    }
    .hero::after {
      content: '';
      position: absolute;
      inset: 0;
      background: url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80') center/cover no-repeat;
      opacity: 0.18;
      z-index: 0;
    }
    .hero .container { position: relative; z-index: 2; }
    .hero .badge {
      display: inline-block;
      background: rgba(212,106,74,0.25);
      color: var(--accent-soft);
      padding: 4px 20px;
      border-radius: 40px;
      font-weight: 600;
      font-size: 0.8rem;
      letter-spacing: 0.5px;
      margin-bottom: 14px;
    }
    .hero h1 {
      font-family: 'Playfair Display', serif;
      font-size: clamp(2.4rem, 6vw, 4rem);
      font-weight: 700;
      line-height: 1.1;
      max-width: 600px;
    }
    .hero p {
      color: rgba(255,255,255,0.8);
      font-size: 1.1rem;
      max-width: 480px;
      margin: 12px 0 28px;
    }
    .hero .actions { display: flex; gap: 14px; flex-wrap: wrap; }
    .btn {
      display: inline-flex;
      align-items: center;
      gap: 8px;
      padding: 12px 30px;
      border-radius: 60px;
      font-weight: 600;
      border: 2px solid transparent;
      transition: 0.2s;
      font-size: 0.95rem;
    }
    .btn-primary { background: var(--accent); color: white; border-color: var(--accent); }
    .btn-primary:hover { background: var(--accent-dark); border-color: var(--accent-dark); transform: translateY(-2px); box-shadow: 0 8px 24px rgba(212,106,74,0.3); }
    .btn-ghost { background: rgba(255,255,255,0.08); color: white; border-color: rgba(255,255,255,0.2); }
    .btn-ghost:hover { background: rgba(255,255,255,0.18); transform: translateY(-2px); }

    /* ----- section ----- */
    .section { padding: 52px 0; }
    .section-header {
      display: flex;
      align-items: flex-end;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 12px;
      margin-bottom: 28px;
    }
    .section-header h2 { font-size: 1.9rem; font-weight: 700; letter-spacing: -0.3px; }
    .section-header .sub { color: var(--muted); margin-top: 2px; }
    .view-all {
      font-weight: 600;
      color: var(--accent);
      display: flex;
      align-items: center;
      gap: 6px;
      font-size: 0.9rem;
      white-space: nowrap;
      transition: 0.2s;
    }
    .view-all:hover { gap: 12px; color: var(--accent-dark); }

    /* categories */
    .categories-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(140px, 1fr));
      gap: 18px;
    }
    .cat-card {
      background: var(--card);
      border-radius: var(--radius);
      padding: 22px 12px;
      text-align: center;
      box-shadow: var(--shadow);
      transition: 0.25s;
      border: 2px solid transparent;
      cursor: pointer;
    }
    .cat-card:hover { transform: translateY(-6px); box-shadow: var(--shadow-hover); border-color: var(--accent-soft); }
    .cat-card .icon {
      width: 54px; height: 54px;
      background: var(--accent-soft);
      border-radius: 50%;
      display: grid;
      place-items: center;
      margin: 0 auto 10px;
      font-size: 1.5rem;
      color: var(--accent);
      transition: 0.25s;
    }
    .cat-card:hover .icon { background: var(--accent); color: white; }
    .cat-card h4 { font-weight: 600; font-size: 0.95rem; }
    .cat-card .count { font-size: 0.8rem; color: var(--muted); }

    /* products */
    .products-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(210px, 1fr));
      gap: 22px;
    }
    .product-card {
      background: var(--card);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
      transition: 0.25s;
      border: 2px solid transparent;
      display: flex;
      flex-direction: column;
    }
    .product-card:hover { transform: translateY(-8px); box-shadow: var(--shadow-hover); border-color: var(--accent-soft); }
    .product-card .img-wrap {
      aspect-ratio: 1/1;
      background: var(--light);
      overflow: hidden;
      position: relative;
    }
    .product-card .img-wrap img { width: 100%; height: 100%; object-fit: cover; transition: 0.4s; }
    .product-card:hover .img-wrap img { transform: scale(1.05); }
    .product-card .badge {
      position: absolute;
      top: 12px; left: 12px;
      background: var(--accent);
      color: white;
      padding: 3px 14px;
      border-radius: 40px;
      font-size: 0.7rem;
      font-weight: 700;
      text-transform: uppercase;
      letter-spacing: 0.3px;
    }
    .product-card .badge.sale { background: #e9b741; color: #1e1e2a; }
    .product-card .wish {
      position: absolute;
      top: 12px; right: 12px;
      width: 36px; height: 36px;
      background: rgba(255,255,255,0.9);
      border-radius: 50%;
      display: grid;
      place-items: center;
      color: var(--muted);
      backdrop-filter: blur(4px);
      transition: 0.2s;
      font-size: 1rem;
    }
    .product-card .wish:hover { color: var(--accent); background: white; transform: scale(1.1); }
    .product-card .body { padding: 16px 16px 8px; flex: 1; }
    .product-card .body .cat { font-size: 0.7rem; color: var(--muted); text-transform: uppercase; letter-spacing: 0.5px; font-weight: 600; }
    .product-card .body h5 { font-size: 0.95rem; font-weight: 600; margin: 4px 0 6px; display: -webkit-box; -webkit-line-clamp: 2; -webkit-box-orient: vertical; overflow: hidden; }
    .product-card .body .price { font-weight: 700; font-size: 1.2rem; }
    .product-card .body .old { color: var(--muted); text-decoration: line-through; font-size: 0.9rem; margin-left: 8px; }
    .product-card .body .rating { color: #f5b342; font-size: 0.85rem; margin-top: 4px; }
    .product-card .body .rating span { color: var(--muted); margin-left: 4px; }
    .product-card .footer { padding: 0 16px 16px; }
    .product-card .footer .add {
      width: 100%;
      padding: 10px;
      background: var(--primary);
      color: white;
      border-radius: var(--radius-sm);
      font-weight: 600;
      transition: 0.2s;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
    }
    .product-card .footer .add:hover { background: var(--accent); }
    .product-card .footer .add.added { background: #2b8c7a; }

    /* deal */
    .deal-wrap {
      display: flex;
      background: var(--card);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
      flex-wrap: wrap;
    }
    .deal-wrap .deal-img { flex: 1 1 40%; min-height: 240px; background: var(--light); }
    .deal-wrap .deal-img img { width: 100%; height: 100%; object-fit: cover; }
    .deal-wrap .deal-content { flex: 1 1 50%; padding: 34px 38px; display: flex; flex-direction: column; justify-content: center; }
    .deal-wrap .tag { background: #e9b741; color: #1e1e2a; padding: 3px 18px; border-radius: 40px; font-weight: 700; font-size: 0.75rem; text-transform: uppercase; align-self: flex-start; margin-bottom: 8px; }
    .deal-wrap h3 { font-size: 1.8rem; font-weight: 700; }
    .deal-wrap .desc { color: var(--muted); margin: 6px 0 12px; }
    .deal-wrap .price-big { font-size: 2.2rem; font-weight: 800; }
    .deal-wrap .price-big .old { font-size: 1.2rem; font-weight: 400; color: var(--muted); text-decoration: line-through; margin-left: 12px; }
    .deal-wrap .stock { font-size: 0.9rem; color: var(--muted); margin: 4px 0 14px; }
    .deal-wrap .stock strong { color: var(--accent); }
    .timer-grid {
      display: flex;
      gap: 12px;
      margin: 12px 0 20px;
    }
    .timer-box {
      background: var(--primary);
      color: white;
      padding: 10px 14px;
      border-radius: var(--radius-sm);
      min-width: 64px;
      text-align: center;
    }
    .timer-box .num { font-size: 1.7rem; font-weight: 700; line-height: 1.2; }
    .timer-box .label { font-size: 0.6rem; opacity: 0.7; text-transform: uppercase; letter-spacing: 0.5px; }

    /* testimonials */
    .testimonials-scroll {
      display: flex;
      gap: 20px;
      overflow-x: auto;
      padding: 8px 4px 16px;
      scroll-snap-type: x mandatory;
    }
    .testimonials-scroll::-webkit-scrollbar { height: 4px; }
    .testimonials-scroll::-webkit-scrollbar-thumb { background: var(--accent-soft); border-radius: 10px; }
    .testimonial-card {
      flex: 0 0 300px;
      background: var(--card);
      border-radius: var(--radius);
      padding: 24px 26px;
      box-shadow: var(--shadow);
      scroll-snap-align: start;
      transition: 0.2s;
    }
    .testimonial-card:hover { box-shadow: var(--shadow-hover); }
    .testimonial-card .stars { color: #f5b342; font-size: 1rem; letter-spacing: 2px; }
    .testimonial-card blockquote { font-style: italic; margin: 10px 0 14px; color: #2d2d44; }
    .testimonial-card .author { display: flex; align-items: center; gap: 12px; }
    .testimonial-card .author img { width: 46px; height: 46px; border-radius: 50%; object-fit: cover; background: var(--light); }
    .testimonial-card .author .name { font-weight: 600; }
    .testimonial-card .author .role { font-size: 0.8rem; color: var(--muted); }

    /* newsletter */
    .newsletter {
      background: linear-gradient(135deg, #1e1e2a, #2d2d44);
      border-radius: var(--radius);
      padding: 44px 48px;
      color: white;
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
      gap: 28px;
    }
    .newsletter h3 { font-size: 1.7rem; font-weight: 700; }
    .newsletter p { opacity: 0.75; }
    .newsletter form { display: flex; gap: 12px; flex: 1; min-width: 280px; flex-wrap: wrap; }
    .newsletter input {
      flex: 1;
      padding: 14px 22px;
      border-radius: 60px;
      border: 0;
      background: rgba(255,255,255,0.08);
      color: white;
      font-size: 0.95rem;
      outline: 2px solid transparent;
      min-width: 170px;
    }
    .newsletter input::placeholder { color: rgba(255,255,255,0.5); }
    .newsletter input:focus { outline-color: var(--accent); background: rgba(255,255,255,0.14); }
    .newsletter .btn { background: var(--accent); color: white; border-color: var(--accent); padding: 14px 32px; }
    .newsletter .btn:hover { background: var(--accent-dark); border-color: var(--accent-dark); }
    #newsletterMsg { width: 100%; margin-top: 8px; font-size: 0.9rem; }

    /* footer */
    footer {
      margin-top: 20px;
      padding: 44px 0 24px;
      border-top: 1px solid #eae8e4;
    }
    .footer-grid {
      display: grid;
      grid-template-columns: 2fr 1fr 1fr 1fr;
      gap: 32px;
      margin-bottom: 28px;
    }
    .footer-grid .brand-col p { color: var(--muted); font-size: 0.9rem; max-width: 280px; line-height: 1.6; }
    .footer-grid .socials { display: flex; gap: 10px; margin-top: 16px; }
    .footer-grid .socials a {
      width: 42px; height: 42px;
      background: var(--light);
      border-radius: 50%;
      display: grid;
      place-items: center;
      color: var(--muted);
      transition: 0.2s;
    }
    .footer-grid .socials a:hover { background: var(--accent); color: white; transform: translateY(-2px); }
    .footer-grid .col h5 { font-weight: 700; margin-bottom: 14px; font-size: 1rem; }
    .footer-grid .col ul { list-style: none; display: flex; flex-direction: column; gap: 6px; }
    .footer-grid .col ul a { color: var(--muted); font-size: 0.9rem; transition: 0.2s; }
    .footer-grid .col ul a:hover { color: var(--accent); }
    .footer-bottom { text-align: center; color: var(--muted); font-size: 0.85rem; border-top: 1px solid #eae8e4; padding-top: 20px; }

    /* responsive */
    @media (max-width: 992px) {
      .nav-links { display: none; }
      .mobile-toggle { display: grid; place-items: center; }
      .footer-grid { grid-template-columns: 1fr 1fr; }
      .deal-wrap .deal-content { padding: 28px; }
    }
    @media (max-width: 700px) {
      .hero { margin: 12px 12px 0; padding: 36px 20px; }
      .search-wrap { min-width: 120px; }
      .products-grid { grid-template-columns: repeat(2, 1fr); gap: 14px; }
      .categories-grid { grid-template-columns: repeat(3, 1fr); gap: 12px; }
      .footer-grid { grid-template-columns: 1fr; }
      .newsletter { padding: 30px 22px; flex-direction: column; text-align: center; }
      .newsletter form { min-width: 100%; }
      .header-inner { flex-wrap: nowrap; }
      .brand { font-size: 1.2rem; }
    }
    @media (max-width: 480px) {
      .products-grid { grid-template-columns: 1fr 1fr; gap: 10px; }
      .categories-grid { grid-template-columns: 1fr 1fr; }
      .deal-wrap .deal-content { padding: 18px; }
      .timer-box { min-width: 50px; padding: 6px 10px; }
      .timer-box .num { font-size: 1.3rem; }
      .hero h1 { font-size: 1.8rem; }
    }
  </style>
</head>
<body>

<header class="header">
  <div class="container header-inner">
    <div style="display:flex;align-items:center;gap:6px;">
      <button class="mobile-toggle" id="mobileToggle" aria-label="menu"><i class="fas fa-bars"></i></button>
      <a class="brand" href="#"><i class="fas fa-store-alt"></i> Nexus<span class="accent">Shop</span></a>
    </div>

    <ul class="nav-links">
      <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
      <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
      <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
      <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
      <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
    </ul>

    <div style="display:flex;align-items:center;gap:10px;">
      <div class="search-wrap">
        <input type="search" id="searchInput" placeholder="Search..." aria-label="Search" />
        <button id="searchBtn"><i class="fas fa-search"></i></button>
      </div>
      <div class="header-actions">
        <button class="icon-btn" aria-label="account"><i class="far fa-user"></i></button>
        <button class="icon-btn" aria-label="wishlist"><i class="far fa-heart"></i></button>
        <div class="cart-wrap">
          <button class="icon-btn" id="cartBtn" aria-label="cart"><i class="fas fa-shopping-bag"></i></button>
          <span class="cart-count" id="cartCount">0</span>
        </div>
      </div>
    </div>
  </div>

  <!-- mobile -->
  <div id="mobileMenu">
    <div class="container">
      <ul>
        <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
        <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
        <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
        <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
        <li><a href="#"><i class="far fa-user"></i> Account</a></li>
        <li><a href="#"><i class="far fa-heart"></i> Wishlist</a></li>
      </ul>
    </div>
  </div>
</header>

<main>
  <!-- HERO -->
  <section class="hero">
    <div class="container">
      <div class="badge"><i class="fas fa-sparkles"></i> New collection 2026</div>
      <h1>Premium essentials,<br />delivered with care</h1>
      <p>Curated fashion, tech & lifestyle — free shipping on your first order.</p>
      <div class="actions">
        <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop now</button>
        <button class="btn btn-ghost" id="exploreDeals"><i class="fas fa-clock"></i> Explore deals</button>
      </div>
    </div>
  </section>

  <!-- CATEGORIES -->
  <section class="section" id="categories">
    <div class="container">
      <div class="section-header">
        <div><h2>Browse categories</h2><div class="sub">Find what you love</div></div>
        <a href="#" class="view-all">All <i class="fas fa-arrow-right"></i></a>
      </div>
      <div class="categories-grid" id="categoriesGrid"></div>
    </div>
  </section>

  <!-- PRODUCTS -->
  <section class="section" id="products">
    <div class="container">
      <div class="section-header">
        <div><h2>Trending now</h2><div class="sub">Popular picks from the community</div></div>
        <a href="#" class="view-all">View all <i class="fas fa-arrow-right"></i></a>
      </div>
      <div class="products-grid" id="productsGrid"></div>
    </div>
  </section>

  <!-- DEAL -->
  <section class="section" id="deals">
    <div class="container">
      <div class="section-header"><div><h2>⚡ Flash deal</h2><div class="sub">Limited stock — grab it now</div></div></div>
      <div class="deal-wrap">
        <div class="deal-img"><img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air M2" loading="lazy" /></div>
        <div class="deal-content">
          <span class="tag"><i class="fas fa-bolt"></i> limited offer</span>
          <h3>MacBook Air M2</h3>
          <p class="desc">Thin, light, and incredibly powerful — M2 chip redefines performance.</p>
          <div><span class="price-big">$999 <span class="old">$1,199</span></span></div>
          <p class="stock">Only <strong>12</strong> items left — hurry!</p>
          <div class="timer-grid" id="dealTimer">
            <div class="timer-box"><div class="num" id="dealDays">0</div><div class="label">Days</div></div>
            <div class="timer-box"><div class="num" id="dealHours">00</div><div class="label">Hrs</div></div>
            <div class="timer-box"><div class="num" id="dealMinutes">00</div><div class="label">Min</div></div>
            <div class="timer-box"><div class="num" id="dealSeconds">00</div><div class="label">Sec</div></div>
          </div>
          <button class="btn btn-primary" id="buyDeal"><i class="fas fa-cart-plus"></i> Add to cart</button>
        </div>
      </div>
    </div>
  </section>

  <!-- TESTIMONIALS -->
  <section class="section" id="testimonials">
    <div class="container">
      <div class="section-header"><div><h2>What customers say</h2><div class="sub">Real reviews, real people</div></div></div>
      <div class="testimonials-scroll" id="testimonialsList"></div>
    </div>
  </section>

  <!-- NEWSLETTER -->
  <section class="section">
    <div class="container">
      <div class="newsletter">
        <div><h3>Stay in the loop</h3><p>Exclusive offers, early access & new arrivals</p></div>
        <form id="newsletterForm" onsubmit="return false;">
          <input type="email" id="newsletterEmail" placeholder="Your email" aria-label="Email" required />
          <button class="btn" id="subscribeBtn"><i class="fas fa-paper-plane"></i> Subscribe</button>
          <div id="newsletterMsg"></div>
        </form>
      </div>
    </div>
  </section>
</main>

<footer>
  <div class="container">
    <div class="footer-grid">
      <div class="brand-col">
        <div class="brand"><i class="fas fa-store-alt"></i> Nexus<span class="accent">Shop</span></div>
        <p>Modern e‑commerce demo built with care. Quality products, seamless experience.</p>
        <div class="socials">
          <a href="#" aria-label="fb"><i class="fab fa-facebook-f"></i></a>
          <a href="#" aria-label="tw"><i class="fab fa-twitter"></i></a>
          <a href="#" aria-label="ig"><i class="fab fa-instagram"></i></a>
          <a href="#" aria-label="yt"><i class="fab fa-youtube"></i></a>
        </div>
      </div>
      <div class="col"><h5>Company</h5><ul><li><a href="#">About</a></li><li><a href="#">Careers</a></li><li><a href="#">Press</a></li><li><a href="#">Blog</a></li></ul></div>
      <div class="col"><h5>Support</h5><ul><li><a href="#">Help Center</a></li><li><a href="#">Shipping</a></li><li><a href="#">Returns</a></li><li><a href="#">Contact</a></li></ul></div>
      <div class="col"><h5>Legal</h5><ul><li><a href="#">Privacy</a></li><li><a href="#">Terms</a></li><li><a href="#">Cookies</a></li></ul></div>
    </div>
    <div class="footer-bottom">&copy; <span id="year"></span> NexusShop. All rights reserved.</div>
  </div>
</footer>

<script>
  // ---------- DATA ----------
  const CATEGORIES = [
    { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt', count: 24 },
    { id: 'laptops', name: 'Laptops', icon: 'fa-laptop', count: 18 },
    { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt', count: 42 },
    { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones', count: 31 },
    { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints', count: 27 },
    { id: 'accessories', name: 'Accessories', icon: 'fa-watch', count: 39 }
  ];

  const PRODUCTS = [
    { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'New', img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80', category: 'Smartphones' },
    { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, badge: '', img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80', category: 'Laptops' },
    { id: 3, title: 'Apple Watch Series 8', price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: 'Sale', img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80', category: 'Accessories' },
    { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, reviews: 53, badge: '', img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80', category: 'Footwear' },
    { id: 5, title: 'Sony A7 IV Camera', price: 2499, rating: 5, reviews: 42, badge: 'New', img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80', category: 'Gadgets' },
    { id: 6, title: 'Chanel No. 5', price: 120, rating: 5, reviews: 189, badge: '', img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80', category: 'Accessories' },
    { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, badge: 'Sale', img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80', category: 'Accessories' },
    { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156, badge: '', img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80', category: 'Gadgets' }
  ];

  const TESTIMONIALS = [
    { name: 'Ava Martin', role: 'Verified Buyer', avatar: 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80', text: 'Fast shipping and excellent support. The product exceeded my expectations!', stars: 5 },
    { name: 'Michael Lee', role: 'Frequent Shopper', avatar: 'https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80', text: 'Great selection and smooth checkout. Will definitely shop again.', stars: 4 },
    { name: 'Sophia Chen', role: 'Designer', avatar: 'https://images.unsplash.com/photo-1494790108378-be9c29b29330?auto=format&fit=crop&w=80&q=80', text: 'Love the quality and the packaging. Everything arrived in perfect condition.', stars: 5 },
    { name: 'James Wilson', role: 'Tech Enthusiast', avatar: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80', text: 'Amazing prices on electronics. The M2 MacBook deal was unbeatable.', stars: 5 }
  ];

  // ---------- STATE ----------
  let cartCount = 0;

  // ---------- DOM REFS ----------
  const categoriesGrid = document.getElementById('categoriesGrid');
  const productsGrid = document.getElementById('productsGrid');
  const cartCountEl = document.getElementById('cartCount');
  const searchInput = document.getElementById('searchInput');
  const searchBtn = document.getElementById('searchBtn');
  const mobileToggle = document.getElementById('mobileToggle');
  const mobileMenu = document.getElementById('mobileMenu');
  const newsletterForm = document.getElementById('newsletterForm');
  const newsletterEmail = document.getElementById('newsletterEmail');
  const newsletterMsg = document.getElementById('newsletterMsg');
  const testimonialsList = document.getElementById('testimonialsList');

  // ---------- HELPERS ----------
  function escapeHtml(text) {
    return String(text).replace(/[&<>"']/g, s => ({ '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;' }[s]));
  }

  function updateCartCount() {
    cartCountEl.textContent = cartCount;
    cartCountEl.style.transform = 'scale(1.35)';
    setTimeout(() => cartCountEl.style.transform = 'scale(1)', 200);
  }

  function addToCart(productId, btnEl) {
    const p = PRODUCTS.find(x => x.id === productId);
    if (!p) return;
    cartCount++;
    updateCartCount();
    if (btnEl) {
      const orig = btnEl.innerHTML;
      btnEl.innerHTML = '<i class="fas fa-check"></i> Added';
      btnEl.classList.add('added');
      setTimeout(() => {
        btnEl.innerHTML = orig;
        btnEl.classList.remove('added');
      }, 1400);
    }
    const cartBtn = document.getElementById('cartBtn');
    cartBtn.style.color = 'var(--accent)';
    setTimeout(() => cartBtn.style.color = '', 400);
  }

  function filterProducts(query) {
    const q = String(query || '').trim().toLowerCase();
    if (!q) { renderProducts(PRODUCTS); return; }
    const filtered = PRODUCTS.filter(p =>
      p.title.toLowerCase().includes(q) ||
      p.category.toLowerCase().includes(q)
    );
    renderProducts(filtered);
  }

  // ---------- RENDER ----------
  function renderCategories() {
    categoriesGrid.innerHTML = '';
    CATEGORIES.forEach(cat => {
      const el = document.createElement('div');
      el.className = 'cat-card';
      el.innerHTML = `
        <div class="icon"><i class="fas ${cat.icon}"></i></div>
        <h4>${cat.name}</h4>
        <div class="count">${cat.count} items</div>
      `;
      el.addEventListener('click', () => {
        searchInput.value = cat.name;
        filterProducts(cat.name);
        document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
      });
      categoriesGrid.appendChild(el);
    });
  }

  function renderProducts(list) {
    productsGrid.innerHTML = '';
    if (!list.length) {
      productsGrid.innerHTML = `<p style="grid-column:1/-1;text-align:center;padding:40px;color:var(--muted);">No products found.</p>`;
      return;
    }
    list.forEach(p => {
      const el = document.createElement('article');
      el.className = 'product-card';
      const badgeClass = p.badge === 'Sale' ? 'sale' : '';
      const badgeHtml = p.badge ? `<span class="badge ${badgeClass}">${p.badge}</span>` : '';
      const oldPriceHtml = p.oldPrice ? `<span class="old">$${p.oldPrice.toLocaleString()}</span>` : '';
      const stars = '★'.repeat(Math.round(p.rating)) + '☆'.repeat(5 - Math.round(p.rating));
      el.innerHTML = `
        <div class="img-wrap">
          <img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy" />
          ${badgeHtml}
          <button class="wish" aria-label="wishlist"><i class="far fa-heart"></i></button>
        </div>
        <div class="body">
          <div class="cat">${p.category}</div>
          <h5>${escapeHtml(p.title)}</h5>
          <div><span class="price">$${p.price.toLocaleString()}</span> ${oldPriceHtml}</div>
          <div class="rating">${stars} <span>(${p.reviews})</span></div>
        </div>
        <div class="footer">
          <button class="add" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button>
        </div>
      `;
      productsGrid.appendChild(el);
    });
    productsGrid.querySelectorAll('.add').forEach(btn => {
      btn.addEventListener('click', function(e) {
        e.stopPropagation();
        const id = Number(this.dataset.id);
        addToCart(id, this);
      });
    });
  }

  function renderTestimonials() {
    testimonialsList.innerHTML = '';
    TESTIMONIALS.forEach(t => {
      const stars = '★'.repeat(t.stars) + '☆'.repeat(5 - t.stars);
      const el = document.createElement('div');
      el.className = 'testimonial-card';
      el.innerHTML = `
        <div class="stars">${stars}</div>
        <blockquote>“${escapeHtml(t.text)}”</blockquote>
        <div class="author">
          <img src="${t.avatar}" alt="${escapeHtml(t.name)}" loading="lazy" />
          <div><div class="name">${escapeHtml(t.name)}</div><div class="role">${escapeHtml(t.role)}</div></div>
        </div>
      `;
      testimonialsList.appendChild(el);
    });
  }

  // ---------- DEAL TIMER ----------
  (function setupDealTimer() {
    const now = new Date();
    const target = new Date(now.getTime() + (24 * 60 + 36) * 60 * 1000);
    function tick() {
      const diff = target - new Date();
      if (diff <= 0) {
        document.getElementById('dealDays').textContent = '0';
        document.getElementById('dealHours').textContent = '00';
        document.getElementById('dealMinutes').textContent = '00';
        document.getElementById('dealSeconds').textContent = '00';
        return;
      }
      const days = Math.floor(diff / (24 * 3600 * 1000));
      const hours = Math.floor((diff % (24 * 3600 * 1000)) / (3600 * 1000));
      const mins = Math.floor((diff % (3600 * 1000)) / (60 * 1000));
      const secs = Math.floor((diff % (60 * 1000)) / 1000);
      document.getElementById('dealDays').textContent = days;
      document.getElementById('dealHours').textContent = String(hours).padStart(2, '0');
      document.getElementById('dealMinutes').textContent = String(mins).padStart(2, '0');
      document.getElementById('dealSeconds').textContent = String(secs).padStart(2, '0');
    }
    tick();
    setInterval(tick, 1000);
  })();

  // ---------- EVENT BINDINGS ----------
  searchBtn.addEventListener('click', () => filterProducts(searchInput.value));
  searchInput.addEventListener('keydown', e => { if (e.key === 'Enter') filterProducts(e.target.value); });

  mobileToggle.addEventListener('click', () => {
    const isOpen = mobileMenu.style.display === 'block';
    mobileMenu.style.display = isOpen ? 'none' : 'block';
    mobileToggle.innerHTML = isOpen ? '<i class="fas fa-bars"></i>' : '<i class="fas fa-times"></i>';
  });
  mobileMenu.querySelectorAll('a').forEach(link => {
    link.addEventListener('click', () => {
      mobileMenu.style.display = 'none';
      mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
    });
  });

  document.getElementById('shopNow').addEventListener('click', () => {
    document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
  });
  document.getElementById('exploreDeals').addEventListener('click', () => {
    document.getElementById('deals').scrollIntoView({ behavior: 'smooth', block: 'start' });
  });

  document.getElementById('buyDeal').addEventListener('click', function() {
    cartCount++;
    updateCartCount();
    const orig = this.innerHTML;
    this.innerHTML = '<i class="fas fa-check"></i> Added!';
    this.style.background = '#2b8c7a';
    setTimeout(() => {
      this.innerHTML = orig;
      this.style.background = '';
    }, 1500);
  });

  newsletterForm.addEventListener('submit', (e) => {
    e.preventDefault();
    const email = newsletterEmail.value.trim();
    if (!email || !email.includes('@')) {
      newsletterMsg.textContent = 'Please enter a valid email address.';
      newsletterMsg.style.color = '#ffb3b3';
      newsletterMsg.style.display = 'block';
      return;
    }
    newsletterMsg.textContent = '🎉 Thanks for subscribing!';
    newsletterMsg.style.color = '#a8e6cf';
    newsletterMsg.style.display = 'block';
    newsletterEmail.value = '';
    setTimeout(() => { newsletterMsg.style.display = 'none'; }, 3500);
  });

  document.getElementById('cartBtn').addEventListener('click', () => {
    alert(`🛒 Your cart has ${cartCount} item${cartCount !== 1 ? 's' : ''}.`);
  });

  document.getElementById('year').textContent = new Date().getFullYear();

  // ---------- INIT ----------
  renderCategories();
  renderProducts(PRODUCTS);
  renderTestimonials();
  updateCartCount();

  window.addEventListener('resize', () => {
    if (window.innerWidth > 768) {
      mobileMenu.style.display = 'none';
      mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
    }
  });

  console.log('✨ NexusShop — enhanced friendly e‑commerce loaded.');
</script>
</body>
</html>
