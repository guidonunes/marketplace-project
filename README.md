# Marketplace Project

## Overview

This is a fictional marketplace project built during my bootcamp to solidify key concepts in web development. The project allows users to log in, create, read, update, and delete (CRUD) products, and navigate through various pages, including a checkout page for completing purchases. This project showcases my ability to build a full-stack web application using Ruby on Rails, SASS, and Stimulus JS, while leveraging Bootstrap for styling.

## Features

* User Authentication: Users can sign up, log in, and manage their accounts.
* CRUD Functionality: Users can create, edit, delete, and view products on the marketplace.
* Page Navigation: A fully functional multi-page site that includes product listing, product details, and a checkout page.
* Checkout Process: Users can add items to their cart and proceed to a checkout page for order completion.

## Stack

* Ruby on Rails: Backend framework used to build the server, handle routing, and manage database interactions.
* SASS (SCSS): For managing CSS with variables and nested rules to streamline styling.
* Stimulus JS: Lightweight JavaScript framework used for adding dynamic behavior to pages.
* Bootstrap: Used for responsive layout and UI components.

## Key Implementations

* User Authentication: Built-in user authentication with sessions to handle user logins and secure actions.
* CRUD Operations: Full CRUD for products, allowing users to manage their product listings.
* Checkout Flow: Simple checkout page where users can review their cart and complete purchases.
* Cloudinary Integration: Used for image upload and management within the app.
* Responsive Design: Bootstrap integration ensures the application works seamlessly on various devices.

## How to Set Up the Project

1. Clone the repository:
```   
git clone https://github.com/yourusername/marketplace-project.git
cd marketplace-project
```

2. Install dependencies:

```
bundle install
yarn install
```

3. Set up the database:

```
rails db:create
rails db:migrate
```

4. Run the application:

```
rails server
```
Navigate to http://localhost:3000 to view the application.

## Future Enhancements
* Payment Gateway: Integrating a real-world payment solution like Stripe for the checkout process.
* Product Categories: Allow users to filter and search for products by categories.
* Order History: Enable users to view their previous orders.
* Reviews and Ratings: Implement a system for users to leave reviews and rate products.

# Contributions
This is a learning project, and contributions are welcome! Feel free to open an issue or submit a pull request for improvements.

