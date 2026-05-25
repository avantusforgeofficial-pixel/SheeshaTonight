# 🌙 SheeshaTonight - Premium Multi-Vendor Rental Marketplace

> A production-ready, scalable multi-vendor rental marketplace platform with mobile apps, admin dashboard, and sophisticated backend architecture. Built for the UAE market with premium dark luxury design.

[![CI](https://github.com/avantusforgeofficial-pixel/SheeshaTonight/workflows/CI/badge.svg)](https://github.com/avantusforgeofficial-pixel/SheeshaTonight/actions)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

## 🎯 Platform Overview

SheeshaTonight is a comprehensive rental marketplace platform similar to **Uber Eats** meets **Airbnb rental logic** with **multi-vendor ecommerce** SaaS capabilities. The platform includes three main applications:

- **👥 Customer Mobile App** (React Native/Expo) - Browse, book, and manage rentals
- **🏪 Vendor Mobile App** (React Native/Expo) - Manage inventory and orders
- **⚙️ Admin Dashboard** (Next.js) - Complete marketplace management and analytics
- **🔧 Backend API** (NestJS) - Scalable microservices architecture

## 🏗️ Project Structure

```
SheeshaTonight/
├── apps/
│   ├── customer-mobile/          # React Native/Expo customer app
│   ├── vendor-mobile/            # React Native/Expo vendor app
│   └── admin-web/                # Next.js 14 admin dashboard
├── packages/
│   ├── backend/                  # NestJS API server
│   ├── shared/                   # Shared types & utilities
│   └── ui-components/            # Reusable UI components
├── docker/                        # Docker configurations
├── .github/workflows/             # CI/CD pipelines
├── docker-compose.yml             # Local development setup
└── README.md                      # This file
```

## 🛠️ Tech Stack

### Frontend
- **Mobile Apps**: React Native, Expo SDK, Expo Router, NativeWind, TypeScript
- **Admin Web**: Next.js 14, Tailwind CSS, shadcn/ui, next-intl (i18n)
- **State Management**: Zustand + React Query
- **Forms**: React Hook Form + Zod validation

### Backend
- **Framework**: NestJS with Express
- **Database**: PostgreSQL + Prisma ORM
- **Cache**: Redis + BullMQ (job queue)
- **Authentication**: JWT + Refresh tokens + RBAC

### Infrastructure
- **Containerization**: Docker & Docker Compose
- **CI/CD**: GitHub Actions
- **Payment**: Stripe, PayTabs/Checkout.com integration
- **CDN**: AWS S3 for file uploads

## ✨ Key Features

### Customer Mobile App
- 📍 Geo-location based vendor discovery
- 📸 Product browsing and search
- 🛒 Rental booking and cart management
- 💳 Secure checkout with multiple payment methods
- 📦 Real-time order tracking
- 🔔 Push notifications
- 👤 Profile and account management

### Vendor Mobile App
- ✅ Vendor onboarding with KYC uploads
- 📱 Product and inventory management
- 📅 Rental calendar and slot management
- 📊 Order management dashboard
- 💰 Earnings and revenue dashboard
- 🎟️ Subscription plan management

### Admin Dashboard
- ✔️ Vendor approvals and KYC verification
- 👥 Role-based access control (RBAC)
- 📋 Order and fulfillment management
- 💸 Payout and financial management
- 📰 Content management system (CMS)
- 📊 Advanced analytics and reporting
- 📝 Complete audit logs

## 🔐 Authentication & Authorization

### User Roles
- **CUSTOMER** - End users browsing and booking rentals
- **VENDOR** - Business owners managing inventory
- **ADMIN** - Full platform administration
- **MANAGER** - Operational management
- **ACCOUNTANT** - Financial oversight
- **ORDER_PROCESSOR** - Order fulfillment

### Security Features
- JWT authentication with refresh tokens
- Bcrypt password hashing
- Email verification
- Role-based access control (RBAC)
- Secure session handling
- Rate limiting and input validation

## 💳 Payment Integration

### Supported Methods
- 💰 Stripe
- 💳 PayTabs / Checkout.com
- 🍎 Apple Pay
- 🤖 Google Pay
- 🌐 Hosted checkout pages

### Subscription Plans
- **Solo** - Basic vendor tier
- **Master** - Enhanced features
- **Advanced** - Premium with advanced tools

## 🌍 Internationalization

- **Languages**: English (EN) + Arabic (AR with RTL support)
- **Currencies**: AED (Arab Emirates Dirham) + GBP
- **Location-based**: Geo-location services for vendor discovery

## 📊 Database Schema

Core entities:
- Users & Roles & Permissions
- Vendors with KYC & onboarding
- Products with rental configurations
- Orders & Order Items
- Rental Calendar & Availability
- Subscriptions & Payouts
- Reviews & Ratings
- Audit Logs

[View full Prisma schema](packages/backend/prisma/schema.prisma)

## 🚀 Getting Started

### Prerequisites
- Node.js 18+ and npm 9+
- Docker & Docker Compose (for local development)
- Git

### Local Development Setup

1. **Clone the repository**
```bash
git clone https://github.com/avantusforgeofficial-pixel/SheeshaTonight.git
cd SheeshaTonight
```

2. **Install dependencies**
```bash
npm install
```

3. **Set up environment variables**
```bash
cp .env.example .env.local
# Edit .env.local with your configuration
```

4. **Start services with Docker Compose**
```bash
docker-compose up -d
```

5. **Initialize database**
```bash
npm run db:push
npm run db:generate
```

6. **Run development servers**
```bash
npm run dev
```

This will start:
- Backend API: `http://localhost:3001`
- Admin Dashboard: `http://localhost:3000`
- PostgreSQL: `localhost:5432`
- Redis: `localhost:6379`

### Running Individual Apps

```bash
# Backend only
cd packages/backend && npm run dev

# Admin Web only
cd apps/admin-web && npm run dev

# Customer Mobile App
cd apps/customer-mobile && npm start

# Vendor Mobile App
cd apps/vendor-mobile && npm start
```

## 📦 Database Commands

```bash
# Push schema changes
npm run db:push

# Generate Prisma client
npm run db:generate

# Open Prisma Studio (GUI)
npm run db:studio

# Create migration
cd packages/backend && npx prisma migrate dev --name <migration_name>
```

## 🧪 Testing & Quality

```bash
npm run lint      # Run linter
npm run type-check # Type checking
npm run test      # Run tests
npm run format    # Format code with Prettier
```

## 🔄 CI/CD Pipeline

Automated workflows run on every push:

1. **Lint** - Code quality checks
2. **Type Check** - TypeScript validation
3. **Test** - Unit and integration tests
4. **Build** - Production build verification
5. **Deploy** - (Configured for production)

[View workflows](.github/workflows/)

## 📚 Documentation

- [Backend API Documentation](packages/backend/README.md) - NestJS API guides
- [Admin Web Guide](apps/admin-web/README.md) - Dashboard documentation
- [Mobile Apps Guide](apps/customer-mobile/README.md) - App development
- [Database Schema](packages/backend/prisma/schema.prisma) - Data models
- [Environment Setup](.env.example) - Configuration options

## 🎨 Design System

### Theme
- **Style**: Premium dark luxury aesthetic
- **Color Palette**: Smoky gradients, burgundy + gold accents
- **Layout**: Mobile-first responsive design
- **Components**: Modern, accessible UI components

## 🔒 Security Best Practices

- ✅ Input validation with Zod
- ✅ Rate limiting on API endpoints
- ✅ Secure file uploads with S3
- ✅ RBAC middleware protection
- ✅ Redis caching for performance
- ✅ HTTPS only in production
- ✅ Environment variable protection

## 📈 Performance Optimization

- Lazy loading and code splitting
- Database query optimization
- Redis caching strategy
- CDN for static assets
- Image optimization
- Bundle size optimization

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit changes (`git commit -m 'Add amazing feature'`)
4. Push to branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

### Adding Collaborators

To add collaborators to this repository:
1. Go to [Repository Settings](https://github.com/avantusforgeofficial-pixel/SheeshaTonight/settings/access)
2. Navigate to **Collaborators**
3. Search by GitHub username or email address
4. Select permission level and invite

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 📞 Support

For questions, issues, or feature requests:
- 📧 Open an [issue](https://github.com/avantusforgeofficial-pixel/SheeshaTonight/issues)
- 💬 Start a [discussion](https://github.com/avantusforgeofficial-pixel/SheeshaTonight/discussions)
- 🔔 Check existing documentation

## 🎯 Roadmap

- [ ] Mobile app development (iOS/Android)
- [ ] Payment gateway implementation
- [ ] Admin dashboard features
- [ ] Analytics engine
- [ ] Notification system
- [ ] Advanced search filters
- [ ] Vendor analytics
- [ ] Performance optimization
- [ ] Production deployment

## 📋 Changelog

See [CHANGELOG.md](CHANGELOG.md) for version history and updates.

---

**Built with ❤️ for the UAE rental marketplace** | Last updated: May 2026