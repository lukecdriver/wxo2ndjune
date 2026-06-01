# Lab 3: Setup Bob and watsonx Orchestrate ADK

## 📋 Overview

**Duration:** ~30 minutes  
**Level:** Beginner to Intermediate  
**Prerequisites:** Completion of Labs 1-2, basic command line knowledge

This lab guides you through setting up your development environment for programmatic agent and workflow development. You'll install and configure Bob (IBM's AI coding assistant) and the watsonx Orchestrate Agent Development Kit (ADK).

---

## 🎯 Learning Objectives

By the end of this lab, you will be able to:

1. Install and configure IBM Bob in VS Code
2. Install the watsonx Orchestrate ADK
3. Set up your development environment
4. Create and activate watsonx Orchestrate environments
5. Verify your setup is working correctly
6. Understand the development workflow

---

## 📚 Setup Guide

### 📄 Complete Setup Instructions

**Primary Reference:** `../assets/IBM i User Group - WxO Bob Setup.pptx`

This comprehensive PowerPoint presentation contains:
- Detailed installation steps with screenshots
- Configuration instructions
- Troubleshooting guidance
- Best practices
- Environment setup procedures

**Please open and follow the PowerPoint for complete setup instructions.**

---

## 🛠️ What You'll Install

### 1. IBM Bob Extension for VS Code
**Bob** is IBM's AI-powered coding assistant that helps you:
- Generate agent code
- Create flow definitions
- Write Python tools
- Debug and optimize code
- Follow best practices

### 2. watsonx Orchestrate ADK (Agent Development Kit)
The **ADK** is a Python SDK that provides:
- Agent creation APIs
- Flow builder framework
- Tool development utilities
- CLI commands for deployment
- Testing and debugging tools

---

## 🚀 Quick Start Checklist

### Prerequisites
- [ ] macOS, Windows, or Linux computer
- [ ] Python 3.9 or higher installed
- [ ] VS Code installed
- [ ] Git installed
- [ ] IBM Cloud account (for watsonx Orchestrate access)
- [ ] Terminal/command line access

### Installation Steps

#### Step 1: Install VS Code
If not already installed:
```bash
# macOS (using Homebrew)
brew install --cask visual-studio-code

# Or download from: https://code.visualstudio.com/
```

#### Step 2: Install IBM Bob Extension
1. Open VS Code
2. Go to Extensions (Cmd+Shift+X or Ctrl+Shift+X)
3. Search for "IBM Bob"
4. Click Install
5. Follow authentication prompts

**Detailed instructions in the PowerPoint guide**

#### Step 3: Install Python
Verify Python installation:
```bash
python3 --version
# Should show Python 3.9 or higher
```

If not installed:
```bash
# macOS (using Homebrew)
brew install python@3.11

# Or download from: https://www.python.org/downloads/
```

#### Step 4: Install watsonx Orchestrate ADK
```bash
# Install the ADK
pip3 install ibm-watsonx-orchestrate

# Verify installation
orchestrate --version
```

#### Step 5: Configure watsonx Orchestrate Environment
```bash
# Create a local development environment
orchestrate env create local --type local

# Activate the environment
orchestrate env activate local

# Verify environment
orchestrate env list
```

#### Step 6: Verify Setup
```bash
# Check ADK commands are available
orchestrate --help

# List available commands
orchestrate agents --help
orchestrate tools --help
orchestrate flows --help
```

---

## 📖 Development Environment Types

### Local Environment (Developer Edition)
- **Purpose:** Local development and testing
- **Features:** Self-contained, no cloud connection needed
- **Use Case:** Learning, prototyping, offline development

```bash
orchestrate env create local --type local
orchestrate env activate local
```

### Production Environment
- **Purpose:** Deploy to production watsonx Orchestrate
- **Features:** Full cloud integration, enterprise features
- **Use Case:** Production deployments

```bash
orchestrate env create prod --type production --url <your-wxo-url>
orchestrate env activate prod
```

---

## 💡 Key Concepts

### The ADK CLI
The `orchestrate` command provides access to:

```bash
# Agent management
orchestrate agents list
orchestrate agents import -f agent.yaml
orchestrate agents export <agent-name>

# Tool management
orchestrate tools list
orchestrate tools import -k python -f tool.py
orchestrate tools import -k flow -f flow.py

# Environment management
orchestrate env list
orchestrate env activate <env-name>
orchestrate env create <env-name>

# Chat interface
orchestrate chat start
```

### Project Structure
Typical ADK project layout:
```
my-project/
├── tools/              # Python tools and flows
│   ├── __init__.py
│   ├── my_tool.py
│   └── my_flow.py
├── agents/             # Agent YAML configurations
│   └── my_agent.yaml
├── generated/          # Compiled flow specs
│   └── flow.json
└── main.py            # Testing script
```

---

## 🎨 Using Bob Effectively

