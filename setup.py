from distutils.core import setup,Extension
from Cython.Build import cythonize

ext = Extension("Rectangle",
        sources=["rect.pyx","rectangle/Rectangle.cpp"],
        include_dirs=["rectangle"],
        language="c++"
        )
setup(ext_modules=cythonize(ext))
