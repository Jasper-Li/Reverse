package com.example.reverse2_1;

import android.app.Activity;
import android.os.Bundle;
import android.view.Menu;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;



import android.view.MenuItem;
import android.support.v4.app.NavUtils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;


public class MainActivity extends Activity {

	private EditText edit_userName;
	private EditText edit_sn;
	private Button btn_register;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		setTitle(R.string.unregister); // add later
		edit_userName = (EditText) findViewById(R.id.edit_username);
		edit_sn = (EditText) findViewById(R.id.edit_sn);
		btn_register = (Button)findViewById(R.id.button_register);
		btn_register.setOnClickListener(new OnClickListener()
		{
			public void onClick(View v)
			{
				if(!checkSN(edit_userName.getText().toString().trim(),
						edit_sn.getText().toString().trim()
						)
				)
				{
					Toast.makeText(MainActivity.this, 
							R.string.unsuccessed, // toast unsuccessed
							Toast.LENGTH_SHORT).show();
				}
				else
				{
					Toast.makeText(MainActivity.this,
							R.string.successed,
							Toast.LENGTH_SHORT).show();
					btn_register.setEnabled(false);
					setTitle(R.string.registered);
				}
			}
		}
		);
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.main, menu);
		return true;
	}
	private boolean checkSN(String userName, String sn)
	{
		return userName.equals(sn);
		
	}
}
