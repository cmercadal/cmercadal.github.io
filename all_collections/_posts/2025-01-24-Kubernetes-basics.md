---
layout: post
title: Kubernetes Basics
date: 2024-03-08
categories: ["tech", "learning", "kubernetes"]
---

Kubernetes is an orchestration tool that helps us manage infrastructure efficiently.

I used to work with virtual machines. Every time we needed to upgrade something, we had to handle separate systems individually—logging in, performing upgrades, and hoping all the machines would be consistent.
What happens when applications scale and need more resources? We’d need to buy a new machine, set it up from scratch, and hope it matches the production environment. You can imagine the risks and challenges this process introduces. And what if the traffic to our application decreases? We’re left with excess capacity and no way to undo the effort of setting up the new machine. The financial and operational costs of this approach quickly add up.

Containers revolutionize this process by allowing us to define and deploy our infrastructure consistently using a single Dockerfile. Kubernetes builds on this by enabling us to scale applications reliably, manage them more easily, and optimize costs effectively.

Sounds great, right? But how do you start working with Kubernetes? As an open-source project, it’s accessible and easy to adopt. It integrates seamlessly with major cloud platforms like AWS, Azure, and GCP. You can also install it on-premises or use a customized solution like OpenShift by Red Hat.

Let’s dive into the main architectural components to understand how Kubernetes works: