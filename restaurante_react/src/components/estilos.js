import {StyleSheet} from 'react-native'
export const estilos = StyleSheet.create({
    titulo:{
      fontWeight: 'bold',
      fontSize: 18,
      marginTop: 10,
      marginBottom:10
    },
    menu:{
        flex: 1,
        //flexDirection: 'row',
        alignItems: 'center',
        justifyContent: 'center',
        textAlign: "center"
    },
    menuInterno:{
        margin: 5,
        paddingLeft: 10,
        paddingRight: 10,
        borderWidth: 1,
        borderRadius: 20,
        alignItems: 'center',
      
    },
    tituloInterno:{
        width: '50%',
        borderWidth: 1,
        borderRadius: 20,
        
    },
    scene: {
        flex: 1,
      },
  });