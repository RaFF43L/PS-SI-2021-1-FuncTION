import React from 'react';
import { BrowserRouter, Route, Switch } from 'react-router-dom';
import Register from './pages/Register';
const Routes = () => (
    <BrowserRouter>
        <Switch>
            <Route exact path="/" component={Register} />
        </Switch>  
    </BrowserRouter>
);
export default Routes;