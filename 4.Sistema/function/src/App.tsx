
import React from 'react'
import './App.css';
import Router from './routes';
import ErrorBoundary from './components/ErrorBoundary';

function App(): JSX.Element {
  return (
    <div className="app">
      <ErrorBoundary>
       <Router/>
       </ErrorBoundary>
    </div>
  );
}

export default App;