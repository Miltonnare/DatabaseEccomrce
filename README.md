# 🛍️ E-Commerce Platform Database Schema

A comprehensive relational database schema designed for modern e-commerce platforms. This schema provides robust support for product management, inventory tracking, and customizable product attributes.

## 📋 Table of Contents
- [Features](#features)
- [Database Structure](#database-structure)
- [Installation](#installation)
- [Entity Relationships](#entity-relationships)
- [Contributing](#contributing)

## 📦 Features

- **Product Management**
  - Detailed product information storage
  - Brand and category organization
  - Multiple product images support
  - Custom product attributes

- **Inventory Control**
  - SKU-based tracking
  - Stock quantity management
  - Multiple variation support (color, size)

- **Flexible Categorization**
  - Hierarchical category structure
  - Multiple category assignments
  - Brand management

- **Product Variations**
  - Color options with hex values
  - Size categories and options
  - Custom attribute support

## 🗄️ Database Structure

### Core Tables
| Table              | Description |
|--------------------|-------------|
| `brand`            | Stores brand information with logos |
| `product_category` | Manages hierarchical product categories |
| `product`          | Core product information and pricing |
| `product_image`    | Handles multiple product images |

### Variation & Inventory
| Table              | Description |
|--------------------|-------------|
| `color`            | Color options with hex values |
| `size_category`    | Categories for different size types |
| `size_option`      | Specific size options per category |
| `product_variation`| Links products with color and size |
| `product_item`     | SKU-level inventory tracking |

### Attribute Management
| Table              | Description |
|--------------------|-------------|
| `attribute_category`| Organizes attribute types |
| `attribute_type`   | Defines data types for attributes |
| `product_attribute`| Stores product-specific attributes |

## 🚀 Installation

1. Clone the repository:
```bash
git clone https://github.com/Miltonnare/DatabaseEccomrce.git
```

2. Navigate to the project directory:
```bash
cd DatabaseEccomrce
```

3. Import the schema into your MySQL database:
```bash
mysql -u your_username -p your_database < ecommerce.sql
```

## 🔄 Entity Relationships

- Products can have multiple categories (Many-to-Many)
- Each product can have multiple variations (One-to-Many)
- Product variations link to specific colors and sizes
- Each variation can have multiple SKUs for inventory tracking
- Custom attributes can be assigned to any product

## 👥 Contributing

This project is part of the PLP database assignment. Contributions are welcome from team members. Please ensure you:

1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Push to the branch
5. Create a Pull Request

## 📄 License

This project is part of the PLP Database Assignment. All rights reserved.

---

Developed with ❤️ by the PLP_peer_to_peer_learning_group_149

