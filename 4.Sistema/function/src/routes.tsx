import React from 'react';
import { BrowserRouter, Route, Switch, Redirect } from 'react-router-dom';
import Register from './pages/Register';
import Login from './pages/Login'
import { isAuthenticated } from './services/auth';


const PrivateRoute = ({ component: Component, ...rest }: any) =>{
    return (
        <Route {...rest} render={(props) => (
            isAuthenticated() ? 
            (<Component {...props} />) 
            : 
            (<Redirect to={{ pathname: '/login', state: { from: props.location } }} />)
        )}/>
    )
}

const Routes = () => (
    <BrowserRouter>
        <Switch>
            <Route exact path="/register" component={Register} />
            <Route exact path="/login" component={Login} />
            <PrivateRoute exact path="/app" component={()=>(<h1>Você está logado bro!</h1>)} />
        </Switch>  
    </BrowserRouter>
);
export default Routes;