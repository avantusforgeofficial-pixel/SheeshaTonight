#!/bin/bash

# SheeshaTonight Setup Script
# This script sets up the development environment

set -e

echo "🌙 Setting up SheeshaTonight Development Environment..."
echo ""

# Check Node.js version
echo "✓ Checking Node.js version..."
NODE_VERSION=$(node -v)
echo "  Node.js: $NODE_VERSION"

# Install dependencies
echo ""
echo "✓ Installing dependencies..."
npm install

# Setup environment
echo ""
echo "✓ Setting up environment variables..."
if [ ! -f .env.local ]; then
  cp .env.example .env.local
  echo "  Created .env.local from .env.example"
  echo "  ⚠️  Please update .env.local with your configuration"
else
  echo "  .env.local already exists"
fi

# Start Docker services
echo ""
echo "✓ Starting Docker services..."
docker-compose up -d

# Wait for services
echo ""
echo "  Waiting for services to be ready..."
sleep 5

# Database setup
echo ""
echo "✓ Setting up database..."
npm run db:generate
npm run db:push

echo ""
echo "✅ Setup complete!"
echo ""
echo "Next steps:"
echo "  1. Update .env.local with your configuration"
echo "  2. Run 'npm run dev' to start development servers"
echo ""
echo "Services running at:"
echo "  - Backend API: http://localhost:3001"
echo "  - Admin Dashboard: http://localhost:3000"
echo "  - PostgreSQL: localhost:5432"
echo "  - Redis: localhost:6379"
echo ""
