<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.5" />
  <title>VoltHaus · premium electronics</title>
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&family=Space+Grotesk:wght@400;500;600;700&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }
    body {
      font-family: 'Inter', system-ui, -apple-system, sans-serif;
      background: #f5f7fc;
      color: #0b0e14;
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }
    :root {
      --accent: #2d6eff;
      --accent-soft: #d9e6ff;
      --accent-dark: #1a4fcc;
      --primary: #0b0e14;
      --card: #ffffff;
      --muted: #5e6472;
      --light: #eef1f8;
      --shadow: 0 8px 30px rgba(0, 0, 0, 0.06);
      --shadow-hover: 0 20px 50px rgba(0, 20, 80, 0.12);
      --radius: 24px;
      --radius-sm: 14px;
      --glow: 0 0 30px rgba(45, 110, 255, 0.25);
    }
    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 24px;
    }
    img {
      max-width: 100%;
      display: block;
    }
    a {
      text-decoration: none;
      color: inherit;
    }
    button {
      background: none;
      border: none;
      font: inherit;
      cursor: pointer;
      color: inherit;
    }
    .header {
      background: rgba(255, 255, 255, 0.92);
      backdrop-filter: blur(14px);
      -webkit-backdrop-filter: blur(14px);
      border-bottom: 1px solid rgba(0, 0, 0, 0.04);
      position: sticky;
      top: 0;
      z-index: 100;
    }
    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 16px;
      padding: 8px 0;
      flex-wrap: wrap;
    }
    .brand {
      font-weight: 800;
      font-size: 1.5rem;
      letter-spacing: -0.5px;
      display: flex;
      align-items: center;
      gap: 8px;
      color: var(--primary);
      font-family: 'Space Grotesk', sans-serif;
    }
    .brand i {
      color: var(--accent);
      font-size: 1.7rem;
    }
    .brand span.accent {
      color: var(--accent);
    }
    .nav-links {
      display: flex;
      gap: 2px;
      list-style: none;
      align-items: center;
    }
    .nav-links a {
      padding: 8px 18px;
      border-radius: 40px;
      font-weight: 500;
      font-size: 0.9rem;
      color: var(--muted);
      transition: 0.2s;
    }
    .nav-links a:hover,
    .nav-links a.active {
      background: var(--light);
      color: var(--primary);
    }
    .nav-links a i {
      margin-right: 6px;
    }
    .header-actions {
      display: flex;
      align-items: center;
      gap: 4px;
    }
    .icon-btn {
      width: 44px;
      height: 44px;
      display: grid;
      place-items: center;
      border-radius: 50%;
      color: var(--muted);
      transition: 0.2s;
      font-size: 1.2rem;
    }
    .icon-btn:hover {
      background: var(--light);
      color: var(--primary);
    }
    .cart-wrap {
      position: relative;
    }
    .cart-count {
      position: absolute;
      top: -4px;
      right: -4px;
      background: var(--accent);
      color: white;
      font-size: 0.65rem;
      font-weight: 700;
      width: 20px;
      height: 20px;
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
      padding: 0 14px 0 20px;
      border: 2px solid transparent;
      transition: 0.25s;
      min-width: 200px;
    }
    .search-wrap:focus-within {
      border-color: var(--accent);
      background: white;
      box-shadow: 0 0 0 5px rgba(45, 110, 255, 0.08);
    }
    .search-wrap input {
      border: 0;
      background: transparent;
      padding: 10px 0;
      font-size: 0.9rem;
      width: 100%;
      outline: none;
    }
    .search-wrap input::placeholder {
      color: #a0a8b8;
    }
    .search-wrap button {
      padding: 8px 0 8px 10px;
      color: var(--muted);
    }
    .search-wrap button:hover {
      color: var(--accent);
    }
    .mobile-toggle {
      display: none;
      width: 44px;
      height: 44px;
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
    #mobileMenu ul a:hover {
      background: var(--light);
    }

    /* hero */
    .hero {
      background: linear-gradient(135deg, #0b0e14 0%, #16213e 100%);
      border-radius: var(--radius);
      margin: 20px 20px 0;
      padding: 70px 48px;
      position: relative;
      overflow: hidden;
      color: white;
    }
    .hero::after {
      content: '';
      position: absolute;
      inset: 0;
      background: url('https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1600&q=80') center/cover no-repeat;
      opacity: 0.1;
      z-index: 0;
    }
    .hero .container {
      position: relative;
      z-index: 2;
    }
    .hero .badge {
      display: inline-block;
      background: rgba(45, 110, 255, 0.25);
      color: #b8d0ff;
      padding: 4px 22px;
      border-radius: 40px;
      font-weight: 600;
      font-size: 0.8rem;
      letter-spacing: 0.5px;
      margin-bottom: 16px;
      border: 1px solid rgba(255, 255, 255, 0.06);
    }
    .hero h1 {
      font-family: 'Space Grotesk', sans-serif;
      font-size: clamp(2.6rem, 6.5vw, 4.4rem);
      font-weight: 700;
      line-height: 1.08;
      max-width: 620px;
    }
    .hero p {
      color: rgba(255, 255, 255, 0.78);
      font-size: 1.1rem;
      max-width: 480px;
      margin: 14px 0 30px;
    }
    .hero .actions {
      display: flex;
      gap: 16px;
      flex-wrap: wrap;
    }
    .btn {
      display: inline-flex;
      align-items: center;
      gap: 10px;
      padding: 14px 34px;
      border-radius: 60px;
      font-weight: 600;
      border: 2px solid transparent;
      transition: 0.25s;
      font-size: 0.95rem;
    }
    .btn-primary {
      background: var(--accent);
      color: white;
      border-color: var(--accent);
    }
    .btn-primary:hover {
      background: var(--accent-dark);
      border-color: var(--accent-dark);
      transform: translateY(-3px);
      box-shadow: 0 12px 28px rgba(45, 110, 255, 0.4);
    }
    .btn-ghost {
      background: rgba(255, 255, 255, 0.06);
      color: white;
      border-color: rgba(255, 255, 255, 0.15);
    }
    .btn-ghost:hover {
      background: rgba(255, 255, 255, 0.14);
      transform: translateY(-3px);
    }

    .section {
      padding: 56px 0;
    }
    .section-header {
      display: flex;
      align-items: flex-end;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 12px;
      margin-bottom: 32px;
    }
    .section-header h2 {
      font-family: 'Space Grotesk', sans-serif;
      font-size: 2rem;
      font-weight: 700;
      letter-spacing: -0.3px;
    }
    .section-header .sub {
      color: var(--muted);
      margin-top: 2px;
    }
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
    .view-all:hover {
      gap: 14px;
      color: var(--accent-dark);
    }

    .categories-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(150px, 1fr));
      gap: 20px;
    }
    .cat-card {
      background: var(--card);
      border-radius: var(--radius);
      padding: 24px 12px;
      text-align: center;
      box-shadow: var(--shadow);
      transition: 0.3s;
      border: 2px solid transparent;
      cursor: pointer;
    }
    .cat-card:hover {
      transform: translateY(-8px);
      box-shadow: var(--shadow-hover);
      border-color: var(--accent-soft);
    }
    .cat-card .icon {
      width: 58px;
      height: 58px;
      background: var(--accent-soft);
      border-radius: 50%;
      display: grid;
      place-items: center;
      margin: 0 auto 12px;
      font-size: 1.6rem;
      color: var(--accent);
      transition: 0.3s;
    }
    .cat-card:hover .icon {
      background: var(--accent);
      color: white;
      transform: scale(1.05);
    }
    .cat-card h4 {
      font-weight: 600;
      font-size: 0.95rem;
    }
    .cat-card .count {
      font-size: 0.8rem;
      color: var(--muted);
    }

    .products-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
      gap: 24px;
    }
    .product-card {
      background: var(--card);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
      transition: 0.3s;
      border: 2px solid transparent;
      display: flex;
      flex-direction: column;
    }
    .product-card:hover {
      transform: translateY(-10px);
      box-shadow: var(--shadow-hover);
      border-color: var(--accent-soft);
    }
    .product-card .img-wrap {
      aspect-ratio: 1/1;
      background: #f0f2f8;
      overflow: hidden;
      position: relative;
    }
    .product-card .img-wrap img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: 0.5s ease;
    }
    .product-card:hover .img-wrap img {
      transform: scale(1.06);
    }
    .product-card .badge {
      position: absolute;
      top: 14px;
      left: 14px;
      background: var(--accent);
      color: white;
      padding: 4px 16px;
      border-radius: 40px;
      font-size: 0.7rem;
      font-weight: 700;
      text-transform: uppercase;
      letter-spacing: 0.4px;
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.08);
    }
    .product-card .badge.sale {
      background: #ff9f2d;
      color: #0b0e14;
    }
    .product-card .badge.new {
      background: #00b894;
    }
    .product-card .wish {
      position: absolute;
      top: 14px;
      right: 14px;
      width: 38px;
      height: 38px;
      background: rgba(255, 255, 255, 0.92);
      border-radius: 50%;
      display: grid;
      place-items: center;
      color: var(--muted);
      backdrop-filter: blur(4px);
      transition: 0.2s;
      font-size: 1rem;
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.04);
    }
    .product-card .wish:hover {
      color: var(--accent);
      background: white;
      transform: scale(1.12);
    }
    .product-card .body {
      padding: 18px 18px 10px;
      flex: 1;
    }
    .product-card .body .cat {
      font-size: 0.7rem;
      color: var(--muted);
      text-transform: uppercase;
      letter-spacing: 0.6px;
      font-weight: 600;
    }
    .product-card .body h5 {
      font-size: 1rem;
      font-weight: 600;
      margin: 6px 0 8px;
      display: -webkit-box;
      -webkit-line-clamp: 2;
      -webkit-box-orient: vertical;
      overflow: hidden;
    }
    .product-card .body .price {
      font-weight: 700;
      font-size: 1.25rem;
      color: var(--primary);
    }
    .product-card .body .old {
      color: var(--muted);
      text-decoration: line-through;
      font-size: 0.9rem;
      margin-left: 10px;
      font-weight: 400;
    }
    .product-card .body .unit {
      font-size: 0.8rem;
      color: var(--muted);
      margin-left: 4px;
      font-weight: 400;
    }
    .product-card .body .rating {
      color: #f5b342;
      font-size: 0.85rem;
      margin-top: 6px;
    }
    .product-card .body .rating span {
      color: var(--muted);
      margin-left: 4px;
    }
    .product-card .footer {
      padding: 0 18px 18px;
    }
    .product-card .footer .add {
      width: 100%;
      padding: 12px;
      background: var(--primary);
      color: white;
      border-radius: var(--radius-sm);
      font-weight: 600;
      transition: 0.25s;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 10px;
    }
    .product-card .footer .add:hover {
      background: var(--accent);
      transform: scale(1.02);
    }
    .product-card .footer .add.added {
      background: #2b8c7a;
    }

    .deal-wrap {
      display: flex;
      background: var(--card);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
      flex-wrap: wrap;
    }
    .deal-wrap .deal-img {
      flex: 1 1 42%;
      min-height: 260px;
      background: var(--light);
    }
    .deal-wrap .deal-img img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }
    .deal-wrap .deal-content {
      flex: 1 1 50%;
      padding: 40px 44px;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }
    .deal-wrap .tag {
      background: #ff9f2d;
      color: #0b0e14;
      padding: 4px 20px;
      border-radius: 40px;
      font-weight: 700;
      font-size: 0.75rem;
      text-transform: uppercase;
      align-self: flex-start;
      margin-bottom: 10px;
      letter-spacing: 0.5px;
    }
    .deal-wrap h3 {
      font-size: 2rem;
      font-weight: 700;
      font-family: 'Space Grotesk', sans-serif;
    }
    .deal-wrap .desc {
      color: var(--muted);
      margin: 8px 0 14px;
    }
    .deal-wrap .price-big {
      font-size: 2.4rem;
      font-weight: 800;
    }
    .deal-wrap .price-big .old {
      font-size: 1.3rem;
      font-weight: 400;
      color: var(--muted);
      text-decoration: line-through;
      margin-left: 14px;
    }
    .deal-wrap .stock {
      font-size: 0.9rem;
      color: var(--muted);
      margin: 6px 0 16px;
    }
    .deal-wrap .stock strong {
      color: var(--accent);
    }
    .timer-grid {
      display: flex;
      gap: 14px;
      margin: 14px 0 22px;
    }
    .timer-box {
      background: var(--primary);
      color: white;
      padding: 12px 16px;
      border-radius: var(--radius-sm);
      min-width: 68px;
      text-align: center;
    }
    .timer-box .num {
      font-size: 1.8rem;
      font-weight: 700;
      line-height: 1.2;
    }
    .timer-box .label {
      font-size: 0.6rem;
      opacity: 0.7;
      text-transform: uppercase;
      letter-spacing: 0.6px;
    }

    .testimonials-scroll {
      display: flex;
      gap: 24px;
      overflow-x: auto;
      padding: 8px 4px 20px;
      scroll-snap-type: x mandatory;
    }
    .testimonials-scroll::-webkit-scrollbar {
      height: 4px;
    }
    .testimonials-scroll::-webkit-scrollbar-thumb {
      background: var(--accent-soft);
      border-radius: 10px;
    }
    .testimonial-card {
      flex: 0 0 320px;
      background: var(--card);
      border-radius: var(--radius);
      padding: 28px 30px;
      box-shadow: var(--shadow);
      scroll-snap-align: start;
      transition: 0.25s;
    }
    .testimonial-card:hover {
      box-shadow: var(--shadow-hover);
      transform: translateY(-4px);
    }
    .testimonial-card .stars {
      color: #f5b342;
      font-size: 1rem;
      letter-spacing: 3px;
    }
    .testimonial-card blockquote {
      font-style: italic;
      margin: 12px 0 16px;
      color: #2d2d44;
      font-size: 0.95rem;
      line-height: 1.6;
    }
    .testimonial-card .author {
      display: flex;
      align-items: center;
      gap: 14px;
    }
    .testimonial-card .author img {
      width: 48px;
      height: 48px;
      border-radius: 50%;
      object-fit: cover;
      background: var(--light);
      border: 2px solid var(--accent-soft);
    }
    .testimonial-card .author .name {
      font-weight: 600;
    }
    .testimonial-card .author .role {
      font-size: 0.8rem;
      color: var(--muted);
    }

    .newsletter {
      background: linear-gradient(135deg, #0b0e14 0%, #16213e 100%);
      border-radius: var(--radius);
      padding: 48px 52px;
      color: white;
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
      gap: 30px;
    }
    .newsletter h3 {
      font-size: 1.8rem;
      font-weight: 700;
      font-family: 'Space Grotesk', sans-serif;
    }
    .newsletter p {
      opacity: 0.75;
    }
    .newsletter form {
      display: flex;
      gap: 14px;
      flex: 1;
      min-width: 300px;
      flex-wrap: wrap;
    }
    .newsletter input {
      flex: 1;
      padding: 16px 24px;
      border-radius: 60px;
      border: 0;
      background: rgba(255, 255, 255, 0.08);
      color: white;
      font-size: 0.95rem;
      outline: 2px solid transparent;
      min-width: 180px;
      transition: 0.2s;
    }
    .newsletter input::placeholder {
      color: rgba(255, 255, 255, 0.45);
    }
    .newsletter input:focus {
      outline-color: var(--accent);
      background: rgba(255, 255, 255, 0.14);
    }
    .newsletter .btn {
      background: var(--accent);
      color: white;
      border-color: var(--accent);
      padding: 16px 36px;
    }
    .newsletter .btn:hover {
      background: var(--accent-dark);
      border-color: var(--accent-dark);
    }
    #newsletterMsg {
      width: 100%;
      margin-top: 10px;
      font-size: 0.9rem;
    }

    footer {
      margin-top: 20px;
      padding: 48px 0 28px;
      border-top: 1px solid #e2e6f0;
    }
    .footer-grid {
      display: grid;
      grid-template-columns: 2fr 1fr 1fr 1fr;
      gap: 36px;
      margin-bottom: 32px;
    }
    .footer-grid .brand-col p {
      color: var(--muted);
      font-size: 0.9rem;
      max-width: 280px;
      line-height: 1.7;
    }
    .footer-grid .socials {
      display: flex;
      gap: 12px;
      margin-top: 18px;
    }
    .footer-grid .socials a {
      width: 44px;
      height: 44px;
      background: var(--light);
      border-radius: 50%;
      display: grid;
      place-items: center;
      color: var(--muted);
      transition: 0.25s;
      font-size: 1.1rem;
    }
    .footer-grid .socials a:hover {
      background: var(--accent);
      color: white;
      transform: translateY(-3px);
      box-shadow: 0 8px 20px rgba(45, 110, 255, 0.2);
    }
    .footer-grid .col h5 {
      font-weight: 700;
      margin-bottom: 16px;
      font-size: 1rem;
    }
    .footer-grid .col ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 8px;
    }
    .footer-grid .col ul a {
      color: var(--muted);
      font-size: 0.9rem;
      transition: 0.2s;
    }
    .footer-grid .col ul a:hover {
      color: var(--accent);
    }
    .footer-bottom {
      text-align: center;
      color: var(--muted);
      font-size: 0.85rem;
      border-top: 1px solid #e2e6f0;
      padding-top: 24px;
    }

    @media (max-width: 992px) {
      .nav-links { display: none; }
      .mobile-toggle { display: grid; place-items: center; }
      .footer-grid { grid-template-columns: 1fr 1fr; }
      .deal-wrap .deal-content { padding: 30px; }
      .hero { padding: 48px 30px; }
    }
    @media (max-width: 700px) {
      .hero { margin: 12px 12px 0; padding: 36px 20px; }
      .search-wrap { min-width: 120px; }
      .products-grid { grid-template-columns: repeat(2, 1fr); gap: 16px; }
      .categories-grid { grid-template-columns: repeat(3, 1fr); gap: 14px; }
      .footer-grid { grid-template-columns: 1fr; }
      .newsletter { padding: 32px 24px; flex-direction: column; text-align: center; }
      .newsletter form { min-width: 100%; }
      .header-inner { flex-wrap: nowrap; }
      .brand { font-size: 1.2rem; }
      .deal-wrap .deal-content { padding: 22px; }
      .timer-box { min-width: 54px; padding: 8px 10px; }
      .timer-box .num { font-size: 1.4rem; }
    }
    @media (max-width: 480px) {
      .products-grid { grid-template-columns: 1fr 1fr; gap: 12px; }
      .categories-grid { grid-template-columns: 1fr 1fr; }
      .hero h1 { font-size: 2rem; }
      .deal-wrap .price-big { font-size: 1.8rem; }
      .testimonial-card { flex: 0 0 270px; padding: 20px; }
    }
  </style>
