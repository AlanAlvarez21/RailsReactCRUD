import React, { useState, useEffect, Fragment } from "react";
import axios from "axios";
import Airline from "./Airline";

const Airlines = () => {
  const [airlines, setAirlines] = useState([]);

  useEffect(() => {
    //Get All of our airlines from api
    //Update airlines in our state
    axios
      .get("/api/v1/airlines.json")
      .then((resp) => {
        setAirlines(resp.data.data);
      })
      .catch((resp) => console.log(resp));
  }, [airlines.length]);

  const grid = airlines.map((item) => {
    return <Airline key={item.attributes.name} attributes={item.attributes} />;
  });

  return (
    <Fragment>
      <div className="home">
        <div className="header">
          <h1>OpenFlights</h1>
          <div className="subheader"> Honest, unbiased airle reviews</div>
        </div>
        <div> This is the Arilines#index view for our app</div>
        <div className="grid">
          <ul>{grid}</ul>
        </div>
      </div>
    </Fragment>
  );
};

export default Airlines;
