import React from 'react';
import Input from '../../components/Input';
import './style.css'
function Register() {
  return (
    <div className="container">
      <h2>Cadastro de Usuários, Técnicos e Administradores </h2>
      <Input name="Nome" type="text"></Input>
    </div>
  );
}

export default Register;
