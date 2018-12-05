package com.sandres.tato.contactapp;

import android.Manifest;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.support.v4.app.ActivityCompat;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;

public class DetalleContacto extends AppCompatActivity {

    TextView tvNombre, tvTelefono, tvApellido, tvDireccion;
    RelativeLayout relativeLayout;
    Button button;
    int telefono;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_detalle_contacto);

        Bundle bundle = getIntent().getExtras();
        String nombre = bundle.getString("NOMBRECONTACTO");
        String apellido = bundle.getString("APELLIDOCONTACTO");
        telefono = bundle.getInt("TELEFONOCONTACTO");
        String direccion = bundle.getString("DIRECCIONCONTACTO");

        tvNombre = (TextView) findViewById(R.id.tvNombre);
        tvApellido = (TextView) findViewById(R.id.tvApellido);
        tvTelefono = (TextView) findViewById(R.id.tvTelefono);
        tvDireccion = (TextView) findViewById(R.id.tvDireccion);
        relativeLayout = (RelativeLayout) findViewById(R.id.rlCall);
        button=(Button) findViewById(R.id.btnCall);

        tvNombre.setText(nombre);
        tvApellido.setText(apellido);
        tvTelefono.setText(""+telefono);
        tvDireccion.setText(direccion);


        relativeLayout.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(Intent.ACTION_CALL, Uri.parse("tel:" + telefono));
                if (ActivityCompat.checkSelfPermission(getApplicationContext(), Manifest.permission.CALL_PHONE) != PackageManager.PERMISSION_GRANTED) {
                    // TODO: Consider calling
                    //    ActivityCompat#requestPermissions
                    // here to request the missing permissions, and then overriding
                    //   public void onRequestPermissionsResult(int requestCode, String[] permissions,
                    //                                          int[] grantResults)
                    // to handle the case where the user grants the permission. See the documentation
                    // for ActivityCompat#requestPermissions for more details.
                    Toast.makeText(DetalleContacto.this, "Falta Activar Permiso de LLamadas Debe Activar el Permiso en Configuracion de la  Aplicacion",Toast.LENGTH_SHORT).show();
                    return;
                }
                startActivity(intent);
            }
        });

    }
    public void LLAMAR(View v){
        Intent intent = new Intent(Intent.ACTION_CALL, Uri.parse("tel:" + telefono));
        if (ActivityCompat.checkSelfPermission(getApplicationContext(), Manifest.permission.CALL_PHONE) != PackageManager.PERMISSION_GRANTED) {
            // TODO: Consider calling
            //    ActivityCompat#requestPermissions
            // here to request the missing permissions, and then overriding
            //   public void onRequestPermissionsResult(int requestCode, String[] permissions,
            //                                          int[] grantResults)
            // to handle the case where the user grants the permission. See the documentation
            // for ActivityCompat#requestPermissions for more details.
            Toast.makeText(DetalleContacto.this, "Falta Activar Permiso de LLamadas Debe Activar el Permiso en Configuracion de la  Aplicacion",Toast.LENGTH_SHORT).show();
            return;
        }
        startActivity(intent);
    }
}
