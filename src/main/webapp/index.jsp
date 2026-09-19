<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.5" />
  <title>Tollywood Heroes · Telugu Film Wiki</title>
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&family=Playfair+Display:wght@700&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }
    body {
      font-family: 'Inter', system-ui, -apple-system, sans-serif;
      background: #fdf6ee;
      color: #1e1e2a;
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }
    :root {
      --accent: #c0392b;
      --accent-soft: #f8d7d2;
      --accent-dark: #8e2418;
      --gold: #d4a017;
      --gold-soft: #fbeecb;
      --primary: #1e1e2a;
      --card: #ffffff;
      --muted: #6b6b7a;
      --light: #f4ece1;
      --shadow: 0 8px 30px rgba(0, 0, 0, 0.05);
      --shadow-hover: 0 20px 50px rgba(0, 0, 0, 0.08);
      --radius: 20px;
      --radius-sm: 12px;
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

    /* ===== HEADER ===== */
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
      letter-spacing: -0.3px;
      display: flex;
      align-items: center;
      gap: 8px;
      color: var(--primary);
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
    .fav-wrap {
      position: relative;
    }
    .fav-count {
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
      box-shadow: 0 0 0 5px rgba(192, 57, 43, 0.08);
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
      color: #b0b0bc;
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

    /* ===== HERO ===== */
    .hero {
      background: linear-gradient(145deg, #3a1c14, #7a2a1f);
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
      background: url('https://images.unsplash.com/photo-1489599849927-2ee91cede3ba?auto=format&fit=crop&w=1600&q=80') center/cover no-repeat;
      opacity: 0.18;
      z-index: 0;
    }
    .hero .container {
      position: relative;
      z-index: 2;
    }
    .hero .badge {
      display: inline-block;
      background: rgba(212, 160, 23, 0.25);
      color: #ffdf8a;
      padding: 4px 22px;
      border-radius: 40px;
      font-weight: 600;
      font-size: 0.8rem;
      letter-spacing: 0.5px;
      margin-bottom: 16px;
      border: 1px solid rgba(255, 255, 255, 0.06);
    }
    .hero h1 {
      font-family: 'Playfair Display', serif;
      font-size: clamp(2.6rem, 6.5vw, 4.4rem);
      font-weight: 700;
      line-height: 1.08;
      max-width: 620px;
    }
    .hero p {
      color: rgba(255, 255, 255, 0.78);
      font-size: 1.1rem;
      max-width: 520px;
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
      box-shadow: 0 12px 28px rgba(192, 57, 43, 0.35);
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

    /* ===== SECTIONS ===== */
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

    /* ===== HERO GRID (stars) ===== */
    .heroes-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(230px, 1fr));
      gap: 24px;
    }
    .hero-card {
      background: var(--card);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
      transition: 0.3s;
      border: 2px solid transparent;
      display: flex;
      flex-direction: column;
      cursor: pointer;
    }
    .hero-card:hover {
      transform: translateY(-10px);
      box-shadow: var(--shadow-hover);
      border-color: var(--gold-soft);
    }
    .hero-card .img-wrap {
      aspect-ratio: 1/1.15;
      background: linear-gradient(135deg, #3a1c14, #7a2a1f);
      overflow: hidden;
      position: relative;
      display: flex;
      align-items: center;
      justify-content: center;
    }
    .hero-card .img-wrap .initials {
      font-family: 'Playfair Display', serif;
      font-size: 4.5rem;
      font-weight: 700;
      color: rgba(255, 223, 138, 0.35);
      position: absolute;
      user-select: none;
      z-index: 0;
    }
    .hero-card .img-wrap img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      object-position: top center;
      transition: 0.5s ease;
      position: relative;
      z-index: 1;
    }
    .hero-card:hover .img-wrap img {
      transform: scale(1.06);
    }
    .hero-card .badge {
      position: absolute;
      top: 14px;
      left: 14px;
      background: var(--gold);
      color: #3a1c14;
      padding: 4px 16px;
      border-radius: 40px;
      font-size: 0.7rem;
      font-weight: 700;
      text-transform: uppercase;
      letter-spacing: 0.4px;
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
      z-index: 2;
    }
    .hero-card .badge.hot {
      background: var(--accent);
      color: white;
    }
    .hero-card .fav {
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
      z-index: 2;
    }
    .hero-card .fav:hover {
      color: var(--accent);
      background: white;
      transform: scale(1.12);
    }
    .hero-card .body {
      padding: 18px 18px 10px;
      flex: 1;
    }
    .hero-card .body .role {
      font-size: 0.7rem;
      color: var(--gold);
      text-transform: uppercase;
      letter-spacing: 0.6px;
      font-weight: 700;
    }
    .hero-card .body h5 {
      font-size: 1.15rem;
      font-weight: 700;
      margin: 6px 0 8px;
      line-height: 1.2;
    }
    .hero-card .body .known-for {
      font-size: 0.82rem;
      color: var(--muted);
      display: -webkit-box;
      -webkit-line-clamp: 2;
      -webkit-box-orient: vertical;
      overflow: hidden;
      line-height: 1.4;
    }
    .hero-card .body .stats {
      display: flex;
      gap: 14px;
      margin-top: 10px;
      font-size: 0.78rem;
      color: var(--muted);
    }
    .hero-card .body .stats strong {
      color: var(--accent);
      font-weight: 700;
    }
    .hero-card .footer {
      padding: 0 18px 18px;
    }
    .hero-card .footer .view {
      width: 100%;
      padding: 11px;
      background: var(--primary);
      color: white;
      border-radius: var(--radius-sm);
      font-weight: 600;
      transition: 0.25s;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
      font-size: 0.88rem;
    }
    .hero-card .footer .view:hover {
      background: var(--accent);
      transform: scale(1.02);
    }

    /* ===== SPOTLIGHT (featured hero) ===== */
    .spotlight-wrap {
      display: flex;
      background: var(--card);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
      flex-wrap: wrap;
    }
    .spotlight-wrap .spotlight-img {
      flex: 1 1 42%;
      min-height: 320px;
      background: linear-gradient(135deg, #3a1c14, #7a2a1f);
      position: relative;
      display: flex;
      align-items: center;
      justify-content: center;
    }
    .spotlight-wrap .spotlight-img .initials {
      font-family: 'Playfair Display', serif;
      font-size: 8rem;
      font-weight: 700;
      color: rgba(255, 223, 138, 0.3);
      user-select: none;
    }
    .spotlight-wrap .spotlight-img img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      object-position: top center;
      position: absolute;
      inset: 0;
    }
    .spotlight-wrap .spotlight-content {
      flex: 1 1 50%;
      padding: 40px 44px;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }
    .spotlight-wrap .tag {
      background: var(--gold);
      color: #3a1c14;
      padding: 4px 20px;
      border-radius: 40px;
      font-weight: 700;
      font-size: 0.75rem;
      text-transform: uppercase;
      align-self: flex-start;
      margin-bottom: 10px;
      letter-spacing: 0.5px;
    }
    .spotlight-wrap h3 {
      font-family: 'Playfair Display', serif;
      font-size: 2.2rem;
      font-weight: 700;
      line-height: 1.1;
    }
    .spotlight-wrap .desc {
      color: var(--muted);
      margin: 10px 0 16px;
      line-height: 1.6;
    }
    .spotlight-wrap .meta-grid {
      display: grid;
      grid-template-columns: repeat(2, 1fr);
      gap: 10px 20px;
      margin-bottom: 20px;
    }
    .spotlight-wrap .meta-grid .item {
      font-size: 0.85rem;
      color: var(--muted);
    }
    .spotlight-wrap .meta-grid .item strong {
      display: block;
      color: var(--primary);
      font-weight: 700;
      font-size: 0.95rem;
    }
    .spotlight-wrap .film-strip {
      display: flex;
      gap: 8px;
      flex-wrap: wrap;
      margin-bottom: 22px;
    }
    .spotlight-wrap .film-strip span {
      background: var(--light);
      color: var(--primary);
      padding: 5px 14px;
      border-radius: 40px;
      font-size: 0.78rem;
      font-weight: 600;
    }
    .spotlight-wrap .actions {
      display: flex;
      gap: 12px;
      flex-wrap: wrap;
    }

    /* ===== MODAL ===== */
    .modal-overlay {
      position: fixed;
      inset: 0;
      background: rgba(20, 10, 5, 0.85);
      backdrop-filter: blur(8px);
      -webkit-backdrop-filter: blur(8px);
      z-index: 1000;
      display: none;
      align-items: flex-start;
      justify-content: center;
      padding: 24px;
      overflow-y: auto;
    }
    .modal-overlay.active {
      display: flex;
    }
    .modal {
      background: var(--card);
      border-radius: var(--radius);
      max-width: 780px;
      width: 100%;
      margin: 20px auto;
      position: relative;
      animation: slideUp 0.3s cubic-bezier(0.2, 0.9, 0.3, 1.1);
      box-shadow: 0 30px 80px rgba(0, 0, 0, 0.6);
      overflow: hidden;
    }
    @keyframes slideUp {
      from { opacity: 0; transform: translateY(40px) scale(0.98); }
      to { opacity: 1; transform: translateY(0) scale(1); }
    }
    .modal-close {
      position: absolute;
      top: 14px;
      right: 14px;
      background: rgba(0, 0, 0, 0.4);
      backdrop-filter: blur(6px);
      color: white;
      width: 38px;
      height: 38px;
      border-radius: 50%;
      font-size: 1.1rem;
      cursor: pointer;
      display: flex;
      align-items: center;
      justify-content: center;
      z-index: 10;
      transition: 0.2s;
    }
    .modal-close:hover {
      background: var(--accent);
      transform: rotate(90deg);
    }
    .modal-header {
      display: flex;
      gap: 24px;
      padding: 28px;
      background: linear-gradient(135deg, #3a1c14, #7a2a1f);
      color: white;
      align-items: center;
      flex-wrap: wrap;
    }
    .modal-avatar {
      width: 110px;
      height: 110px;
      border-radius: 50%;
      background: linear-gradient(135deg, #7a2a1f, #3a1c14);
      display: flex;
      align-items: center;
      justify-content: center;
      font-family: 'Playfair Display', serif;
      font-size: 2.6rem;
      font-weight: 700;
      color: var(--gold);
      flex-shrink: 0;
      overflow: hidden;
      border: 3px solid var(--gold);
      box-shadow: 0 8px 24px rgba(0, 0, 0, 0.4);
      position: relative;
    }
    .modal-avatar img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      object-position: top;
      position: absolute;
      inset: 0;
    }
    .modal-header-info h2 {
      font-family: 'Playfair Display', serif;
      font-size: 2rem;
      font-weight: 700;
      margin-bottom: 6px;
      line-height: 1.1;
    }
    .modal-header-info .subtitle {
      color: var(--gold);
      font-size: 0.8rem;
      font-weight: 700;
      letter-spacing: 1px;
      text-transform: uppercase;
      margin-bottom: 12px;
    }
    .modal-meta-row {
      display: flex;
      flex-wrap: wrap;
      gap: 16px;
      font-size: 0.82rem;
      color: rgba(255, 255, 255, 0.75);
    }
    .modal-meta-row strong {
      color: white;
      font-weight: 700;
    }
    .modal-body {
      padding: 28px 32px 36px;
      max-height: 60vh;
      overflow-y: auto;
    }
    .modal-section {
      margin-bottom: 28px;
    }
    .modal-section:last-child {
      margin-bottom: 0;
    }
    .modal-section h3 {
      font-size: 0.85rem;
      font-weight: 700;
      color: var(--accent);
      text-transform: uppercase;
      letter-spacing: 1.5px;
      margin-bottom: 14px;
      display: flex;
      align-items: center;
      gap: 8px;
    }
    .movie-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(210px, 1fr));
      gap: 10px;
    }
    .movie-item {
      background: var(--light);
      border-radius: 10px;
      padding: 11px 14px;
      display: flex;
      justify-content: space-between;
      align-items: center;
      gap: 10px;
      border-left: 3px solid var(--gold);
      transition: 0.2s;
    }
    .movie-item:hover {
      background: var(--gold-soft);
      transform: translateX(3px);
    }
    .movie-item .movie-name {
      font-size: 0.85rem;
      font-weight: 600;
      color: var(--primary);
      line-height: 1.3;
    }
    .movie-item .movie-year {
      font-size: 0.72rem;
      color: var(--muted);
      font-weight: 700;
      background: white;
      padding: 3px 9px;
      border-radius: 20px;
      white-space: nowrap;
      flex-shrink: 0;
    }
    .upcoming-grid .movie-item {
      border-left-color: var(--accent);
      background: #fdf1ef;
    }
    .upcoming-grid .movie-item .movie-name {
      color: var(--accent-dark);
    }
    .status-pill {
      font-size: 0.62rem;
      font-weight: 800;
      padding: 2px 8px;
      border-radius: 20px;
      text-transform: uppercase;
      letter-spacing: 0.5px;
      white-space: nowrap;
    }
    .status-pill.filming {
      background: rgba(47, 125, 74, 0.15);
      color: #2f7d4a;
    }
    .status-pill.post {
      background: rgba(212, 160, 23, 0.2);
      color: #a67c00;
    }
    .status-pill.announced {
      background: rgba(88, 130, 193, 0.15);
      color: #3a6ba5;
    }

    /* ===== TIMELINE (Era) ===== */
    .era-wrap {
      display: flex;
      background: var(--card);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
      flex-wrap: wrap;
    }
    .era-wrap .era-img {
      flex: 1 1 42%;
      min-height: 260px;
      background: var(--light);
    }
    .era-wrap .era-img img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }
    .era-wrap .era-content {
      flex: 1 1 50%;
      padding: 40px 44px;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }
    .era-wrap .tag {
      background: var(--accent);
      color: white;
      padding: 4px 20px;
      border-radius: 40px;
      font-weight: 700;
      font-size: 0.75rem;
      text-transform: uppercase;
      align-self: flex-start;
      margin-bottom: 10px;
      letter-spacing: 0.5px;
    }
    .era-wrap h3 {
      font-size: 2rem;
      font-weight: 700;
      font-family: 'Playfair Display', serif;
    }
    .era-wrap .desc {
      color: var(--muted);
      margin: 8px 0 20px;
      line-height: 1.6;
    }
    .era-wrap .era-stats {
      display: flex;
      gap: 26px;
      flex-wrap: wrap;
    }
    .era-wrap .era-stats .stat .num {
      font-size: 2.2rem;
      font-weight: 800;
      color: var(--accent);
      line-height: 1;
    }
    .era-wrap .era-stats .stat .label {
      font-size: 0.75rem;
      color: var(--muted);
      text-transform: uppercase;
      letter-spacing: 1px;
      font-weight: 600;
      margin-top: 4px;
    }

    /* ===== TESTIMONIALS (Fan Quotes) ===== */
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
      color: var(--gold);
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
      border: 2px solid var(--gold-soft);
    }
    .testimonial-card .author .name {
      font-weight: 600;
    }
    .testimonial-card .author .role {
      font-size: 0.8rem;
      color: var(--muted);
    }

    /* ===== NEWSLETTER ===== */
    .newsletter {
      background: linear-gradient(145deg, #3a1c14, #7a2a1f);
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
      font-family: 'Playfair Display', serif;
      font-size: 1.8rem;
      font-weight: 700;
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
      outline-color: var(--gold);
      background: rgba(255, 255, 255, 0.14);
    }
    .newsletter .btn {
      background: var(--gold);
      color: #3a1c14;
      border-color: var(--gold);
      padding: 16px 36px;
    }
    .newsletter .btn:hover {
      background: #b8890f;
      border-color: #b8890f;
      color: white;
    }
    #newsletterMsg {
      width: 100%;
      margin-top: 10px;
      font-size: 0.9rem;
    }

    /* ===== FOOTER ===== */
    footer {
      margin-top: 20px;
      padding: 48px 0 28px;
      border-top: 1px solid #eae8e4;
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
      box-shadow: 0 8px 20px rgba(192, 57, 43, 0.2);
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
      border-top: 1px solid #eae8e4;
      padding-top: 24px;
    }

    /* ===== RESPONSIVE ===== */
    @media (max-width: 992px) {
      .nav-links { display: none; }
      .mobile-toggle { display: grid; place-items: center; }
      .footer-grid { grid-template-columns: 1fr 1fr; }
      .spotlight-wrap .spotlight-content { padding: 30px; }
      .era-wrap .era-content { padding: 30px; }
      .hero { padding: 48px 30px; }
    }
    @media (max-width: 700px) {
      .hero { margin: 12px 12px 0; padding: 36px 20px; }
      .search-wrap { min-width: 120px; }
      .heroes-grid { grid-template-columns: repeat(2, 1fr); gap: 14px; }
      .footer-grid { grid-template-columns: 1fr; }
      .newsletter { padding: 32px 24px; flex-direction: column; text-align: center; }
      .newsletter form { min-width: 100%; justify-content: center; }
      .header-inner { flex-wrap: nowrap; }
      .brand { font-size: 1.2rem; }
      .spotlight-wrap .spotlight-content { padding: 22px; }
      .era-wrap .era-content { padding: 22px; }
      .modal-header { flex-direction: column; text-align: center; }
      .modal-meta-row { justify-content: center; }
    }
    @media (max-width: 480px) {
      .heroes-grid { grid-template-columns: 1fr; }
      .hero h1 { font-size: 2rem; }
      .spotlight-wrap h3 { font-size: 1.6rem; }
      .testimonial-card { flex: 0 0 270px; padding: 20px; }
      .modal-body { padding: 20px; }
      .movie-grid { grid-template-columns: 1fr; }
    }
  </style>
