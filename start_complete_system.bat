@echo off
echo 🚀 Starting Complete Gen-Z Ballot System...
echo.

echo 📦 Step 1: Installing dependencies...
call npm install
echo.

echo 🔧 Step 2: Compiling contracts...
call npx hardhat compile
echo.

echo 🌐 Step 3: Starting Hardhat node in background...
start "Hardhat Node" cmd /k "npx hardhat node"
echo.

echo ⏳ Waiting for Hardhat node to start...
timeout /t 5 /nobreak >nul
echo.

echo 🚀 Step 4: Deploying contracts...
call npx hardhat run deploy_voting_system.js --network localhost
echo.

echo 👥 Step 5: Creating dummy voters...
call npx hardhat run create_simple_voters.js --network localhost
echo.

echo 🎯 Step 6: Creating test candidates...
call npx hardhat run create_fresh_candidate.js --network localhost
echo.

echo ✅ Step 7: Starting frontend...
cd frontend
start "Frontend" cmd /k "npm run dev"
cd ..
echo.

echo 🎉 System is ready!
echo.
echo 📋 What's running:
echo    - Hardhat Node (localhost:8545)
echo    - Frontend (http://localhost:5173)
echo.
echo 🔑 Demo Accounts:
echo    Officer 1: 0x59c6995e998f97a5a0044966f0945389dc9e86dae88c7a8412f4603b6b78690d
echo    Voter 1: 0x47e179ec257488ca7df7c4e9b1d39cbbae4845eba3f2af9f084166d63c69671
echo.
echo Press any key to exit...
pause >nul





