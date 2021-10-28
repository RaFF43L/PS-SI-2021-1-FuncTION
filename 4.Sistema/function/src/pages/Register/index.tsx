
import React, { useState, useEffect } from 'react'

import './style.css'
import { MdEmail, MdLock, MdAccountCircle, MdBuild } from "react-icons/md"
import { HiEye, HiEyeOff } from "react-icons/hi"
import api from '../../services/api'
import { useHistory } from 'react-router'
import axios from 'axios'
import { saveToken } from '../../services/auth'

interface Departamento {
  id: number
  nome: string
  prioridade: number
  local: string
  created_at: string
  updated_at: string
}

interface Organizacao {
  id: number
  nome: string
  cnpj: string
  email: string
  fone: string
}

function Login() {
   const [email, setEmail] = useState("")
   const [funcao, setFuncao] = useState("")
   const [nome, setNome] = useState("")
   const [departamentos, setDepartamentos] = useState<Departamento[]>([])
   const [organizacaos, setOrganizacaos] = useState<Organizacao[]>([])
   const [departamento, setDepartamento] = useState(0)
   const [organizacao, setOrganizacao] = useState(0)
   const [role, setRole] = useState(0)
   const [password, setPassword] = useState("")
   const [show, setShow] = useState(false)

   const handleClick = (e: { preventDefault: () => void }): void => {
      e.preventDefault()
      setShow(!show);
   }
   const history = useHistory();
   async function handleSubmit(e: { preventDefault: () => void }): Promise<void> {
      const usuario = {
          email,
          password,
          funcao,
          nome,
          role,
          "departamento_id": Number(departamento),
          "organizacao_id": Number(organizacao)
      }
      const response = await api.post('/usuarios', {"usuario": usuario})
      saveToken(response.headers.authorization)
      
      history.push("/app");
   }

   useEffect(() => {
     async function loadDepartamentos() {
      const departamentos = await api.get("/api/v1/departamentos")
      setDepartamentos(departamentos.data)
     }
     async function loadOrganizacoes() {
      const organizacoes = await api.get("/api/v1/organizacaos")
      setOrganizacaos(organizacoes.data)
     }
     loadOrganizacoes()
     loadDepartamentos()

  }, []);
  function handleRoleChange(e: any){
    setRole(e.target.value);
  }
  function handleDepChange(e: any){
    setDepartamento(e.target.value);
  }
  function handleOrgChange(e: any){
    setOrganizacao(e.target.value);
  }

   return (
      <div className="login">
         <div className="login-right">
            <h1>Cadastro de Usuários, Técnicos e Administradores</h1>
            <div className="login-loginInputEmail">
               <MdAccountCircle />
               <input
                  type="text"
                  placeholder="Digite seu nome"
                  value={nome}
                  onChange={e => setNome(e.target.value)}
               />
            </div>

            <div className="login-loginInputEmail">
               <MdEmail />
               <input
                  type="email"
                  placeholder="Digite um email"
                  value={email}
                  onChange={e => setEmail(e.target.value)}
               />
            </div>

            <div className="login-loginInputEmail">
               <MdBuild />
               <input
                  type="text"
                  placeholder="Digite a função"
                  value={funcao}
                  onChange={e => setFuncao(e.target.value)}
               />
            </div>

            <div className="login-loginInputEmail">
               <MdBuild />
               <select onChange={handleRoleChange} className="roleSelect">
                  <option value="0">Selecione uma role</option>
                  <option value="Administrador">Administrador</option>
                  <option value="Técnico">Técnico</option>
                  <option value="Usuário">Usuário</option>
               </select>
          </div>

          <div className="login-loginInputEmail">
               <MdBuild />
               <select onChange={handleDepChange} className="roleSelect">
                <option value="">Selecione um departamento</option>
                  {departamentos.map(departamento => (
                    <option value={departamento.id}>{departamento.nome}</option> 
                  ))}
               </select>
          </div>

          <div className="login-loginInputEmail">
               <MdBuild />
               <select onChange={handleOrgChange} className="roleSelect">
                <option value="">Selecione uma organização</option>
                  {organizacaos.map(organizacao => (
                    <option value={organizacao.id}>{organizacao.nome}</option> 
                  ))}
               </select>
          </div>

            <div className="login-loginInputPassword">
               <MdLock />
               <input
                  placeholder="Digite sua senha"
                  type={show ? "text" : "password"}
                  value={password}
                  onChange={e => setPassword(e.target.value)}
               />
               <div className="login-eye">
                  {show ? (
                     <HiEye
                        size={20}
                        onClick={handleClick}
                     />
                  ) : (
                        <HiEyeOff
                           size={20}
                           onClick={handleClick}
                        />
                     )}
               </div>
            </div>

            <button type="submit"
            onClick={handleSubmit}>
               Criar conta
            </button>
         </div>
      </div>
   )
}

export default Login

