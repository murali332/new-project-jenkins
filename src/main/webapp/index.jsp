<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>NexusShop — Premium E‑Commerce Experience</title>

    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700&family=Playfair+Display:ital,wght@0,600;0,700;1,400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

    <style>
        :root {
            --bg: #f8fafc;
            --primary: #0f172a;
            --accent: #059669;
            --accent-light: #ecfdf5;
            --muted: #64748b;
            --card: #ffffff;
            --surface: #ffffff;
            --border: #e2e8f0;
            --success: #10b981;
            --radius-sm: 8px;
            --radius-md: 16px;
            --radius-lg: 24px;
            --container: 1280px;
        }

        * {
            box-sizing: border-box;
        }

        html,
        body {
            height: 100%;
        }

        body {
            margin: 0;
            font-family: 'Plus Jakarta Sans', system-ui, -apple-system, sans-serif;
            color: var(--primary);
            background: var(--bg);
            -webkit-font-smoothing: antialiased;
            line-height: 1.5;
        }

        a {
            color: inherit;
            text-decoration: none;
            transition: color 0.2s ease;
        }

        .container {
            width: 100%;
            max-width: var(--container);
            margin: 0 auto;
            padding: 0 24px;
        }

        /* Header UI Updates */
        header {
            position: sticky;
            top: 0;
            z-index: 50;
            background: rgba(255, 255, 255, 0.85);
            border-bottom: 1px solid var(--border);
            backdrop-filter: blur(12px);
            -webkit-backdrop-filter: blur(12px);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 24px;
            padding: 16px 0;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 8px;
            font-weight: 700;
            font-size: 22px;
            letter-spacing: -0.03em;
        }

        .brand .accent {
            color: var(--accent);
        }

        nav.main-nav ul {
            display: flex;
            gap: 12px;
            list-style: none;
            margin: 0;
            padding: 0;
            align-items: center;
        }

        nav.main-nav li a {
            display: flex;
            gap: 8px;
            align-items: center;
            padding: 8px 16px;
            border-radius: var(--radius-sm);
            color: var(--muted);
            font-weight: 500;
            font-size: 14px;
        }

        nav.main-nav li a:hover {
            background: var(--accent-light);
            color: var(--accent);
        }

        .search {
            display: flex;
            align-items: center;
            gap: 12px;
            background: #f1f5f9;
            padding: 10px 18px;
            border-radius: 999px;
            min-width: 280px;
            border: 1px solid transparent;
            transition: all 0.2s ease;
        }

        .search:focus-within {
            background: white;
            border-color: var(--accent);
            box-shadow: 0 0 0 3px rgba(5, 150, 105, 0.1);
        }

        .search input {
            border: 0;
            background: transparent;
            outline: none;
            width: 100%;
            font-size: 14px;
            font-family: inherit;
        }

        .icon-btn {
            background: transparent;
            border: 0;
            cursor: pointer;
            color: var(--primary);
            font-size: 18px;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 8px;
            border-radius: 50%;
            transition: background 0.2s ease;
        }

        .icon-btn:hover {
            background: #e2e8f0;
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .cart {
            position: relative;
            display: inline-flex;
            align-items: center;
            background: var(--primary);
            color: white !important;
            padding: 10px 16px;
            border-radius: 999px;
            gap: 8px;
            font-weight: 600;
            font-size: 14px;
        }

        .cart-count {
            background: var(--accent);
            color: white;
            font-size: 11px;
            font-weight: 700;
            min-width: 20px;
            height: 20px;
            padding: 0 4px;
            border-radius: 50%;
            display: inline-grid;
            place-items: center;
        }

        .mobile-toggle {
            display: none;
            border: 0;
            background: transparent;
            font-size: 22px;
            cursor: pointer;
        }

        /* Modernized Hero Styling */
        .hero {
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            background:
                linear-gradient(180deg, rgba(15, 23, 42, 0.75), rgba(15, 23, 42, 0.85)),
                url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80') center/cover no-repeat;
            color: white;
            min-height: 520px;
            padding: 80px 24px;
            border-radius: var(--radius-lg);
            margin: 24px auto;
            max-width: calc(var(--container) - 48px);
        }

        .hero h1 {
            font-family: 'Playfair Display', serif;
            font-size: 52px;
            margin: 0 0 16px;
            letter-spacing: -0.01em;
        }

        .hero p {
            margin: 0 0 32px;
            opacity: 0.85;
            max-width: 680px;
            font-size: 18px;
            margin-left: auto;
            margin-right: auto;
        }

        .btn {
            display: inline-flex;
            align-items: center;
            gap: 10px;
            padding: 14px 28px;
            border-radius: 999px;
            font-weight: 600;
            font-size: 15px;
            cursor: pointer;
            border: 0;
            transition: all 0.2s ease;
        }

        .btn-primary {
            background: var(--accent);
            color: white;
        }

        .btn-primary:hover {
            background: #047857;
            transform: translateY(-2px);
        }

        .btn-ghost {
            background: transparent;
            border: 2px solid rgba(255, 255, 255, 0.3);
            color: white;
        }

        .btn-ghost:hover {
            background: rgba(255, 255, 255, 0.1);
            border-color: white;
        }

        /* Structured Sections */
        .section {
            padding: 64px 0;
        }

        .section .title {
            text-align: center;
            margin-bottom: 40px;
        }

        .section .title h2 {
            font-size: 32px;
            font-weight: 700;
            letter-spacing: -0.02em;
            margin: 0 0 8px;
        }

        .grid {
            display: grid;
            gap: 24px;
        }

        /* High-End Category Tiles */
        .categories {
            grid-template-columns: repeat(6, 1fr);
        }

        .cat-card {
            background: var(--card);
            border: 1px solid var(--border);
            border-radius: var(--radius-md);
            padding: 24px 16px;
            text-align: center;
            cursor: pointer;
            transition: all 0.25s cubic-bezier(0.4, 0, 0.2, 1);
        }

        .cat-card:hover {
            transform: translateY(-4px);
            border-color: var(--accent);
            box-shadow: 0 12px 30px rgba(15, 23, 42, 0.06);
        }

        .cat-card .icon {
            font-size: 32px;
            color: var(--accent);
            margin-bottom: 12px;
            height: 48px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .cat-card h4 {
            margin: 0;
            font-size: 15px;
            font-weight: 600;
        }

        /* Redesigned Product Showcase Cards */
        .products {
            grid-template-columns: repeat(4, 1fr);
        }

        .product {
            background: var(--card);
            border: 1px solid var(--border);
            border-radius: var(--radius-md);
            overflow: hidden;
            display: flex;
            flex-direction: column;
            position: relative;
            transition: all 0.25s cubic-bezier(0.4, 0, 0.2, 1);
        }

        .product:hover {
            transform: translateY(-4px);
            box-shadow: 0 16px 36px rgba(15, 23, 42, 0.08);
            border-color: #cbd5e1;
        }

        .product-img-wrapper {
            width: 100%;
            height: 240px;
            position: relative;
            overflow: hidden;
            background: #f1f5f9;
        }

        .product img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.4s ease;
        }

        .product:hover .product-img-wrapper img {
            transform: scale(1.05);
        }

        .product-body {
            padding: 20px;
            display: flex;
            flex-direction: column;
            gap: 8px;
            flex: 1;
        }

        .product h5 {
            margin: 0;
            font-size: 16px;
            font-weight: 600;
            line-height: 1.4;
        }

        .price-row {
            display: flex;
            align-items: baseline;
            gap: 8px;
            margin-top: auto;
        }

        .price {
            font-weight: 700;
            font-size: 18px;
            color: var(--primary);
        }

        .old-price {
            color: var(--muted);
            text-decoration: line-through;
            font-weight: 500;
            font-size: 14px;
        }

        .rating-row {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-top: 4px;
        }

        .rating {
            color: #f59e0b;
            font-size: 12px;
            display: flex;
            align-items: center;
            gap: 4px;
        }

        .product-footer {
            padding: 0 20px 20px;
            display: flex;
            gap: 8px;
        }

        .add-btn {
            flex: 1;
            background: var(--primary);
            color: white;
            border: 0;
            padding: 12px;
            border-radius: var(--radius-sm);
            cursor: pointer;
            font-weight: 600;
            font-size: 14px;
            font-family: inherit;
            transition: background 0.2s ease;
        }

        .add-btn:hover {
            background: #1e293b;
        }

        .wish-btn {
            background: transparent;
            border: 1px solid var(--border);
            padding: 12px;
            width: 44px;
            border-radius: var(--radius-sm);
            cursor: pointer;
            color: var(--muted);
            transition: all 0.2s ease;
        }

        .wish-btn:hover {
            color: #ef4444;
            border-color: #fecdd3;
            background: #fff5f5;
        }

        /* Refined Deal Section */
        .deal {
            display: flex;
            background: white;
            border: 1px solid var(--border);
            border-radius: var(--radius-lg);
            overflow: hidden;
            box-shadow: 0 10px 30px rgba(0,0,0,0.02);
        }

        .deal-img-wrapper {
            width: 50%;
            min-height: 380px;
            position: relative;
        }

        .deal img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            position: absolute;
        }

        .deal .content {
            padding: 48px;
            flex: 1;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .deal h3 {
            font-size: 28px;
            margin: 0 0 12px;
            font-weight: 700;
        }

        .timer {
            display: flex;
            gap: 12px;
            margin: 24px 0;
        }

        .time-box {
            background: #f1f5f9;
            color: var(--primary);
            padding: 14px;
            border-radius: var(--radius-sm);
            min-width: 72px;
            text-align: center;
        }

        .time-box div:first-child {
            font-size: 20px;
            font-weight: 700;
        }

        .deal .price {
            font-size: 32px;
        }

        /* Modernized Review Slider Layout */
        .testimonials {
            display: flex;
            gap: 24px;
            overflow-x: auto;
            padding: 12px 4px 24px;
            scrollbar-width: thin;
        }

        .testimonial {
            min-width: 360px;
            background: white;
            padding: 32px;
            border-radius: var(--radius-md);
            border: 1px solid var(--border);
        }

        .testimonial p {
            font-size: 15px;
            line-height: 1.6;
            color: #334155;
            margin: 16px 0;
            font-style: italic;
        }

        /* Clean Newsletter Card */
        .newsletter {
            background: var(--primary);
            color: white;
            border-radius: var(--radius-lg);
            padding: 56px 32px;
            text-align: center;
            position: relative;
            overflow: hidden;
        }

        .newsletter h3 {
            font-size: 28px;
            margin: 0 0 8px;
            font-weight: 700;
        }

        .newsletter p {
            color: #94a3b8;
            margin: 0 0 28px;
        }

        .newsletter input {
            padding: 14px 24px;
            border-radius: 999px;
            border: 0;
            width: 340px;
            max-width: 100%;
            outline: none;
            font-family: inherit;
            font-size: 14px;
        }

        /* Minimal Footers */
        footer {
            margin-top: 64px;
            padding: 64px 0 32px;
            border-top: 1px solid var(--border);
            color: var(--muted);
            font-size: 14px;
            background: #ffffff;
        }

        footer h5 {
            color: var(--primary);
            font-size: 16px;
            margin: 0 0 16px;
            font-weight: 600;
        }

        /* Responsive Breakpoints */
        @media (max-width:1200px) {
            .categories {
                grid-template-columns: repeat(3, 1fr);
            }

            .products {
                grid-template-columns: repeat(3, 1fr);
            }
        }

        @media (max-width:900px) {
            nav.main-nav {
                display: none;
            }

            .mobile-toggle {
                display: inline-block;
            }

            .products {
                grid-template-columns: repeat(2, 1fr);
            }

            .deal {
                flex-direction: column;
            }

            .deal-img-wrapper {
                width: 100%;
                min-height: 260px;
            }

            .deal .content {
                padding: 32px;
            }
        }

        @media (max-width:600px) {
            .hero h1 {
                font-size: 36px;
            }

            .products {
                grid-template-columns: 1fr;
            }

            .categories {
                grid-template-columns: repeat(2, 1fr);
            }

            .search {
                display: none; /* Hide wide desktop search on mobile headers */
            }
        }

        .muted {
            color: var(--muted);
        }

        .text-center {
            text-align: center;
        }
    </style>
</head>

<body>
    <header>
        <div class="container header-inner" role="banner">
            <div style="display:flex;align-items:center;gap:16px;">
                <button class="mobile-toggle" id="mobileToggle" aria-label="Open menu"><i class="fas fa-bars"></i></button>
                <a class="brand" href="#">
                    <span>Nexus<span class="accent">Shop</span></span>
                </a>
            </div>

            <nav class="main-nav" id="mainNav" aria-label="Primary navigation">
                <ul>
                    <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
                    <li class="has-dropdown" aria-haspopup="true">
                        <a href="#" id="catMenuBtn"><i class="fas fa-th-large"></i> Categories <i class="fas fa-chevron-down" style="font-size:12px;"></i></a>
                    </li>
                    <li><a href="#"><i class="fas fa-fire"></i> Trending</a></li>
                    <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
                    <li><a href="#about"><i class="fas fa-info-circle"></i> About</a></li>
                </ul>
            </nav>

            <div style="display:flex;align-items:center;gap:16px;">
                <div class="search" role="search" aria-label="Product search">
                    <input type="search" id="searchInput" placeholder="Search products, brands..." aria-label="Search products" />
                    <button class="icon-btn" id="searchBtn" aria-label="Search"><i class="fas fa-search"></i></button>
                </div>

                <div class="header-actions" role="group" aria-label="Header actions">
                    <a class="icon-btn" title="Account" href="#"><i class="far fa-user"></i></a>
                    <a class="icon-btn" title="Wishlist" href="#"><i class="far fa-heart"></i></a>
                    <a class="cart" href="#" id="cartBtn" title="View cart" aria-label="Cart">
                        <i class="fas fa-shopping-cart"></i>
                        <span class="cart-count" id="cartCount">0</span>
                    </a>
                </div>
            </div>
        </div>

        <div id="mobileMenu" style="display:none; background:var(--surface); border-top:1px solid var(--border);">
            <div class="container" style="padding:16px 0;">
                <nav aria-label="Mobile navigation">
                    <ul style="list-style:none;padding:0;margin:0;display:flex;flex-direction:column;gap:12px;">
                        <li><a href="#" style="display:block; padding:8px 0;">Home</a></li>
                        <li><a href="#" style="display:block; padding:8px 0;">Categories</a></li>
                        <li><a href="#" style="display:block; padding:8px 0;">Trending</a></li>
                        <li><a href="#deals" style="display:block; padding:8px 0;">Deals</a></li>
                        <li><a href="#about" style="display:block; padding:8px 0;">About</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>

    <main>
        <section class="hero" role="img" aria-label="Hero banner">
            <div class="container">
                <h1>Sports Collection — Premium Picks</h1>
                <p>Discover luxury athletic innovations and clean design profiles curated just for your dynamic lifestyle.</p>
                <div>
                    <button class="btn btn-primary" id="shopNow">Shop New Arrivals <i class="fas fa-arrow-right"></i></button>
                    <button class="btn btn-ghost" id="exploreDeals">Explore Deals</button>
                </div>
            </div>
        </section>

        <section class="section container" aria-labelledby="cat-title">
            <div class="title" id="cat-title">
                <h2>Shop by Category</h2>
                <p class="muted">Browse through our wide range of products across curated categories.</p>
            </div>
            <div class="grid categories" id="categoriesGrid" aria-live="polite"></div>
        </section>

        <section class="section container" aria-labelledby="prod-title">
            <div class="title" id="prod-title">
                <h2>Trending Products</h2>
                <p class="muted">Popular picks based on recent activity.</p>
            </div>
            <div class="grid products" id="productsGrid" aria-live="polite"></div>
        </section>

        <section id="deals" class="section container" aria-labelledby="deals-title">
            <div class="title" id="deals-title">
                <h2>Flash Sale</h2>
                <p class="muted">Limited-time offers — don't miss out!</p>
            </div>

            <div class="deal">
                <div class="deal-img-wrapper">
                    <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=80" alt="MacBook Air M2 Product Shot">
                </div>
                <div class="content">
                    <h3>MacBook Air M2</h3>
                    <p class="muted">Thin, light and powerful — now with M2 performance layout configurations.</p>

                    <div class="timer" aria-hidden="false">
                        <div class="time-box">
                            <div id="dealDays">0</div>
                            <div style="font-size:12px;opacity:.7;margin-top:4px;">Days</div>
                        </div>
                        <div class="time-box">
                            <div id="dealHours">00</div>
                            <div style="font-size:12px;opacity:.7;margin-top:4px;">Hours</div>
                        </div>
                        <div class="time-box">
                            <div id="dealMinutes">00</div>
                            <div style="font-size:12px;opacity:.7;margin-top:4px;">Mins</div>
                        </div>
                        <div class="time-box">
                            <div id="dealSeconds">00</div>
                            <div style="font-size:12px;opacity:.7;margin-top:4px;">Secs</div>
                        </div>
                    </div>

                    <div style="display:flex;align-items:center;gap:16px;">
                        <div class="price">$999 <span class="old-price" style="font-size:18px">$1,199</span></div>
                        <div class="deal-discount" style="background:#e11d48;color:white;padding:4px 12px;border-radius:999px;font-weight:700;font-size:14px;">-17%</div>
                    </div>

                    <p style="margin-top:16px; font-size:14px;">Only <strong>12</strong> items left at this price structure!</p>
                    <div style="margin-top:24px;">
                        <button class="btn btn-primary" id="buyDeal">Buy Now</button>
                    </div>
                </div>
            </div>
        </section>

        <section class="section container" aria-labelledby="test-title">
            <div class="title" id="test-title">
                <h2>What our customers say</h2>
                <p class="muted">Real reviews from verified buyers.</p>
            </div>

            <div class="testimonials" id="testimonials">
                <div class="testimonial">
                    <div class="rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
                    <p>"Fast shipping and excellent customer support. The product exceeded my expectations!"</p>
                    <div style="display:flex;align-items:center;gap:12px">
                        <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80" alt="Ava Martin" style="width:44px;height:44px;border-radius:50%;object-fit:cover">
                        <div>
                            <div style="font-weight:700; font-size:14px;">Ava Martin</div>
                            <div class="muted" style="font-size:12px">Verified buyer</div>
                        </div>
                    </div>
                </div>

                <div class="testimonial">
                    <div class="rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="far fa-star"></i></div>
                    <p>"Great selection and the checkout was smooth. Will shop here again dynamically."</p>
                    <div style="display:flex;align-items:center;gap:12px">
                        <img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80" alt="Michael Lee" style="width:44px;height:44px;border-radius:50%;object-fit:cover">
                        <div>
                            <div style="font-weight:700; font-size:14px;">Michael Lee</div>
                            <div class="muted" style="font-size:12px">Frequent buyer</div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="section container" aria-labelledby="news-title">
            <div class="newsletter" id="newsletter">
                <h3 id="news-title">Stay in the loop</h3>
                <p>Subscribe to get exclusive offers & new arrivals notifications</p>
                <form id="newsletterForm" style="display:flex;justify-content:center;gap:12px;flex-wrap:wrap;" onsubmit="return false;">
                    <input id="newsletterEmail" type="email" placeholder="Enter your email address" aria-label="Email address" required>
                    <button class="btn btn-primary" id="subscribeBtn">Subscribe</button>
                </form>
                <div id="newsletterMsg" style="margin-top:16px;font-size:14px;display:none"></div>
            </div>
        </section>
    </main>

    <footer>
        <div class="container" style="display:flex;flex-wrap:wrap;gap:40px;justify-content:space-between">
            <div style="max-width:360px">
                <div style="font-weight:700;font-size:20px;color:var(--primary);">NexusShop</div>
                <p class="muted" style="margin-top:12px; line-height:1.6;">A modern architectural premium e-commerce demo engineered for optimal user interfaces.</p>
                <div style="margin-top:20px;display:flex;gap:12px">
                    <a class="icon-btn" href="#" title="Facebook"><i class="fab fa-facebook-f"></i></a>
                    <a class="icon-btn" href="#" title="Twitter"><i class="fab fa-twitter"></i></a>
                    <a class="icon-btn" href="#" title="Instagram"><i class="fab fa-instagram"></i></a>
                </div>
            </div>

            <div style="display:flex;gap:64px;flex-wrap:wrap">
                <div>
                    <h5>Company</h5>
                    <div class="muted" style="line-height:2">About<br>Careers<br>Press</div>
                </div>
                <div>
                    <h5>Support</h5>
                    <div class="muted" style="line-height:2">Help Center<br>Shipping & Returns<br>Contact</div>
                </div>
            </div>
        </div>

        <div style="text-align:center;margin-top:48px;color:var(--muted);font-size:13px;border-top:1px solid var(--border);padding-top:24px;">© <span id="year"></span> NexusShop. All rights reserved.</div>
    </footer>

    <script>
        const CATEGORIES = [{
                id: 'phones',
                name: 'Smartphones',
                icon: 'fa-mobile-alt'
            },
            {
                id: 'laptops',
                name: 'Laptops',
                icon: 'fa-laptop'
            },
            {
                id: 'clothing',
                name: 'Clothing',
                icon: 'fa-tshirt'
            },
            {
                id: 'gadgets',
                name: 'Gadgets',
                icon: 'fa-headphones'
            },
            {
                id: 'footwear',
                name: 'Footwear',
                icon: 'fa-shoe-prints'
            },
            {
                id: 'accessories',
                name: 'Accessories',
                icon: 'fa-clock'
            }
        ];

        const PRODUCTS = [{
                id: 1,
                title: 'iPhone 14 Pro Max',
                price: 1099,
                oldPrice: 1199,
                rating: 5,
                reviews: 128,
                badge: 'New',
                img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80',
                category: 'phones'
            },
            {
                id: 2,
                title: 'MacBook Pro 14"',
                price: 1999,
                rating: 4,
                reviews: 86,
                img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80',
                category: 'laptops'
            },
            {
                id: 3,
                title: 'Apple Watch Series 8',
                price: 349,
                oldPrice: 399,
                rating: 5,
                reviews: 214,
                badge: '-25%',
                img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80',
                category: 'accessories'
            },
            {
                id: 4,
                title: 'Nike Air Max 270',
                price: 150,
                rating: 4,
                reviews: 53,
                img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80',
                category: 'footwear'
            },
            {
                id: 5,
                title: 'Sony A7 IV Camera',
                price: 2499,
                rating: 5,
                reviews: 42,
                img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80',
                category: 'gadgets'
            },
            {
                id: 6,
                title: 'Chanel No. 5',
                price: 120,
                rating: 5,
                reviews: 189,
                img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80',
                category: 'accessories'
            },
            {
                id: 7,
                title: 'Travel Backpack',
                price: 79,
                oldPrice: 99,
                rating: 4,
                reviews: 67,
                img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80',
                category: 'accessories'
            },
            {
                id: 8,
                title: 'Sony WH-1000XM5',
                price: 399,
                rating: 5,
                reviews: 156,
                img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80',
                category: 'gadgets'
            }
        ];

        const categoriesGrid = document.getElementById('categoriesGrid');
        const productsGrid = document.getElementById('productsGrid');
        const cartCountEl = document.getElementById('cartCount');
        const searchInput = document.getElementById('searchInput');

        let cartCount = 0;

        function renderCategories() {
            categoriesGrid.innerHTML = '';
            CATEGORIES.forEach(cat => {
                const el = document.createElement('div');
                el.className = 'cat-card';
                el.innerHTML = `
                    <div class="icon"><i class="fas ${cat.icon}"></i></div>
                    <h4>${cat.name}</h4>
                    <div class="muted" style="font-size:12px; margin-top:8px">Explore Collection</div>
                `;
                el.addEventListener('click', () => {
                    searchInput.value = cat.name;
                    filterProducts(cat.name);
                    window.scrollTo({
                        top: document.getElementById('prod-title').offsetTop - 80,
                        behavior: 'smooth'
                    });
                });
                categoriesGrid.appendChild(el);
            });
        }

        function renderProducts(list) {
            productsGrid.innerHTML = '';
            list.forEach(p => {
                const el = document.createElement('article');
                el.className = 'product';
                el.innerHTML = `
                    ${p.badge ? `<div style="position:absolute; top:12px; left:12px; z-index:10;"><span style="background:${p.badge.startsWith('-')? '#e11d48' : 'var(--success)'};color:white;padding:4px 10px;border-radius:999px;font-weight:700;font-size:11px">${p.badge}</span></div>` : ''}
                    <div class="product-img-wrapper">
                        <img src="${p.img}" alt="${escapeHtml(p.title)}">
                    </div>
                    <div class="product-body">
                        <div class="muted" style="font-size:12px; text-transform: uppercase; font-weight:600; letter-spacing:0.05em;">${p.category}</div>
                        <h5>${escapeHtml(p.title)}</h5>
                        <div class="rating-row">
                            <div class="price-row">
                                <div class="price">$${p.price.toLocaleString()}</div>
                                ${p.oldPrice ? `<div class="old-price">$${p.oldPrice.toLocaleString()}</div>` : ''}
                            </div>
                            <div class="rating">
                                <i class="fas fa-star"></i> 
                                <span style="font-weight:600; color:var(--primary); font-size:13px">${p.rating}.0</span> 
                                <span style="color:var(--muted)">(${p.reviews})</span>
                            </div>
                        </div>
                    </div>
                    <div class="product-footer">
                        <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add To Cart</button>
                        <button class="wish-btn" aria-label="Add to wishlist"><i class="far fa-heart"></i></button>
                    </div>
                `;
                productsGrid.appendChild(el);
            });

            productsGrid.querySelectorAll('.add-btn').forEach(btn => {
                btn.addEventListener('click', () => {
                    const id = Number(btn.dataset.id);
                    addToCart(id);
                });
            });
        }

        function escapeHtml(text) {
            return String(text).replace(/[&<>"']/g, s => ({
                '&': '&amp;',
                '<': '&lt;',
                '>': '&gt;',
                '"': '&quot;',
                "'": '&#39;'
            } [s]));
        }

        function addToCart(productId) {
            const p = PRODUCTS.find(x => x.id === productId);
            if (!p) return;
            cartCount++;
            cartCountEl.textContent = cartCount;
            const btn = document.querySelector(`.add-btn[data-id="${productId}"]`);
            if (btn) {
                const original = btn.innerHTML;
                btn.innerHTML = 'Added <i class="fas fa-check"></i>';
                btn.style.background = 'var(--success)';
                btn.disabled = true;
                setTimeout(() => {
                    btn.innerHTML = original;
                    btn.style.background = 'var(--primary)';
                    btn.disabled = false;
                }, 1200);
            }
        }

        function updateCartCount() {
            cartCountEl.textContent = cartCount;
        }

        function filterProducts(query) {
            const q = String(query || '').trim().toLowerCase();
            if (!q) {
                renderProducts(PRODUCTS);
                return;
            }
            const filtered = PRODUCTS.filter(p =>
                p.title.toLowerCase().includes(q) ||
                p.category.toLowerCase().includes(q)
            );
            renderProducts(filtered);
        }

        document.getElementById('searchBtn').addEventListener('click', () => filterProducts(searchInput.value));
        searchInput.addEventListener('keydown', (e) => {
            if (e.key === 'Enter') filterProducts(e.target.value);
        });

        const mobileToggle = document.getElementById('mobileToggle');
        const mobileMenu = document.getElementById('mobileMenu');
        mobileToggle.addEventListener('click', () => {
            mobileMenu.style.display = mobileMenu.style.display === 'none' || !mobileMenu.style.display ? 'block' : 'none';
        });

        const catMenuBtn = document.getElementById('catMenuBtn');
        catMenuBtn && catMenuBtn.addEventListener('click', (e) => {
            e.preventDefault();
            alert('Use the category tiles below to filter — this is a demo.');
        });

        document.getElementById('newsletterForm').addEventListener('submit', (e) => {
            e.preventDefault();
            const email = document.getElementById('newsletterEmail').value.trim();
            const msg = document.getElementById('newsletterMsg');
            if (!email || !email.includes('@')) {
                msg.style.display = 'block';
                msg.textContent = 'Please enter a valid email address.';
                msg.style.color = '#f43f5e';
                return;
            }
            msg.style.display = 'block';
            msg.style.color = '#34d399';
            msg.textContent = 'Thanks! You are subscribed.';
            document.getElementById('newsletterEmail').value = '';
            setTimeout(() => msg.style.display = 'none', 3000);
        });

        (function setupDealTimer() {
            const now = new Date();
            const target = new Date(now.getTime() + (24 * 60 + 36) * 60 * 1000); 
            function tick() {
                const diff = target - new Date();
                const days = Math.floor(diff / (24 * 3600 * 1000));
                const hours = Math.floor((diff % (24 * 3600 * 1000)) / (3600 * 1000));
                const mins = Math.floor((diff % (3600 * 1000)) / (60 * 1000));
                const secs = Math.floor((diff % (60 * 1000)) / 1000);
                document.getElementById('dealDays').textContent = days;
                document.getElementById('dealHours').textContent = String(hours).padStart(2, '0');
                document.getElementById('dealMinutes').textContent = String(mins).padStart(2, '0');
                document.getElementById('dealSeconds').textContent = String(secs).padStart(2, '0');
                if (diff <= 0) clearInterval(timer);
            }
            tick();
            const timer = setInterval(tick, 1000);
        })();

        document.getElementById('shopNow').addEventListener('click', () => window.scrollTo({
            top: document.getElementById('prod-title').offsetTop - 80,
            behavior: 'smooth'
        }));
        document.getElementById('exploreDeals').addEventListener('click', () => window.location.hash = '#deals');
        document.getElementById('buyDeal').addEventListener('click', () => {
            cartCount += 1;
            updateCartCount();
            alert('Deal added to cart (demo).');
        });

        (function init() {
            renderCategories();
            renderProducts(PRODUCTS);
            updateCartCount();
            document.getElementById('year').textContent = new Date().getFullYear();
        })();
    </script>
</body>

</html>
