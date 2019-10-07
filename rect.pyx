cimport rect

cdef class Rectangle:

    cdef rect.Rectangle _rect

    def __cinit__(self,x0,y0,x1,y1):
       self._rect = rect.Rectangle(x0,y0,x1,y1)

    def get_area(self):
        return self._rect.getArea()
    
    def get_size(self):
        cdef int width,height;
        self._rect.getSize(&width,&height)
        return width,height

    def move(self,dx,dy):
        self._rect.move(dx,dy)

    #属性访问
    @property
    def x0(self):
        return self._rect.x0

    @x0.setter
    def x0(self,x0):
        self._rect.x0 = x0

    @property
    def x1(self):
        return self._rect.x1
    @x1.setter
    def x1(self, x1):
        self._rect.x1 = x1

    @property
    def y0(self):
        return self._rect.y0
    @y0.setter
    def y0(self, y0):
        self._rect.y0 = y0

    @property
    def y1(self):
        return self._rect.y1
    @y1.setter
    def y1(self, y1):
        self._rect.y1 = y1
