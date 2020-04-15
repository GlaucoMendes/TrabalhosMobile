import * as React from 'react';
import { Text, View, StyleSheet, Dimensions } from 'react-native';
import { TabView, SceneMap } from 'react-native-tab-view';
import MenuClass from './src/components/MenuClass'
const estilos = StyleSheet.create({
  titulo:{
    fontWeight: 'bold',
    fontSize: 18,
    marginTop: 10,
    marginBottom:10
  }
});
const Seg = () => (
  <View>
    <MenuClass menu={
      {
        backgroundColor: '#ff4081',
        hora: "Almoço:",
        carne1: "Assado de Panela",
        carne2: "Cubos de Frango ao Molho",
        vegetariano: "Goiaba com Água",
        salada: "Acelga com águas submarinas de Itajubá",
        acompanhamento1: "Arroz Branco",
        acompanhamento2: "Arroz Integral",
        acompanhamento3: "Feijão de Corda",
        suco: "Maracujá",
        sobremesa1: "Banana",
        sobremesa2: "Doce"
      }
    }/>
    <MenuClass menu={
      {
        backgroundColor: '#ff4081',
        hora: "Janta:",
        carne1: "Assado de Panela",
        carne2: "Cubos de Frango ao Molho",
        vegetariano: "Goiaba com Água",
        salada: "Acelga com águas submarinas de Itajubá",
        acompanhamento1: "Arroz Branco",
        acompanhamento2: "Arroz Integral",
        acompanhamento3: "Feijão de Corda",
        suco: "Maracujá",
        sobremesa1: "Banana",
        sobremesa2: "Doce"
      }
    }/>
  </View>
);
const Ter = () => (
  <View>
    <MenuClass menu={
      {
        backgroundColor: '#673ab7',
        hora: "Almoço:",
        carne1: "Assado de Panela",
        carne2: "Cubos de Frango ao Molho",
        vegetariano: "Goiaba com Água",
        salada: "Acelga com águas submarinas de Itajubá",
        acompanhamento1: "Arroz Branco",
        acompanhamento2: "Arroz Integral",
        acompanhamento3: "Feijão de Corda",
        suco: "Maracujá",
        sobremesa1: "Banana",
        sobremesa2: "Doce"
      }
    }/>
    <MenuClass menu={
      {
        backgroundColor: '#673ab7',
        hora: "Janta:",
        carne1: "Assado de Panela",
        carne2: "Cubos de Frango ao Molho",
        vegetariano: "Goiaba com Água",
        salada: "Acelga com águas submarinas de Itajubá",
        acompanhamento1: "Arroz Branco",
        acompanhamento2: "Arroz Integral",
        acompanhamento3: "Feijão de Corda",
        suco: "Maracujá",
        sobremesa1: "Banana",
        sobremesa2: "Doce"
      }
    }/>
  </View>
);
const Qua = () => (
  <View>
    <MenuClass menu={
      {
        backgroundColor: '#00FF00',
        hora: "Almoço:",
        carne1: "Assado de Panela",
        carne2: "Cubos de Frango ao Molho",
        vegetariano: "Goiaba com Água",
        salada: "Acelga com águas submarinas de Itajubá",
        acompanhamento1: "Arroz Branco",
        acompanhamento2: "Arroz Integral",
        acompanhamento3: "Feijão de Corda",
        suco: "Maracujá",
        sobremesa1: "Banana",
        sobremesa2: "Doce"
      }
    }/>
    <MenuClass menu={
      {
        backgroundColor: '#00FF00',
        hora: "Janta:",
        carne1: "Assado de Panela",
        carne2: "Cubos de Frango ao Molho",
        vegetariano: "Goiaba com Água",
        salada: "Acelga com águas submarinas de Itajubá",
        acompanhamento1: "Arroz Branco",
        acompanhamento2: "Arroz Integral",
        acompanhamento3: "Feijão de Corda",
        suco: "Maracujá",
        sobremesa1: "Banana",
        sobremesa2: "Doce"
      }
    }/>
  </View>
);
const Qui = () => (
  <View>
    <MenuClass menu={
      {
        backgroundColor: '#8B4513',
        hora: "Almoço:",
        carne1: "Assado de Panela",
        carne2: "Cubos de Frango ao Molho",
        vegetariano: "Goiaba com Água",
        salada: "Acelga com águas submarinas de Itajubá",
        acompanhamento1: "Arroz Branco",
        acompanhamento2: "Arroz Integral",
        acompanhamento3: "Feijão de Corda",
        suco: "Maracujá",
        sobremesa1: "Banana",
        sobremesa2: "Doce"
      }
    }/>
    <MenuClass menu={
      {
        backgroundColor: '#8B4513',
        hora: "Janta:",
        carne1: "Assado de Panela",
        carne2: "Cubos de Frango ao Molho",
        vegetariano: "Goiaba com Água",
        salada: "Acelga com águas submarinas de Itajubá",
        acompanhamento1: "Arroz Branco",
        acompanhamento2: "Arroz Integral",
        acompanhamento3: "Feijão de Corda",
        suco: "Maracujá",
        sobremesa1: "Banana",
        sobremesa2: "Doce"
      }
    }/>
  </View>
);
const Sex = () => (
  <View>
    <MenuClass menu={
      {
        backgroundColor: '#8A2BE2',
        hora: "Almoço:",
        carne1: "Assado de Panela",
        carne2: "Cubos de Frango ao Molho",
        vegetariano: "Goiaba com Água",
        salada: "Acelga com águas submarinas de Itajubá",
        acompanhamento1: "Arroz Branco",
        acompanhamento2: "Arroz Integral",
        acompanhamento3: "Feijão de Corda",
        suco: "Maracujá",
        sobremesa1: "Banana",
        sobremesa2: "Doce"
      }
    }/>
    <MenuClass menu={
      {
        backgroundColor: '#8A2BE2',
        hora: "Janta:",
        carne1: "Assado de Panela",
        carne2: "Cubos de Frango ao Molho",
        vegetariano: "Goiaba com Água",
        salada: "Acelga com águas submarinas de Itajubá",
        acompanhamento1: "Arroz Branco",
        acompanhamento2: "Arroz Integral",
        acompanhamento3: "Feijão de Corda",
        suco: "Maracujá",
        sobremesa1: "Banana",
        sobremesa2: "Doce"
      }
    }/>
  </View>
);
 
const initialLayout = { width: Dimensions.get('window').width };
 
export default function Menu() {
  const [index, setIndex] = React.useState(0);
  const [routes] = React.useState([
    { key: 'seg', title: 'Segunda' },
    { key: 'ter', title: 'Terça' },
    { key: 'qua', title: 'Quarta' },
    { key: 'qui', title: 'Quinta' },
    { key: 'sex', title: 'Sexta' },
  ]);
 
  const renderScene = SceneMap({
    seg: Seg,
    ter: Ter,
    qua: Qua,
    qui: Qui,
    sex: Sex,
  });
 
  return (
    
    <TabView
      navigationState={{ index, routes }}
      renderScene={renderScene}
      onIndexChange={setIndex}
      initialLayout={initialLayout}
    />
  );
}
 
const styles = StyleSheet.create({
  scene: {
    flex: 1,
  },
});