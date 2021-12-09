# Notes on Ch 15: Book Club

Starts at: https://youtu.be/Vqs9qbbTeQ0?t=4314

Probably don't need SQL on the client side. This code shows an alternative.

Think about UI, State, and Data as separate layers.

Think: UI <=> State <=> Data

Only UI will communicate with state, and only state will communicate with data.

We will use a library called Hive. Easier to use, and works easily on web.

Want an API for data.

Creates a data_contract.dart that establishes the API.

Can have different data sources, and have a repository.

Looks like he's implementing a local cache of data and only hits the database when data is not available locally.