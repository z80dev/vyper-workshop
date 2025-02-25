# Vyper Workshop Setup

## Prerequisites

- Python 3.7+
- Git

## Installation Steps

1. **Install UV (Python package installer)**
```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
```

2. **Install Foundry**
```bash
curl -L https://foundry.paradigm.xyz | bash
foundryup
```

3. **Install Python Dependencies with UV**
```bash
uv add eth-ape ape-vyper vyper titanoboa ipython
```

## Verification
```bash
uv run ape --version
```

That's it! You're ready to start developing with Vyper.

For issues:
- UV docs: https://github.com/astral-sh/uv
- Foundry docs: https://book.getfoundry.sh
- Ape docs: https://docs.apeworx.io

