<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MobileTechGadgets - Pakistan's Premium Tech Accessories</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #F5F5F5;
        }
        .hero-gradient {
            background: linear-gradient(135deg, #007BFF 0%, #39FF14 100%);
        }
        .cart-badge {
            position: absolute;
            top: -8px;
            right: -8px;
            background-color: #39FF14;
            color: black;
            border-radius: 50%;
            width: 20px;
            height: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 12px;
            font-weight: bold;
        }
        .product-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
        }
        .product-card {
            transition: all 0.3s ease;
        }
        .nav-link:hover {
            color: #39FF14 !important;
        }
    </style>
</head>
<body class="min-h-screen flex flex-col">
    <!-- Navigation -->
    <nav class="bg-black text-white shadow-lg sticky top-0 z-50">
        <div class="container mx-auto px-4">
            <div class="flex justify-between items-center py-4">
                <div class="flex items-center space-x-4">
                    <a href="#" class="text-2xl font-bold flex items-center">
                        <i class="fas fa-mobile-alt mr-2 text-blue-500"></i>
                        <span>Mobile<span class="text-green-400">Tech</span>Gadgets</span>
                    </a>
                </div>
                
                <!-- Mobile menu button -->
                <div class="md:hidden flex items-center">
                    <button id="mobile-menu-button" class="outline-none">
                        <i class="fas fa-bars text-2xl"></i>
                    </button>
                </div>
                
                <!-- Desktop Navigation -->
                <div class="hidden md:flex items-center space-x-8">
                    <a href="#home" class="nav-link text-white hover:text-green-400 transition">Home</a>
                    <a href="#shop" class="nav-link text-white hover:text-green-400 transition">Shop</a>
                    <a href="#contact" class="nav-link text-white hover:text-green-400 transition">Contact</a>
                    <div class="relative">
                        <button id="cart-btn" class="flex items-center">
                            <i class="fas fa-shopping-cart text-xl"></i>
                            <span id="cart-count" class="cart-badge hidden">0</span>
                        </button>
                    </div>
                </div>
            </div>
            
            <!-- Mobile Navigation -->
            <div id="mobile-menu" class="hidden md:hidden pb-4">
                <a href="#home" class="block py-2 px-4 text-sm hover:bg-gray-800 rounded">Home</a>
                <a href="#shop" class="block py-2 px-4 text-sm hover:bg-gray-800 rounded">Shop</a>
                <a href="#contact" class="block py-2 px-4 text-sm hover:bg-gray-800 rounded">Contact</a>
                <div class="flex items-center py-2 px-4">
                    <button id="mobile-cart-btn" class="flex items-center">
                        <i class="fas fa-shopping-cart mr-2"></i>
                        Cart (<span id="mobile-cart-count">0</span>)
                    </button>
                </div>
            </div>
        </div>
    </nav>

    <!-- Main Content -->
    <main class="flex-grow">
        <!-- Hero Section -->
        <section id="home" class="hero-gradient text-white py-20 md:py-32">
            <div class="container mx-auto px-4 flex flex-col md:flex-row items-center">
                <div class="md:w-1/2 mb-10 md:mb-0">
                    <h1 class="text-4xl md:text-5xl font-bold mb-4">Premium Tech Accessories in Pakistan</h1>
                    <p class="text-xl mb-8">Elevate your mobile and laptop experience with our high-quality accessories at unbeatable prices.</p>
                    <div class="flex flex-col sm:flex-row space-y-4 sm:space-y-0 sm:space-x-4">
                        <a href="#shop" class="bg-black text-white px-8 py-3 rounded-full font-semibold text-center hover:bg-gray-900 transition">Shop Now</a>
                        <a href="#contact" class="bg-white text-black px-8 py-3 rounded-full font-semibold text-center hover:bg-gray-200 transition">Contact Us</a>
                    </div>
                </div>
                <div class="md:w-1/2 flex justify-center">
                    <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1026&q=80" 
                         alt="Tech Accessories" class="rounded-lg shadow-2xl max-w-full h-auto max-h-96 object-cover">
                </div>
            </div>
        </section>

        <!-- Categories Section -->
        <section class="py-16 bg-white">
            <div class="container mx-auto px-4">
                <h2 class="text-3xl font-bold text-center mb-12">Shop By Category</h2>
                <div class="grid grid-cols-2 md:grid-cols-4 gap-6">
                    <a href="#shop" class="category-card bg-gray-100 rounded-lg p-6 text-center hover:shadow-lg transition">
                        <div class="bg-blue-100 w-16 h-16 mx-auto rounded-full flex items-center justify-center mb-4">
                            <i class="fas fa-mobile-alt text-blue-500 text-2xl"></i>
                        </div>
                        <h3 class="font-semibold">Mobile Accessories</h3>
                    </a>
                    <a href="#shop" class="category-card bg-gray-100 rounded-lg p-6 text-center hover:shadow-lg transition">
                        <div class="bg-green-100 w-16 h-16 mx-auto rounded-full flex items-center justify-center mb-4">
                            <i class="fas fa-laptop text-green-500 text-2xl"></i>
                        </div>
                        <h3 class="font-semibold">Laptop Accessories</h3>
                    </a>
                    <a href="#shop" class="category-card bg-gray-100 rounded-lg p-6 text-center hover:shadow-lg transition">
                        <div class="bg-black w-16 h-16 mx-auto rounded-full flex items-center justify-center mb-4">
                            <i class="fas fa-bolt text-yellow-400 text-2xl"></i>
                        </div>
                        <h3 class="font-semibold">Charging Solutions</h3>
                    </a>
                    <a href="#shop" class="category-card bg-gray-100 rounded-lg p-6 text-center hover:shadow-lg transition">
                        <div class="bg-blue-100 w-16 h-16 mx-auto rounded-full flex items-center justify-center mb-4">
                            <i class="fas fa-gamepad text-blue-500 text-2xl"></i>
                        </div>
                        <h3 class="font-semibold">Gaming Gear</h3>
                    </a>
                </div>
            </div>
        </section>

        <!-- Featured Products -->
        <section class="py-16 bg-gray-50">
            <div class="container mx-auto px-4">
                <h2 class="text-3xl font-bold text-center mb-4">Featured Products</h2>
                <p class="text-center text-gray-600 mb-12">Best selling products this week</p>
                
                <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-8">
                    <!-- Product 1 -->
                    <div class="product-card bg-white rounded-lg overflow-hidden shadow-md">
                        <div class="relative">
                            <img src="https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=967&q=80" 
                                 alt="MagSafe Charger" class="w-full h-48 object-cover">
                            <div class="absolute top-2 right-2 bg-green-400 text-black text-xs font-bold px-2 py-1 rounded-full">BESTSELLER</div>
                        </div>
                        <div class="p-4">
                            <h3 class="font-bold text-lg mb-1">MagSafe Wireless Charger</h3>
                            <p class="text-gray-600 text-sm mb-3">Fast magnetic charging for iPhone 12 and above</p>
                            <div class="flex justify-between items-center">
                                <span class="font-bold text-blue-500">Rs. 4,999</span>
                                <div class="flex space-x-2">
                                    <button class="add-to-cart bg-black text-white px-3 py-1 rounded text-sm hover:bg-gray-800 transition" 
                                            data-product="MagSafe Wireless Charger" data-price="4999">
                                        <i class="fas fa-cart-plus"></i>
                                    </button>
                                    <button class="buy-now bg-blue-500 text-white px-3 py-1 rounded text-sm hover:bg-blue-600 transition"
                                            data-product="MagSafe Wireless Charger">
                                        Buy Now
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Product 2 -->
                    <div class="product-card bg-white rounded-lg overflow-hidden shadow-md">
                        <div class="relative">
                            <img src="https://images.unsplash.com/photo-1592155931584-901ac15763e3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=975&q=80" 
                                 alt="Laptop Stand" class="w-full h-48 object-cover">
                        </div>
                        <div class="p-4">
                            <h3 class="font-bold text-lg mb-1">Adjustable Laptop Stand</h3>
                            <p class="text-gray-600 text-sm mb-3">Ergonomic aluminum stand for all laptops</p>
                            <div class="flex justify-between items-center">
                                <span class="font-bold text-blue-500">Rs. 3,299</span>
                                <div class="flex space-x-2">
                                    <button class="add-to-cart bg-black text-white px-3 py-1 rounded text-sm hover:bg-gray-800 transition"
                                            data-product="Adjustable Laptop Stand" data-price="3299">
                                        <i class="fas fa-cart-plus"></i>
                                    </button>
                                    <button class="buy-now bg-blue-500 text-white px-3 py-1 rounded text-sm hover:bg-blue-600 transition"
                                            data-product="Adjustable Laptop Stand">
                                        Buy Now
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Product 3 -->
                    <div class="product-card bg-white rounded-lg overflow-hidden shadow-md">
                        <div class="relative">
                            <img src="https://images.unsplash.com/photo-1599033035071-795763e9aa07?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1035&q=80" 
                                 alt="Power Bank" class="w-full h-48 object-cover">
                            <div class="absolute top-2 right-2 bg-green-400 text-black text-xs font-bold px-2 py-1 rounded-full">NEW</div>
                        </div>
                        <div class="p-4">
                            <h3 class="font-bold text-lg mb-1">20000mAh Power Bank</h3>
                            <p class="text-gray-600 text-sm mb-3">Fast charging with dual USB ports</p>
                            <div class="flex justify-between items-center">
                                <span class="font-bold text-blue-500">Rs. 5,499</span>
                                <div class="flex space-x-2">
                                    <button class="add-to-cart bg-black text-white px-3 py-1 rounded text-sm hover:bg-gray-800 transition"
                                            data-product="20000mAh Power Bank" data-price="5499">
                                        <i class="fas fa-cart-plus"></i>
                                    </button>
                                    <button class="buy-now bg-blue-500 text-white px-3 py-1 rounded text-sm hover:bg-blue-600 transition"
                                            data-product="20000mAh Power Bank">
                                        Buy Now
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Product 4 -->
                    <div class="product-card bg-white rounded-lg overflow-hidden shadow-md">
                        <div class="relative">
                            <img src="https://images.unsplash.com/photo-1556740738-b6a63e27c4df?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80" 
                                 alt="Wireless Keyboard" class="w-full h-48 object-cover">
                        </div>
                        <div class="p-4">
                            <h3 class="font-bold text-lg mb-1">Wireless Keyboard & Mouse</h3>
                            <p class="text-gray-600 text-sm mb-3">Slim design with silent keys</p>
                            <div class="flex justify-between items-center">
                                <span class="font-bold text-blue-500">Rs. 6,999</span>
                                <div class="flex space-x-2">
                                    <button class="add-to-cart bg-black text-white px-3 py-1 rounded text-sm hover:bg-gray-800 transition"
                                            data-product="Wireless Keyboard & Mouse" data-price="6999">
                                        <i class="fas fa-cart-plus"></i>
                                    </button>
                                    <button class="buy-now bg-blue-500 text-white px-3 py-1 rounded text-sm hover:bg-blue-600 transition"
                                            data-product="Wireless Keyboard & Mouse">
                                        Buy Now
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="text-center mt-12">
                    <a href="#shop" class="inline-block bg-blue-500 text-white px-8 py-3 rounded-full font-semibold hover:bg-blue-600 transition">View All Products</a>
                </div>
            </div>
        </section>

        <!-- Shop Section -->
        <section id="shop" class="py-16 bg-white">
            <div class="container mx-auto px-4">
                <h2 class="text-3xl font-bold text-center mb-4">Our Products</h2>
                <p class="text-center text-gray-600 mb-12">Premium tech accessories for your devices</p>
                
                <div class="flex flex-wrap mb-8 justify-center">
                    <button class="category-filter px-4 py-2 mx-2 mb-2 rounded-full bg-blue-500 text-white" data-category="all">All</button>
                    <button class="category-filter px-4 py-2 mx-2 mb-2 rounded-full bg-gray-200 hover:bg-gray-300" data-category="mobile">Mobile</button>
                    <button class="category-filter px-4 py-2 mx-2 mb-2 rounded-full bg-gray-200 hover:bg-gray-300" data-category="laptop">Laptop</button>
                    <button class="category-filter px-4 py-2 mx-2 mb-2 rounded-full bg-gray-200 hover:bg-gray-300" data-category="charging">Charging</button>
                    <button class="category-filter px-4 py-2 mx-2 mb-2 rounded-full bg-gray-200 hover:bg-gray-300" data-category="gaming">Gaming</button>
                </div>
                
                <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-8">
                    <!-- Product items will be loaded here -->
                    <!-- Mobile Accessories -->
                    <div class="product-item bg-white rounded-lg overflow-hidden shadow-md" data-category="mobile">
                        <div class="relative">
                            <img src="https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=967&q=80" 
                                 alt="MagSafe Charger" class="w-full h-48 object-cover">
                        </div>
                        <div class="p-4">
                            <h3 class="font-bold text-lg mb-1">MagSafe Wireless Charger</h3>
                            <p class="text-gray-600 text-sm mb-3">Fast magnetic charging for iPhone 12 and above</p>
                            <div class="flex justify-between items-center">
                                <span class="font-bold text-blue-500">Rs. 4,999</span>
                                <div class="flex space-x-2">
                                    <button class="add-to-cart bg-black text-white px-3 py-1 rounded text-sm hover:bg-gray-800 transition"
                                            data-product="MagSafe Wireless Charger" data-price="4999">
                                        <i class="fas fa-cart-plus"></i>
                                    </button>
                                    <button class="buy-now bg-blue-500 text-white px-3 py-1 rounded text-sm hover:bg-blue-600 transition"
                                            data-product="MagSafe Wireless Charger">
                                        Buy Now
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="product-item bg-white rounded-lg overflow-hidden shadow-md" data-category="mobile">
                        <div class="relative">
                            <img src="https://images.unsplash.com/photo-1608042314458-8dce0430b7d4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80" 
                                 alt="Privacy Screen" class="w-full h-48 object-cover">
                        </div>
                        <div class="p-4">
                            <h3 class="font-bold text-lg mb-1">Privacy Screen Protector</h3>
                            <p class="text-gray-600 text-sm mb-3">Anti-spy tempered glass for your phone</p>
                            <div class="flex justify-between items-center">
                                <span class="font-bold text-blue-500">Rs. 2,499</span>
                                <div class="flex space-x-2">
                                    <button class="add-to-cart bg-black text-white px-3 py-1 rounded text-sm hover:bg-gray-800 transition"
                                            data-product="Privacy Screen Protector" data-price="2499">
                                        <i class="fas fa-cart-plus"></i>
                                    </button>
                                    <button class="buy-now bg-blue-500 text-white px-3 py-1 rounded text-sm hover:bg-blue-600 transition"
                                            data-product="Privacy Screen Protector">
                                        Buy Now
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="product-item bg-white rounded-lg overflow-hidden shadow-md" data-category="mobile">
                        <div class="relative">
                            <img src="https://images.unsplash.com/photo-1599033035071-795763e9aa07?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1035&q=80" 
                                 alt="Power Bank" class="w-full h-48 object-cover">
                        </div>
                        <div class="p-4">
                            <h3 class="font-bold text-lg mb-1">20000mAh Power Bank</h3>
                            <p class="text-gray-600 text-sm mb-3">Fast charging with dual USB ports</p>
                            <div class="flex justify-between items-center">
                                <span class="font-bold text-blue-500">Rs. 5,499</span>
                                <div class="flex space-x-2">
                                    <button class="add-to-cart bg-black text-white px-3 py-1 rounded text-sm hover:bg-gray-800 transition"
                                            data-product="20000mAh Power Bank" data-price="5499">
                                        <i class="fas fa-cart-plus"></i>
                                    </button>
                                    <button class="buy-now bg-blue-500 text-white px-3 py-1 rounded text-sm hover:bg-blue-600 transition"
                                            data-product="20000mAh Power Bank">
                                        Buy Now
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="product-item bg-white rounded-lg overflow-hidden shadow-md" data-category="mobile">
                        <div class="relative">
                            <img src="https://images.unsplash.com/photo-1592899677977-9c10ca588bbd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=928&q=80" 
                                 alt="Bluetooth Tags" class="w-full h-48 object-cover">
                        </div>
                        <div class="p-4">
                            <h3 class="font-bold text-lg mb-1">Bluetooth Tracking Tags</h3>
                            <p class="text-gray-600 text-sm mb-3">4-pack of smart item trackers</p>
                            <div class="flex justify-between items-center">
                                <span class="font-bold text-blue-500">Rs. 7,999</span>
                                <div class="flex space-x-2">
                                    <button class="add-to-cart bg-black text-white px-3 py-1 rounded text-sm hover:bg-gray-800 transition"
                                            data-product="Bluetooth Tracking Tags" data-price="7999">
                                        <i class="fas fa-cart-plus"></i>
                                    </button>
                                    <button class="buy-now bg-blue-500 text-white px-3 py-1 rounded text-sm hover:bg-blue-600 transition"
                                            data-product="Bluetooth Tracking Tags">
                                        Buy Now
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Laptop Accessories -->
                    <div class="product-item bg-white rounded-lg overflow-hidden shadow-md" data-category="laptop">
                        <div class="relative">
                            <img src="https://images.unsplash.com/photo-1592155931584-901ac15763e3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=975&q=80" 
                                 alt="Laptop Stand" class="w-full h-48 object-cover">
                        </div>
                        <div class="p-4">
                            <h3 class="font-bold text-lg mb-1">Adjustable Laptop Stand</h3>
                            <p class="text-gray-600 text-sm mb-3">Ergonomic aluminum stand for all laptops</p>
                            <div class="flex justify-between items-center">
                                <span class="font-bold text-blue-500">Rs. 3,299</span>
                                <div class="flex space-x-2">
                                    <button class="add-to-cart bg-black text-white px-3 py-1 rounded text-sm hover:bg-gray-800 transition"
                                            data-product="Adjustable Laptop Stand" data-price="3299">
                                        <i class="fas fa-cart-plus"></i>
                                    </button>
                                    <button class="buy-now bg-blue-500 text-white px-3 py-1 rounded text-sm hover:bg-blue-600 transition"
                                            data-product="Adjustable Laptop Stand">
                                        Buy Now
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="product-item bg-white rounded-lg overflow-hidden shadow-md" data-category="laptop">
                        <div class="relative">
                            <img src="https://images.unsplash.com/photo-1556740738-b6a63e27c4df?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80" 
                                 alt="Wireless Keyboard" class="w-full h-48 object-cover">
                        </div>
                        <div class="p-4">
                            <h3 class="font-bold text-lg mb-1">Wireless Keyboard & Mouse</h3>
                            <p class="text-gray-600 text-sm mb-3">Slim design with silent keys</p>
                            <div class="flex justify-between items-center">
                                <span class="font-bold text-blue-500">Rs. 6,999</span>
                                <div class="flex space-x-2">
                                    <button class="add-to-cart bg-black text-white px-3 py-1 rounded text-sm hover:bg-gray-800 transition"
                                            data-product="Wireless Keyboard & Mouse" data-price="6999">
                                        <i class="fas fa-cart-plus"></i>
                                    </button>
                                    <button class="buy-now bg-blue-500 text-white px-3 py-1 rounded text-sm hover:bg-blue-600 transition"
                                            data-product="Wireless Keyboard & Mouse">
                                        Buy Now
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="product-item bg-white rounded-lg overflow-hidden shadow-md" data-category="laptop">
                        <div class="relative">
                            <img src="https://images.unsplash.com/photo-1591488320449-011701bb6704?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80" 
                                 alt="Laptop Cooling Pad" class="w-full h-48 object-cover">
                        </div>
                        <div class="p-4">
                            <h3 class="font-bold text-lg mb-1">Laptop Cooling Pad</h3>
                            <p class="text-gray-600 text-sm mb-3">5-fan cooling system with adjustable height</p>
                            <div class="flex justify-between items-center">
                                <span class="font-bold text-blue-500">Rs. 4,499</span>
                                <div class="flex space-x-2">
                                    <button class="add-to-cart bg-black text-white px-3 py-1 rounded text-sm hover:bg-gray-800 transition"
                                            data-product="Laptop Cooling Pad" data-price="4499">
                                        <i class="fas fa-cart-plus"></i>
                                    </button>
                                    <button class="buy-now bg-blue-500 text-white px-3 py-1 rounded text-sm hover:bg-blue-600 transition"
                                            data-product="Laptop Cooling Pad">
                                        Buy Now
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="product-item bg-white rounded-lg overflow-hidden shadow-md" data-category="laptop">
                        <div class="relative">
                            <img src="https://images.unsplash.com/photo-1593642632823-8f785ba67e45?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1032&q=80" 
                                 alt="USB-C Hub" class="w-full h-48 object-cover">
                        </div>
                        <div class="p-4">
                            <h3 class="font-bold text-lg mb-1">7-in-1 USB-C Hub</h3>
                            <p class="text-gray-600 text-sm mb-3">HDMI, USB, SD card slots and more</p>
                            <div class="flex justify-between items-center">
                                <span class="font-bold text-blue-500">Rs. 5,999</span>
                                <div class="flex space-x-2">
                                    <button class="add-to-cart bg-black text-white px-3 py-1 rounded text-sm hover:bg-gray-800 transition"
                                            data-product="7-in-1 USB-C Hub" data-price="5999">
                                        <i class="fas fa-cart-plus"></i>
                                    </button>
                                    <button class="buy-now bg-blue-500 text-white px-3 py-1 rounded text-sm hover:bg-blue-600 transition"
                                            data-product="7-in-1 USB-C Hub">
                                        Buy Now
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Charging Accessories -->
                    <div class="product-item bg-white rounded-lg overflow-hidden shadow-md" data-category="charging">
                        <div class="relative">
                            <img src="https://images.unsplash.com/photo-1585771724684-38269d6639fd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80" 
                                 alt="Fast Charger" class="w-full h-48 object-cover">
                        </div>
                        <div class="p-4">
                            <h3 class="font-bold text-lg mb-1">65W Fast Charger</h3>
                            <p class="text-gray-600 text-sm mb-3">GaN technology for fast and cool charging</p>
                            <div class="flex justify-between items-center">
                                <span class="font-bold text-blue-500">Rs. 3,999</span>
                                <div class="flex space-x-2">
                                    <button class="add-to-cart bg-black text-white px-3 py-1 rounded text-sm hover:bg-gray-800 transition"
                                            data-product="65W Fast Charger" data-price="3999">
                                        <i class="fas fa-cart-plus"></i>
                                    </button>
                                    <button class="buy-now bg-blue-500 text-white px-3 py-1 rounded text-sm hover:bg-blue-600 transition"
                                            data-product="65W Fast Charger">
                                        Buy Now
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Gaming Accessories -->
                    <div class="product-item bg-white rounded-lg overflow-hidden shadow-md" data-category="gaming">
                        <div class="relative">
                            <img src="https://images.unsplash.com/photo-1598550476439-6847785fcea6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80" 
                                 alt="Game Controller" class="w-full h-48 object-cover">
                        </div>
                        <div class="p-4">
                            <h3 class="font-bold text-lg mb-1">Wireless Game Controller</h3>
                            <p class="text-gray-600 text-sm mb-3">Compatible with PC, Android and iOS</p>
                            <div class="flex justify-between items-center">
                                <span class="font-bold text-blue-500">Rs. 8,499</span>
                                <div class="flex space-x-2">
                                    <button class="add-to-cart bg-black text-white px-3 py-1 rounded text-sm hover:bg-gray-800 transition"
                                            data-product="Wireless Game Controller" data-price="8499">
                                        <i class="fas fa-cart-plus"></i>
                                    </button>
                                    <button class="buy-now bg-blue-500 text-white px-3 py-1 rounded text-sm hover:bg-blue-600 transition"
                                            data-product="Wireless Game Controller">
                                        Buy Now
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Contact Section -->
        <section id="contact" class="py-16 bg-gray-50">
            <div class="container mx-auto px-4">
                <h2 class="text-3xl font-bold text-center mb-4">Contact Us</h2>
                <p class="text-center text-gray-600 mb-12">We'd love to hear from you</p>
                
                <div class="flex flex-col md:flex-row gap-12">
                    <div class="md:w-1/2">
                        <div class="bg-white p-8 rounded-lg shadow-lg">
                            <h3 class="text-xl font-bold mb-6">Send us a message</h3>
                            <form id="contact-form">
                                <div class="mb-4">
                                    <label for="name" class="block text-gray-700 mb-2">Your Name</label>
                                    <input type="text" id="name" class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500" required>
                                </div>
                                <div class="mb-4">
                                    <label for="email" class="block text-gray-700 mb-2">Email Address</label>
                                    <input type="email" id="email" class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500" required>
                                </div>
                                <div class="mb-4">
                                    <label for="message" class="block text-gray-700 mb-2">Your Message</label>
                                    <textarea id="message" rows="5" class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500" required></textarea>
                                </div>
                                <button type="submit" class="w-full bg-blue-500 text-white py-3 rounded-lg font-semibold hover:bg-blue-600 transition">Send Message</button>
                            </form>
                        </div>
                    </div>
                    
                    <div class="md:w-1/2">
                        <div class="bg-white p-8 rounded-lg shadow-lg h-full">
                            <h3 class="text-xl font-bold mb-6">Contact Information</h3>
                            <div class="space-y-6">
                                <div class="flex items-start">
                                    <div class="bg-blue-100 p-3 rounded-full mr-4">
                                        <i class="fas fa-map-marker-alt text-blue-500"></i>
                                    </div>
                                    <div>
                                        <h4 class="font-semibold">Our Location</h4>
                                        <p class="text-gray-600">123 Tech Street, Karachi, Pakistan</p>
                                    </div>
                                </div>
                                <div class="flex items-start">
                                    <div class="bg-green-100 p-3 rounded-full mr-4">
                                        <i class="fas fa-phone-alt text-green-500"></i>
                                    </div>
                                    <div>
                                        <h4 class="font-semibold">Phone Number</h4>
                                        <p class="text-gray-600">+92 318 449594</p>
                                    </div>
                                </div>
                                <div class="flex items-start">
                                    <div class="bg-black p-3 rounded-full mr-4">
                                        <i class="fas fa-envelope text-white"></i>
                                    </div>
                                    <div>
                                        <h4 class="font-semibold">Email Address</h4>
                                        <p class="text-gray-600">info@mobiletechgadgets.pk</p>
                                    </div>
                                </div>
                                <div class="flex items-start">
                                    <div class="bg-green-500 p-3 rounded-full mr-4">
                                        <i class="fab fa-whatsapp text-white"></i>
                                    </div>
                                    <div>
                                        <h4 class="font-semibold">WhatsApp</h4>
                                        <p class="text-gray-600">+92 318 449594</p>
                                        <a href="https://wa.me/92318449594" class="text-blue-500 hover:underline">Click to chat</a>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="mt-8">
                                <h4 class="font-semibold mb-4">Business Hours</h4>
                                <div class="space-y-2">
                                    <div class="flex justify-between">
                                        <span class="text-gray-600">Monday - Friday</span>
                                        <span class="font-medium">9:00 AM - 8:00 PM</span>
                                    </div>
                                    <div class="flex justify-between">
                                        <span class="text-gray-600">Saturday</span>
                                        <span class="font-medium">10:00 AM - 6:00 PM</span>
                                    </div>
                                    <div class="flex justify-between">
                                        <span class="text-gray-600">Sunday</span>
                                        <span class="font-medium">Closed</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>

    <!-- Footer -->
    <footer class="bg-black text-white py-12">
        <div class="container mx-auto px-4">
            <div class="grid grid-cols-1 md:grid-cols-4 gap-8">
                <div>
                    <h3 class="text-xl font-bold mb-4 flex items-center">
                        <i class="fas fa-mobile-alt mr-2 text-blue-500"></i>
                        <span>Mobile<span class="text-green-400">Tech</span>Gadgets</span>
                    </h3>
                    <p class="text-gray-400">Pakistan's premier destination for premium mobile and laptop accessories at competitive prices.</p>
                    <div class="flex space-x-4 mt-4">
                        <a href="#" class="text-gray-400 hover:text-white"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" class="text-gray-400 hover:text-white"><i class="fab fa-instagram"></i></a>
                        <a href="#" class="text-gray-400 hover:text-white"><i class="fab fa-twitter"></i></a>
                        <a href="#" class="text-gray-400 hover:text-white"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
                
                <div>
                    <h4 class="font-bold text-lg mb-4">Quick Links</h4>
                    <ul class="space-y-2">
                        <li><a href="#home" class="text-gray-400 hover:text-green-400 transition">Home</a></li>
                        <li><a href="#shop" class="text-gray-400 hover:text-green-400 transition">Shop</a></li>
                        <li><a href="#contact" class="text-gray-400 hover:text-green-400 transition">Contact</a></li>
                        <li><a href="#" class="text-gray-400 hover:text-green-400 transition">About Us</a></li>
                        <li><a href="#" class="text-gray-400 hover:text-green-400 transition">Privacy Policy</a></li>
                    </ul>
                </div>
                
                <div>
                    <h4 class="font-bold text-lg mb-4">Categories</h4>
                    <ul class="space-y-2">
                        <li><a href="#" class="text-gray-400 hover:text-green-400 transition">Mobile Accessories</a></li>
                        <li><a href="#" class="text-gray-400 hover:text-green-400 transition">Laptop Accessories</a></li>
                        <li><a href="#" class="text-gray-400 hover:text-green-400 transition">Charging Solutions</a></li>
                        <li><a href="#" class="text-gray-400 hover:text-green-400 transition">Gaming Gear</a></li>
                        <li><a href="#" class="text-gray-400 hover:text-green-400 transition">New Arrivals</a></li>
                    </ul>
                </div>
                
                <div>
                    <h4 class="font-bold text-lg mb-4">Newsletter</h4>
                    <p class="text-gray-400 mb-4">Subscribe to get updates on new products and special offers.</p>
                    <form class="flex">
                        <input type="email" placeholder="Your email" class="px-4 py-2 rounded-l-lg w-full focus:outline-none text-black">
                        <button type="submit" class="bg-green-400 text-black px-4 py-2 rounded-r-lg font-semibold hover:bg-green-500 transition">
                            <i class="fas fa-paper-plane"></i>
                        </button>
                    </form>
                    <div class="mt-4">
                        <h5 class="font-semibold mb-2">Payment Methods</h5>
                        <div class="flex space-x-2">
                            <i class="fab fa-cc-visa text-2xl text-gray-400"></i>
                            <i class="fab fa-cc-mastercard text-2xl text-gray-400"></i>
                            <i class="fab fa-cc-paypal text-2xl text-gray-400"></i>
                            <i class="fas fa-money-bill-wave text-2xl text-gray-400"></i>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="border-t border-gray-800 mt-12 pt-8 text-center text-gray-400">
                <p>&copy; 2023 MobileTechGadgets. All rights reserved.</p>
            </div>
        </div>
    </footer>

    <!-- WhatsApp Floating Button -->
    <div class="fixed bottom-6 right-6 z-50">
        <a href="https://wa.me/92318449594" class="bg-green-500 text-white w-14 h-14 rounded-full flex items-center justify-center text-2xl shadow-lg hover:bg-green-600 transition">
            <i class="fab fa-whatsapp"></i>
        </a>
    </div>

    <!-- Cart Modal -->
    <div id="cart-modal" class="fixed inset-0 bg-black bg-opacity-50 z-50 hidden flex items-center justify-center">
        <div class="bg-white rounded-lg shadow-xl w-full max-w-md max-h-[80vh] overflow-y-auto">
            <div class="p-6">
                <div class="flex justify-between items-center mb-6">
                    <h3 class="text-xl font-bold">Your Cart</h3>
                    <button id="close-cart" class="text-gray-500 hover:text-black">
                        <i class="fas fa-times"></i>
                    </button>
                </div>
                
                <div id="cart-items" class="space-y-4 mb-6">
                    <!-- Cart items will be loaded here -->
                    <div class="text-center py-8" id="empty-cart-message">
                        <i class="fas fa-shopping-cart text-4xl text-gray-300 mb-4"></i>
                        <p class="text-gray-500">Your cart is empty</p>
                    </div>
                </div>
                
                <div class="border-t pt-4">
                    <div class="flex justify-between mb-2">
                        <span class="font-semibold">Subtotal:</span>
                        <span id="cart-subtotal">Rs. 0</span>
                    </div>
                    <div class="flex justify-between mb-4">
                        <span class="font-semibold">Total:</span>
                        <span id="cart-total" class="font-bold text-lg">Rs. 0</span>
                    </div>
                    
                    <button id="checkout-btn" class="w-full bg-blue-500 text-white py-3 rounded-lg font-semibold hover:bg-blue-600 transition">
                        Proceed to Checkout
                    </button>
                </div>
            </div>
        </div>
    </div>

    <script>
        // Mobile menu toggle
        document.getElementById('mobile-menu-button').addEventListener('click', function() {
            const menu = document.getElementById('mobile-menu');
            menu.classList.toggle('hidden');
        });

        // Cart functionality
        let cart = [];
        
        // Add to cart buttons
        document.querySelectorAll('.add-to-cart').forEach(button => {
            button.addEventListener('click', function() {
                const product = this.getAttribute('data-product');
                const price = parseInt(this.getAttribute('data-price'));
                
                // Check if product already in cart
                const existingItem = cart.find(item => item.product === product);
                
                if (existingItem) {
                    existingItem.quantity += 1;
                } else {
                    cart.push({
                        product: product,
                        price: price,
                        quantity: 1
                    });
                }
                
                updateCart();
                showCartNotification();
            });
        });
        
        // Buy now buttons - opens WhatsApp with product info
        document.querySelectorAll('.buy-now').forEach(button => {
            button.addEventListener('click', function() {
                const product = this.getAttribute('data-product');
                const message = `Hello! I'm interested in buying ${product} from your website. Please share more details.`;
                const whatsappUrl = `https://wa.me/92318449594?text=${encodeURIComponent(message)}`;
                window.open(whatsappUrl, '_blank');
            });
        });
        
        // Cart button click
        document.getElementById('cart-btn').addEventListener('click', openCart);
        document.getElementById('mobile-cart-btn').addEventListener('click', openCart);
        
        // Close cart modal
        document.getElementById('close-cart').addEventListener('click', closeCart);
        
        // Checkout button - opens WhatsApp with all cart items
        document.getElementById('checkout-btn').addEventListener('click', function() {
            if (cart.length === 0) return;
            
            let message = "Hello! I'm interested in buying the following products from your website:\n\n";
            
            cart.forEach(item => {
                message += `${item.product} - ${item.quantity} x Rs. ${item.price}\n`;
            });
            
            message += `\nTotal: Rs. ${calculateTotal()}\n\nPlease share more details.`;
            
            const whatsappUrl = `https://wa.me/92318449594?text=${encodeURIComponent(message)}`;
            window.open(whatsappUrl, '_blank');
        });
        
        // Update cart UI
        function updateCart() {
            const cartCount = document.getElementById('cart-count');
            const mobileCartCount = document.getElementById('mobile-cart-count');
            const totalItems = cart.reduce((sum, item) => sum + item.quantity, 0);
            
            if (totalItems > 0) {
                cartCount.textContent = totalItems;
                cartCount.classList.remove('hidden');
                mobileCartCount.textContent = totalItems;
            } else {
                cartCount.classList.add('hidden');
                mobileCartCount.textContent = '0';
            }
            
            // Update cart modal
            const cartItemsContainer = document.getElementById('cart-items');
            const emptyCartMessage = document.getElementById('empty-cart-message');
            
            if (cart.length === 0) {
                emptyCartMessage.classList.remove('hidden');
                cartItemsContainer.innerHTML = '';
            } else {
                emptyCartMessage.classList.add('hidden');
                
                let itemsHTML = '';
                cart.forEach(item => {
                    itemsHTML += `
                        <div class="flex justify-between items-center border-b pb-4">
                            <div>
                                <h4 class="font-medium">${item.product}</h4>
                                <p class="text-sm text-gray-500">Rs. ${item.price} x ${item.quantity}</p>
                            </div>
                            <div class="flex items-center">
                                <span class="font-medium mr-4">Rs. ${item.price * item.quantity}</span>
                                <button class="remove-item text-red-500 hover:text-red-700" data-product="${item.product}">
                                    <i class="fas fa-trash"></i>
                                </button>
                            </div>
                        </div>
                    `;
                });
                
                cartItemsContainer.innerHTML = itemsHTML;
                
                // Add event listeners to remove buttons
                document.querySelectorAll('.remove-item').forEach(button => {
                    button.addEventListener('click', function() {
                        const product = this.getAttribute('data-product');
                        cart = cart.filter(item => item.product !== product);
                        updateCart();
                    });
                });
            }
            
            // Update totals
            document.getElementById('cart-subtotal').textContent = `Rs. ${calculateTotal()}`;
            document.getElementById('cart-total').textContent = `Rs. ${calculateTotal()}`;
        }
        
        function calculateTotal() {
            return cart.reduce((sum, item) => sum + (item.price * item.quantity), 0);
        }
        
        function openCart() {
            document.getElementById('cart-modal').classList.remove('hidden');
            document.body.style.overflow = 'hidden';
        }
        
        function closeCart() {
            document.getElementById('cart-modal').classList.add('hidden');
            document.body.style.overflow = 'auto';
        }
        
        function showCartNotification() {
            const notification = document.createElement('div');
            notification.className = 'fixed bottom-4 left-1/2 transform -translate-x-1/2 bg-green-500 text-white px-4 py-2 rounded-lg shadow-lg flex items-center';
            notification.innerHTML = `
                <i class="fas fa-check-circle mr-2"></i>
                <span>Item added to cart</span>
            `;
            
            document.body.appendChild(notification);
            
            setTimeout(() => {
                notification.classList.add('opacity-0', 'transition-opacity', 'duration-300');
                setTimeout(() => notification.remove(), 300);
            }, 2000);
        }
        
        // Category filtering
        document.querySelectorAll('.category-filter').forEach(button => {
            button.addEventListener('click', function() {
                const category = this.getAttribute('data-category');
                
                // Update active button
                document.querySelectorAll('.category-filter').forEach(btn => {
                    btn.classList.remove('bg-blue-500', 'text-white');
                    btn.classList.add('bg-gray-200', 'hover:bg-gray-300');
                });
                
                this.classList.remove('bg-gray-200', 'hover:bg-gray-300');
                this.classList.add('bg-blue-500', 'text-white');
                
                // Filter products
                document.querySelectorAll('.product-item').forEach(product => {
                    if (category === 'all' || product.getAttribute('data-category') === category) {
                        product.classList.remove('hidden');
                    } else {
                        product.classList.add('hidden');
                    }
                });
            });
        });
        
        // Contact form submission
        document.getElementById('contact-form').addEventListener('submit', function(e) {
            e.preventDefault();
            
            const name = document.getElementById('name').value;
            const email = document.getElementById('email').value;
            const message = document.getElementById('message').value;
            
            // Here you would typically send the data to a server
            // For this demo, we'll just show a success message and open WhatsApp
            const whatsappMessage = `Hello MobileTechGadgets,\n\nMy name is ${name} (${email}).\n\n${message}\n\nPlease get back to me.`;
            const whatsappUrl = `https://wa.me/92318449594?text=${encodeURIComponent(whatsappMessage)}`;
            
            // Show success message
            const notification = document.createElement('div');
            notification.className = 'fixed bottom-4 left-1/2 transform -translate-x-1/2 bg-green-500 text-white px-4 py-2 rounded-lg shadow-lg flex items-center';
            notification.innerHTML = `
                <i class="fas fa-check-circle mr-2"></i>
                <span>Message sent! Redirecting to WhatsApp...</span>
            `;
            
            document.body.appendChild(notification);
            
            setTimeout(() => {
                notification.classList.add('opacity-0', 'transition-opacity', 'duration-300');
                setTimeout(() => {
                    notification.remove();
                    window.open(whatsappUrl, '_blank');
                    this.reset();
                }, 300);
            }, 2000);
        });
        
        // Smooth scrolling for navigation links
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function(e) {
                e.preventDefault();
                
                const targetId = this.getAttribute('href');
                const targetElement = document.querySelector(targetId);
                
                if (targetElement) {
                    window.scrollTo({
                        top: targetElement.offsetTop - 80,
                        behavior: 'smooth'
                    });
                    
                    // Close mobile menu if open
                    const mobileMenu = document.getElementById('mobile-menu');
                    if (!mobileMenu.classList.contains('hidden')) {
                        mobileMenu.classList.add('hidden');
                    }
                }
            });
        });
    </script>
</body>
</html>