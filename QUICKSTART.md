# Quick Start Guide

Get SheeshaTonight running locally in minutes!

## Prerequisites

- Node.js 18+
- npm 9+
- Docker & Docker Compose
- Git

## Installation (5 minutes)

### Option 1: Automated Setup (Recommended)

```bash
# Clone and setup
git clone https://github.com/avantusforgeofficial-pixel/SheeshaTonight.git
cd SheeshaTonight
chmod +x setup.sh
./setup.sh
```

### Option 2: Manual Setup

```bash
# Clone repository
git clone https://github.com/avantusforgeofficial-pixel/SheeshaTonight.git
cd SheeshaTonight

# Install dependencies
npm install

# Copy environment file
cp .env.example .env.local

# Start Docker services
docker-compose up -d

# Setup database
npm run db:generate
npm run db:push

# Start development servers
npm run dev
```

## Access Your Services

Once running, access:

- **Backend API**: http://localhost:3001
  - API Health Check: http://localhost:3001/health
  - Swagger Docs: http://localhost:3001/api/docs

- **Admin Dashboard**: http://localhost:3000
  - Default credentials: (configure in .env.local)

- **Database GUI**: http://localhost:5555 (Prisma Studio)
  - Command: `npm run db:studio`

## Useful Commands

```bash
# Development
npm run dev              # Start all dev servers
npm run dev -- customer-mobile   # Run specific app

# Database
npm run db:push         # Sync schema to database
npm run db:generate     # Generate Prisma client
npm run db:studio       # Open Prisma Studio GUI

# Testing & Quality
npm run lint            # Check code style
npm run type-check      # TypeScript validation
npm run test            # Run tests
npm run format          # Auto-format code

# Build for production
npm run build           # Build all packages
```

## Project Structure

```
apps/
  ├── admin-web/              # Next.js admin dashboard
  ├── customer-mobile/        # React Native customer app
  └── vendor-mobile/          # React Native vendor app

packages/
  ├── backend/                # NestJS API
  ├── shared/                 # Shared types & utilities
  └── ui-components/          # Reusable components

docker/                        # Docker configurations
.github/workflows/             # CI/CD pipelines
```

## Environment Configuration

Edit `.env.local` to configure:

```env
# Database
DATABASE_URL=postgresql://user:password@localhost:5432/db_name

# JWT
JWT_SECRET=your-secret-key
JWT_EXPIRE=7d

# Payment
STRIPE_SECRET_KEY=sk_test_...

# APIs
NEXT_PUBLIC_API_URL=http://localhost:3001
```

See `.env.example` for all available options.

## Troubleshooting

### Services won't start
```bash
# Check Docker
docker --version
docker-compose ps

# Restart services
docker-compose restart
```

### Database connection error
```bash
# Check PostgreSQL
docker-compose logs postgres

# Reinitialize
npm run db:push
```

### Port already in use
```bash
# Change ports in docker-compose.yml or .env
# Or kill the process using the port
lsof -i :3000
kill -9 <PID>
```

### Dependencies not installed
```bash
# Clean install
rm -rf node_modules package-lock.json
npm install
```

## Next Steps

1. ✅ Verify all services running: `docker-compose ps`
2. 📖 Read the [full documentation](README.md)
3. 👥 Add collaborators in [GitHub Settings](https://github.com/avantusforgeofficial-pixel/SheeshaTonight/settings/access)
4. 🔧 Configure payment integrations
5. 📱 Start developing mobile apps
6. 🚀 Deploy to production

## Getting Help

- 📚 Check [README.md](README.md) for detailed docs
- 📝 Review [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines
- 🐛 Open an [issue](https://github.com/avantusforgeofficial-pixel/SheeshaTonight/issues)
- 💬 Start a [discussion](https://github.com/avantusforgeofficial-pixel/SheeshaTonight/discussions)

## Support

For production issues or enterprise support, contact the team.

Happy coding! 🚀
