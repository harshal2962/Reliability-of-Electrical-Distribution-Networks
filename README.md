# ⚡ Reliability Evaluation of Electrical Distribution Networks using Particle Swarm Optimization (PSO)

This project focuses on modeling, evaluating, and optimizing the **reliability of a radial electrical distribution system** using **Particle Swarm Optimization (PSO)**. The aim is to minimize system failure rates and outage durations by identifying optimal network configurations, supporting utility planning and infrastructure investment decisions.

---

## 📌 Problem Statement

In power distribution systems, **reliability** is a critical measure of the system’s ability to deliver uninterrupted service to consumers. Reliability indices such as **SAIFI**, **SAIDI**, **CAIDI**, and **Energy Not Supplied (ENS)** are used to evaluate system performance. This project builds a simulation framework in MATLAB to compute and optimize these indices in an **8-bus radial network**.

---

## 🎯 Objectives

- Compute key reliability indices for a radial distribution network.
- Model multiple failure paths using the **cut-set method**.
- Use **PSO** to optimize load-point reliability metrics by minimizing:
  - Failure rate (λ)
  - Average outage time (r)
- Support network expansion and planning through optimized reliability assessment.

---

## 🧪 Approach

1. **System Modeling**
   - Simulated an 8-bus radial distribution system in MATLAB.
   - Identified all paths using the **cut-set technique** to find critical failure scenarios.

2. **Reliability Analysis**
   - Calculated:
     - **SAIFI** (System Average Interruption Frequency Index)
     - **SAIDI** (System Average Interruption Duration Index)
     - **CAIDI** (Customer Average Interruption Duration Index)
     - **ENS** (Energy Not Supplied)

3. **Optimization using PSO**
   - Applied **Continuous Particle Swarm Optimization** to minimize failure rate and outage time.
   - Incorporated constraints to maintain system feasibility.

4. **Evaluation**
   - Compared base-case vs optimized scenarios to validate performance improvements.

---

## 🧠 Key Techniques

- **Cut-set Analysis** – Identifies all relevant disconnection paths in the radial system.
- **PSO** – Bio-inspired algorithm used for multi-parameter optimization.
- **Reliability Metrics** – Derived from IEEE standards and calculated at both load-point and system-wide levels.
- **Constraint-based Optimization** – Ensures electrical system feasibility under new configurations.

---

## 📈 Results

- Optimized reliability indices show a significant **reduction in outage time and failure frequency**.
- PSO effectively adjusted network parameters to enhance reliability.
- The model provides a tool for **investment planning**, network **reconfiguration**, and **feeder design**.

---

## 🛠 Tools & Technologies

- MATLAB
- Particle Swarm Optimization
- Power Systems Simulation
- Reliability Engineering Principles

---

## 📌 References

- IEEE RTS Documentation for Reliability Test Systems  
- Roy Billinton & Ronald Allan – *Reliability Evaluation of Power Systems*  
- Civicioglu, P. – *Backtracking Search Optimization Algorithm for numerical optimization problems*

---

## 👨‍💻 Author

**Harshal Amin**  
📍 MS Business Analytics & Information Management, Purdue University  
🔗 [LinkedIn](https://linkedin.com/in/amin82) | [GitHub](https://github.com/harshal2962)

---

## 📝 License

This project is licensed under the MIT License.
