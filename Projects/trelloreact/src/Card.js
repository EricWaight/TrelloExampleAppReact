import React, { Component } from 'react';

class Card extends Component {
  render() {
    return (
        <div className = "card">
            <h1>{this.props.title}</h1>
            <p>{this.props.info}</p>
            <p>{this.props.id}</p>
        </div>    
    );
  }
}

export default Card;