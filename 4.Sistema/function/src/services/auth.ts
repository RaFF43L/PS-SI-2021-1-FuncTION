export const isAuthenticated = () => {
    return !!localStorage.getItem('token');
    };
export const saveToken = (token: string) => {
    localStorage.setItem('token', token);
    }