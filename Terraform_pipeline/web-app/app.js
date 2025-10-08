const express = require("express");
const app = express();
const port = process.env.PORT || 8000; // Use Azure PORT or fallback to 8000

// Define the root route
app.get("/", (req, res) => {
    res.send("Hello from Azure Web App!");
});

// Start the server
app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
});
