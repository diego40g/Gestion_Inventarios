package ec.edu.istpet.inventario;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

/**
 * Tests para el Sistema de Gestión de Inventarios
 */
class MainTest {

	@Test
	void testMainExists() {
		// Verificar que la clase Main existe y tiene el método main
		assertDoesNotThrow(() -> {
			Main.main(new String[] {});
		});
	}

}