</head>
<body>

  <header class="header">
    <div class="container header-inner">
      <div style="display:flex;align-items:center;gap:6px;">
        <button class="mobile-toggle" id="mobileToggle" aria-label="menu"><i class="fas fa-bars"></i></button>
        <a class="brand" href="#"><i class="fas fa-bolt"></i> Volt<span class="accent">Haus</span></a>
      </div>
      <ul class="nav-links">
        <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
        <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
        <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
        <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
      </ul>
      <div style="display:flex;align-items:center;gap:12px;">
        <div class="search-wrap">
          <input type="search" id="searchInput" placeholder="Search gadgets..." aria-label="Search" />
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
    <section class="hero">
      <div class="container">
        <div class="badge"><i class="fas fa-microchip"></i> Next-gen tech, delivered</div>
        <h1>Premium electronics,<br />unbeatable prices</h1>
        <p>Discover cutting-edge gadgets, audio gear & smart home essentials.</p>
        <div class="actions">
          <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop now</button>
          <button class="btn btn-ghost" id="exploreDeals"><i class="fas fa-clock"></i> Explore deals</button>
        </div>
      </div>
    </section>

    <section class="section" id="categories">
      <div class="container">
        <div class="section-header">
          <div><h2>Browse categories</h2><div class="sub">Top picks for every setup</div></div>
          <a href="#" class="view-all">All <i class="fas fa-arrow-right"></i></a>
        </div>
        <div class="categories-grid" id="categoriesGrid"></div>
      </div>
    </section>

    <section class="section" id="products">
      <div class="container">
        <div class="section-header">
          <div><h2>Trending gadgets</h2><div class="sub">What everyone's talking about</div></div>
          <a href="#" class="view-all">View all <i class="fas fa-arrow-right"></i></a>
        </div>
        <div class="products-grid" id="productsGrid"></div>
      </div>
    </section>

    <section class="section" id="deals">
      <div class="container">
        <div class="section-header"><div><h2>⚡ Flash deal</h2><div class="sub">Limited stock — grab it now</div></div></div>
        <div class="deal-wrap">
          <div class="deal-img"><img src="https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=800&q=80" alt="Pro Noise-Cancelling Headphones" loading="lazy" /></div>
          <div class="deal-content">
            <span class="tag"><i class="fas fa-bolt"></i> limited offer</span>
            <h3>Pro ANC Headphones</h3>
            <p class="desc">Studio-grade sound, 40h battery, adaptive noise cancellation.</p>
            <div><span class="price-big">$199 <span class="old">$299</span></span></div>
            <p class="stock">Only <strong>9</strong> units left — hurry!</p>
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

    <section class="section" id="testimonials">
      <div class="container">
        <div class="section-header"><div><h2>What our customers say</h2><div class="sub">Real reviews from tech enthusiasts</div></div></div>
        <div class="testimonials-scroll" id="testimonialsList"></div>
      </div>
    </section>

    <section class="section">
      <div class="container">
        <div class="newsletter">
          <div><h3>Stay charged</h3><p>Exclusive drops, tech news & early access</p></div>
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
          <div class="brand"><i class="fas fa-bolt"></i> Volt<span class="accent">Haus</span></div>
          <p>Premium electronics, curated for performance. Trusted by creators since 2025.</p>
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
      <div class="footer-bottom">&copy; <span id="year"></span> VoltHaus. All rights reserved.</div>
    </div>
  </footer>

  <script>
    // ---------- ELECTRONICS DATA ----------
    const CATEGORIES = [
      { id: 'audio', name: 'Audio', icon: 'fa-headphones', count: 24 },
      { id: 'smartphones', name: 'Smartphones', icon: 'fa-mobile-alt', count: 18 },
      { id: 'laptops', name: 'Laptops', icon: 'fa-laptop', count: 15 },
      { id: 'gaming', name: 'Gaming', icon: 'fa-gamepad', count: 22 },
      { id: 'smart-home', name: 'Smart Home', icon: 'fa-home', count: 19 },
      { id: 'accessories', name: 'Accessories', icon: 'fa-plug', count: 30 }
    ];

    const PRODUCTS = [
      // Audio
      { id: 1, title: 'SonicPods Pro', price: 129.99, unit: '', rating: 5, reviews: 342, badge: 'New', img: 'https://images.unsplash.com/photo-1572569511254-d8f925fe2cbb?auto=format&fit=crop&w=600&q=80', category: 'Audio' },
      { id: 2, title: 'BassBoom Speaker', price: 89.99, unit: '', rating: 5, reviews: 218, badge: '', img: 'https://images.unsplash.com/photo-1608043152269-423dbba4e7e1?auto=format&fit=crop&w=600&q=80', category: 'Audio' },
      { id: 3, title: 'StudioMax Headphones', price: 249.99, unit: '', rating: 5, reviews: 156, badge: 'Sale', img: 'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=600&q=80', category: 'Audio' },
      { id: 4, title: 'EchoBuds Lite', price: 59.99, unit: '', rating: 4, reviews: 89, badge: '', img: 'https://images.unsplash.com/photo-1590658268037-6bf12165a8df?auto=format&fit=crop&w=600&q=80', category: 'Audio' },
      // Smartphones
      { id: 5, title: 'Galaxy Edge 5G', price: 799.99, unit: '', rating: 5, reviews: 478, badge: 'Hot', img: 'https://images.unsplash.com/photo-1610945265064-0e34e5519bbf?auto=format&fit=crop&w=600&q=80', category: 'Smartphones' },
      { id: 6, title: 'Pixel Nova', price: 699.99, unit: '', rating: 5, reviews: 312, badge: '', img: 'https://images.unsplash.com/photo-1598327105666-5b89351aff97?auto=format&fit=crop&w=600&q=80', category: 'Smartphones' },
      { id: 7, title: 'iPhone 16 Pro', price: 1099.99, unit: '', rating: 5, reviews: 890, badge: 'New', img: 'https://images.unsplash.com/photo-1695048133142-1a20484d2569?auto=format&fit=crop&w=600&q=80', category: 'Smartphones' },
      { id: 8, title: 'OnePlus 13', price: 649.99, unit: '', rating: 5, reviews: 234, badge: '', img: 'https://images.unsplash.com/photo-1598327105666-5b89351aff97?auto=format&fit=crop&w=600&q=80', category: 'Smartphones' },
      // Laptops
      { id: 9, title: 'MacBook Air M3', price: 1099.99, unit: '', rating: 5, reviews: 567, badge: 'Hot', img: 'https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=600&q=80', category: 'Laptops' },
      { id: 10, title: 'Dell XPS 15', price: 1399.99, unit: '', rating: 5, reviews: 234, badge: '', img: 'https://images.unsplash.com/photo-1593642702821-c8da6771f9a6?auto=format&fit=crop&w=600&q=80', category: 'Laptops' },
      { id: 11, title: 'ASUS ROG Zephyrus', price: 1599.99, unit: '', rating: 5, reviews: 189, badge: 'Sale', img: 'https://images.unsplash.com/photo-1603302576837-37561b2e2302?auto=format&fit=crop&w=600&q=80', category: 'Laptops' },
      { id: 12, title: 'Lenovo Yoga Slim', price: 899.99, unit: '', rating: 4, reviews: 145, badge: '', img: 'https://images.unsplash.com/photo-1588872657578-7efd1f1555ed?auto=format&fit=crop&w=600&q=80', category: 'Laptops' },
      // Gaming
      { id: 13, title: 'PS5 Pro Console', price: 699.99, unit: '', rating: 5, reviews: 987, badge: 'Hot', img: 'https://images.unsplash.com/photo-1606144042614-b2417e99c4e3?auto=format&fit=crop&w=600&q=80', category: 'Gaming' },
      { id: 14, title: 'Xbox Series X', price: 499.99, unit: '', rating: 5, reviews: 654, badge: '', img: 'https://images.unsplash.com/photo-1621259182978-fbf93132d53d?auto=format&fit=crop&w=600&q=80', category: 'Gaming' },
      { id: 15, title: 'Razer BlackWidow', price: 149.99, unit: '', rating: 5, reviews: 345, badge: '', img: 'https://images.unsplash.com/photo-1587829741301-dc798b83add3?auto=format&fit=crop&w=600&q=80', category: 'Gaming' },
      { id: 16, title: 'Logitech G Pro X', price: 129.99, unit: '', rating: 4, reviews: 234, badge: '', img: 'https://images.unsplash.com/photo-1615663245857-ac93bb7c39e7?auto=format&fit=crop&w=600&q=80', category: 'Gaming' },
      // Smart Home
      { id: 17, title: 'Echo Dot (5th Gen)', price: 49.99, unit: '', rating: 5, reviews: 1234, badge: '', img: 'https://images.unsplash.com/photo-1543512214-318c7553f230?auto=format&fit=crop&w=600&q=80', category: 'Smart Home' },
      { id: 18, title: 'Nest Thermostat', price: 199.99, unit: '', rating: 5, reviews: 456, badge: '', img: 'https://images.unsplash.com/photo-1567925086983-3c1f6b1a8a8b?auto=format&fit=crop&w=600&q=80', category: 'Smart Home' },
      { id: 19, title: 'Ring Security Cam', price: 179.99, unit: '', rating: 5, reviews: 345, badge: 'Sale', img: 'https://images.unsplash.com/photo-1558002038-1055907df827?auto=format&fit=crop&w=600&q=80', category: 'Smart Home' },
      { id: 20, title: 'Philips Hue Starter', price: 149.99, unit: '', rating: 5, reviews: 567, badge: '', img: 'https://images.unsplash.com/photo-1558618666-fcd25c85cd64?auto=format&fit=crop&w=600&q=80', category: 'Smart Home' },
      // Accessories
      { id: 21, title: 'Anker PowerBank 20K', price: 59.99, unit: '', rating: 5, reviews: 678, badge: '', img: 'https://images.unsplash.com/photo-1609091839311-d5365f9ff1c5?auto=format&fit=crop&w=600&q=80', category: 'Accessories' },
      { id: 22, title: 'USB-C Hub 8-in-1', price: 79.99, unit: '', rating: 5, reviews: 234, badge: '', img: 'https://images.unsplash.com/photo-1625842268584-8f3296236761?auto=format&fit=crop&w=600&q=80', category: 'Accessories' },
      { id: 23, title: 'Samsung T7 SSD 1TB', price: 129.99, unit: '', rating: 5, reviews: 456, badge: 'New', img: 'https://images.unsplash.com/photo-1597872200969-2b65d56bd16b?auto=format&fit=crop&w=600&q=80', category: 'Accessories' },
      { id: 24, title: 'Apple Watch Ultra', price: 799.99, unit: '', rating: 5, reviews: 789, badge: 'Hot', img: 'https://images.unsplash.com/photo-1434493789847-2f02dc6ca35d?auto=format&fit=crop&w=600&q=80', category: 'Accessories' },
      { id: 25, title: 'DJI Mini 4 Pro', price: 759.99, unit: '', rating: 5, reviews: 345, badge: '', img: 'https://images.unsplash.com/photo-1473968512647-3e447244af8f?auto=format&fit=crop&w=600&q=80', category: 'Accessories' },
      { id: 26, title: 'Kindle Paperwhite', price: 139.99, unit: '', rating: 5, reviews: 567, badge: '', img: 'https://images.unsplash.com/photo-1592434134753-a70baf7979d5?auto=format&fit=crop&w=600&q=80', category: 'Accessories' },
      { id: 27, title: 'GoPro Hero 13', price: 399.99, unit: '', rating: 5, reviews: 234, badge: '', img: 'https://images.unsplash.com/photo-1502920917128-1aa500764cbd?auto=format&fit=crop&w=600&q=80', category: 'Accessories' },
      { id: 28, title: 'Keychron K2 Keyboard', price: 89.99, unit: '', rating: 5, reviews: 345, badge: '', img: 'https://images.unsplash.com/photo-1587829741301-dc798b83add3?auto=format&fit=crop&w=600&q=80', category: 'Accessories' },
      { id: 29, title: 'Logitech MX Master 3S', price: 99.99, unit: '', rating: 5, reviews: 678, badge: '', img: 'https://images.unsplash.com/photo-1615663245857-ac93bb7c39e7?auto=format&fit=crop&w=600&q=80', category: 'Accessories' },
      { id: 30, title: 'AirTag 4 Pack', price: 99.99, unit: '', rating: 5, reviews: 456, badge: 'Sale', img: 'https://images.unsplash.com/photo-1580894732444-8ecded7900cd?auto=format&fit=crop&w=600&q=80', category: 'Accessories' },
      { id: 31, title: 'Sonos One SL', price: 199.99, unit: '', rating: 5, reviews: 234, badge: '', img: 'https://images.unsplash.com/photo-1545454675-3531b543be5d?auto=format&fit=crop&w=600&q=80', category: 'Audio' },
      { id: 32, title: 'Marshall Emberton', price: 149.99, unit: '', rating: 5, reviews: 189, badge: '', img: 'https://images.unsplash.com/photo-1608043152269-423dbba4e7e1?auto=format&fit=crop&w=600&q=80', category: 'Audio' },
      { id: 33, title: 'iPad Pro M4', price: 999.99, unit: '', rating: 5, reviews: 567, badge: 'New', img: 'https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0?auto=format&fit=crop&w=600&q=80', category: 'Laptops' },
      { id: 34, title: 'Steam Deck OLED', price: 549.99, unit: '', rating: 5, reviews: 789, badge: 'Hot', img: 'https://images.unsplash.com/photo-1640955014216-75201056c829?auto=format&fit=crop&w=600&q=80', category: 'Gaming' },
      { id: 35, title: 'Meta Quest 3', price: 499.99, unit: '', rating: 5, reviews: 456, badge: '', img: 'https://images.unsplash.com/photo-1622979135225-d2ba269cf1ac?auto=format&fit=crop&w=600&q=80', category: 'Gaming' },
      { id: 36, title: 'Hue Play Light Bars', price: 179.99, unit: '', rating: 5, reviews: 123, badge: '', img: 'https://images.unsplash.com/photo-1558618666-fcd25c85cd64?auto=format&fit=crop&w=600&q=80', category: 'Smart Home' }
    ];

    const TESTIMONIALS = [
      { name: 'Alex Rivera', role: 'Content Creator', avatar: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80', text: 'The SonicPods Pro are a game changer. Sound quality is insane for the price!', stars: 5 },
      { name: 'Maya Chen', role: 'Software Engineer', avatar: 'https://images.unsplash.com/photo-1494790108378-be9c29b29330?auto=format&fit=crop&w=80&q=80', text: 'VoltHaus is my go-to for tech. Fast shipping and everything is genuine.', stars: 5 },
      { name: 'Jordan Blake', role: 'Streamer', avatar: 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80', text: 'My entire gaming setup is from here. Great prices and the deals are unreal.', stars: 5 },
      { name: 'Riley Foster', role: 'Photographer', avatar: 'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?auto=format&fit=crop&w=80&q=80', text: 'The DJI Mini 4 Pro arrived quickly and in perfect condition. Highly recommend.', stars: 5 },
      { name: 'Samir Khan', role: 'Music Producer', avatar: 'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?auto=format&fit=crop&w=80&q=80', text: 'StudioMax headphones have incredible clarity. Worth every penny.', stars: 5 }
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
      return String(text).replace(/[&<>"']/g, s => ({ '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;' } [s]));
    }

    function updateCartCount() {
      cartCountEl.textContent = cartCount;
      cartCountEl.style.transform = 'scale(1.4)';
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
        productsGrid.innerHTML =
          `<p style="grid-column:1/-1;text-align:center;padding:48px;color:var(--muted);font-size:1.1rem;">No products found.</p>`;
        return;
      }
      list.forEach(p => {
        const el = document.createElement('article');
        el.className = 'product-card';
        let badgeClass = '';
        if (p.badge === 'Sale') badgeClass = 'sale';
        else if (p.badge === 'New') badgeClass = 'new';
        const badgeHtml = p.badge ? `<span class="badge ${badgeClass}">${p.badge}</span>` : '';
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
              <div><span class="price">$${p.price.toFixed(2)}</span> <span class="unit">${p.unit}</span></div>
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
      const target = new Date(now.getTime() + (12 * 60 + 45) * 60 * 1000); // 12h 45m from now

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

    console.log('⚡ VoltHaus — premium electronics loaded with 36 cutting-edge products.');
  </script>
</body>
</html>
