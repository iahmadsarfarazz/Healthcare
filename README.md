# 🏥 Healthcare Analytics Dashboard

A comprehensive analysis of patient data, treatment costs, lab results, and doctor workload across multiple US states covering 2023–2024.

---

## 📌 Project Overview

This project analyzes **10,000 patient records** across multiple states, visit types, and demographics to uncover trends in treatment costs, disease prevalence, lab test outcomes, and medication spend. Built using Tableau, Power BI, and Excel with SQL for data extraction.

---

## 📊 Key Metrics

| Metric | Value |
|---|---|
| Total Patients | 10,000 |
| Total Doctors | 1,000 |
| Patient Average Age | 48.94 Years |
| Total Visits | 10,000 |
| Total Lab Tests | 10,000 |
| Doctor Workload | 10 patients/doctor |
| Average Treatment Cost | $524.75 |
| Total Treatment Cost | $5.25M |

---

## 🔑 Key Insights

- **Diagnosed Conditions** — Evenly distributed across Migraine (20.39%), Asthma (20.09%), Hypertension (20.11%), Diabetes (19.60%), and Healthy (19.81%) — no single dominant condition
- **Lab Results** — 33.54% abnormal, 33.44% pending, 33.02% normal — high pending rate suggests operational bottleneck in lab processing
- **Top States by Cost** — California ($1.06M) and Texas ($1.06M) lead, followed by Illinois ($1.04M) and New York ($1.04M)
- **Medications Cost** — Ibuprofen ($1.06M) and Physical Therapy ($1.06M) are the highest spend; Omeprazole lowest at $1.03M — costs are fairly uniform across medications
- **Most Conducted Test** — CT Scan leads with 2,077 tests ($1.10M); Blood Test lowest at 1,929 ($1.00M)
- **Blood Group Distribution** — O+ most common (1,311), B- least common (1,202) — fairly balanced across all groups
- **Treatment Types** — Counseling, Physical Therapy, Surgery, Dietary, and Medical treatments all around ~2,000 each

---

## 🛠️ Tools & Technologies

| Tool | Usage |
|---|---|
| **SQL** | Data extraction, QA queries, patient segmentation |
| **Tableau** | Multi-tab interactive dashboard, geographic cost maps |
| **Power BI** | KPI tracking and operational metrics |
| **Excel** | Data cleaning, KPI modeling, pivot analysis |
| **PowerPoint** | Executive summary presentation |

---

## 📁 Repository Structure

```
Healthcare/
├── data/               # Raw patient dataset
├── sql/                # SQL queries & QA queries
├── dashboards/         # Tableau (.twbx), Power BI (.pbix), Excel dashboard, PPT
└── README.md
```

---

## 📋 Strategic Recommendations

1. **Lab Processing** — 33.44% pending lab results is too high; automate lab result workflows to reduce turnaround time
2. **Cost Optimization** — Treatment costs are uniform across states; investigate California and Texas for volume-driven cost reduction opportunities
3. **Preventive Care** — With 20% of patients healthy (routine checkups), invest in preventive programs to reduce future disease burden
4. **Medication Spend** — Ibuprofen and Physical Therapy dominate spend; evaluate generic alternatives and therapy bundling
5. **Doctor Workload** — Average of 10 patients per doctor is manageable but monitor for burnout during peak visit periods

---

## 👤 Author

**Sarfaraz Ahmad**  
Data Analyst · SQL · Python · Power BI · Tableau  
[GitHub](https://github.com/iahmadsarfarazz) | [LinkedIn](https://linkedin.com/in/your-profile)