### Bob Capabilities
- **Code Generation:** "Create a watsonx Orchestrate agent for customer support"
- **Tool Creation:** "Generate a Python tool that fetches weather data"
- **Flow Building:** "Build a flow that processes expense reports"
- **Debugging:** "Fix this error in my agent configuration"
- **Documentation:** "Add docstrings to this tool"

### Best Practices
1. **Be Specific:** Provide clear, detailed prompts
2. **Provide Context:** Share relevant code or requirements
3. **Iterate:** Review and refine Bob's suggestions
4. **Learn:** Understand the code Bob generates
5. **Test:** Always test generated code

---

## 🔍 Verification Tests

### Test 1: ADK Installation
```bash
orchestrate --version
# Should display version number
```

### Test 2: Environment Setup
```bash
orchestrate env list
# Should show your environments
```

### Test 3: Create a Simple Agent
```bash
# Create a test agent YAML
cat > test_agent.yaml << EOF
spec_version: v1
kind: native
name: test_agent
description: Test agent
instructions: You are a helpful assistant
llm: groq/openai/gpt-oss-120b
style: default
EOF

# Import the agent
orchestrate agents import -f test_agent.yaml

# Verify import
orchestrate agents list | grep test_agent
```

### Test 4: Bob Integration
1. Open VS Code
2. Create a new file
3. Type a comment: `# Create a simple Python function`
4. Wait for Bob suggestions
5. Accept a suggestion (Tab key)

---

## 🐛 Troubleshooting

### Issue: `orchestrate: command not found`
**Solution:**
```bash
# Check if pip installed to correct location
pip3 show ibm-watsonx-orchestrate

# Add to PATH if needed (macOS/Linux)
export PATH="$PATH:$HOME/.local/bin"

# Or reinstall with --user flag
pip3 install --user ibm-watsonx-orchestrate
```

### Issue: Bob not showing suggestions
**Solution:**
1. Check Bob extension is installed and enabled
2. Restart VS Code
3. Check Bob authentication status
4. Review Bob extension settings

### Issue: Python version too old
**Solution:**
```bash
# Install Python 3.11
brew install python@3.11  # macOS

# Or use pyenv
pyenv install 3.11.0
pyenv global 3.11.0
```

### Issue: Environment activation fails
**Solution:**
```bash
# List environments
orchestrate env list

# Delete and recreate
orchestrate env delete local
orchestrate env create local --type local
orchestrate env activate local
```

---

## 📚 Additional Resources

### Official Documentation
- [watsonx Orchestrate ADK GitHub](https://github.com/IBM/ibm-watsonx-orchestrate-adk)
- [watsonx Orchestrate Documentation](https://www.ibm.com/docs/en/watsonx/watson-orchestrate)
- [IBM Bob Documentation](https://ibm.com/bob)

### Video Tutorials
- ADK Getting Started (check IBM Developer)
- Bob for watsonx Orchestrate
- Environment Setup Guide

### Community
- IBM watsonx Community Forums
- Stack Overflow (tag: `watsonx-orchestrate`)
- IBM Developer Community

---

## ✅ Lab Completion Checklist

- [ ] VS Code installed
- [ ] IBM Bob extension installed and configured
- [ ] Python 3.9+ installed
- [ ] watsonx Orchestrate ADK installed
- [ ] Local environment created and activated
- [ ] Verified `orchestrate` command works
- [ ] Created and imported a test agent
- [ ] Bob suggestions working in VS Code
- [ ] Reviewed PowerPoint setup guide
- [ ] Ready for programmatic development

---

## 🎓 What's Next?

After completing this setup lab, you're ready for:

**[Lab 4: Use Bob to Build a Custom Agent](../lab-4-bob-custom-agent/)**

In Lab 4, you'll use your new setup to:
- Create agents programmatically
- Use Bob to generate code
- Work with agent YAML files
- Deploy agents via CLI

---

## 🤝 Credits

**Setup Guide:** IBM i User Group  
**Document:** "WxO Bob Setup"  
**Authors:** IBM watsonx Orchestrate Team

This lab guide serves as a companion to the comprehensive PowerPoint setup materials in the assets folder.

---

## 📧 Support

**For Setup Issues:**
- Review the PowerPoint guide: `../assets/IBM i User Group - WxO Bob Setup.pptx`
- Check [ADK documentation](https://github.com/IBM/ibm-watsonx-orchestrate-adk)
- Consult the [main README](../README.md)

**For Technical Questions:**
- IBM watsonx support
- ADK GitHub issues
- IBM Developer community

---

## 🎉 Congratulations!

You've successfully set up your development environment for watsonx Orchestrate! You're now ready to build agents, flows, and tools programmatically using Bob and the ADK.

**Key Takeaways:**
- ✅ Bob helps you write code faster
- ✅ ADK provides powerful APIs for agent development
- ✅ CLI tools simplify deployment
- ✅ Local environment enables offline development
- ✅ You're ready for advanced labs

**Ready to code? Let's build some agents! 🚀**