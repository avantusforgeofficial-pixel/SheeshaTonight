# Contributing to SheeshaTonight

Thank you for your interest in contributing to the SheeshaTonight marketplace platform! This document provides guidelines and instructions for contributing.

## Code of Conduct

We are committed to providing a welcoming and inspiring community for all. Please be respectful and professional in all interactions.

## Getting Started

1. Fork the repository
2. Clone your fork: `git clone https://github.com/your-username/SheeshaTonight.git`
3. Add upstream remote: `git remote add upstream https://github.com/avantusforgeofficial-pixel/SheeshaTonight.git`
4. Create a feature branch: `git checkout -b feature/your-feature-name`

## Development Workflow

### Setup Development Environment

```bash
npm install
npm run db:push
npm run db:generate
docker-compose up -d
npm run dev
```

### Making Changes

1. Make your changes in your feature branch
2. Test your changes locally
3. Ensure tests pass: `npm run test`
4. Lint code: `npm run lint`
5. Check types: `npm run type-check`
6. Format code: `npm run format`

### Commit Messages

Follow conventional commits format:

```
type(scope): subject

body

footer
```

**Types**: `feat`, `fix`, `docs`, `style`, `refactor`, `perf`, `test`, `chore`, `ci`

**Examples**:
```
feat(backend): add vendor subscription management
fix(mobile): resolve location permission issue
docs(api): update authentication endpoints
```

### Pull Request Process

1. Update your fork: `git fetch upstream && git rebase upstream/main`
2. Push to your fork: `git push origin feature/your-feature-name`
3. Open a PR on GitHub with a clear description
4. Reference any related issues: `Closes #123`
5. Wait for code review
6. Make requested changes
7. Merge when approved

## Branch Naming

- `feature/description` - New features
- `fix/description` - Bug fixes
- `docs/description` - Documentation
- `refactor/description` - Code refactoring
- `perf/description` - Performance improvements
- `test/description` - Test additions

## Testing

Write tests for:
- New features
- Bug fixes
- Edge cases

Run tests:
```bash
npm run test
npm run test:watch
npm run test:cov
```

## Code Style

- Use TypeScript for type safety
- Follow ESLint rules: `npm run lint`
- Format with Prettier: `npm run format`
- Max line length: 100 characters
- Use meaningful variable names
- Add comments for complex logic

## Database Changes

If you modify the schema:

1. Update `packages/backend/prisma/schema.prisma`
2. Create a migration: `cd packages/backend && npx prisma migrate dev --name migration_name`
3. Commit migration files
4. Test with: `npm run db:push`

## Documentation

- Update README if adding features
- Add JSDoc comments for functions
- Update CHANGELOG.md
- Include API documentation for new endpoints

## Reporting Issues

When reporting bugs, include:
- Clear description
- Steps to reproduce
- Expected behavior
- Actual behavior
- Environment (OS, Node version, etc.)
- Screenshots/logs if applicable

## Feature Requests

When suggesting features:
- Describe the use case
- Explain expected behavior
- Provide examples/mockups if possible
- Note any performance implications

## Performance Considerations

- Optimize database queries
- Use caching where appropriate
- Avoid N+1 queries
- Profile code for bottlenecks
- Consider mobile app impact

## Security

- Never commit secrets or API keys
- Use `.env.local` for local configuration
- Validate all user input
- Use prepared statements for queries
- Follow OWASP guidelines

## Questions?

- Check existing documentation
- Search closed issues and discussions
- Open a new discussion
- Ask in PR comments

## Recognition

Contributors will be:
- Added to contributor list
- Mentioned in release notes
- Credited in documentation

Thank you for contributing to SheeshaTonight! 🙏
