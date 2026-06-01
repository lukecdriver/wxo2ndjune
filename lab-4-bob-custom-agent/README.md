# Lab 5: Use Bob to Build a Custom Agent

## 📋 Overview

**Duration:** ~45 minutes  
**Level:** Intermediate  
**Prerequisites:** Completion of Labs 1-2, watsonx Orchestrate ADK installed

In this lab, you'll transition from UI-based agent development to programmatic agent creation using Bob (IBM's AI coding assistant) and the watsonx Orchestrate Agent Development Kit (ADK).

---

## 🎯 Learning Objectives

By the end of this lab, you will be able to:

1. Set up the watsonx Orchestrate ADK development environment
2. Use Bob to generate agent code and configurations
3. Create agent YAML configuration files
4. Define agent instructions and tool associations
5. Import and test agents using the CLI
6. Understand the relationship between UI and code-based development

---

## 🔗 External Workshop Resource

This lab is based on the excellent **Bobchestrate Workshop** by Justin Seljuk.

### 📚 Complete Lab Instructions

**Please follow the comprehensive tutorial here:**

👉 **[Bobchestrate Workshop - Part 2: First Agent (Option A: Using Bob)](https://juseljuk.github.io/bobchestrate-workshop/part2-first-agent/#option-a-using-bob)**

The external workshop provides:
- Step-by-step instructions with screenshots
- Detailed explanations of each concept
- Code examples and best practices
- Troubleshooting tips
- Interactive exercises

---

## 🛠️ Setup Requirements

Before starting the external lab, ensure you have:

### 1. Development Environment
- ✅ Python 3.9 or higher installed
- ✅ VS Code with IBM Bob extension
- ✅ Git installed
- ✅ Terminal/command line access

### 2. watsonx Orchestrate ADK
```bash
# Install the ADK
pip install ibm-watsonx-orchestrate

# Verify installation
orchestrate --version
```

### 3. Environment Configuration
```bash
# Create or activate your environment
orchestrate env create local --type local
orchestrate env activate local

# Verify environment
orchestrate env list
```

### 4. Bob Setup
Refer to: `../assets/IBM i User Group - WxO Bob Setup.pptx` for detailed Bob configuration instructions.

---

## 📖 What You'll Build

In this lab, you'll create a **custom agent** programmatically that can:

- Respond to user queries
- Use tools and functions
- Be deployed to watsonx Orchestrate
- Be tested via CLI and UI

### Example Agent Structure

```yaml
# agents/my_agent.yaml
spec_version: v1
kind: native
name: my_custom_agent
description: A custom agent built with Bob
instructions: |
  You are a helpful assistant that can perform specific tasks.
  Use the available tools to help users accomplish their goals.
llm: groq/openai/gpt-oss-120b
style: default
tools:
  - my_custom_tool
```

---

## 🚀 Quick Start Guide

### Step 1: Navigate to Workshop
Open the external workshop in your browser:
```
https://juseljuk.github.io/bobchestrate-workshop/part2-first-agent/#option-a-using-bob
```

### Step 2: Follow Along
Work through the tutorial step-by-step. The workshop covers:

1. **Setting Up Your Workspace**
   - Creating project structure
   - Initializing Python packages

2. **Using Bob to Generate Code**
   - Prompting Bob effectively
   - Reviewing generated code
   - Making adjustments

3. **Creating Agent Configuration**
   - Writing YAML files
   - Defining agent properties
   - Associating tools

4. **Testing Your Agent**
   - Using the CLI
   - Importing agents
   - Running test conversations

### Step 3: Import Your Agent
```bash
# Import your agent
orchestrate agents import -f agents/my_agent.yaml

# List agents to verify
orchestrate agents list

# Start a chat session
orchestrate chat start
```

---

## 💡 Key Concepts

### Agent YAML Structure

```yaml
spec_version: v1          # ADK version
kind: native              # Agent type (native, flow, etc.)
name: agent_name          # Unique identifier
description: "..."        # Brief description
instructions: |           # Detailed agent instructions
  Multi-line instructions
  for the agent behavior
llm: model_name          # LLM to use
style: default           # Response style
tools:                   # List of tools agent can use
  - tool_1
  - tool_2
```

### Using Bob Effectively

**Good Prompts:**
- "Create a watsonx Orchestrate agent that helps with customer support"
- "Generate an agent YAML file for a sales assistant"
- "Build an agent that can search documents and answer questions"

**Bob Best Practices:**
- Be specific about what you want
- Provide context about the use case
- Review and adjust generated code
- Test incrementally

---

## 🔍 Comparison: UI vs Code

| Aspect | UI Development (Labs 1-2) | Code Development (Lab 5) |
|--------|---------------------------|--------------------------|
| **Speed** | Fast for simple agents | Faster for complex agents |
| **Flexibility** | Limited to UI options | Full programmatic control |
| **Version Control** | Manual export | Git-based |
| **Collaboration** | Difficult | Easy with Git |
| **Testing** | Manual in UI | Automated testing possible |
| **Best For** | Prototyping, demos | Production, complex logic |

---

## 📝 Lab Exercises

After completing the external workshop, try these additional exercises:

### Exercise 1: Modify Your Agent
- Change the agent's instructions
- Add a new tool
- Test the changes

### Exercise 2: Create a Second Agent
- Build a different agent from scratch
- Use Bob to generate the configuration
- Import and test

### Exercise 3: Agent Collaboration
- Create two agents that work together
- Have one agent call another
- Test the interaction

---

## 🐛 Troubleshooting

### Common Issues

**Issue:** `orchestrate: command not found`
```bash
# Solution: Ensure ADK is installed
pip install ibm-watsonx-orchestrate
# Add to PATH if needed
```

**Issue:** Agent import fails
```bash
# Solution: Check YAML syntax
orchestrate agents validate -f agents/my_agent.yaml
```

**Issue:** Bob not generating code
```bash
# Solution: Check Bob extension is active in VS Code
# Restart VS Code if needed
```

**Issue:** Environment not activated
```bash
# Solution: Activate your environment
orchestrate env activate local
```

---

## 📚 Additional Resources

### Official Documentation
- [watsonx Orchestrate ADK Documentation](https://github.com/IBM/ibm-watsonx-orchestrate-adk)
- [Agent Configuration Reference](https://github.com/IBM/ibm-watsonx-orchestrate-adk/blob/main/docs/agents.md)

### Related Labs
- **Previous:** [Lab 2 - HR Flows in UI](../lab-2-hr-flows-ui/)
- **Next:** [Lab 5 - Bob Expense Flows](../lab-4-bob-expense-flows/)

### External Resources
- [Bobchestrate Workshop Home](https://juseljuk.github.io/bobchestrate-workshop/)
- [Part 1: Setup](https://juseljuk.github.io/bobchestrate-workshop/part1-setup/)
- [Part 3: Custom Tools](https://juseljuk.github.io/bobchestrate-workshop/part3-custom-tools/)

---

## ✅ Lab Completion Checklist

- [ ] ADK installed and verified
- [ ] Environment created and activated
- [ ] Completed external workshop tutorial
- [ ] Created at least one custom agent
- [ ] Successfully imported agent via CLI
- [ ] Tested agent in chat interface
- [ ] Understood YAML configuration structure
- [ ] Used Bob to generate code

---

## 🎓 What's Next?

After completing this lab, you're ready for:

**[Lab 5: Use Bob to Build Agentic Flows for Expense Processing](../lab-4-bob-expense-flows/)**

In Lab 5, you'll learn to:
- Create complex workflows programmatically
- Implement document processing
- Build multi-step approval flows
- Test flows with Python

---

## 🤝 Credits

**Original Workshop Author:** Justin Seljuk (juseljuk)  
**Workshop URL:** https://juseljuk.github.io/bobchestrate-workshop/  
**License:** See original workshop repository

This lab guide serves as a companion to the external workshop, providing context within the unified lab series.

---

**Need Help?** 
- Check the [main README](../README.md) for general support
- Review the [setup guide](../assets/IBM%20i%20User%20Group%20-%20WxO%20Bob%20Setup.pptx)
- Consult the [external workshop](https://juseljuk.github.io/bobchestrate-workshop/)

**Happy Coding! 🚀**