import React, {Component} from 'react'
import {View, Text} from 'react-native'
import {estilos} from './estilos'
const MenuClass = (props) => {
        return(
            <View style={[estilos.menu, {backgroundColor: props.menu.backgroundColor}]}>      
                <View style={estilos.menuInterno}>
                <Text style={[estilos.titulo, estilos.tituloInterno]}>{props.menu.hora}</Text>
                    <Text style={estilos.titulo}>Principal:</Text>
                    <Text>{props.menu.carne1}</Text>
                    <Text>{props.menu.carne2}</Text>
                    <Text style={estilos.titulo}>Vegetariano:</Text>
                    <Text>{props.menu.vegetariano}</Text>
                    <Text style={estilos.titulo}>Salada:</Text>
                    <Text>{props.menu.salada}</Text>
                    <Text style={estilos.titulo}>Acompanhamentos:</Text>
                    <Text>{props.menu.acompanhamento1}</Text>
                    <Text>{props.menu.acompanhamento2}</Text>
                    <Text>{props.menu.acompanhamento3}</Text>
                    <Text style={{fontWeight: 'bold', fontSize: 18, marginTop: 10, marginBottom:10}}>Suco:</Text>
                    <Text>{props.menu.suco}</Text>
                    <Text style={{fontWeight: 'bold', fontSize: 18, marginTop: 10, marginBottom:10}}>Sobremesa:</Text>
                    <Text>{props.menu.sobremesa1}</Text>
                    <Text>{props.menu.sobremesa2}</Text>
                </View>

                
            </View>
            
        )
}

export default MenuClass