## Distributed Channel Assignment in Multi-Radio Multi-Channel Wireless Mesh Networks

Code for my master thesis project at Universitat Politècnica de Catalunya (UPC) and Kungliga Tekniska Högskolan (KTH) 2015. Implements an algorithm for efficient channel assignment in wireless mesh networks. 

European Master in Distributed Computing (Erasmus Mundus) 2013-2015
Barcelona & Stockholm

### Abstract

Wireless Mesh Networks (WMN) have become extremely ubiquitous recently due to their ease of deployment and low maintenance cost. However, because of their multi-hop nature, such networks are extremely sensible to radio interference. With every additional hop performance of the network in terms of its throughput and capacity as well as network latency degrades. Multi-Radio Multi-Channel (MR-MN) WMNs are currently used to minimize the impact of radio interference on network performance by utilizing different non-overlapping channels for each hop. Efficient Channel Assignment (CA) technique is therefore required to promote channel diversity while maintaining network connectivity. This is especially challenging task and is considered to be NP-hard problem. We present a novel distributed self-stabilizing algorithm that dynamically assigns channels to multi-radio nodes only based on local information. The algorithm uses clustering technique to group nearby nodes and select a cluster head responsible for channel selection. External and internal sources of interference are considered when selecting a channel for each cluster. To maintain the basic network connectivity one of the radios of each node is tuned to a default channel. We demonstrate the efficiency of our algorithm on a real world 20-node testbed consisting of nodes, each equipped with an 802.11g and an 802.11a cards. We show that the proposed CA algorithm significantly improves the performance of the network in comparison to common channel assignment.


