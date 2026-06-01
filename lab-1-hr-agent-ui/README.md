# Lab 1: Build an HR Agent in the UI

## 📋 Overview

**Duration:** ~45 minutes  
**Level:** Beginner  
**Prerequisites:** Access to watsonx Orchestrate instance

In this lab, you'll learn to create your first AI agent using the watsonx Orchestrate user interface. You'll build an HR Manager agent that can help employees with common HR tasks like benefits inquiries, policy questions, and more.

---

## 🎯 Learning Objectives

By the end of this lab, you will be able to:

1. Navigate the watsonx Orchestrate interface
2. Create and configure an AI agent from scratch
3. Define agent instructions and personality
4. Select and configure the appropriate LLM
5. Add tools and capabilities to your agent
6. Test your agent in the chat interface
7. Understand agent configuration options

---

## 🔗 Original Lab Materials

This lab is based on the **IBM Agentic AI Client Bootcamp - HR Talent Use Case**.

### 📚 Accessing the Lab

**Original Source:** IBM Agentic AI Client Bootcamp  
**Repository:** github.ibm.com/skol/agentic-ai-client-bootcamp  
**Use Case:** HR Talent Management  
**Lab File:** `usecases/hr-talent/assets/hands-on-lab-hr-manager.md`

**To access the original lab materials:**

1. **If you have IBM GitHub access:**
   ```bash
   git clone git@github.ibm.com:skol/agentic-ai-client-bootcamp.git
   cd agentic-ai-client-bootcamp/usecases/hr-talent/assets
   # Open hands-on-lab-hr-manager.md
   ```

2. **If you don't have access:**
   - Contact your IBM representative or bootcamp coordinator
   - Request access to the Agentic AI Client Bootcamp materials
   - Alternative: Follow the general guidance below

---

## 🚀 Lab Overview (General Guidance)

While the detailed step-by-step instructions are in the original lab materials, here's a general overview of what you'll build:

### What You'll Create

An **HR Manager Agent** that can:
- Answer employee questions about benefits
- Provide information about company policies
- Help with HR-related inquiries
- Direct employees to appropriate resources
- Handle common HR scenarios

### Key Components

1. **Agent Configuration**
   - Name: HR Manager
   - Description: Helpful HR assistant
   - Instructions: Detailed guidance on how to help employees

2. **LLM Selection**
   - Choose appropriate model (e.g., GPT-4, Granite)
   - Configure temperature and parameters

3. **Tools Integration**
   - Knowledge base access (HR policies, benefits docs)
   - Search capabilities
   - Information retrieval tools

---

## 🛠️ Prerequisites

Before starting this lab, ensure you have:

### 1. watsonx Orchestrate Access
- ✅ Active watsonx Orchestrate instance
- ✅ User account with agent creation permissions
- ✅ Access to the UI (web interface)

### 2. Knowledge Base (Optional)
- HR policy documents
- Benefits information
- Company handbook
- FAQs

### 3. Browser
- Modern web browser (Chrome, Firefox, Safari, Edge)
- Stable internet connection

---

## 📖 General Steps (High-Level)

### Step 1: Access watsonx Orchestrate
1. Log in to your watsonx Orchestrate instance
2. Navigate to the Agents section
3. Click "Create New Agent"

### Step 2: Configure Basic Settings
1. **Name your agent:** "HR Manager" or similar
2. **Add description:** Brief explanation of agent's purpose
3. **Select LLM:** Choose appropriate model
4. **Set style:** Professional, helpful tone

### Step 3: Write Agent Instructions
Create detailed instructions that define:
- Agent's role and responsibilities
- How to interact with employees
- What information to provide
- When to escalate issues
- Tone and personality

Example instructions structure:
```
You are an HR Manager assistant helping employees with:
- Benefits questions
- Policy information
- Leave requests
- General HR inquiries

Guidelines:
- Be professional and empathetic
- Provide accurate information
- Direct to HR team for sensitive matters
- Maintain confidentiality
```

### Step 4: Add Tools and Capabilities
1. **Knowledge Base:** Upload HR documents
2. **Search Tools:** Enable document search
3. **Integration Tools:** Connect to HR systems (if available)

### Step 5: Test Your Agent
1. Open the chat interface
2. Test various scenarios:
   - "What are my health insurance options?"
   - "How do I request time off?"
   - "What is the company's remote work policy?"
3. Refine instructions based on responses

### Step 6: Iterate and Improve
1. Review agent responses
2. Adjust instructions for better accuracy
3. Add more tools if needed
4. Test edge cases

---

## 💡 Best Practices

### Agent Instructions
- **Be Specific:** Clear, detailed instructions produce better results
- **Define Boundaries:** Specify what the agent should and shouldn't do
- **Include Examples:** Show the agent how to handle common scenarios
- **Set Tone:** Define the personality and communication style

