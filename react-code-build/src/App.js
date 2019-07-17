import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';

class App extends Component {
  render() {
    return (
      <div className="App">
        <header className="App-header">
          <img src={logo} className="App-logo" alt="logo" />
          <p>
            Haseeb <i><code>"hzburki"</code></i> Burki
          </p>
          <p>
            Environment: <i><code>"{process.env.REACT_APP_API_ENDPOINT}"</code></i> 
          </p>
        </header>
      </div>
    );
  }
}

export default App;
