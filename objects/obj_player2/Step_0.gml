/// @description movimiento y sprite

//movimiento del pj
if global.pvp
{
	if x==xfin
	{
		speed = 0;
		if keyboard_check(vk_right) && x<xstart+384
		{
			xfin = x+192;
			TweenEasyMove(x,y,xfin,y,0,room_speed/(global.modi*2), EaseInOutQuart);
			pos+=1;
		}
		if keyboard_check(vk_left) && x>xstart
		{
			
			xfin = x-192;
			TweenEasyMove(x,y,xfin,y,0,room_speed/(global.modi*2), EaseInOutQuart);
			pos-=1;
		}
		if keyboard_check(vk_down) && !cd
		{
			if !(global.municion2[0]==obj_adc && naves[pos][1]==1)||(global.municion2[0]==obj_top && naves[pos][0]==1)
			{
				if global.municion2[0]==obj_adc naves[pos][1]=1;
				else if global.municion2[0]==obj_top naves[pos][0]=1;
				instance_create_layer(x,y-64,"Instances",global.municion2[0]);
				global.municion2[0]=choose(obj_adc,obj_kamikaze,obj_top);
				cd=true;
				alarm[0]=room_speed/global.modi;
			}
		}
		if keyboard_check(vk_up) && !scd
		{
			aux=global.municion2[0];
			global.municion2[0]=global.municion2[1];
			global.municion2[1]=aux;
			scd=true;
			alarm[1]=room_speed/global.modi;
		}
	}
}
else
{
	if x<xfin && (auxi || x==xstart+192)
	{
		auxi=false
		TweenEasyMove(x,y,x+192,y,0,room_speed/(global.modi*2), EaseInOutQuart);
	}
	else if x>xfin && (auxi || x==xstart+192)
	{
		auxi=false
		TweenEasyMove(x,y,x-192,y,0,room_speed/(global.modi*2), EaseInOutQuart);
	}
	else if x==xfin && !scd
	{
		scd=true;
		alarm[1]=room_speed*1.5/global.modi;
		auxi=true;
		speed = 0;

		if !((naves[pos][1]==1)||(naves[pos][0]==1)) && !cd
		{
			if global.municion2[0]==obj_adc naves[pos][1]=1;
			else if global.municion2[0]==obj_top naves[pos][0]=1;
			instance_create_layer(x,y-64,"Instances",global.municion2[0]);
			global.municion2[0]=choose(obj_adc,obj_kamikaze,obj_top);
			cd=true;
			alarm[0]=room_speed/global.modi;
		}
		c1=0;
		c2=0;
		c3=0;
		s1=0;
		s2=0;
		s3=0;
		aux1=false;
		aux2=false;
		aux3=false;
		if global.municion2[0] == obj_kamikaze
		{
			if (obj_player1.naves[0][1]=0 && obj_player1.naves[0][0]=0) && (naves[0][1]=0 && naves[0][0]=0)  && c1<15 c1=15;
			else if obj_player1.naves[0][1]=1 && c1<10 && (naves[0][1]=0 && naves[0][0]=0) c1=10;
			else if obj_player1.naves[0][0]=1 && c1<5 && (naves[0][1]=0 && naves[0][0]=0) c1=5;
			if obj_player1.naves[1][1]=1 && obj_player1.naves[1][0]=1 && (naves[1][1]=0 && naves[1][0]=0) && c2<15 c2=15;
			else if obj_player1.naves[1][1]=1 && c2<10 && (naves[1][1]=0 && naves[1][0]=0) c2=10;
			else if obj_player1.naves[1][0]=1 && c2<5 && (naves[1][1]=0 && naves[1][0]=0) c2=5;
			if obj_player1.naves[2][1]=1 && obj_player1.naves[2][0]=1 && (naves[2][1]=0 && naves[2][0]=0) && c2<15 c3=15;
			else if obj_player1.naves[2][1]=1 && c3<10 && (naves[2][1]=0 && naves[2][0]=0) c3=10;
			else if obj_player1.naves[2][0]=1 && c3<5 && (naves[2][1]=0 && naves[2][0]=0) c3=5;
		}
		else if global.municion2[1] == obj_kamikaze
		{
			if (obj_player1.naves[0][1]=0 && obj_player1.naves[0][0]=0) && (naves[0][1]=0 && naves[0][0]=0)  && s1<15 s1=15;
			else if obj_player1.naves[0][1]=1 && s1<10 && (naves[0][1]=0 && naves[0][0]=0) s1=10;
			else if obj_player1.naves[0][0]=1 && s1<5 && (naves[0][1]=0 && naves[0][0]=0) s1=5;
			if obj_player1.naves[1][1]=1 && obj_player1.naves[1][0]=1 && (naves[1][1]=0 && naves[1][0]=0) && s2<15 s2=15;
			else if obj_player1.naves[1][1]=1 && s2<10 && (naves[1][1]=0 && naves[1][0]=0) s2=10;
			else if obj_player1.naves[1][0]=1 && s2<5 && (naves[1][1]=0 && naves[1][0]=0) s2=5;
			if obj_player1.naves[2][1]=1 && obj_player1.naves[2][0]=1 && (naves[2][1]=0 && naves[2][0]=0) && s2<15 s3=15;
			else if obj_player1.naves[2][1]=1 && s3<10 && (naves[2][1]=0 && naves[2][0]=0) s3=10;
			else if obj_player1.naves[2][0]=1 && s3<5 && (naves[2][1]=0 && naves[2][0]=0) s3=5;
		}
		if global.municion2[0] == obj_adc 
		{
			if (obj_player1.naves[0][1]=0 && obj_player1.naves[0][0]=0) && (naves[0][1]=0 && naves[0][0]=0) && c1<14 c1=14;
			else if obj_player1.naves[0][1]=1 && c1<6 && (naves[0][1]=0 && naves[0][0]=0) c1=6;
			else if obj_player1.naves[0][0]=1 && c1<11 && (naves[0][1]=0 && naves[0][0]=0) c1=11;
			if obj_player1.naves[1][1]=1 && obj_player1.naves[1][0]=1 && (naves[1][1]=0 && naves[1][0]=0) && c2<14 c2=14;
			else if obj_player1.naves[1][1]=1 && c2<6 && (naves[1][1]=0 && naves[1][0]=0) c2=6;
			else if obj_player1.naves[1][0]=1 && c2<11 && (naves[1][1]=0 && naves[1][0]=0) c2=11;
			if obj_player1.naves[2][1]=1 && obj_player1.naves[2][0]=1 && (naves[2][1]=0 && naves[2][0]=0) && c2<14 c3=14;
			else if obj_player1.naves[2][1]=1 && c3<6 && (naves[2][1]=0 && naves[2][0]=0) c3=6;
			else if obj_player1.naves[2][0]=1 && c3<11 && (naves[2][1]=0 && naves[2][0]=0) c3=11;
		}
		else if global.municion2[1] == obj_adc
		{
			if (obj_player1.naves[0][1]=0 && obj_player1.naves[0][0]=0) && (naves[0][1]=0 && naves[0][0]=0) && s1<14 s1=14;
			else if obj_player1.naves[0][1]=1 && s1<6 && (naves[0][1]=0 && naves[0][0]=0) s1=6;
			else if obj_player1.naves[0][0]=1 && s1<11 && (naves[0][1]=0 && naves[0][0]=0) s1=11;
			if obj_player1.naves[1][1]=1 && obj_player1.naves[1][0]=1 && (naves[1][1]=0 && naves[1][0]=0) && s2<14 s2=14;
			else if obj_player1.naves[1][1]=1 && s2<6  && (naves[1][1]=0 && naves[1][0]=0) s2=6;
			else if obj_player1.naves[1][0]=1 && s2<11  && (naves[1][1]=0 && naves[1][0]=0) s2=11;
			if obj_player1.naves[2][1]=1 && obj_player1.naves[2][0]=1 && (naves[2][1]=0 && naves[2][0]=0) && s2<14 s3=14;
			else if obj_player1.naves[2][1]=1 && s3<6 && (naves[2][1]=0 && naves[2][0]=0) s3=6;
			else if obj_player1.naves[2][0]=1 && s3<11 && (naves[2][1]=0 && naves[2][0]=0) s3=11;
		}
		if global.municion2[0] == obj_top
		{
			if (obj_player1.naves[0][1]=0 && obj_player1.naves[0][0]=0) && (naves[0][1]=0 && naves[0][0]=0) && c1<13 c1=13;
			else if obj_player1.naves[0][1]=1 && c1<4 && (naves[0][1]=0 && naves[0][0]=0) c1=4;
			else if obj_player1.naves[0][0]=1 && c1<9 && (naves[0][1]=0 && naves[0][0]=0) c1=9;
			if obj_player1.naves[1][1]=1 && obj_player1.naves[1][0]=1 && (naves[1][1]=0 && naves[1][0]=0) && c2<13 c2=13;
			else if obj_player1.naves[1][1]=1 && c2<4 && (naves[1][1]=0 && naves[1][0]=0) c2=4;
			else if obj_player1.naves[1][0]=1 && c2<9 && (naves[1][1]=0 && naves[1][0]=0) c2=9;
			if obj_player1.naves[2][1]=1 && obj_player1.naves[2][0]=1 && (naves[2][1]=0 && naves[2][0]=0) && c3<13 c3=13;
			else if obj_player1.naves[2][1]=1 && c3<4 && (naves[2][1]=0 && naves[2][0]=0) c3=4;
			else if obj_player1.naves[2][0]=1 && c3<9 && (naves[2][1]=0 && naves[2][0]=0) c3=9;
		}
		else if  global.municion2[1] == obj_top
		{
			if (obj_player1.naves[0][1]=0 && obj_player1.naves[0][0]=0) && (naves[0][1]=0 && naves[0][0]=0) && s1<13 s1=13;
			else if obj_player1.naves[0][1]=1 && s1<4 && (naves[0][1]=0 && naves[0][0]=0) s1=4;
			else if obj_player1.naves[0][0]=1 && s1<9 && (naves[0][1]=0 && naves[0][0]=0) s1=9;
			if obj_player1.naves[1][1]=1 && obj_player1.naves[1][0]=1 && (naves[1][1]=0 && naves[1][0]=0) && s2<13 s2=13;
			else if obj_player1.naves[1][1]=1 && s2<4 && (naves[1][1]=0 && naves[1][0]=0) s2=4;
			else if obj_player1.naves[1][0]=1 && s2<9 && (naves[1][1]=0 && naves[1][0]=0) s2=9;
			if obj_player1.naves[2][1]=1 && obj_player1.naves[2][0]=1 && (naves[2][1]=0 && naves[2][0]=0) && s3<13 s3=13;
			else if obj_player1.naves[2][1]=1 && s3<4 && (naves[2][1]=0 && naves[2][0]=0) s3=4;
			else if obj_player1.naves[2][0]=1 && s3<9 && (naves[2][1]=0 && naves[2][0]=0) s3=9;
		}
		if s1>c1
		{
			aux1=true;
			c1=s1;
		}
		if s2>c2
		{
			aux2=true;
			c2=s2;
		}
		if s3>c3
		{
			aux3=true;
			c3=s3;
		}
		q=0;
		if c1==c2 && c1==c3
		{
			q=choose(1,2,3);
		}
		else if c1 == c2 && c1>c3 q=choose(1,2);
		else if c1 == c3 && c1>c2 q=choose(1,3);
		else if c3 == c2 && c2>c1 q=choose(2,3);
		if q == 1
		{
			c1=10;
			c2=0;
			c3=0;
		}
		else if q==2
		{
			c1=0;
			c2=10;
			c3=0;
		}
		else if q==3
		{
			c1=0;
			c2=0;
			c3=10;
		}
		if c1>c2 && c1>c3
		{
			xfin=xstart;
			pos=0;
			if aux1 
			{
				aux=global.municion2[0];
				global.municion2[0]=global.municion2[1];
				global.municion2[1]=aux;
			}
		}
		else if c2>c1 && c2>c3 
		{
			xfin=xstart+192;
			pos=1;
			if aux2 
			{
				aux=global.municion2[0];
				global.municion2[0]=global.municion2[1];
				global.municion2[1]=aux;
			}
		}
		else if c3>c2 && c3>c1 
		{
			xfin=xstart+384;
			pos=2;
			if aux3 
			{
				aux=global.municion2[0];
				global.municion2[0]=global.municion2[1];
				global.municion2[1]=aux;
			}
		}
	}
}