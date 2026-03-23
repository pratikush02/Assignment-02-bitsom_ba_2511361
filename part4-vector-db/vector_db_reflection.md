**Question:** "A law firm wants to build a system where lawyers can search 500-page contracts by asking questions in plain English (e.g., 'What are the termination clauses?'). Would a traditional keyword-based database search suffice? Justify why or why not, and explain what role a vector database would play in this system."



**Answer:**

A traditional keyword-based search would not be sufficient for a law firm’s system that needs to handle 500-page contracts. Keyword search relies on exact word matches, so if a lawyer asks, “What are the termination clauses?”, the system would only return results containing the word “termination.” This approach misses semantically related content, such as “cancellation provisions,” “exit terms,” or “contract dissolution,” which may be legally relevant but phrased differently. Legal documents often use varied terminology, and keyword search struggles with synonyms, context, and nuanced meanings.



A vector database, on the other hand, enables semantic search by storing embeddings—numerical representations of sentences that capture meaning rather than just words. When a lawyer poses a natural language query, the system converts it into an embedding and compares it against embeddings of contract passages. This allows retrieval of conceptually similar sections, even if the wording differs. For example, the query “termination clauses” could surface passages about “contract cancellation rights” because their embeddings are close in vector space.



Thus, the vector database plays a crucial role in bridging the gap between human language and rigid legal text. It ensures that lawyers can ask questions in plain English and still retrieve the most relevant clauses, regardless of phrasing. This makes the system far more powerful, accurate, and practical than traditional keyword search, especially in complex domains like law where precision and context are critical.  



