# 🛍️ E-Commerce Platform Database Schema

This project provides a robust, normalized relational database schema for building an e-commerce platform. The database supports product management, variations (such as size and color), product images, categorization, inventory tracking, and custom attributes.

---

## 📦 Features

- Store product details, brand, and category info
- 
- Manage product variations (e.g., color, size)
- 
- Organize and retrieve product images
- 
- Track inventory through purchasable items (SKUs)
- 
- Define and store custom product attributes
- 
- Normalize sizes, colors, and attribute categories

----------------------------------------------------------

## 🗂️ Entity Overview

| Table              | Description |
|--------------------|-------------|
| `brand`            | Stores brand information |
| `product_category` | Classifies products (e.g., electronics, clothing) |
| `product`          | Stores general product details |
| `product_image`    | Stores image URLs or file references |
| `color`            | Manages available color options |
| `size_category`    | Groups related sizes |
| `size_option`      | Stores individual size options |
| `product_variation`| Links a product to color and size |
| `product_item`     | Represents purchasable SKUs |
| `attribute_category`| Categorizes attributes |
| `attribute_type`   | Defines attribute types (e.g., text, number) |
| `product_attribute`| Stores custom product properties |

---

 Clone the repository
 
https://github.com/Miltonnare/DatabaseEccomrce.git

cd DatabaseEccomrce

