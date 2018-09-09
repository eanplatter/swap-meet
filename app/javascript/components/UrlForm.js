import React, { Component, Fragment } from 'react'
import styled from 'styled-components'

const Container = styled.div`
  margin: 20px;
`

const FieldWrapper = styled.div`
  display: flex;
  flex-direction: row;
`

const Input = styled.input`
  padding: 10px 20px;
  font-size: 15px;
  border: 1px solid #424242;
  flex: 3;
`

const Prefix = styled.div`
  border-radius: 4px 0 0 4px;
  flex: 0.75;
  font-size: 15px;
  padding: 10px 20px;
  background-color: #424242;
  color: #fff;
`

const SubmitButton = styled.button`
  border-radius: 0 4px 4px 0;
  flex: 0.5;
  font-size: 15px;
  padding: 10px 20px;
  background-color: #424242;
  color: #fff;
  border: 1px solid #424242;
`

class UrlForm extends Component {
  handleChange = e => {
    this.props.onChange(e.target.value)
  }

  handleSubmit = () => {
    this.props.onSubmit()
  }

  render() {
    return (
      <Container>
        <FieldWrapper>
          <Prefix>https://swapi.co/api/</Prefix>
          <Input
            value={this.props.value}
            autoFocus
            onChange={this.handleChange}
            onKeyPress={e =>
              e.key === 'Enter' && this.handleSubmit()
            }
            placeholder="people/1/"
            type="text"
          />
          <SubmitButton onClick={this.handleSubmit}>Request</SubmitButton>
        </FieldWrapper>
      </Container>
    )
  }
}

export default UrlForm
