import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';
import CardList from './CardList';
import GetData from './GetData'

class App extends Component {
  constructor(props) {
    super(props);

    this.state = {
      myCardData: GetData(),
      currentTitle: "",
      currentText: "",
      currentId: 4,
    }
    this.addCard = this.addCard.bind(this);
    this.changeTitle = this.changeTitle.bind(this);
    this.changeInfo = this.changeInfo.bind(this);
  }

  addCard() {
    let tempArray = this.state.myCardData;
    tempArray.push(
    {
    title: this.state.currentTitle, 
    info: this.state.currentInfo, 
    id: this.state.currentId
  }
  );
    this.setState({
      myCardData: tempArray,
      currentId: this.state.currentId + 1,
      currentTitle: "",
      currentInfo: "",
    })
  }

   changeTitle(event) {
    this.setState({
      currentTitle: event.target.value,
    })
  }

  changeInfo(event) {
    this.setState({
      currentInfo: event.target.value,
    })
  }

  render() {
    return (
      <div className="App">
        <div className="App-header" onClick={this.addCard}>
          <img src={logo} className="App-logo" alt="logo" />
          <h2>Trello Board</h2>
        </div>
        <div id="add-form">
        <input value={this.state.currentTitle} onChange={this.changeTitle}></input>
        <input value={this.state.currentInfo} onChange={this.changeInfo}></input>
        <button id="add-button" onClick={this.addCard}>Create Card</button>
        </div>
        <p className="App-intro">
          To get started, edit <code>src/App.js</code> and save to reload.
        </p>
          <CardList cardData={this.state.myCardData} />
        </div>
    );
  }
}

export default App;
