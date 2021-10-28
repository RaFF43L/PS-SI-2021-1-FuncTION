import React from 'react';
import { BrowserRouter, Route, Switch } from 'react-router-dom';
import Register from './pages/Register';
import Login from './pages/Login'

const Routes = () => (
    <BrowserRouter>
        <Switch>
            <Route exact path="/" component={Register} />
            <Route exact path="/login" component={Login} />
        </Switch>  
    </BrowserRouter>
);
export default Routes;