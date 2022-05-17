#ifndef __vector_h__
#define __vector_h__

typedef struct	
{
	size_t size;
	double *buf;
} vector;

void v_init(vecotr *v,size_t size);
void v_destroy(vector*v);

size_t vector_size(vector*v);
void vector_set_size(vector *v, size_t newsize);

double vector_get(vecto*v,size_t i);
void vector_set(vector *v,size_t i, double newval);
#endif
