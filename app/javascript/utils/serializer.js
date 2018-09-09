const convertJsonToArr = data => {
  let key = ''
  for (key in data) {
    if (data[key][0] === '[') {
      data[key] = JSON.parse(data[key])
    }
  }
  return data
}

export const serialize = data => {
  if (Array.isArray(data)) {
    data.map(convertJsonToArr)
  } else {
    data = convertJsonToArr(data)
  }
  return data
}

export const normalizedUrl = url => {
  console.log('going to normalize', url)
  if (url.startsWith('http')) {
    return url.split('/').slice(4,6).join('/')
  }
  return url
}
