
import './App.css';
import axios from 'axios';
import {useState, useEffect} from 'react';

interface Player {
  id: number;
  first_name: string;
  last_name: string;
  cost: number;
  projection: number;
}

function App() {

  const [data, setData] = useState([]);

  useEffect(() => {
    axios
    .get('/players')
    .then(res => res.data)
    .then(data => setData(data));
  }, []);

  return (
    <div>
      <table>
        <thead>
          <tr>
            <th>Player</th>
            <th>Cost</th>
            <th>Projection</th>
          </tr>
        </thead>
          <tbody>
            { data.map((item: Player) => (
              <tr key={item.id}>
                <td>{item.first_name + ' ' + item.last_name}</td>
                <td>{item.cost}</td>
                <td>{item.projection}</td>
              </tr>
            ))}
          </tbody>
        </table> 
      </div>
  )};

export default App;