### Testing
- **Test Thoroughly:** Try various question types
- **Edge Cases:** Test unusual or complex scenarios
- **User Perspective:** Think like an employee
- **Iterate:** Continuously improve based on results

### Knowledge Base
- **Organize Content:** Structure documents logically
- **Keep Updated:** Ensure information is current
- **Clear Formatting:** Use headings and structure
- **Comprehensive:** Cover common questions

---

## 🎨 Example Agent Configuration

### Basic Configuration
```yaml
Name: HR Manager
Description: Helpful AI assistant for employee HR questions
LLM: gpt-4 (or equivalent)
Style: Professional and empathetic
```

### Sample Instructions
```
You are an HR Manager assistant for [Company Name]. Your role is to help 
employees with HR-related questions and tasks.

Your Responsibilities:
1. Answer questions about benefits, policies, and procedures
2. Provide information about leave policies and time-off requests
3. Explain company policies clearly and accurately
4. Direct employees to appropriate resources
5. Escalate sensitive matters to human HR staff

Guidelines:
- Always be professional, empathetic, and helpful
- Provide accurate information based on company policies
- If you're unsure, direct the employee to HR
- Maintain confidentiality and privacy
- Use clear, simple language

Topics You Can Help With:
- Health insurance and benefits
- Time-off and leave policies
- Company policies and procedures
- Onboarding information
- General HR inquiries

Topics to Escalate:
- Complaints or grievances
- Disciplinary matters
- Salary negotiations
- Sensitive personal issues
```

---

## 🔍 Common Use Cases

### Benefits Inquiries
**Employee:** "What health insurance plans are available?"  
**Agent:** Provides overview of available plans, coverage details, and enrollment process

### Leave Requests
**Employee:** "How do I request vacation time?"  
**Agent:** Explains the process, required notice, and approval workflow

### Policy Questions
**Employee:** "What is the remote work policy?"  
**Agent:** Summarizes policy, eligibility, and requirements

### Onboarding
**Employee:** "I'm new, what do I need to know?"  
**Agent:** Provides welcome information, key policies, and resources

---

## 🐛 Troubleshooting

### Agent Not Responding Correctly
- **Review Instructions:** Ensure they're clear and specific
- **Check Knowledge Base:** Verify documents are uploaded and accessible
- **Test LLM:** Try different models or parameters
- **Simplify:** Start with basic functionality, add complexity gradually

### Inaccurate Information
- **Update Knowledge Base:** Ensure documents are current
- **Refine Instructions:** Add more specific guidance
- **Add Examples:** Show the agent correct responses
- **Test Sources:** Verify information accuracy

### Agent Too Verbose or Too Brief
- **Adjust Instructions:** Specify desired response length
- **Modify LLM Parameters:** Adjust temperature and max tokens
- **Provide Examples:** Show ideal response format

---

## ✅ Lab Completion Checklist

- [ ] Accessed watsonx Orchestrate UI
- [ ] Created new HR Manager agent
- [ ] Configured basic agent settings
- [ ] Wrote comprehensive agent instructions
- [ ] Added knowledge base or tools
- [ ] Tested agent with multiple scenarios
- [ ] Refined instructions based on testing
- [ ] Documented agent configuration
- [ ] Agent provides helpful, accurate responses

---

## 🎓 What's Next?

After completing this lab, proceed to:

**[Lab 2: Build Agentic Flows in the UI for HR Agent](../lab-2-hr-flows-ui/)**

In Lab 2, you'll learn to:
- Create agentic workflows
- Build multi-step processes
- Connect flows to your HR agent
- Implement complex business logic

---

## 📚 Additional Resources

### watsonx Orchestrate Documentation
- [Creating Agents](https://www.ibm.com/docs/en/watsonx/watson-orchestrate)
- [Agent Best Practices](https://www.ibm.com/docs/en/watsonx/watson-orchestrate)
- [Knowledge Base Setup](https://www.ibm.com/docs/en/watsonx/watson-orchestrate)

### Related Topics
- Prompt engineering for agents
- LLM selection and configuration
- Knowledge base optimization
- Agent testing strategies

---

## 🤝 Credits

**Original Lab Author:** IBM Skills Academy Team  
**Source:** IBM Agentic AI Client Bootcamp  
**Repository:** github.ibm.com/skol/agentic-ai-client-bootcamp  
**Use Case:** HR Talent Management

This guide provides general guidance for the lab. For detailed step-by-step instructions with screenshots, please access the original lab materials from the IBM Agentic AI Client Bootcamp.

---

## 📧 Support

**For Lab Access:**
- Contact your IBM representative
- Request bootcamp materials access
- Join the IBM Skills Academy program

**For Technical Issues:**
- Check watsonx Orchestrate documentation
- Contact watsonx support
- Review the [main README](../README.md)

---

**Ready to build your first agent? Let's get started! 🚀**