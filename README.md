# Shortly - URL Shortener With Ads

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)  
![Ruby Version](https://img.shields.io/badge/Ruby-3.2.2-red?logo=ruby&logoColor=white)  
![Rails Version](https://img.shields.io/badge/Rails-7.1.0-blue?logo=rubyonrails&logoColor=white)  
![TailwindCSS](https://img.shields.io/badge/TailwindCSS-3.3.2-blue?logo=tailwindcss&logoColor=white)  
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-16-blue?logo=postgresql&logoColor=white)  
![StimulusJS](https://img.shields.io/badge/StimulusJS-3.2.1-orange?logo=stimulus&logoColor=white)  
![Hotwire](https://img.shields.io/badge/Hotwire-1.2.3-red?logo=hotwire&logoColor=white)  

**Shortly** is a modern URL shortening and monetization platform built with **Ruby on Rails 7**. Users can shorten links, share them, and monetize clicks with integrated ads. It includes analytics, user authentication, and a professional SaaS-style interface.

---

## **Table of Contents**

- [Features](#features)  
- [Demo](#demo)  
- [Technologies](#technologies)  
- [Installation](#installation)  
- [Usage](#usage)  
- [Screenshots](#screenshots)  
- [Contributing](#contributing)  
- [License](#license)  

---

## **Features**

- Shorten URLs with custom aliases  
- Click countdown page for ad display  
- Multiple ad formats (banner, interstitial, etc.)  
- Analytics dashboard for link performance  
- Fraud detection and prevention  
- User authentication with Devise  
- Responsive, premium GUI (TailwindCSS)  
- Developer API for integration  
- Multiple pricing plans (Free, Pro, Enterprise)  

---

## **Demo**

_You can deploy it locally or host it on Heroku, Render, or any Rails-friendly platform._  

- Homepage: `/`  
- Developer API Docs: `/developer`  
- Pricing Page: `/pricing`  
- About Page: `/about`  

---

## **Technologies**

| Technology | Version | Icon |
|------------|---------|------|
| Ruby       | 3.2.2   | ![Ruby](https://img.shields.io/badge/Ruby-3.2.2-red?logo=ruby&logoColor=white) |
| Rails      | 7.1.0   | ![Rails](https://img.shields.io/badge/Rails-7.1.0-blue?logo=rubyonrails&logoColor=white) |
| TailwindCSS| 3.3.2   | ![TailwindCSS](https://img.shields.io/badge/TailwindCSS-3.3.2-blue?logo=tailwindcss&logoColor=white) |
| PostgreSQL | 16      | ![PostgreSQL](https://img.shields.io/badge/PostgreSQL-16-blue?logo=postgresql&logoColor=white) |
| StimulusJS | 3.2.1   | ![StimulusJS](https://img.shields.io/badge/StimulusJS-3.2.1-orange?logo=stimulus&logoColor=white) |
| Hotwire    | 1.2.3   | ![Hotwire](https://img.shields.io/badge/Hotwire-1.2.3-red?logo=hotwire&logoColor=white) |

---

## **Installation**

1. **Clone the repository**

```bash
git clone https://github.com/shiboshreeroy/shortly.git
cd shortly
````

2. **Install dependencies**

```bash
bundle install
yarn install
```

3. **Setup database**

```bash
rails db:create
rails db:migrate
rails db:seed
```

4. **Start the server**

```bash
rails server
```

5. Visit `http://localhost:3000` in your browser.

---

## **Usage**

* Sign up as a user to create and manage shortened URLs.
* Click on **Developer** for API access and documentation.
* Click on **Pricing** to see subscription plans.
* Use the dashboard to view analytics and earnings.
* Mobile-friendly, responsive design for all devices.

---

## **Screenshots**

![Homepage](./app/assets/images/home.png)
---
![Pricing Page](./app/assets/images/pricing.png)
---
![Developer API](./app/assets/images/developer.png)
---
![Dashboard](./app/assets/images/dashboard.png)

---

## **Contributing**

We welcome contributions!

1. Fork the repository
2. Create a new branch: `git checkout -b feature/my-feature`
3. Commit your changes: `git commit -m 'Add my feature'`
4. Push to the branch: `git push origin feature/my-feature`
5. Open a Pull Request

---

## **License**

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

---

**Made with ❤️ by Shiboshree Roy**
