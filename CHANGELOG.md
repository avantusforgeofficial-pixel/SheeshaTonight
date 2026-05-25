# Changelog

All notable changes to the SheeshaTonight project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 2026-05-25

### Added - Initial Project Setup

#### Infrastructure
- Monorepo structure with Turbo and npm workspaces
- Docker and Docker Compose configuration for local development
- GitHub Actions CI/CD workflows (CI, Deploy)
- Environment configuration templates (.env.example)

#### Applications
- **Customer Mobile App** (React Native/Expo)
  - Folder structure and package.json
  - Configured with Expo Router, NativeWind, React Query, Zustand
  
- **Vendor Mobile App** (React Native/Expo)
  - Folder structure and package.json
  - Same tech stack as customer app
  
- **Admin Dashboard** (Next.js 14)
  - Folder structure and package.json
  - Configured with Tailwind CSS, shadcn/ui, next-intl
  
- **Backend API** (NestJS)
  - Complete project structure
  - Package.json with all dependencies
  - Prisma ORM configuration

#### Shared Packages
- **@sheesha-tonight/shared** - Types and utilities
- **@sheesha-tonight/ui-components** - Reusable UI components

#### Database
- Comprehensive Prisma schema with:
  - User authentication and RBAC
  - Vendor management with KYC
  - Product and rental management
  - Order processing system
  - Subscription management
  - Payout system
  - Reviews and ratings
  - Audit logging

#### Code Quality
- ESLint configuration
- Prettier code formatter
- TypeScript configuration (root)
- Turbo build system configuration

#### Documentation
- Comprehensive README.md
- Quick Start Guide (QUICKSTART.md)
- Contributing guidelines (CONTRIBUTING.md)
- License (MIT)

#### Scripts
- Setup script (setup.sh) for automated development environment setup
- npm workspace management commands
- Database migration and generation commands

### Configuration Files
- `package.json` - Root monorepo configuration
- `turbo.json` - Turbo build system config
- `tsconfig.json` - TypeScript root config
- `.prettierrc` - Code formatter config
- `.eslintrc.json` - Linter config
- `docker-compose.yml` - Services orchestration
- Dockerfiles for backend and admin web
- `.env.example` - Environment variables template
- `.gitignore` - Git ignore patterns
- `.dockerignore` - Docker build ignore patterns
- `.prettierignore` - Prettier ignore patterns

### Development Tools
- Turbo for monorepo management
- ESLint for code quality
- Prettier for code formatting
- TypeScript for type safety
- Docker for containerization
- GitHub Actions for CI/CD

### Services
- PostgreSQL 16 with persistent storage
- Redis 7 for caching and job queues
- Backend API service
- Admin web service

---

## Planned Features

### Upcoming Releases
- [ ] Authentication system implementation
- [ ] Payment gateway integration
- [ ] Notification system
- [ ] Analytics engine
- [ ] Advanced search and filtering
- [ ] Vendor analytics dashboard
- [ ] Mobile app builds (iOS/Android)
- [ ] Production deployment pipeline

---

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines on how to contribute to this project.

## License

MIT - See [LICENSE](LICENSE) for details.