</head>
<body>

  <!-- ===== HEADER ===== -->
  <header class="header">
    <div class="container header-inner">
      <div style="display:flex;align-items:center;gap:6px;">
        <button class="mobile-toggle" id="mobileToggle" aria-label="menu"><i class="fas fa-bars"></i></button>
        <a class="brand" href="#"><i class="fas fa-film"></i> Tolly<span class="accent">Wiki</span></a>
      </div>
      <ul class="nav-links">
        <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#heroes"><i class="fas fa-star"></i> Heroes</a></li>
        <li><a href="#spotlight"><i class="fas fa-fire"></i> Spotlight</a></li>
        <li><a href="#era"><i class="fas fa-history"></i> Era</a></li>
        <li><a href="#fans"><i class="fas fa-comments"></i> Fans</a></li>
      </ul>
      <div style="display:flex;align-items:center;gap:12px;">
        <div class="search-wrap">
          <input type="search" id="searchInput" placeholder="Search heroes or films..." aria-label="Search" />
          <button id="searchBtn"><i class="fas fa-search"></i></button>
        </div>
        <div class="header-actions">
          <button class="icon-btn" aria-label="profile"><i class="far fa-user"></i></button>
          <div class="fav-wrap">
            <button class="icon-btn" id="favBtn" aria-label="favorites"><i class="far fa-heart"></i></button>
            <span class="fav-count" id="favCount">0</span>
          </div>
        </div>
      </div>
    </div>
    <div id="mobileMenu">
      <div class="container">
        <ul>
          <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
          <li><a href="#heroes"><i class="fas fa-star"></i> Heroes</a></li>
          <li><a href="#spotlight"><i class="fas fa-fire"></i> Spotlight</a></li>
          <li><a href="#era"><i class="fas fa-history"></i> Era</a></li>
          <li><a href="#fans"><i class="fas fa-comments"></i> Fans</a></li>
          <li><a href="#"><i class="far fa-user"></i> Profile</a></li>
          <li><a href="#"><i class="far fa-heart"></i> Favorites</a></li>
        </ul>
      </div>
    </div>
  </header>

  <main>
    <!-- ===== HERO ===== -->
    <section class="hero">
      <div class="container">
        <div class="badge"><i class="fas fa-star"></i> The Telugu Film Universe</div>
        <h1>Stars who rule<br />the silver screen</h1>
        <p>Complete filmography, upcoming projects & career milestones of Tollywood's biggest heroes.</p>
        <div class="actions">
          <button class="btn btn-primary" id="exploreHeroes"><i class="fas fa-arrow-right"></i> Explore heroes</button>
          <button class="btn btn-ghost" id="exploreSpotlight"><i class="fas fa-fire"></i> Today's spotlight</button>
        </div>
      </div>
    </section>

    <!-- ===== HEROES GRID ===== -->
    <section class="section" id="heroes">
      <div class="container">
        <div class="section-header">
          <div><h2>Telugu cinema heroes</h2><div class="sub">Legends, superstars & rising icons</div></div>
          <a href="#" class="view-all">All heroes <i class="fas fa-arrow-right"></i></a>
        </div>
        <div class="heroes-grid" id="heroesGrid"></div>
      </div>
    </section>

    <!-- ===== SPOTLIGHT ===== -->
    <section class="section" id="spotlight">
      <div class="container">
        <div class="section-header">
          <div><h2>🔥 Spotlight hero</h2><div class="sub">Trending across the nation right now</div></div>
        </div>
        <div class="spotlight-wrap" id="spotlightWrap"></div>
      </div>
    </section>

    <!-- ===== ERA / STATS ===== -->
    <section class="section" id="era">
      <div class="container">
        <div class="section-header"><div><h2>🏆 Tollywood by the numbers</h2><div class="sub">The scale of Telugu cinema today</div></div></div>
        <div class="era-wrap">
          <div class="era-img"><img src="https://images.unsplash.com/photo-1489599849927-2ee91cede3ba?auto=format&fit=crop&w=800&q=80" alt="Cinema" loading="lazy" /></div>
          <div class="era-content">
            <span class="tag"><i class="fas fa-bolt"></i> box office power</span>
            <h3>Pan-India Phenomenon</h3>
            <p class="desc">Telugu cinema has become a global force, with blockbusters like RRR, Baahubali, Pushpa and Kalki rewriting box office history across languages.</p>
            <div class="era-stats">
              <div class="stat"><div class="num">₹5000Cr+</div><div class="label">Industry Value</div></div>
              <div class="stat"><div class="num">200+</div><div class="label">Films / Year</div></div>
              <div class="stat"><div class="num">8</div><div class="label">Star Heroes</div></div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- ===== FAN QUOTES ===== -->
    <section class="section" id="fans">
      <div class="container">
        <div class="section-header"><div><h2>What fans are saying</h2><div class="sub">Real voices from the Telugu film community</div></div></div>
        <div class="testimonials-scroll" id="fansList"></div>
      </div>
    </section>

    <!-- ===== NEWSLETTER ===== -->
    <section class="section">
      <div class="container">
        <div class="newsletter">
          <div><h3>Stay in the loop</h3><p>Get updates on new releases, box office & star news</p></div>
          <form id="newsletterForm" onsubmit="return false;">
            <input type="email" id="newsletterEmail" placeholder="Your email" aria-label="Email" required />
            <button class="btn" id="subscribeBtn"><i class="fas fa-paper-plane"></i> Subscribe</button>
            <div id="newsletterMsg"></div>
          </form>
        </div>
      </div>
    </section>
  </main>

  <!-- ===== FOOTER ===== -->
  <footer>
    <div class="container">
      <div class="footer-grid">
        <div class="brand-col">
          <div class="brand"><i class="fas fa-film"></i> Tolly<span class="accent">Wiki</span></div>
          <p>The definitive fan-made encyclopedia of Telugu cinema heroes, their films and upcoming projects.</p>
          <div class="socials">
            <a href="#" aria-label="fb"><i class="fab fa-facebook-f"></i></a>
            <a href="#" aria-label="tw"><i class="fab fa-twitter"></i></a>
            <a href="#" aria-label="ig"><i class="fab fa-instagram"></i></a>
            <a href="#" aria-label="yt"><i class="fab fa-youtube"></i></a>
          </div>
        </div>
        <div class="col"><h5>Explore</h5><ul><li><a href="#heroes">Heroes</a></li><li><a href="#spotlight">Spotlight</a></li><li><a href="#era">Industry Stats</a></li><li><a href="#fans">Fan Zone</a></li></ul></div>
        <div class="col"><h5>Cinema</h5><ul><li><a href="#">Upcoming</a></li><li><a href="#">Box Office</a></li><li><a href="#">Reviews</a></li><li><a href="#">Trailers</a></li></ul></div>
        <div class="col"><h5>About</h5><ul><li><a href="#">Our Team</a></li><li><a href="#">Contribute</a></li><li><a href="#">Privacy</a></li><li><a href="#">Contact</a></li></ul></div>
      </div>
      <div class="footer-bottom">&copy; <span id="year"></span> TollyWiki · Fan-made · All rights reserved.</div>
    </div>
  </footer>

  <!-- ===== MODAL ===== -->
  <div class="modal-overlay" id="modalOverlay">
    <div class="modal" id="modal">
      <button class="modal-close" id="modalClose" aria-label="close">✕</button>
      <div class="modal-header">
        <div class="modal-avatar" id="modalAvatar"></div>
        <div class="modal-header-info">
          <h2 id="modalName"></h2>
          <div class="subtitle" id="modalTagline"></div>
          <div class="modal-meta-row" id="modalMeta"></div>
        </div>
      </div>
      <div class="modal-body">
        <div class="modal-section">
          <h3><i class="fas fa-trophy"></i> Popular Films</h3>
          <div class="movie-grid" id="modalHits"></div>
        </div>
        <div class="modal-section">
          <h3><i class="fas fa-rocket"></i> Upcoming Projects</h3>
          <div class="movie-grid upcoming-grid" id="modalUpcoming"></div>
        </div>
      </div>
    </div>
  </div>

  <script>
    /* ============================================================
       DATA — Telugu Film Heroes with photo URLs
       (Photos use public free-license sources; initials show as fallback)
    ============================================================ */
    const HEROES = [
      {
        id: 'prabhas',
        name: 'Prabhas',
        tagline: 'Rebel Star',
        initial: 'P',
        badge: 'Pan-India',
        badgeClass: 'hot',
        photo: 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Prabhas_at_Saaho_Pre_release_event_%28cropped%29.jpg/400px-Prabhas_at_Saaho_Pre_release_event_%28cropped%29.jpg',
        knownFor: 'Baahubali, Saaho, Salaar, Kalki 2898 AD',
        meta: { born: '23 Oct 1979', debut: 'Eeswar (2002)', netWorth: '₹250 Cr+', films: '25+' },
        hits: [
          { name: 'Baahubali: The Beginning', year: '2015' },
          { name: 'Baahubali: The Conclusion', year: '2017' },
          { name: 'Saaho', year: '2019' },
          { name: 'Mirchi', year: '2013' },
          { name: 'Salaar: Part 1', year: '2023' },
          { name: 'Kalki 2898 AD', year: '2024' },
          { name: 'The Raja Saab', year: '2026' },
          { name: 'Billa', year: '2009' },
          { name: 'Darling', year: '2010' },
          { name: 'Mr. Perfect', year: '2011' }
        ],
        upcoming: [
          { name: 'Spirit', year: '2027', status: 'filming' },
          { name: 'Fauji', year: '2026', status: 'post' },
          { name: 'Kalki 2898 AD Part 2', year: 'TBA', status: 'filming' },
          { name: 'Salaar 2', year: 'TBA', status: 'announced' }
        ]
      },
      {
        id: 'mahesh',
        name: 'Mahesh Babu',
        tagline: 'Prince · Superstar',
        initial: 'M',
        badge: 'Superstar',
        badgeClass: '',
        photo: 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e5/Mahesh_Babu_in_Spyder_%28cropped%29.jpg/400px-Mahesh_Babu_in_Spyder_%28cropped%29.jpg',
        knownFor: 'Pokiri, Businessman, Srimanthudu, Varanasi',
        meta: { born: '9 Aug 1975', debut: 'Raja Kumarudu (1999)', netWorth: '₹300 Cr+', films: '30+' },
        hits: [
          { name: 'Pokiri', year: '2006' },
          { name: 'Athadu', year: '2005' },
          { name: 'Dookudu', year: '2011' },
          { name: 'Businessman', year: '2012' },
          { name: 'Srimanthudu', year: '2015' },
          { name: 'Bharat Ane Nenu', year: '2018' },
          { name: 'Maharshi', year: '2019' },
          { name: 'Sarileru Neekevvaru', year: '2020' },
          { name: '1: Nenokkadine', year: '2014' },
          { name: 'Okkadu', year: '2003' }
        ],
        upcoming: [
          { name: 'Varanasi (SSMB29)', year: '2027', status: 'filming' }
        ]
      },
      {
        id: 'allu',
        name: 'Allu Arjun',
        tagline: 'Icon Star · Stylish Star',
        initial: 'A',
        badge: 'National Award',
        badgeClass: 'hot',
        photo: 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Allu_Arjun_at_Pushpa_2_meet.jpg/400px-Allu_Arjun_at_Pushpa_2_meet.jpg',
        knownFor: 'Pushpa, Arya, Ala Vaikunthapurramuloo, Race Gurram',
        meta: { born: '8 Apr 1982', debut: 'Gangotri (2003)', netWorth: '₹350 Cr+', films: '25+' },
        hits: [
          { name: 'Arya', year: '2004' },
          { name: 'Race Gurram', year: '2014' },
          { name: 'S/O Satyamurthy', year: '2015' },
          { name: 'Sarrainodu', year: '2016' },
          { name: 'Ala Vaikunthapurramuloo', year: '2020' },
          { name: 'Pushpa: The Rise', year: '2021' },
          { name: 'Pushpa 2: The Rule', year: '2024' },
          { name: 'DJ: Duvvada Jagannadham', year: '2017' },
          { name: 'Vedam', year: '2010' },
          { name: 'Julayi', year: '2012' }
        ],
        upcoming: [
          { name: 'Raaka (AA22 x A6)', year: 'TBA', status: 'filming' },
          { name: 'Pushpa 3: The Rampage', year: 'TBA', status: 'announced' },
          { name: 'AA23 with Lokesh Kanagaraj', year: 'TBA', status: 'announced' }
        ]
      },
      {
        id: 'nani',
        name: 'Nani',
        tagline: 'Natural Star',
        initial: 'N',
        badge: 'Versatile',
        badgeClass: '',
        photo: 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/Nani_at_an_interview_for_film_companion.png/400px-Nani_at_an_interview_for_film_companion.png',
        knownFor: 'Eega, Jersey, Dasara, HIT series, The Paradise',
        meta: { born: '24 Feb 1984', debut: 'Ashta Chamma (2008)', netWorth: '₹120 Cr+', films: '30+' },
        hits: [
          { name: 'Eega', year: '2012' },
          { name: 'Bhale Bhale Magadivoy', year: '2015' },
          { name: 'Jersey', year: '2019' },
          { name: 'Dasara', year: '2023' },
          { name: 'Hi Nanna', year: '2023' },
          { name: 'HIT: The Third Case', year: '2025' },
          { name: 'Shyam Singha Roy', year: '2021' },
          { name: 'Gentleman', year: '2016' },
          { name: 'Krishna Gaadi Veera Prema Gaadha', year: '2016' },
          { name: 'Ante Sundaraniki', year: '2022' }
        ],
        upcoming: [
          { name: 'The Paradise', year: '2026', status: 'post' },
          { name: 'Bloody Romeo', year: 'TBA', status: 'announced' }
        ]
      },
      {
        id: 'ntr',
        name: 'Jr NTR',
        tagline: 'Man of Masses · Young Tiger',
        initial: 'N',
        badge: 'Golden Globe',
        badgeClass: 'hot',
        photo: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/Jr._NTR_at_Interview_for_Aravinda_Sametha.png/400px-Jr._NTR_at_Interview_for_Aravinda_Sametha.png',
        knownFor: 'RRR, Devara, Temper, Jai Lava Kusa, War 2',
        meta: { born: '20 May 1983', debut: 'Ninnu Choodalani (2001)', netWorth: '₹280 Cr+', films: '30+' },
        hits: [
          { name: 'RRR', year: '2022' },
          { name: 'Devara: Part 1', year: '2024' },
          { name: 'Temper', year: '2015' },
          { name: 'Jai Lava Kusa', year: '2017' },
          { name: 'Aravinda Sametha', year: '2018' },
          { name: 'Nannaku Prematho', year: '2016' },
          { name: 'Janatha Garage', year: '2016' },
          { name: 'War 2', year: '2025' },
          { name: 'Yamadonga', year: '2007' },
          { name: 'Simhadri', year: '2003' }
        ],
        upcoming: [
          { name: 'Dragon (NTRNeel)', year: '2026', status: 'filming' },
          { name: 'NTR x Trivikram (Mythology)', year: 'TBA', status: 'announced' }
        ]
      },
      {
        id: 'ramcharan',
        name: 'Ram Charan',
        tagline: 'Global Star · Mega Power Star',
        initial: 'R',
        badge: 'Global Star',
        badgeClass: '',
        photo: 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f7/Ram_Charan_2024_%28cropped%29.jpg/400px-Ram_Charan_2024_%28cropped%29.jpg',
        knownFor: 'RRR, Rangasthalam, Magadheera, Peddi, Game Changer',
        meta: { born: '27 Mar 1985', debut: 'Chirutha (2007)', netWorth: '₹300 Cr+', films: '20+' },
        hits: [
          { name: 'Magadheera', year: '2009' },
          { name: 'Rangasthalam', year: '2018' },
          { name: 'RRR', year: '2022' },
          { name: 'Naayak', year: '2013' },
          { name: 'Yevadu', year: '2014' },
          { name: 'Dhruva', year: '2016' },
          { name: 'Vinaya Vidheya Rama', year: '2019' },
          { name: 'Game Changer', year: '2025' },
          { name: 'Zanjeer', year: '2013' },
          { name: 'Chirutha', year: '2007' }
        ],
        upcoming: [
          { name: 'Peddi', year: '2026', status: 'post' },
          { name: 'RC17 with Sukumar', year: 'TBA', status: 'announced' },
          { name: 'Naga Vamsi Untitled', year: 'TBA', status: 'announced' }
        ]
      },
      {
        id: 'pawan',
        name: 'Pawan Kalyan',
        tagline: 'Power Star · Deputy CM',
        initial: 'P',
        badge: 'Power Star',
        badgeClass: '',
        photo: 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Pawan_Kalyan_in_2024.jpg/400px-Pawan_Kalyan_in_2024.jpg',
        knownFor: 'Gabbar Singh, Attarintiki Daredi, Vakeel Saab, OG',
        meta: { born: '2 Sep 1971', debut: 'Akkada Ammayi Ikkada Abbayi (1996)', netWorth: '₹200 Cr+', films: '25+' },
        hits: [
          { name: 'Gabbar Singh', year: '2012' },
          { name: 'Attarintiki Daredi', year: '2013' },
          { name: 'Vakeel Saab', year: '2021' },
          { name: 'Jalsa', year: '2008' },
          { name: 'Kushi', year: '2001' },
          { name: 'Tholi Prema', year: '1998' },
          { name: 'Badri', year: '2000' },
          { name: 'They Call Him OG', year: '2025' },
          { name: 'Ustaad Bhagat Singh', year: '2026' },
          { name: 'Hari Hara Veera Mallu', year: '2025' }
        ],
        upcoming: [
          { name: 'OG 2', year: 'TBA', status: 'announced' }
        ]
      },
      {
        id: 'chiranjeevi',
        name: 'Chiranjeevi',
        tagline: 'Megastar · Padma Bhushan',
        initial: 'C',
        badge: 'Megastar',
        badgeClass: 'hot',
        photo: 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fb/Chiranjeevi_at_Amitabh_Bachchan%27s_70th_birthday_celebration_%28cropped%29.jpg/400px-Chiranjeevi_at_Amitabh_Bachchan%27s_70th_birthday_celebration_%28cropped%29.jpg',
        knownFor: 'Indra, Tagore, Sye Raa, Khaidi No. 150, Viswambhara',
        meta: { born: '22 Aug 1955', debut: 'Punadhirallu (1978)', netWorth: '₹400 Cr+', films: '150+' },
        hits: [
          { name: 'Indra', year: '2002' },
          { name: 'Tagore', year: '2003' },
          { name: 'Sye Raa Narasimha Reddy', year: '2019' },
          { name: 'Khaidi No. 150', year: '2017' },
          { name: 'Gang Leader', year: '1991' },
          { name: 'Gharana Mogudu', year: '1992' },
          { name: 'Muta Mesthri', year: '1993' },
          { name: 'Aapadbandhavudu', year: '1992' },
          { name: 'Mana Shankara Vara Prasad Garu', year: '2026' },
          { name: 'Bhola Shankar', year: '2023' }
        ],
        upcoming: [
          { name: 'Viswambhara', year: '2026', status: 'post' },
          { name: 'Mega158 / Kadiri', year: 'TBA', status: 'announced' },
          { name: 'Chiranjeevi x Srikanth Odela', year: 'TBA', status: 'announced' }
        ]
      }
    ];

    const FAN_QUOTES = [
      { name: 'Ravi Teja', role: 'Fan since 2005', avatar: 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80', text: 'Prabhas in Baahubali was a once-in-a-generation performance. Pure goosebumps!', stars: 5 },
      { name: 'Sneha Reddy', role: 'Tollywood Blogger', avatar: 'https://images.unsplash.com/photo-1494790108378-be9c29b29330?auto=format&fit=crop&w=80&q=80', text: 'Allu Arjun in Pushpa redefined what a pan-India star looks like. Iconic!', stars: 5 },
      { name: 'Kiran Kumar', role: 'Cinema Critic', avatar: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80', text: 'Nani is the most natural actor of this generation. His script choices are impeccable.', stars: 5 },
      { name: 'Divya Sharma', role: 'Film Student', avatar: 'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?auto=format&fit=crop&w=80&q=80', text: 'Jr NTR and Ram Charan together in RRR — that\'s cinema history right there.', stars: 5 },
      { name: 'Arjun Rao', role: 'Lifelong Fan', avatar: 'https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80', text: 'Chiranjeevi garu is the reason Telugu cinema has the reach it has today. Legend!', stars: 5 }
    ];

    /* ============================================================
       STATE
    ============================================================ */
    let favCount = 0;
    const favorites = new Set();

    /* ============================================================
       DOM REFS
    ============================================================ */
    const heroesGrid = document.getElementById('heroesGrid');
    const spotlightWrap = document.getElementById('spotlightWrap');
    const fansList = document.getElementById('fansList');
    const favCountEl = document.getElementById('favCount');
    const searchInput = document.getElementById('searchInput');
    const searchBtn = document.getElementById('searchBtn');
    const mobileToggle = document.getElementById('mobileToggle');
    const mobileMenu = document.getElementById('mobileMenu');
    const newsletterForm = document.getElementById('newsletterForm');
    const newsletterEmail = document.getElementById('newsletterEmail');
    const newsletterMsg = document.getElementById('newsletterMsg');

    /* ============================================================
       HELPERS
    ============================================================ */
    function escapeHtml(text) {
      return String(text).replace(/[&<>"']/g, s => ({ '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;' } [s]));
    }

    function updateFavCount() {
      favCountEl.textContent = favorites.size;
      favCountEl.style.transform = 'scale(1.4)';
      setTimeout(() => favCountEl.style.transform = 'scale(1)', 200);
    }

    function toggleFavorite(heroId, btnEl) {
      if (favorites.has(heroId)) {
        favorites.delete(heroId);
        btnEl.innerHTML = '<i class="far fa-heart"></i>';
        btnEl.style.color = '';
      } else {
        favorites.add(heroId);
        btnEl.innerHTML = '<i class="fas fa-heart"></i>';
        btnEl.style.color = 'var(--accent)';
      }
      updateFavCount();
    }

    /* ============================================================
       RENDER HERO CARDS
    ============================================================ */
    function renderHeroes(list) {
      heroesGrid.innerHTML = '';
      if (!list.length) {
        heroesGrid.innerHTML = '<p style="grid-column:1/-1;text-align:center;padding:48px;color:var(--muted);font-size:1.1rem;">No heroes found matching your search.</p>';
        return;
      }
      list.forEach(h => {
        const el = document.createElement('article');
        el.className = 'hero-card';
        el.innerHTML = `
          <div class="img-wrap">
            <span class="initials">${h.initial}</span>
            <img src="${h.photo}" alt="${escapeHtml(h.name)}" loading="lazy" onerror="this.style.display='none'" />
            ${h.badge ? `<span class="badge ${h.badgeClass || ''}">${h.badge}</span>` : ''}
            <button class="fav" data-id="${h.id}" aria-label="favorite"><i class="far fa-heart"></i></button>
          </div>
          <div class="body">
            <div class="role">${escapeHtml(h.tagline)}</div>
            <h5>${escapeHtml(h.name)}</h5>
            <div class="known-for">${escapeHtml(h.knownFor)}</div>
            <div class="stats">
              <span><strong>${h.hits.length}</strong> hits</span>
              <span><strong>${h.upcoming.length}</strong> upcoming</span>
            </div>
          </div>
          <div class="footer">
            <button class="view" data-id="${h.id}"><i class="fas fa-eye"></i> View Profile</button>
          </div>
        `;
        heroesGrid.appendChild(el);
      });

      // Bind favorite buttons
      heroesGrid.querySelectorAll('.fav').forEach(btn => {
        btn.addEventListener('click', function(e) {
          e.stopPropagation();
          const id = this.dataset.id;
          toggleFavorite(id, this);
        });
      });

      // Bind view buttons & card clicks
      heroesGrid.querySelectorAll('.hero-card').forEach(card => {
        card.addEventListener('click', function(e) {
          if (e.target.closest('.fav')) return;
          const id = this.querySelector('.view').dataset.id;
          openModal(id);
        });
      });
    }

    /* ============================================================
       RENDER SPOTLIGHT (Prabhas)
    ============================================================ */
    function renderSpotlight() {
      const h = HEROES[0]; // Prabhas as spotlight
      spotlightWrap.innerHTML = `
        <div class="spotlight-img">
          <span class="initials">${h.initial}</span>
          <img src="${h.photo}" alt="${escapeHtml(h.name)}" onerror="this.style.display='none'" />
        </div>
        <div class="spotlight-content">
          <span class="tag"><i class="fas fa-fire"></i> trending now</span>
          <h3>${escapeHtml(h.name)}</h3>
          <p class="desc">${escapeHtml(h.knownFor)} — one of the biggest pan-India stars today, whose films redefine scale and spectacle.</p>
          <div class="meta-grid">
            <div class="item">Born<strong>${h.meta.born}</strong></div>
            <div class="item">Debut<strong>${h.meta.debut}</strong></div>
            <div class="item">Net Worth<strong>${h.meta.netWorth}</strong></div>
            <div class="item">Films<strong>${h.meta.films}</strong></div>
          </div>
          <div class="film-strip">
            ${h.hits.slice(0, 5).map(m => `<span>${escapeHtml(m.name)}</span>`).join('')}
          </div>
          <div class="actions">
            <button class="btn btn-primary" onclick="document.querySelector('.hero-card .view[data-id=\\'prabhas\\']')?.click()"><i class="fas fa-user"></i> Full Profile</button>
            <button class="btn btn-ghost" id="spotlightFav" style="background:var(--light);color:var(--primary);border-color:var(--light)"><i class="far fa-heart"></i> Add to Favorites</button>
          </div>
        </div>
      `;

      const favBtn = document.getElementById('spotlightFav');
      favBtn.addEventListener('click', function() {
        if (favorites.has(h.id)) {
          favorites.delete(h.id);
          this.innerHTML = '<i class="far fa-heart"></i> Add to Favorites';
        } else {
          favorites.add(h.id);
          this.innerHTML = '<i class="fas fa-heart"></i> Favorited!';
        }
        updateFavCount();
      });
    }

    /* ============================================================
       RENDER FAN QUOTES
    ============================================================ */
    function renderFans() {
      fansList.innerHTML = '';
      FAN_QUOTES.forEach(t => {
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
        fansList.appendChild(el);
      });
    }

    /* ============================================================
       MODAL
    ============================================================ */
    const modalOverlay = document.getElementById('modalOverlay');
    const modalClose = document.getElementById('modalClose');
    const modalAvatar = document.getElementById('modalAvatar');
    const modalName = document.getElementById('modalName');
    const modalTagline = document.getElementById('modalTagline');
    const modalMeta = document.getElementById('modalMeta');
    const modalHits = document.getElementById('modalHits');
    const modalUpcoming = document.getElementById('modalUpcoming');

    function openModal(heroId) {
      const h = HEROES.find(x => x.id === heroId);
      if (!h) return;

      modalAvatar.innerHTML = `<span>${h.initial}</span>`;
      const img = document.createElement('img');
      img.src = h.photo;
      img.alt = h.name;
      img.onerror = function() { this.remove(); };
      img.onload = function() { modalAvatar.innerHTML = ''; modalAvatar.appendChild(this); };
      modalAvatar.appendChild(img);

      modalName.textContent = h.name;
      modalTagline.textContent = h.tagline;
      modalMeta.innerHTML = `
        <span>🎂 <strong>${h.meta.born}</strong></span>
        <span>🎬 <strong>${h.meta.debut}</strong></span>
        <span>💰 <strong>${h.meta.netWorth}</strong></span>
        <span>🎥 <strong>${h.meta.films} films</strong></span>
      `;

      modalHits.innerHTML = h.hits.map(m => `
        <div class="movie-item">
          <span class="movie-name">${escapeHtml(m.name)}</span>
          <span class="movie-year">${m.year}</span>
        </div>
      `).join('');

      modalUpcoming.innerHTML = h.upcoming.map(m => {
        const cls = m.status === 'filming' ? 'filming' : m.status === 'post' ? 'post' : 'announced';
        const label = m.status === 'filming' ? 'Filming' : m.status === 'post' ? 'Post-Prod' : 'Announced';
        return `
          <div class="movie-item">
            <span class="movie-name">${escapeHtml(m.name)}</span>
            <span style="display:flex;gap:6px;align-items:center">
              <span class="status-pill ${cls}">${label}</span>
              <span class="movie-year">${m.year}</span>
            </span>
          </div>
        `;
      }).join('');

      modalOverlay.classList.add('active');
      document.body.style.overflow = 'hidden';
    }

    function closeModal() {
      modalOverlay.classList.remove('active');
      document.body.style.overflow = '';
    }

    modalClose.addEventListener('click', closeModal);
    modalOverlay.addEventListener('click', e => { if (e.target === modalOverlay) closeModal(); });
    document.addEventListener('keydown', e => { if (e.key === 'Escape') closeModal(); });

    /* ============================================================
       SEARCH
    ============================================================ */
    function filterHeroes(query) {
      const q = String(query || '').trim().toLowerCase();
      if (!q) { renderHeroes(HEROES); return; }
      const filtered = HEROES.filter(h =>
        h.name.toLowerCase().includes(q) ||
        h.tagline.toLowerCase().includes(q) ||
        h.knownFor.toLowerCase().includes(q) ||
        h.hits.some(m => m.name.toLowerCase().includes(q)) ||
        h.upcoming.some(m => m.name.toLowerCase().includes(q))
      );
      renderHeroes(filtered);
    }

    searchBtn.addEventListener('click', () => filterHeroes(searchInput.value));
    searchInput.addEventListener('keydown', e => { if (e.key === 'Enter') filterHeroes(e.target.value); });
    searchInput.addEventListener('input', e => filterHeroes(e.target.value));

    /* ============================================================
       MOBILE MENU
    ============================================================ */
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

    /* ============================================================
       SMOOTH SCROLL BUTTONS
    ============================================================ */
    document.getElementById('exploreHeroes').addEventListener('click', () => {
      document.getElementById('heroes').scrollIntoView({ behavior: 'smooth' });
    });
    document.getElementById('exploreSpotlight').addEventListener('click', () => {
      document.getElementById('spotlight').scrollIntoView({ behavior: 'smooth' });
    });

    /* ============================================================
       NEWSLETTER
    ============================================================ */
    newsletterForm.addEventListener('submit', e => {
      e.preventDefault();
      const email = newsletterEmail.value.trim();
      if (!email || !email.includes('@')) {
        newsletterMsg.textContent = 'Please enter a valid email address.';
        newsletterMsg.style.color = '#ffb3b3';
        return;
      }
      newsletterMsg.textContent = '🎬 Subscribed! Get ready for Tollywood updates.';
      newsletterMsg.style.color = '#ffdf8a';
      newsletterEmail.value = '';
      setTimeout(() => { newsletterMsg.textContent = ''; }, 3500);
    });

    /* ============================================================
       FAVORITES BUTTON
    ============================================================ */
    document.getElementById('favBtn').addEventListener('click', () => {
      alert(`❤️ You have ${favorites.size} hero${favorites.size !== 1 ? 'es' : ''} in favorites.`);
    });

    /* ============================================================
       YEAR
    ============================================================ */
    document.getElementById('year').textContent = new Date().getFullYear();

    /* ============================================================
       RESIZE HANDLER
    ============================================================ */
    window.addEventListener('resize', () => {
      if (window.innerWidth > 768) {
        mobileMenu.style.display = 'none';
        mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
      }
    });

    /* ============================================================
       INIT
    ============================================================ */
    renderHeroes(HEROES);
    renderSpotlight();
    renderFans();
    updateFavCount();

    console.log('🎬 TollyWiki loaded — 8 heroes, full filmography & upcoming projects.');
  </script>
</body>
</html>
