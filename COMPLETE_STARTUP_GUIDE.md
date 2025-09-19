# 🚀 **Complete Gen-Z Ballot Startup Guide**

## ⚠️ **IMPORTANT: Why Data Disappears**

When you close the Hardhat node, **ALL DATA IS LOST** because:
- Hardhat runs an **in-memory blockchain**
- No data is persisted between restarts
- You need to **redeploy contracts** and **recreate test data** every time

## 🎯 **Solution: Automated Startup Scripts**

I've created scripts that handle everything automatically:

### **For Windows:**
```bash
start_complete_system.bat
```

### **For Mac/Linux:**
```bash
chmod +x start_complete_system.sh
./start_complete_system.sh
```

## 📋 **What the Scripts Do:**

1. **Install Dependencies** (`npm install`)
2. **Compile Contracts** (`npx hardhat compile`)
3. **Start Hardhat Node** (in background)
4. **Deploy Contracts** (`deploy_voting_system.js`)
5. **Create Dummy Voters** (`create_simple_voters.js`)
6. **Create Test Candidates** (`create_fresh_candidate.js`)
7. **Start Frontend** (`npm run dev`)

## 🔧 **Manual Step-by-Step (if scripts don't work):**

### **Step 1: Start Hardhat Node**
```bash
npx hardhat node
```
**Keep this terminal open!**

### **Step 2: Deploy Contracts (New Terminal)**
```bash
npx hardhat run deploy_voting_system.js --network localhost
```

### **Step 3: Create Test Data (Same Terminal)**
```bash
npx hardhat run create_simple_voters.js --network localhost
npx hardhat run create_fresh_candidate.js --network localhost
```

### **Step 4: Start Frontend (New Terminal)**
```bash
cd frontend
npm run dev
```

## 🎯 **Quick Test After Startup:**

### **Test 1: Check Dashboard**
1. Go to `http://localhost:5173`
2. Click **Dashboard**
3. Should show **voters and candidates count > 0**

### **Test 2: Check Officer Panel**
1. Import Officer 1: `0x59c6995e998f97a5a0044966f0945389dc9e86dae88c7a8412f4603b6b78690d`
2. Go to **Officer Panel**
3. Should see **voters and candidates** to verify

### **Test 3: Check Cast Vote**
1. Import Voter 1: `0x47e179ec257488ca7df7c4e9b1d39cbbae4845eba3f2af9f084166d63c69671`
2. Go to **Cast Vote**
3. Should see **candidates** to vote for

## 🔑 **Demo Accounts (Always Available):**

### **Election Officers:**
- **Officer 1 (Constituency 1):** `0x59c6995e998f97a5a0044966f0945389dc9e86dae88c7a8412f4603b6b78690d`
- **Officer 2 (Constituency 2):** `0x5de4111afa1a4b94908f83103eb1f1706367c2e68ca870fc3fb9a804cdab365a`
- **Officer 3 (Constituency 3):** `0x7c852118294e51e653712a81e05800f419141751be58f605c371e15141b007a6`

### **Test Voters:**
- **Voter 1:** `0x47e179ec257488ca7df7c4e9b1d39cbbae4845eba3f2af9f084166d63c69671`
- **Voter 2:** `0x8b3a350cf5c34c9194ca85829a2df0ec3153be0318b5e2d3348e872092edffba`
- **Voter 3:** `0x92db14e403b83dfe3df233f83dfa3a0d7096f21ca9b0d6d6b8d88b2b4ec1564e`

## 🚨 **Troubleshooting:**

### **Problem: "Cannot connect to network"**
**Solution:** Make sure Hardhat node is running first

### **Problem: "No voters/candidates showing"**
**Solution:** Run the test data creation scripts

### **Problem: "Transaction failed"**
**Solution:** Check if you're using the correct network (Hardhat Local)

### **Problem: "Frontend not loading"**
**Solution:** Make sure you're in the `frontend` directory when running `npm run dev`

## 📱 **MetaMask Setup (Every Time):**

1. **Open MetaMask**
2. **Add Network:**
   - **Network Name:** Hardhat Local
   - **RPC URL:** http://localhost:8545
   - **Chain ID:** 1337
   - **Currency Symbol:** ETH
3. **Import Account** using any private key from above

## 🎉 **Success Indicators:**

✅ **Dashboard shows voter/candidate counts > 0**
✅ **Officer Panel shows voters and candidates**
✅ **Cast Vote shows candidates to vote for**
✅ **No console errors in browser**
✅ **MetaMask connects successfully**

## 🔄 **Daily Workflow:**

1. **Run startup script** (or manual steps)
2. **Test the system** with demo accounts
3. **Close everything** when done
4. **Repeat next time** (data will be fresh)

## 💡 **Pro Tips:**

- **Always use the startup scripts** for consistency
- **Keep Hardhat node running** while testing
- **Use the demo accounts** for quick testing
- **Check browser console** for any errors
- **Refresh frontend** if data doesn't appear

---

**🎯 The system is designed to be completely reset every time you start it - this is normal behavior for development!**





