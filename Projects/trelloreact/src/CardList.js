import React, { Component } from 'react';
import Card from './Card';

class CardList extends Component {
  render() {
    return (

    <div>
    {
        this.props.cardData.map((item, index) => {
        return <Card title={item.title} info={item.info} key={index} id={item.id} />
    })
    }
    </div>
    );
  }
}

export default CardList;