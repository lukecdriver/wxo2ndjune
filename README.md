# watsonx Orchestrate (WxO) Unified Labs

A comprehensive collection of hands-on labs for learning IBM watsonx Orchestrate, covering both UI-based and Bob-assisted development approaches.

## 📚 Overview

This repository contains **6 progressive labs** that teach you how to build AI agents and agentic workflows using watsonx Orchestrate. The labs are designed to take you from UI-based development to advanced programmatic agent creation using Bob.

## 🎯 Lab Structure

### [Lab 1: Build an HR Agent in the UI](./lab-1-hr-agent-ui/)
**Duration:** ~45 minutes  
**Level:** Beginner  
**Description:** Learn to create your first AI agent using the watsonx Orchestrate UI. Build an HR Manager agent that can help with common HR tasks including talent acquisition and case reviews.

**What You'll Learn:**
- Navigate the watsonx Orchestrate interface
- Create and configure an AI agent
- Use Chat with Documents feature
- Add knowledge bases to agents
- Define agent instructions and capabilities
- Test your agent in the chat interface

**Original Source:** IBM Agentic AI Client Bootcamp - HR Talent Use Case

---

### [Lab 2: Build Agentic Flows in the UI for HR Agent](./lab-2-hr-flows-ui/) *(Optional)*
**Duration:** ~60 minutes
**Level:** Beginner to Intermediate
**Description:** Extend your HR agent with agentic workflows. Learn to create flows that orchestrate multiple steps, document processing, and business logic.

> **Note:** This lab is optional. You can proceed directly to Lab 3 if you want to focus on programmatic development with Bob.

**What You'll Learn:**
- Create agentic workflows in the UI
- Use document extractor nodes
- Implement for-each loops
- Add user activity nodes
- Use generative prompts in flows
- Connect flows to your agent
- Test end-to-end workflows

**Original Source:** IBM Agentic AI Client Bootcamp - HR Talent Flows

---

### [Lab 3: Setup Bob and watsonx Orchestrate ADK](./lab-3-bob-adk-setup/)
**Duration:** ~30 minutes  
**Level:** Beginner to Intermediate  
**Description:** Set up your development environment for programmatic agent and workflow development. Install and configure Bob and the watsonx Orchestrate ADK.

**What You'll Learn:**
- Install IBM Bob extension for VS Code
- Install watsonx Orchestrate ADK
- Configure development environments
- Use the orchestrate CLI
- Verify your setup
- Understand the development workflow

**Reference Material:** See `assets/IBM i User Group - WxO Bob Setup.pptx`

---

### [Lab 4: Use Bob to Build a Custom Agent](./lab-4-bob-custom-agent/)
**Duration:** ~45 minutes  
**Level:** Intermediate  
**Description:** Transition from UI to code. Learn to use Bob to programmatically create agents using the watsonx Orchestrate ADK.

**What You'll Learn:**
- Use Bob to generate agent code
- Create agent YAML configurations
- Define agent instructions programmatically
- Import agents via CLI
- Test agents from command line
- Version control your agents

