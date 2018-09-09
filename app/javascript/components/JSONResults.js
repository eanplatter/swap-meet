import React, { Component, Fragment } from 'react'
import styled from 'styled-components'
import brace from 'brace'
import AceEditor from 'react-ace'
import $ from 'jquery'
import 'brace/mode/json'
import 'brace/theme/github'

const Container = styled.div`
  margin: 20px;
`

const FieldWrapper = styled.div`
  display: flex;
  flex-direction: column;
`

const Data = styled(AceEditor)`
  padding: 10px 20px;
  font-size: 15px;
  border: 1px solid #424242;
  margin: 0 auto;
  border-radius: 4px;
`

const DataGroup = styled.div`
  display: flex;
  flex-direction: column;
  width: 100%;
`

const Button = styled.button`
  margin: 5px;
  padding: 10px 20px;
  font-size: 15px;
  background: #424242;
  border-radius: 4px;
  color: #fff;
  max-width: 500px;
  cursor: pointer;
`

class JSONResults extends Component {
  formatData = data => {
    if (data && data.results && Array.isArray(data.results)) {
      return data.results
    }
    return Array.isArray(data) ? data : [data]
  }
  renderButtons = data => {
    let key = ''
    const buttons = []
    for (key in data) {
      if (Array.isArray(data[key])) {
        buttons.push({ key, value: data[key] })
      }
    }
    return buttons.map(b => (
      <DataGroup>
        <h4>{b.key}</h4>
        {b.value.map(v => (
          <Button onClick={() => this.props.onClick(v)}>{v}</Button>
        ))}
      </DataGroup>
    ))
  }

  render() {
    const renderableData = this.formatData(this.props.data)
    return (
      <Container>
        <FieldWrapper>
          {this.props.data &&
            renderableData.map(d => (
              <DataGroup key={d.name}>
                <Data
                  model="json"
                  theme="github"
                  width="90%"
                  value={JSON.stringify(d, null, 2)}
                />
                {this.renderButtons(d)}
              </DataGroup>
            ))}
        </FieldWrapper>
      </Container>
    )
  }
}

export default JSONResults
