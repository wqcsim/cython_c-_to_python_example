#include<assert.h>
#include"Rectangle.h"

namespace shape{
	Rectangle::Rectangle(int x0,int y0,int x1,int y1):x0(x0),y0(y0),x1(x1),y1(y1){}
	
	Rectangle::Rectangle(){}

	int Rectangle::getArea()
	{
		return (x0 - x1) * (y0 - y1);
	}

	void Rectangle::getSize(int * width,int * height)
	{
		assert(width != nullptr && height != nullptr);
		*width = x1 - x0;
		*height = y1 - y0;
	}

	Rectangle::~Rectangle(){}

	void Rectangle::move(int dx,int dy)
	{
		x1 += dx;
		x0 += dx;
		y1 += dy;
		y0 += dy;
	}
}
