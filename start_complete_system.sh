#!/bin/bash

echo "🚀 Starting Complete Gen-Z Ballot System..."
echo

echo "📦 Step 1: Installing dependencies..."
npm install
echo

echo "🔧 Step 2: Compiling contracts..."
npx hardhat compile
echo

echo "🌐 Step 3: Starting Hardhat node in background..."
npx hardhat node &
HARDHAT_PID=$!
echo

echo "⏳ Waiting for Hardhat node to start..."
sleep 5
echo

echo "🚀 Step 4: Deploying contracts..."
npx hardhat run deploy_voting_system.js --network localhost
echo

echo "👥 Step 5: Creating dummy voters..."
npx hardhat run create_simple_voters.js --network localhost
echo

echo "🎯 Step 6: Creating test candidates..."
npx hardhat run create_fresh_candidate.js --network localhost
echo

echo "✅ Step 7: Starting frontend..."
cd frontend
npm run dev &
FRONTEND_PID=$!
cd ..
echo

echo "🎉 System is ready!"
echo
echo "📋 What's running:"
echo "   - Hardhat Node (localhost:8545) - PID: $HARDHAT_PID"
echo "   - Frontend (http://localhost:5173) - PID: $FRONTEND_PID"
echo
echo "🔑 Demo Accounts:"
echo "   Officer 1: 0x59c6995e998f97a5a0044966f0945389dc9e86dae88c7a8412f4603b6b78690d"
echo "   Voter 1: 0x47e179ec257488ca7df7c4e9b1d39cbbae4845eba3f2af9f084166d63c69671"
echo
echo "Press Ctrl+C to stop all processes..."

# Function to cleanup on exit
cleanup() {
    echo "🛑 Stopping all processes..."
    kill $HARDHAT_PID 2>/dev/null
    kill $FRONTEND_PID 2>/dev/null
    exit
}

# Set trap to cleanup on script exit
trap cleanup SIGINT SIGTERM

# Wait for user to stop
wait





