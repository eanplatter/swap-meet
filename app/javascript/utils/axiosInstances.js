import axios from 'axios'

export const swapiInstance = axios.create({
  baseURL: 'https://swapi.co/api/',
  timeout: 10000,
})

export const localInstance = axios.create({
  baseURL: 'http://localhost:3000/',
  timeout: 10000,
})
