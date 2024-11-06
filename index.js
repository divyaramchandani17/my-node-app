const express = require("express");
const app = express();

app.get("/", (req, res) => {
  res.send("Hello, World! This is a Node.js app deployed on AWS.");
});
app.listen(3000, () => {
  console.log(`Server is running on port 3000`);
});
