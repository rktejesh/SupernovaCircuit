package com.example.dice_roller

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.ImageView
import java.util.*
class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        val diceImageView = findViewById<ImageView>(R.id.imageview)
        diceImageView.setImageResource(R.drawable.dice_4)
        val rollButton = findViewById<Button>(R.id.rollbutton)
        rollButton.setOnClickListener {
            val randomnumber = Random().nextInt(6)
            when(randomnumber){
                0 -> diceImageView.setImageResource(R.drawable.dice_1)
                1 -> diceImageView.setImageResource(R.drawable.dice_2)
                2 -> diceImageView.setImageResource(R.drawable.dice_3)
                3 -> diceImageView.setImageResource(R.drawable.dice_4)
                4 -> diceImageView.setImageResource(R.drawable.dice_5)
                5 -> diceImageView.setImageResource(R.drawable.dice_6)
            }
        }
    }
}