function agregar_producto (){
    newform =  document.createElement("form");
    newform.name = "producto";
    newform.action = "ServletABMProducto";
    producto = document.createElement("div");
    accion = document.createElement("input");
    accion.type = "hidden";
    accion.name = "accion";
    accion.value = "add";
    descripcion = document.createElement("input");
    precio = document.createElement("input");
    categoria = document.createElement("input");
    guardar = document.createElement("input");
    descripcion.type = "text";
    descripcion.value = "";
    descripcion.name = "descripcion";
    precio.type = "text";
    precio.value = "";
    precio.name = "precio";
    categoria.type = "text";
    categoria.value = "";
    categoria.name = "categoria";
    guardar.type = "submit";
    guardar.value = "Guardar";
    newform.appendChild(descripcion);
    newform.appendChild(precio);
    newform.appendChild(categoria);
    newform.appendChild(accion);
    newform.appendChild(guardar);
    producto.appendChild(newform);
    document.getElementsByName('table')[0].appendChild(producto);
    document.getElementById("add").onclick = "";
    
}
function agregar_categoria (){
    newform =  document.createElement("form");
    newform.name = "categoria";
    newform.action = "ServletABMCategoria";
    categoria = document.createElement("div");
    accion = document.createElement("input");
    accion.type = "hidden";
    accion.name = "accion";
    accion.value = "add";
    descripcion = document.createElement("input");
    descripcion.type = "text";
    descripcion.value = "";
    descripcion.name = "descripcion";
    guardar = document.createElement("input");
    guardar.type = "submit";
    guardar.value = "Guardar";
    newform.appendChild(descripcion);
    newform.appendChild(accion);
    newform.appendChild(guardar);
    categoria.appendChild(newform);
    document.getElementsByName('table')[0].appendChild(categoria);
    document.getElementById("add").onclick = "";
}