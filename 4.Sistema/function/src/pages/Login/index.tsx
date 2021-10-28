
import React, { useState } from 'react'
import './style.css'

import { Link, useHistory } from 'react-router-dom'
import { MdEmail, MdLock } from "react-icons/md"
import { HiEye, HiEyeOff } from "react-icons/hi"
import Register from '../Register'
import api from '../../services/api'
import { saveToken } from '../../services/auth'

function Login() {
   const [email, setEmail] = useState("")
   const [password, setPassword] = useState("")
   const [show, setShow] = useState(false)
   const history = useHistory();
   const handleClick = (e: { preventDefault: () => void }): void => {
      e.preventDefault()
      setShow(!show);
   }

   async function handleSubmit(e: { preventDefault: () => void }): Promise<void> {
      const usuario = {
          email,
          password,
      }
      const response = await api.post('/usuarios/sign_in', {"usuario": usuario})
      saveToken(response.headers.authorization)
      
      history.push("/app");
   }

   return (
      <div className="login">
        

         <div className="login-right">
            <h1>Bem vindo(a) ao funcTION</h1>
            <h2>Faça login para continuar</h2>

            <div className="login-loginInputEmail">
               <MdEmail />
               <input
               
                  type="email"
                  required
                  placeholder="Digite um email"
                  value={email}
                  onChange={e => setEmail(e.target.value)
                   
                  }
               />
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
               Entrar
            </button>

            <h4>Não tenho conta!</h4>

            <Link className="btn-link" to={"/register"}>
               Cadastrar
            </Link>
         </div>
      </div>
   )
}

export default Login

