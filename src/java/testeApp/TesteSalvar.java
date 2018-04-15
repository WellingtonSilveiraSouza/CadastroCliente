
package testeApp;

import dominio.Cliente;
import persistencia.ClienteBD;

public class TesteSalvar {
    
    public static void main(String[] args) {
        
        Cliente cliente = new Cliente();
        cliente.setCpf("300");
        cliente.setNome("Joao das Dores");
        
        ClienteBD.inserir(cliente);
        
        System.out.println("Cadastrado com Sucesso!");
        
    }
}
