import React from 'react';
import './style.css';

interface Props {
  type: string;
  name: string
}

function Input(props: Props) {
  const placeholder = `Digite o ${props.name} aqui`
  return (
    <div className="inputContainer">
      <label >{props.name}</label>
       <input className="input" placeholder={placeholder} type={props.type}></input>
    </div>
  );
}

export default Input;
