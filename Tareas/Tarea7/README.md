# Sistema de ventas basado en el modelo relacional
Se desea realizar una BD que permita apoyar la gestión de un sistema de ventas. La empresa necesita llevar un control de proveedores, clientes, productos y ventas.

Un proveedor tiene un identificador, nombre, dirección, teléfono y página web.
    Un cliente también tiene identificador, nombre, dirección, pero puede tener varios teléfonos de contacto. La dirección se entiende por calle, número, provincia y ciudad.
    Un producto tiene un identificador único, nombre, precio actual, stock y nombre del proveedor. Además se organizan en categorías, y cada producto va sólo en una categoría. Una categoría tiene id, nombre y descripción.
    Por razones de contabilidad, se debe registrar la información de cada venta con un id, fecha, cliente, descuento y monto final.
    Además se debe guardar el precio al momento de la venta, la cantidad vendida y el monto total por el producto.

![<Imagen 1>](<https://github.com/jpexposito/base-datos/blob/main/MR/tareas/tarea2/img/sistema-venta-Paso-2.drawio.png>)

![<Imagen 2>](<https://github.com/Yaamiilaa/base-datos-bae-/blob/main/Tareas/Tarea7/img/Sistema%20de%20ventas%20Modelo%20Relacional.png>)