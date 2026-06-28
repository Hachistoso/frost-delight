-- 1. Crear la base de datos
CREATE DATABASE IF NOT EXISTS heladeria_db;
USE heladeria_db;

-- 2. Crear tabla de Usuarios (para el login)
CREATE TABLE IF NOT EXISTS usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL, 
    email VARCHAR(100),
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 3. Crear tabla de Productos (para el panel de compras)
CREATE TABLE IF NOT EXISTS productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    descripcion TEXT,
    stock INT DEFAULT 0,
    imagen_url VARCHAR(255)
);

-- 4. Insertar usuarios iniciales (Contraseña de ejemplo: 'password')
INSERT INTO usuarios (username, password) VALUES 
('admin', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
('cliente1', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi');

-- 5. Insertar productos iniciales
INSERT INTO productos (nombre, precio, descripcion, stock) VALUES 
('Chocolate Suizo', 3.50, 'Helado cremoso con trozos de chocolate amargo.', 50),
('Fresa Silvestre', 3.00, 'Helado artesanal con fresas naturales.', 45),
('Vainilla Francesa', 3.00, 'Sabor clásico con vaina de vainilla real.', 60),
('Menta Chip', 3.50, 'Refrescante sabor a menta con chispas de chocolate.', 40),
('Dulce de Leche', 3.75, 'Helado artesanal con veteado de dulce de leche.', 30),
('Mango Tropical', 3.25, 'Sorbete refrescante de mango natural.', 25);