**External Resource:** [Bobchestrate Workshop - Part 2: First Agent](https://juseljuk.github.io/bobchestrate-workshop/part2-first-agent/#option-a-using-bob)

---

### [Lab 5: Use Bob to Build Agentic Flows for Expense Processing](./lab-5-bob-expense-flows/)
**Duration:** ~90 minutes  
**Level:** Intermediate to Advanced  
**Description:** Build complex agentic workflows programmatically. Create an expense report processing system with document extraction and approval flows.

**What You'll Learn:**
- Create flows programmatically using Python and the ADK
- Implement document processing workflows
- Use Watson Document Understanding
- Define KVP schemas for extraction
- Build multi-step approval processes
- Test flows programmatically

**Reference Material:** See `assets/IBM i User Group - Create wxO Agentic Workflows with Bob.pdf`

---

### [Lab 6: Use Bob to Build Custom Tools](./lab-6-bob-custom-tools/)
**Duration:** ~30 minutes  
**Level:** Intermediate  
**Description:** Create custom Python tools that your agents can use. Learn the tool development pattern and best practices.

**What You'll Learn:**
- Create Python tools with the `@tool` decorator
- Define tool permissions and schemas
- Use Pydantic models for type safety
- Integrate tools with agents
- Test tools independently
- Follow tool development best practices

**External Resource:** [Bobchestrate Workshop - Part 3: Custom Tools](https://juseljuk.github.io/bobchestrate-workshop/part3-custom-tools/#what-youll-learn)

---

## 🚀 Getting Started

### Prerequisites

1. **watsonx Orchestrate Access**
   - IBM watsonx Orchestrate instance (Developer Edition or Production)
   - Valid IBM Cloud account

2. **Development Environment** (for Labs 3-6)
   - Python 3.9 or higher
   - Git
   - VS Code (recommended) with IBM Bob extension
   - Terminal/Command line access

3. **Setup Materials**
   - Review the setup guide: `assets/IBM i User Group - WxO Bob Setup.pptx`
   - Install the watsonx Orchestrate ADK (for Labs 3-6)

### Installation

```bash
# Clone this repository
git clone <your-repo-url>
cd wxo-unified-labs

# Install watsonx Orchestrate ADK (for Labs 3-6)
pip install ibm-watsonx-orchestrate

# Verify installation
orchestrate --version
```

### Environment Setup

For Labs 3-6, you'll need to configure your environment:

```bash
# Activate your watsonx Orchestrate environment
orchestrate env activate <your-env-name>

# Or create a new local environment
orchestrate env create local --type local
orchestrate env activate local
```

---

## 📖 Learning Path

We recommend following the labs in order:

1. **Start with UI Labs (1-2)** - Build foundational understanding
2. **Setup Development Environment (Lab 3)** - Prepare for programmatic development
3. **Transition to Bob Labs (4-6)** - Learn programmatic development
4. **Combine Approaches** - Use UI for rapid prototyping, Bob for production

### Suggested Timeline

- **Day 1:** Labs 1-2 (UI-based development)
- **Day 2:** Lab 3 (Setup) + Lab 4 (Introduction to Bob and ADK)
- **Day 3:** Labs 5-6 (Advanced programmatic development)

---

## 📁 Repository Structure

```
wxo-unified-labs/
├── README.md                          # This file
├── LICENSE                            # MIT License with attribution
├── .gitignore                         # Git ignore rules
├── assets/                            # Shared resources
│   ├── IBM i User Group - WxO Bob Setup.pptx
│   └── IBM i User Group - Create wxO Agentic Workflows with Bob.pdf
├── lab-1-hr-agent-ui/                # Lab 1: HR Agent in UI
│   ├── README.md
│   ├── assets/                        # Lab screenshots and images
│   └── data/                          # Sample data files
├── lab-2-hr-flows-ui/                # Lab 2: HR Flows in UI
│   ├── README.md
│   ├── assets/                        # Lab screenshots and images
│   └── data/                          # Sample data files
├── lab-3-bob-adk-setup/              # Lab 3: Bob/ADK Setup
│   └── README.md
├── lab-4-bob-custom-agent/           # Lab 4: Bob Custom Agent
│   ├── README.md
│   ├── tools/
│   ├── agents/
│   └── generated/
├── lab-5-bob-expense-flows/          # Lab 5: Bob Expense Flows
│   ├── README.md
│   ├── tools/
│   ├── agents/
│   └── generated/
└── lab-6-bob-custom-tools/           # Lab 6: Bob Custom Tools
    ├── README.md
    ├── tools/
    └── generated/
```

---

## 🎓 Additional Resources

### Official Documentation
- [watsonx Orchestrate Documentation](https://www.ibm.com/docs/en/watsonx/watson-orchestrate)
- [watsonx Orchestrate ADK GitHub](https://github.com/IBM/ibm-watsonx-orchestrate-adk)
- [IBM watsonx Platform](https://www.ibm.com/watsonx)

### External Workshops
- [Bobchestrate Workshop](https://juseljuk.github.io/bobchestrate-workshop/) - Complete workshop on using Bob with watsonx Orchestrate
- [IBM Developer](https://developer.ibm.com/) - Additional IBM AI resources

### Community
- IBM watsonx Community Forums
- IBM Developer Community
- Stack Overflow (tag: `watsonx-orchestrate`)

---

## 🤝 Contributing

This repository is designed for educational purposes. If you find issues or have suggestions:

1. Open an issue describing the problem or enhancement
2. Submit a pull request with your proposed changes
3. Ensure all examples are tested and documented

---

## 📜 Attribution

This unified lab repository combines content from multiple sources:

### Original Authors and Sources

**Labs 1-2 (HR Agent and Flows):**
- **Source:** IBM Agentic AI Client Bootcamp
- **Repository:** github.ibm.com/skol/agentic-ai-client-bootcamp
- **Use Case:** HR Talent Management
- **Authors:** IBM Skills Academy Team

**Lab 3 (Bob/ADK Setup):**
- **Source:** IBM i User Group Workshop Materials
- **Document:** "WxO Bob Setup"
- **Authors:** IBM watsonx Orchestrate Team

**Labs 4 & 6 (Bob Custom Agent and Tools):**
- **Source:** Bobchestrate Workshop
- **Website:** https://juseljuk.github.io/bobchestrate-workshop/
- **Author:** Justin Seljuk (juseljuk)
- **Content:** Part 2 (First Agent) and Part 3 (Custom Tools)

**Lab 5 (Bob Expense Flows):**
- **Source:** IBM i User Group Workshop Materials
- **Document:** "Create wxO Agentic Workflows with Bob"
- **Authors:** IBM watsonx Orchestrate Team

### Acknowledgments

Special thanks to:
- IBM Skills Academy team for the comprehensive bootcamp materials
- Justin Seljuk for the excellent Bobchestrate workshop
- IBM watsonx Orchestrate team for the ADK and documentation
- IBM i User Group for workshop materials

---

## 📄 License

This educational repository is provided for learning purposes. Please refer to individual source repositories for specific licensing information:

- IBM Agentic AI Client Bootcamp: IBM Internal Use
- Bobchestrate Workshop: See original repository
- watsonx Orchestrate ADK: Apache 2.0 License

See [LICENSE](./LICENSE) file for details.

---

## 🆘 Support

### Getting Help

1. **Lab-Specific Issues:** Check the README in each lab directory
2. **Setup Issues:** Review `assets/IBM i User Group - WxO Bob Setup.pptx`
3. **ADK Issues:** Consult the [ADK GitHub repository](https://github.com/IBM/ibm-watsonx-orchestrate-adk)
4. **General Questions:** Refer to [watsonx Orchestrate documentation](https://www.ibm.com/docs/en/watsonx/watson-orchestrate)

### Common Issues

**Issue:** Cannot connect to watsonx Orchestrate  
**Solution:** Verify your environment is activated: `orchestrate env list`

**Issue:** Import errors with ADK  
**Solution:** Ensure PYTHONPATH is set correctly and ADK is installed

**Issue:** Bob not generating code  
**Solution:** Check Bob extension is installed and configured in VS Code

---

## 🎉 What's Next?

After completing these labs, you'll be ready to:

1. **Build Production Agents** - Create enterprise-ready AI agents
2. **Integrate External Systems** - Connect to ServiceNow, Salesforce, etc.
3. **Deploy at Scale** - Use watsonx Orchestrate in production environments
4. **Contribute to ADK** - Help improve the open-source ADK

### Advanced Topics to Explore

- Multi-agent collaboration
- Voice-enabled agents
- Custom MCP servers
- Agent observability and monitoring
- Production deployment patterns

---

**Happy Learning! 🚀**

*Last Updated: June 2026*