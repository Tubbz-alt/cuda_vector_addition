run: vector_addition.o
	nvcc -o run vector_addition.o

vector_addition.o: vector_addition.cu
	nvcc -c vector_addition.cu

.PHONY: clean

clean:
	rm -f run *.o
