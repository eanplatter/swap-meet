import { localInstance } from './axiosInstances'

function cleanData(data) {
  data.swapi_url = data.url
  return data
}

export function cacheData(url, data) {
  if (data.results && Array.isArray(data.results)) return
  console.log('caching data')
  const pieces = url.split('/')
  const resource = pieces[0]
  localInstance.post(`${resource}/`, { ...cleanData(data) })
}
