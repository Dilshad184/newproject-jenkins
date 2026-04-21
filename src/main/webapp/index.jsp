<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
    <title>LUMINA | Modern E‑Commerce</title>
    
    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700&family=Space+Grotesk:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --bg-dark: #0b0f1c;
            --bg-card: rgba(18, 24, 38, 0.75);
            --glass-border: rgba(255, 255, 255, 0.08);
            --glass-highlight: rgba(255, 255, 255, 0.05);
            --primary: #6c63ff;
            --primary-glow: #8b84ff;
            --accent: #ff6b9d;
            --accent-glow: #ff8cb4;
            --text-main: #f0f3fa;
            --text-muted: #8e9aaf;
            --success: #2ed15e;
            --warning: #ffb347;
            --danger: #ff5e7e;
            --border-radius: 28px;
            --border-radius-sm: 18px;
            --shadow: 0 25px 40px -12px rgba(0, 0, 0, 0.4);
            --glass-blur: blur(12px);
            --transition: all 0.25s cubic-bezier(0.2, 0.9, 0.4, 1.1);
        }

        body {
            background: radial-gradient(circle at 10% 20%, #111827, #03050b);
            font-family: 'Inter', sans-serif;
            color: var(--text-main);
            line-height: 1.5;
            -webkit-font-smoothing: antialiased;
            overflow-x: hidden;
        }

        /* Custom scroll */
        ::-webkit-scrollbar {
            width: 5px;
        }
        ::-webkit-scrollbar-track {
            background: #1e2438;
        }
        ::-webkit-scrollbar-thumb {
            background: var(--primary);
            border-radius: 10px;
        }

        .container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 32px;
        }

        /* Glass Header */
        .glass-header {
            position: sticky;
            top: 0;
            z-index: 100;
            backdrop-filter: blur(16px);
            background: rgba(11, 15, 28, 0.7);
            border-bottom: 1px solid var(--glass-border);
            transition: var(--transition);
        }

        .header-flex {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 24px;
            padding: 16px 0;
        }

        .logo {
            font-family: 'Space Grotesk', monospace;
            font-size: 26px;
            font-weight: 700;
            background: linear-gradient(135deg, #fff, var(--primary-glow));
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            letter-spacing: -0.5px;
        }
        .logo span {
            background: linear-gradient(135deg, var(--accent), #ffb86c);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
        }

        /* search bar modern */
        .search-glass {
            background: rgba(255, 255, 255, 0.05);
            border: 1px solid var(--glass-border);
            border-radius: 60px;
            padding: 10px 18px;
            display: flex;
            align-items: center;
            gap: 12px;
            width: 280px;
            transition: var(--transition);
        }
        .search-glass:focus-within {
            border-color: var(--primary);
            background: rgba(108, 99, 255, 0.08);
            box-shadow: 0 0 12px rgba(108, 99, 255, 0.3);
        }
        .search-glass input {
            background: transparent;
            border: none;
            outline: none;
            color: white;
            width: 100%;
            font-size: 14px;
        }
        .search-glass input::placeholder {
            color: var(--text-muted);
        }

        .nav-links {
            display: flex;
            gap: 28px;
            align-items: center;
        }
        .nav-links a {
            font-weight: 500;
            font-size: 15px;
            transition: var(--transition);
            display: flex;
            align-items: center;
            gap: 6px;
        }
        .nav-links a:hover {
            color: var(--primary-glow);
        }

        .cart-icon {
            position: relative;
            background: rgba(108, 99, 255, 0.2);
            padding: 8px 14px;
            border-radius: 40px;
            backdrop-filter: blur(4px);
        }
        .cart-count {
            position: absolute;
            top: -6px;
            right: -6px;
            background: var(--accent);
            color: white;
            font-size: 11px;
            font-weight: bold;
            width: 20px;
            height: 20px;
            border-radius: 30px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .mobile-toggle {
            display: none;
            background: transparent;
            border: none;
            font-size: 26px;
            color: white;
        }

        /* Hero section (new wave) */
        .hero-wave {
            position: relative;
            padding: 80px 0 100px;
            overflow: hidden;
        }
        .hero-content {
            text-align: center;
            max-width: 780px;
            margin: 0 auto;
            position: relative;
            z-index: 2;
        }
        .hero-badge {
            background: rgba(108, 99, 255, 0.2);
            backdrop-filter: blur(8px);
            border-radius: 40px;
            padding: 6px 16px;
            display: inline-block;
            font-size: 13px;
            font-weight: 500;
            margin-bottom: 20px;
            border: 1px solid rgba(108, 99, 255, 0.3);
        }
        .hero-content h1 {
            font-size: 58px;
            font-weight: 700;
            font-family: 'Space Grotesk', monospace;
            background: linear-gradient(to right, #fff, #b9b4ff);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            line-height: 1.2;
            margin-bottom: 20px;
        }
        .btn-group {
            display: flex;
            gap: 16px;
            justify-content: center;
            margin-top: 32px;
        }
        .btn-primary-glow {
            background: linear-gradient(95deg, var(--primary), #8b6eff);
            border: none;
            padding: 12px 28px;
            border-radius: 40px;
            font-weight: 600;
            color: white;
            font-size: 16px;
            cursor: pointer;
            transition: transform 0.2s, box-shadow 0.2s;
            box-shadow: 0 6px 14px rgba(108, 99, 255, 0.3);
        }
        .btn-outline-light {
            background: transparent;
            border: 1px solid rgba(255,255,255,0.3);
            padding: 12px 28px;
            border-radius: 40px;
            font-weight: 500;
            cursor: pointer;
            transition: 0.2s;
            color: white;
        }
        .btn-outline-light:hover {
            background: rgba(255,255,255,0.1);
            border-color: var(--primary);
        }

        /* Cards grid style */
        .section-title {
            font-size: 32px;
            font-weight: 600;
            font-family: 'Space Grotesk', monospace;
            margin-bottom: 12px;
        }
        .section-sub {
            color: var(--text-muted);
            margin-bottom: 40px;
        }
        .grid-categories {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
            gap: 24px;
            margin-bottom: 40px;
        }
        .cat-card-modern {
            background: rgba(20, 27, 45, 0.6);
            backdrop-filter: blur(10px);
            border: 1px solid var(--glass-border);
            border-radius: 28px;
            padding: 28px 12px;
            text-align: center;
            transition: all 0.2s ease;
            cursor: pointer;
        }
        .cat-card-modern:hover {
            transform: translateY(-6px);
            background: rgba(108, 99, 255, 0.15);
            border-color: var(--primary);
        }
        .cat-icon {
            font-size: 36px;
            color: var(--primary-glow);
            margin-bottom: 12px;
        }

        /* Products grid - modern glassmorph */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(270px, 1fr));
            gap: 28px;
        }
        .product-card {
            background: var(--bg-card);
            backdrop-filter: blur(12px);
            border: 1px solid var(--glass-border);
            border-radius: 32px;
            overflow: hidden;
            transition: all 0.3s;
        }
        .product-card:hover {
            transform: translateY(-8px);
            border-color: rgba(108, 99, 255, 0.5);
            box-shadow: 0 30px 40px -20px rgba(0,0,0,0.5);
        }
        .product-img {
            height: 220px;
            width: 100%;
            object-fit: cover;
            transition: transform 0.4s;
        }
        .product-card:hover .product-img {
            transform: scale(1.02);
        }
        .product-info {
            padding: 18px 20px 20px;
        }
        .price-tag {
            font-weight: 700;
            font-size: 22px;
            color: var(--primary-glow);
        }
        .old-price {
            font-size: 14px;
            text-decoration: line-through;
            color: var(--text-muted);
            margin-left: 8px;
        }
        .rating {
            color: #ffcd4a;
            font-size: 13px;
            letter-spacing: 2px;
        }
        .add-cart-btn {
            background: rgba(108, 99, 255, 0.2);
            border: 1px solid var(--glass-border);
            border-radius: 40px;
            padding: 10px;
            font-weight: 600;
            width: 100%;
            cursor: pointer;
            transition: 0.2s;
            color: white;
            margin-top: 12px;
        }
        .add-cart-btn:hover {
            background: var(--primary);
            box-shadow: 0 4px 12px rgba(108,99,255,0.4);
        }

        /* Flash Deal section special */
        .deal-glass {
            background: linear-gradient(125deg, rgba(30, 20, 50, 0.7), rgba(15, 20, 40, 0.8));
            backdrop-filter: blur(12px);
            border-radius: 48px;
            border: 1px solid rgba(255, 107, 157, 0.3);
            display: flex;
            flex-wrap: wrap;
            overflow: hidden;
        }
        .deal-img {
            flex: 1;
            min-width: 240px;
            background: url('https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80') center/cover;
        }
        .deal-content {
            flex: 1.2;
            padding: 40px;
        }
        .timer-flex {
            display: flex;
            gap: 18px;
            margin: 28px 0;
        }
        .time-card {
            background: rgba(0,0,0,0.5);
            border-radius: 20px;
            padding: 12px 18px;
            text-align: center;
            min-width: 70px;
            backdrop-filter: blur(4px);
        }
        .discount-badge {
            background: var(--accent);
            border-radius: 60px;
            padding: 6px 14px;
            font-size: 14px;
            font-weight: 700;
        }

        /* testimonials */
        .testimonial-scroll {
            display: flex;
            gap: 24px;
            overflow-x: auto;
            padding: 12px 4px 20px;
        }
        .testi-card {
            background: rgba(18, 24, 38, 0.7);
            backdrop-filter: blur(8px);
            border-radius: 28px;
            padding: 24px;
            min-width: 300px;
            border: 1px solid var(--glass-border);
        }

        /* newsletter */
        .newsletter-modern {
            background: linear-gradient(135deg, #1c1f33, #0a0d1a);
            border-radius: 48px;
            padding: 56px 32px;
            text-align: center;
            border: 1px solid rgba(108,99,255,0.2);
        }

        footer {
            margin-top: 70px;
            padding: 40px 0;
            border-top: 1px solid var(--glass-border);
        }
        @media (max-width: 880px) {
            .nav-links {
                display: none;
            }
            .mobile-toggle {
                display: block;
            }
            .hero-content h1 {
                font-size: 38px;
            }
            .container {
                padding: 0 20px;
            }
            .deal-glass {
                flex-direction: column;
            }
        }
        @media (max-width: 520px) {
            .search-glass {
                width: 180px;
            }
            .btn-group {
                flex-direction: column;
                align-items: center;
            }
        }
        button {
            background: none;
            border: none;
            font-family: inherit;
        }
        a {
            text-decoration: none;
            color: inherit;
        }
        .hidden-menu {
            display: none;
        }
        .mobile-nav-active {
            display: flex;
            flex-direction: column;
            background: #0b0f1cee;
            backdrop-filter: blur(20px);
            padding: 20px;
            gap: 18px;
            border-radius: 24px;
            margin-top: 12px;
        }
    </style>
</head>
<body>

<header class="glass-header">
    <div class="container header-flex">
        <div style="display: flex; align-items: center; gap: 18px;">
            <button class="mobile-toggle" id="mobileMenuBtn"><i class="fas fa-bars"></i></button>
            <div class="logo">LUMINA<span>//shop</span></div>
        </div>

        <div class="nav-links" id="desktopNav">
            <a href="#"><i class="fas fa-compass"></i> Explore</a>
            <a href="#"><i class="fas fa-chart-line"></i> Trending</a>
            <a href="#deals"><i class="fas fa-bolt"></i> Flash</a>
            <a href="#"><i class="fas fa-crown"></i> Premium</a>
        </div>

        <div style="display: flex; gap: 16px; align-items: center;">
            <div class="search-glass">
                <i class="fas fa-search" style="color: var(--text-muted);"></i>
                <input type="text" id="searchInputGlobal" placeholder="Search products...">
            </div>
            <div class="cart-icon" id="cartIconBtn">
                <i class="fas fa-bag-shopping"></i>
                <span class="cart-count" id="cartCounter">0</span>
            </div>
        </div>
    </div>
    <div id="mobileMenuPanel" style="display: none; padding: 0 20px 20px;"></div>
</header>

<main>
    <!-- Hero Wave -->
    <section class="hero-wave">
        <div class="container hero-content">
            <div class="hero-badge"><i class="fas fa-gem"></i> exclusive summer drop</div>
            <h1>where edge meets <br> elegance</h1>
            <p style="font-size: 18px; color: #b5c0e0;">Discover futuristic design, unmatched quality & limited flash deals. Free worldwide shipping on orders over $150.</p>
            <div class="btn-group">
                <button class="btn-primary-glow" id="shopNowBtn"><i class="fas fa-store"></i> Shop Collection</button>
                <button class="btn-outline-light" id="exploreDealBtn"><i class="fas fa-timer"></i> Flash Sale</button>
            </div>
        </div>
    </section>

    <!-- Categories Section -->
    <div class="container">
        <div class="section-title">✨ curated realms</div>
        <div class="section-sub">shop by mood & category</div>
        <div class="grid-categories" id="dynamicCategories"></div>
    </div>

    <!-- Products -->
    <div class="container">
        <div class="section-title">🔥 hyped picks</div>
        <div class="section-sub">what the community loves right now</div>
        <div class="products-grid" id="productsContainer"></div>
    </div>

    <!-- Flash Deal Section -->
    <div class="container" id="deals" style="margin-top: 60px;">
        <div class="deal-glass">
            <div class="deal-img" style="min-height: 280px;"></div>
            <div class="deal-content">
                <h2 style="font-size: 32px; font-weight: 700;">⚡ MacBook Air M2</h2>
                <p style="color: var(--text-muted); margin-top: 8px;">Next‑gen performance, midnight elegance. Limited stock.</p>
                <div class="timer-flex" id="countdownTimer">
                    <div class="time-card"><span id="dealDays">0</span><div style="font-size:12px;">Days</div></div>
                    <div class="time-card"><span id="dealHours">00</span><div>Hrs</div></div>
                    <div class="time-card"><span id="dealMinutes">00</span><div>Min</div></div>
                    <div class="time-card"><span id="dealSeconds">00</span><div>Sec</div></div>
                </div>
                <div style="display: flex; align-items: baseline; gap: 16px; flex-wrap: wrap;">
                    <div><span class="price-tag" style="font-size: 34px;">$999</span><span class="old-price">$1,199</span></div>
                    <div class="discount-badge"><i class="fas fa-fire"></i> -17% flash</div>
                </div>
                <button id="flashDealBtn" class="btn-primary-glow" style="margin-top: 20px; width: 100%;"><i class="fas fa-zap"></i> Grab Deal now</button>
            </div>
        </div>
    </div>

    <!-- Testimonials -->
    <div class="container" style="margin-top: 80px;">
        <div class="section-title">💬 voices of lumina</div>
        <div class="testimonial-scroll" id="testimonialList"></div>
    </div>

    <!-- Newsletter -->
    <div class="container" style="margin-top: 70px;">
        <div class="newsletter-modern">
            <i class="fas fa-envelope-open-text" style="font-size: 40px; color: var(--primary);"></i>
            <h3 style="font-size: 28px; margin: 16px 0;">join the inner circle</h3>
            <p>Get early access to drops, secret sales & style inspiration</p>
            <form id="newsletterModernForm" style="display: flex; justify-content: center; gap: 12px; flex-wrap: wrap; margin-top: 24px;">
                <input type="email" id="newsEmail" placeholder="your@email.com" style="background: rgba(255,255,255,0.1); border: 1px solid var(--glass-border); border-radius: 60px; padding: 14px 20px; width: 280px; color: white;">
                <button type="submit" class="btn-primary-glow" style="padding: 12px 32px;">Subscribe</button>
            </form>
            <div id="newsMsg" style="margin-top: 18px; font-size: 14px;"></div>
        </div>
    </div>
</main>

<footer>
    <div class="container" style="display: flex; justify-content: space-between; flex-wrap: wrap; gap: 30px;">
        <div><div class="logo" style="font-size: 24px;">LUMINA<span>//shop</span></div><p style="margin-top: 12px; color: var(--text-muted);">Radical simplicity, premium vibe.</p></div>
        <div><h4>Discover</h4><div style="color: var(--text-muted);">New arrivals<br>Best sellers<br>Gift cards</div></div>
        <div><h4>Support</h4><div style="color: var(--text-muted);">FAQs<br>Returns<br>Contact</div></div>
    </div>
    <div class="container" style="text-align: center; margin-top: 40px; color: var(--text-muted); font-size: 13px;">© <span id="currentYear"></span> Lumina — futuristic commerce</div>
</footer>

<script>
    // ----- DATA ------
    const CATEGORIES_NEW = [
        { id: 'wear', name: 'Urban Wear', icon: 'fa-tshirt' },
        { id: 'tech', name: 'Cyber Gadgets', icon: 'fa-microchip' },
        { id: 'audio', name: 'AudioPhile', icon: 'fa-headphones' },
        { id: 'foot', name: 'Neo Sneakers', icon: 'fa-shoe-prints' },
        { id: 'access', name: 'Digital Acc', icon: 'fa-smartwatch' },
        { id: 'studio', name: 'Creator Kit', icon: 'fa-camera' }
    ];

    const PRODUCTS_NEW = [
        { id: 101, title: "iPhone 15 Pro Max", price: 1199, oldPrice: 1299, rating: 5, reviews: 245, img: "https://images.unsplash.com/photo-1695048133142-1a20484d2569?auto=format&fit=crop&w=600&q=80", category: "tech" },
        { id: 102, title: "Spectre Laptop Ultra", price: 1799, rating: 4, reviews: 89, img: "https://images.unsplash.com/photo-1611186871348-b1ce696e52c9?auto=format&fit=crop&w=600&q=80", category: "tech" },
        { id: 103, title: "NoiseX Over-Ear", price: 249, oldPrice: 399, rating: 5, reviews: 512, img: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=600&q=80", category: "audio" },
        { id: 104, title: "DRIFTER Sneakers", price: 129, rating: 4, reviews: 178, img: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=600&q=80", category: "foot" },
        { id: 105, title: "Orbit Smartwatch", price: 329, oldPrice: 459, rating: 5, reviews: 94, img: "https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=600&q=80", category: "access" },
        { id: 106, title: "Creator Vlog Kit", price: 499, rating: 5, reviews: 62, img: "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=600&q=80", category: "studio" },
        { id: 107, title: "Cargo Cargo Pants", price: 89, oldPrice: 119, rating: 4, reviews: 203, img: "https://images.unsplash.com/photo-1516762689617-e1cffcef479d?auto=format&fit=crop&w=600&q=80", category: "wear" },
        { id: 108, title: "HyperX Wireless", price: 159, rating: 4, reviews: 312, img: "https://images.unsplash.com/photo-1590658268037-6bf12165a8df?auto=format&fit=crop&w=600&q=80", category: "audio" }
    ];

    let cartItemCount = 0;
    const cartCountSpan = document.getElementById('cartCounter');

    function updateCartUI() {
        cartCountSpan.innerText = cartItemCount;
    }

    function addToCartDynamic(productId) {
        const product = PRODUCTS_NEW.find(p => p.id === productId);
        if (!product) return;
        cartItemCount++;
        updateCartUI();
        // visual feedback
        const btn = document.querySelector(`.add-btn-${productId}`);
        if (btn) {
            const original = btn.innerHTML;
            btn.innerHTML = '<i class="fas fa-check"></i> Added';
            setTimeout(() => btn.innerHTML = original, 1200);
        }
    }

    // Render categories
    function renderCategoriesUI() {
        const container = document.getElementById('dynamicCategories');
        container.innerHTML = '';
        CATEGORIES_NEW.forEach(cat => {
            const card = document.createElement('div');
            card.className = 'cat-card-modern';
            card.innerHTML = `<div class="cat-icon"><i class="fas ${cat.icon}"></i></div><h4>${cat.name}</h4><div class="section-sub" style="font-size:12px;">explore</div>`;
            card.addEventListener('click', () => {
                document.getElementById('searchInputGlobal').value = cat.name;
                filterProductsBySearch(cat.name);
            });
            container.appendChild(card);
        });
    }

    function filterProductsBySearch(query) {
        const lowerQuery = query.trim().toLowerCase();
        const filtered = lowerQuery === '' ? PRODUCTS_NEW : PRODUCTS_NEW.filter(p => p.title.toLowerCase().includes(lowerQuery) || p.category.toLowerCase().includes(lowerQuery));
        renderProducts(filtered);
    }

    function renderProducts(productsArray) {
        const container = document.getElementById('productsContainer');
        container.innerHTML = '';
        productsArray.forEach(prod => {
            const productDiv = document.createElement('div');
            productDiv.className = 'product-card';
            const starRating = '★'.repeat(Math.round(prod.rating)) + '☆'.repeat(5 - Math.round(prod.rating));
            productDiv.innerHTML = `
                <img class="product-img" src="${prod.img}" alt="${prod.title}" loading="lazy">
                <div class="product-info">
                    <h4 style="font-size: 18px;">${prod.title}</h4>
                    <div class="rating">${starRating} <span style="color:var(--text-muted);">(${prod.reviews})</span></div>
                    <div style="margin: 12px 0 8px;">
                        <span class="price-tag">$${prod.price.toLocaleString()}</span>
                        ${prod.oldPrice ? `<span class="old-price">$${prod.oldPrice.toLocaleString()}</span>` : ''}
                    </div>
                    <button class="add-cart-btn add-btn-${prod.id}" data-id="${prod.id}"><i class="fas fa-cart-shopping"></i> Add to bag</button>
                </div>
            `;
            const addBtn = productDiv.querySelector(`.add-btn-${prod.id}`);
            addBtn.addEventListener('click', (e) => {
                e.stopPropagation();
                addToCartDynamic(prod.id);
            });
            container.appendChild(productDiv);
        });
    }

    // Testimonials dynamic
    const testimonialsData = [
        { name: "Zara Chen", rating: 5, text: "Absolutely obsessed with the design and speed. Felt like a premium journey.", avatar: "https://randomuser.me/api/portraits/women/44.jpg" },
        { name: "Marcus V.", rating: 5, text: "Slick interface, super fast checkout. Got my gear in 2 days!", avatar: "https://randomuser.me/api/portraits/men/32.jpg" },
        { name: "Sophia L.", rating: 4, text: "Amazing customer support, the quality of products is top-tier.", avatar: "https://randomuser.me/api/portraits/women/68.jpg" }
    ];
    function renderTestimonials() {
        const container = document.getElementById('testimonialList');
        container.innerHTML = '';
        testimonialsData.forEach(t => {
            const stars = '★'.repeat(t.rating) + '☆'.repeat(5-t.rating);
            const div = document.createElement('div');
            div.className = 'testi-card';
            div.innerHTML = `<div class="rating">${stars}</div><p style="margin: 12px 0;">"${t.text}"</p><div><strong>${t.name}</strong><div style="color:var(--text-muted); font-size:13px;">verified</div></div>`;
            container.appendChild(div);
        });
    }

    // countdown timer
    function initDealTimer() {
        const targetDate = new Date();
        targetDate.setDate(targetDate.getDate() + 1);
        targetDate.setHours(targetDate.getHours() + 9, 0, 0, 0);
        function update() {
            const now = new Date();
            const diff = targetDate - now;
            if (diff <= 0) {
                document.getElementById('dealDays').innerText = '0'; document.getElementById('dealHours').innerText = '00';
                document.getElementById('dealMinutes').innerText = '00'; document.getElementById('dealSeconds').innerText = '00';
                return;
            }
            const days = Math.floor(diff / (1000 * 60 * 60 * 24));
            const hours = Math.floor((diff % (86400000)) / 3600000);
            const mins = Math.floor((diff % 3600000) / 60000);
            const secs = Math.floor((diff % 60000) / 1000);
            document.getElementById('dealDays').innerText = days;
            document.getElementById('dealHours').innerText = String(hours).padStart(2,'0');
            document.getElementById('dealMinutes').innerText = String(mins).padStart(2,'0');
            document.getElementById('dealSeconds').innerText = String(secs).padStart(2,'0');
        }
        update();
        setInterval(update, 1000);
    }

    // mobile menu
    const mobileBtn = document.getElementById('mobileMenuBtn');
    const mobilePanel = document.getElementById('mobileMenuPanel');
    mobileBtn.addEventListener('click', () => {
        if (mobilePanel.style.display === 'none' || !mobilePanel.style.display) {
            mobilePanel.style.display = 'block';
            mobilePanel.innerHTML = `<div style="display:flex; flex-direction:column; gap:12px; background: #0e1322; padding:20px; border-radius: 24px;"><a href="#">✨ Explore</a><a href="#">🔥 Trending</a><a href="#deals">⚡ Flash</a><a href="#">👑 Premium</a></div>`;
        } else {
            mobilePanel.style.display = 'none';
        }
    });

    // Search & interactions
    const searchField = document.getElementById('searchInputGlobal');
    const searchHandler = () => filterProductsBySearch(searchField.value);
    searchField.addEventListener('input', searchHandler);
    document.getElementById('shopNowBtn').addEventListener('click', () => document.getElementById('productsContainer').scrollIntoView({ behavior: 'smooth', block: 'start' }));
    document.getElementById('exploreDealBtn').addEventListener('click', () => document.getElementById('deals').scrollIntoView({ behavior: 'smooth' }));
    document.getElementById('flashDealBtn').addEventListener('click', () => {
        cartItemCount++;
        updateCartUI();
        alert('🔥 Flash deal added to cart!');
    });
    document.getElementById('newsletterModernForm').addEventListener('submit', (e) => {
        e.preventDefault();
        const email = document.getElementById('newsEmail').value;
        const msgDiv = document.getElementById('newsMsg');
        if (!email.includes('@')) { msgDiv.innerText = 'Valid email needed'; msgDiv.style.color = '#ff8c8c'; }
        else { msgDiv.innerText = '✨ You’re in! Exclusive deals inbound.'; msgDiv.style.color = '#8b84ff'; document.getElementById('newsEmail').value = ''; }
        setTimeout(() => msgDiv.innerText = '', 2500);
    });

    // initial render
    renderCategoriesUI();
    renderProducts(PRODUCTS_NEW);
    renderTestimonials();
    initDealTimer();
    document.getElementById('currentYear').innerText = new Date().getFullYear();
    updateCartUI();
</script>
</body>
</html>
