#!/bin/bash

# Script to authenticate with GitHub and push the repository
# Run this script to complete the setup

echo "=========================================="
echo "WxO Unified Labs - GitHub Push Script"
echo "=========================================="
echo ""

# Step 1: Authenticate with GitHub CLI
echo "Step 1: Authenticating with github.ibm.com..."
echo "Please follow the prompts to authenticate."
echo ""
gh auth login -h github.ibm.com

if [ $? -ne 0 ]; then
    echo "❌ Authentication failed. Please try again."
    exit 1
fi

echo ""
echo "✅ Authentication successful!"
echo ""

# Step 2: Create the repository
echo "Step 2: Creating repository '2ndJuneWxOBob' on github.ibm.com..."
echo ""
gh repo create Luke-Driver/2ndJuneWxOBob --public --source=. --remote=origin --description="Unified watsonx Orchestrate Labs - HR Agent, Flows, and Bob Development" --push

if [ $? -eq 0 ]; then
    echo ""
    echo "=========================================="
    echo "✅ SUCCESS! Repository created and pushed!"
    echo "=========================================="
    echo ""
    echo "Repository URL: https://github.ibm.com/Luke-Driver/2ndJuneWxOBob"
    echo ""
    echo "Next steps:"
    echo "1. Visit the repository URL above"
    echo "2. Verify all files are present"
    echo "3. Share the link with non-IBMers"
    echo ""
else
    echo ""
    echo "Repository might already exist. Trying to push..."
    git push -u origin main
    
    if [ $? -eq 0 ]; then
        echo ""
        echo "=========================================="
        echo "✅ SUCCESS! Code pushed to existing repo!"
        echo "=========================================="
        echo ""
        echo "Repository URL: https://github.ibm.com/Luke-Driver/2ndJuneWxOBob"
    else
        echo ""
        echo "❌ Push failed. Please check the error above."
        echo ""
        echo "Manual steps:"
        echo "1. Create repo manually at: https://github.ibm.com/new"
        echo "2. Name it: 2ndJuneWxOBob"
        echo "3. Make it Public"
        echo "4. Don't initialize with README"
        echo "5. Run: git push -u origin main"
    fi
fi

# Made with Bob
