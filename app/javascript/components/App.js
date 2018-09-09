import React, { Component, Fragment } from 'react'
import styled from 'styled-components'

import UrlForm from './UrlForm'
import JSONResults from './JSONResults'
import { swapiInstance, localInstance } from '../utils/axiosInstances'
import { cacheData } from '../utils/cache'
import { serialize, normalizedUrl } from '../utils/serializer'

const Wrapper = styled.div`
  border-radius: 4px;
  margin: 0 auto;
  border: 1px solid #fff;
  max-width: 1000px;
  background-color: #d6d6d6;
`

const ViewButtons = styled.div`
  display: flex;
  width: 100%;
  justify-content: center;
`

const Button = styled.button`
  font-size: 15px;
  padding: 10px 14px;
  color: #fff
  flex: 0.1;
`

class App extends Component {
  state = {
    urlValue: 'people',
    data: null,
    error: null,
  }

  handleSwapiFetch = url => {
    swapiInstance
      .get(url)
      .then(res => {
        this.setState(
          {
            data: res.data,
            error: null,
          },
          () => cacheData(url, res.data),
        )
      })
      .catch(e => {
        this.setState({ error: e, data: e.response.status })
      })
  }

  handleSubmit = inputUrl => {
    const url = normalizedUrl(this.state.urlValue)
    localInstance
      .get(url, { params: { format: 'json' } })
      .then(res => {
        if ((Array.isArray(res.data), res.data.length === 0))
          return this.handleSwapiFetch(url)
        this.setState({
          data: serialize(res.data),
          error: null,
        })
      })
      .catch(({ response: { status } }) => {
        if (status === 404 || status === 500) {
          this.handleSwapiFetch(url)
        }
      })
  }

  handleClick = value => {
    this.setState({ urlValue: normalizedUrl(value) }, () => {
      this.handleSubmit()
    })
  }

  handleChangeUrl = url => {
    this.setState({ urlValue: normalizedUrl(url) })
  }

  render() {
    return (
      <Fragment>
        <Wrapper>
          <div>
            <UrlForm
              onChange={this.handleChangeUrl}
              value={this.state.urlValue}
              onSubmit={this.handleSubmit}
            />
            <JSONResults onClick={this.handleClick} data={this.state.data} />
          </div>
        </Wrapper>
      </Fragment>
    )
  }
}

export default App
