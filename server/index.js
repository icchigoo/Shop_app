//import from packages
const express = require("express");
const mongoose = require("mongoose");
const adminRouter = require("./routes/admin");
//imports from other files
const authRouter = require("./routes/auth");
const productRouter = require("./routes/product");

//init
const PORT =  3000;
const app = express();
const DB = "mongodb+srv://ajay:ajay12@cluster0.wcbuxhb.mongodb.net/?retryWrites=true&w=majority";

//middleware
app.use(express.json());
app.use(authRouter);
app.use(adminRouter);
app.use(productRouter);


//Connections
mongoose
  .connect(DB)
  .then(() => {
    console.log("Connection Successful");
  })
  .catch((e) => {
    console.log(e);
  });

  app.listen(PORT, "0.0.0.0", () => {
    console.log(`connected at port ${PORT}`);
  });