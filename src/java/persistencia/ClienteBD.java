
package persistencia;

import com.thoughtworks.xstream.XStream;
import dominio.Cliente;
import java.io.File;
import java.io.FileWriter;
import java.util.ArrayList;

public class ClienteBD {
    
    private static ArrayList<Cliente> clienteLista = new ArrayList<Cliente>();
    private static String clienteDb = "C:\\Users\\Wellington\\Documents\\NetBeansProjects\\AlfaCadastro\\xmlDB\\clientes.xml";
    
    public static void inserir(Cliente novoCliente) {
        lerXml();
        clienteLista.add(novoCliente);
        salvarXml();
    }

    public static void alterar(Cliente clienteAlterado) {
        excluir(clienteAlterado.getCpf());
        inserir(clienteAlterado);
    }

    public static void excluir(String cpf) {
        lerXml();
        for (int i = 0; i < clienteLista.size(); i++) {
            Cliente cadaCliente = clienteLista.get(i);
            if (cadaCliente.getCpf().equals(cpf)) {
                clienteLista.remove(i);
                break;
            }
        }
        salvarXml();
    }

    public static ArrayList<Cliente> listar() {
        lerXml();
        return clienteLista;
    }

    public static Cliente getByCpf(String cpf) {
        lerXml();
        for (int i=0; i < clienteLista.size(); i++) {
            Cliente cadaCliente = clienteLista.get(i);
            if (cadaCliente.getCpf().equals(cpf)) {
                return cadaCliente;
            }
        }
        return null;
    }
    //O metodo abaixo le os dados do xml e coloca na lista
    public static void lerXml() {
        File arquivo = new File(clienteDb);
        if (arquivo.exists()) {
            //Armazenar XML no vetor
            XStream xstream = new XStream();
            xstream.alias("cliente", Cliente.class);
            clienteLista = (ArrayList<Cliente>) xstream.fromXML(arquivo);
        } else {
            clienteLista = new ArrayList<Cliente>();
        }
    }
    //O metodo abaixo le os dados da lista e coloca no xml
    public static void salvarXml() {
        XStream xstream = new XStream();
        xstream.alias("cliente", Cliente.class);
        try {
            FileWriter escritor = new FileWriter(clienteDb);
            escritor.write(xstream.toXML(clienteLista));
            escritor.close();
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
    }
}
