# Lab 6: Use Bob to Build Custom Tools

## 📋 Overview

**Duration:** ~30 minutes  
**Level:** Intermediate  
**Prerequisites:** Completion of Labs 3-4, understanding of Python basics

In this lab, you'll learn to create custom Python tools that your watsonx Orchestrate agents can use. Tools are the building blocks that give agents their capabilities - from simple calculations to complex API integrations.

---

## 🎯 Learning Objectives

By the end of this lab, you will be able to:

1. Create Python tools using the `@tool` decorator
2. Define tool permissions and input/output schemas
3. Use Pydantic models for type safety
4. Integrate custom tools with agents
5. Test tools independently before agent integration
6. Follow best practices for tool development

---

## 🔗 External Workshop Resource

This lab is based on the **Bobchestrate Workshop** by Justin Seljuk.

### 📚 Complete Lab Instructions

**Please follow the comprehensive tutorial here:**

👉 **[Bobchestrate Workshop - Part 3: Custom Tools](https://juseljuk.github.io/bobchestrate-workshop/part3-custom-tools/#what-youll-learn)**

The external workshop provides:
- Detailed tool development patterns
- Step-by-step code examples
- Best practices and conventions
- Integration techniques
- Testing strategies

---

## 🛠️ Setup Requirements

Before starting the external lab, ensure you have:

### 1. Development Environment
- ✅ Python 3.9 or higher
- ✅ VS Code with IBM Bob extension
- ✅ watsonx Orchestrate ADK installed
- ✅ Environment activated

### 2. Verify Setup
```bash
# Check ADK installation
orchestrate --version

# Verify environment
orchestrate env list

# Ensure environment is active
orchestrate env activate local
```

---

## 📖 What You'll Build

In this lab, you'll create **custom Python tools** that can:

- Accept structured inputs
- Perform specific operations
- Return formatted outputs
- Be used by any agent
- Handle errors gracefully

### Example Tool Structure

```python
from ibm_watsonx_orchestrate.agent_builder.tools import tool, ToolPermission
from pydantic import BaseModel, Field

class CalculatorInput(BaseModel):
    """Input schema for calculator tool"""
    operation: str = Field(description="Operation: add, subtract, multiply, divide")
    num1: float = Field(description="First number")
    num2: float = Field(description="Second number")

@tool(permission=ToolPermission.READ_ONLY)
def calculator(input: CalculatorInput) -> dict:
    """
    Perform basic arithmetic operations.
    
    Args:
        input: CalculatorInput with operation and numbers
        
    Returns:
        dict with result and operation performed
    """
    operations = {
        "add": input.num1 + input.num2,
        "subtract": input.num1 - input.num2,
        "multiply": input.num1 * input.num2,
        "divide": input.num1 / input.num2 if input.num2 != 0 else None
    }
    
    result = operations.get(input.operation)
    
    return {
        "operation": input.operation,
        "result": result,
        "success": result is not None
    }
```

---

## 🚀 Quick Start Guide

### Step 1: Navigate to Workshop
Open the external workshop in your browser:
```
https://juseljuk.github.io/bobchestrate-workshop/part3-custom-tools/
```

### Step 2: Follow the Tutorial
Work through the workshop which covers:

1. **Tool Basics**
   - Understanding the `@tool` decorator
   - Tool permissions (READ_ONLY, READ_WRITE)
   - Input/output schemas

2. **Using Pydantic Models**
   - Defining input schemas
   - Type validation
   - Field descriptions

3. **Tool Development Patterns**
   - Simple tools
   - Tools with external API calls
   - Error handling
   - Testing tools

4. **Integration with Agents**
   - Associating tools with agents
   - Testing tool invocation
   - Debugging tool issues

### Step 3: Import and Test Your Tool
```bash
# Import your tool
orchestrate tools import -k python -f tools/my_tool.py

# List tools to verify
orchestrate tools list

# Test with an agent
orchestrate chat start
```

---

## 💡 Key Concepts

### Tool Decorator

```python
from ibm_watsonx_orchestrate.agent_builder.tools import tool, ToolPermission

@tool(permission=ToolPermission.READ_ONLY)
def my_tool(param: str) -> dict:
    """Tool description"""
    return {"result": "value"}
```

### Tool Permissions

| Permission | Description | Use Case |
|------------|-------------|----------|
| `READ_ONLY` | Cannot modify data | Search, retrieve, calculate |
| `READ_WRITE` | Can modify data | Create, update, delete operations |

### Input Schemas with Pydantic

```python
from pydantic import BaseModel, Field

class MyToolInput(BaseModel):
    """Input schema for my tool"""
    query: str = Field(description="Search query")
    limit: int = Field(default=10, description="Max results")
    
@tool(permission=ToolPermission.READ_ONLY)
def my_tool(input: MyToolInput) -> dict:
    # Use input.query and input.limit
    return {"results": []}
```

---

## 📝 Lab Exercises

After completing the external workshop, try these exercises:

### Exercise 1: Weather Tool
Create a tool that fetches weather information:
```python
@tool(permission=ToolPermission.READ_ONLY)
def get_weather(location: str) -> dict:
    """Get current weather for a location"""
    # Implement weather API call
    pass
```

### Exercise 2: Data Validation Tool
Create a tool that validates email addresses:
```python
@tool(permission=ToolPermission.READ_ONLY)
def validate_email(email: str) -> dict:
    """Validate email address format"""
    # Implement validation logic
    pass
```

### Exercise 3: File Processing Tool
Create a tool that processes CSV files:
```python
@tool(permission=ToolPermission.READ_ONLY)
def process_csv(file_path: str) -> dict:
    """Process and summarize CSV data"""
    # Implement CSV processing
    pass
```

---

## 🎨 Tool Development Best Practices

### 1. Clear Documentation
```python
@tool(permission=ToolPermission.READ_ONLY)
def my_tool(input: MyInput) -> dict:
    """
    Brief one-line description.
    
    Detailed explanation of what the tool does,
    including any important notes or limitations.
    
    Args:
        input: Description of input parameters
        
    Returns:
        Description of return value structure
        
    Raises:
        ValueError: When input is invalid
    """
    pass
```

### 2. Error Handling
```python
@tool(permission=ToolPermission.READ_ONLY)
def safe_tool(input: MyInput) -> dict:
    """Tool with proper error handling"""
    try:
        result = perform_operation(input)
        return {"success": True, "data": result}
    except ValueError as e:
        return {"success": False, "error": str(e)}
    except Exception as e:
        return {"success": False, "error": "Unexpected error occurred"}
```

### 3. Type Safety
```python
from typing import List, Optional

class MyInput(BaseModel):
    required_field: str = Field(description="Required parameter")
    optional_field: Optional[str] = Field(default=None, description="Optional parameter")
    list_field: List[str] = Field(default=[], description="List of items")
```

### 4. Testing
```python
# test_my_tool.py
def test_my_tool():
    """Test tool functionality"""
    input_data = MyInput(required_field="test")
    result = my_tool(input_data)
    assert result["success"] == True
    assert "data" in result
```

---

## 🔍 Tool Types Comparison

| Tool Type | When to Use | Example |
|-----------|-------------|---------|
| **Python Tool** | Custom logic, calculations | Data processing, validation |
| **Flow Tool** | Multi-step workflows | Document processing, approvals |
| **OpenAPI Tool** | External REST APIs | Third-party integrations |

---

## 🐛 Troubleshooting

### Common Issues

**Issue:** Tool import fails
```bash
# Solution: Check Python syntax
python -m py_compile tools/my_tool.py

# Validate tool structure
orchestrate tools validate -k python -f tools/my_tool.py
```

**Issue:** Pydantic validation errors
```python
# Solution: Ensure all fields have type annotations
class MyInput(BaseModel):
    field: str  # ✅ Correct
    # field = "default"  # ❌ Wrong - missing type annotation
```

**Issue:** Tool not appearing in agent
```bash
# Solution: Verify tool is imported
orchestrate tools list | grep my_tool

# Re-import if needed
orchestrate tools import -k python -f tools/my_tool.py
```

**Issue:** Agent can't invoke tool
```yaml
# Solution: Check agent YAML includes tool
tools:
  - my_tool  # Must match tool function name
```

---

## 📚 Additional Resources

### Official Documentation
- [ADK Tools Documentation](https://github.com/IBM/ibm-watsonx-orchestrate-adk/blob/main/docs/tools.md)
- [Pydantic Documentation](https://docs.pydantic.dev/)

### Related Labs
- **Previous:** [Lab 4 - Bob Expense Flows](../lab-4-bob-expense-flows/)
- **Related:** [Lab 3 - Bob Custom Agent](../lab-3-bob-custom-agent/)

### External Resources
- [Bobchestrate Workshop Home](https://juseljuk.github.io/bobchestrate-workshop/)
- [Python Type Hints](https://docs.python.org/3/library/typing.html)

---

## ✅ Lab Completion Checklist

- [ ] Completed external workshop tutorial
- [ ] Created at least one custom Python tool
- [ ] Used Pydantic for input schema
- [ ] Implemented proper error handling
- [ ] Tested tool independently
- [ ] Imported tool via CLI
- [ ] Associated tool with an agent
- [ ] Successfully invoked tool from agent

---

## 🎓 What's Next?

After completing all 5 labs, you're ready to:

### Build Production-Ready Solutions
- Combine UI and code-based development
- Create complex multi-agent systems
- Integrate with enterprise systems
- Deploy to production environments

### Advanced Topics to Explore
- **Multi-Agent Collaboration** - Agents working together
- **Voice-Enabled Agents** - Speech integration
- **Custom MCP Servers** - Advanced tool protocols
- **Observability** - Monitoring and debugging
- **CI/CD Integration** - Automated deployment

### Continue Learning
- Explore the [ADK examples](https://github.com/IBM/ibm-watsonx-orchestrate-adk/tree/main/examples)
- Join the watsonx community
- Contribute to open-source projects
- Build your own use cases

---

## 🤝 Credits

**Original Workshop Author:** Justin Seljuk (juseljuk)  
**Workshop URL:** https://juseljuk.github.io/bobchestrate-workshop/  
**License:** See original workshop repository

This lab guide serves as a companion to the external workshop, providing context within the unified lab series.

---

## 🎉 Congratulations!

You've completed all 5 labs in the watsonx Orchestrate Unified Labs series!

You now have the skills to:
- ✅ Build agents in the UI
- ✅ Create agentic workflows
- ✅ Use Bob for programmatic development
- ✅ Build custom tools and flows
- ✅ Deploy production-ready solutions

**Keep building and exploring! 🚀**

---

**Need Help?** 
- Check the [main README](../README.md) for general support
- Review the [setup guide](../assets/IBM%20i%20User%20Group%20-%20WxO%20Bob%20Setup.pptx)
- Consult the [external workshop](https://juseljuk.github.io/bobchestrate-workshop/)

**Happy Coding! 🚀**