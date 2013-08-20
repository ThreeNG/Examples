package com.powervr.OGLES2ParticleSystem;

import android.app.NativeActivity;
import android.os.Bundle;
import android.widget.Toast;
import android.view.Gravity;

public class OGLES2ParticleSystem extends NativeActivity
{
    @Override
    protected void onCreate (Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
    }

    public void displayExitMessage(final String text) 
    {
        runOnUiThread(new Runnable() {
	    public void run() {
	    	Toast toast = Toast.makeText(getApplicationContext(), text, Toast.LENGTH_LONG);
	    	toast.setGravity(Gravity.CENTER, 0, 0);
	    	toast.show();
	    }
        });
    }
}
