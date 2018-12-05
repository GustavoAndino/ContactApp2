package com.sandres.tato.contactapp;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListView;

import java.util.ArrayList;

public class MainActivity extends AppCompatActivity {
    ListView lvContactos;
    ArrayList<Contactos> contactos;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        lvContactos=(ListView) findViewById(R.id.lvContactos);
        contactos = new ArrayList<>();
        contactos.add(new Contactos("Carlos", "Alvarez",22232425,"Quezada"));
        contactos.add(new Contactos("Marcelo", "Alvarez",22232426,"Quezada1"));
        contactos.add(new Contactos("Julio", "Andino",22232427,"Quezada2"));
        contactos.add(new Contactos("Natalie", "Coello",22232428,"Quezada3"));
        contactos.add(new Contactos("Julissa", "Zuniga",22232429,"Quezada4"));

        ArrayList<String> nombreContatos = new ArrayList<>();

        for (Contactos contacto: contactos)
            nombreContatos.add(contacto.getNombre()+" "+contacto.getApellido());
        lvContactos.setAdapter(new ArrayAdapter<String>(this,android.R.layout.simple_list_item_1, nombreContatos));
        lvContactos.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int position, long id) {
                Intent intent = new Intent(MainActivity.this,DetalleContacto.class);
                intent.putExtra("NOMBRECONTACTO",contactos.get(position).getNombre());
                intent.putExtra("APELLIDOCONTACTO",contactos.get(position).getApellido());
                intent.putExtra("TELEFONOCONTACTO",contactos.get(position).getTelefono());
                intent.putExtra("DIRECCIONCONTACTO",contactos.get(position).getDireccion());
                        startActivity(intent);
            }
        });

    }
}
