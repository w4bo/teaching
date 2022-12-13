# Bitbang

Date: 2022-12-12

## Notes

- Identify all the touch points with the customers.
- Tag management: a pixel with JS code attached to it. Streams information to the server.
- Cookie armageddon. Is google stopping third-party cookies?

Takeaways:
- We have seen all the main 3 cloud providers. Google, Microsoft, AWS.
- We have seen many of the functionalities we mentioned in theory:
    - Model versioning
    - Data lake organization, raw, staging, production data, and further evolution with delta lake
- While we were used to building systems from scratch, here we witnessed how complex is to transform and integrate existing information systems and different cloud vendors (adobe target for A/B testing, google analytis, Azure)
    - Read the terms of service!
- Data-driven innovation, not only about technology
    - People and changes in the structure of the organization
    - Legislation and regulation that affect technological choiches: to avoid "the great Chinese firewall", replicate the service in different geographical locations (e.g., Azure Cosmos automatically manages geo-replication while Redis does not)
- Recommendation systems
    - Collaborative filtering
    - Content-based filtering

## Questions

- Azure Blob vs Azure Data Lake
- Delta lake, ingestion tables, but raw data are not always represented as tables. Iceberg to bring transactions into the data lake
- How do you provide the integration between all these heterogeneous software?
- Tag management provides a lot of data. Two questions:
    - You store clicks and so on, do you store all this fine-grained data? Storage on the data lake is very cheap and a fraction of the overall cost. We store all the raw data.
    - What about privacy? Apply some form of anonymization.

# Technogym

Date: 2022-12-05

## Notes

- Apache beams
- Could IoT Core has been deprecated
- Edge computing. edge computing, no direct connection to the cloud
- Digital twins. How do you maintain the coupling with digital twins?
- Google service originated from open source projects (apache beans), and they maintained the compatibility
- Big query can be registered as a subscriber

## Questions:

- How do you decide when to switch from MQTT, HTTP, and FTP? Can you show some use cases?
- Over-the-air updates