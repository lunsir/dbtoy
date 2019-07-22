src = $(wildcard ./*.c)
obj = $(src:%.c=%.o)
target = dbtoy
CC = gcc  
$(target): $(obj)  
	    $(CC) $(obj) -o $(target)  
%.o: %.c  
	    $(CC) -c $< -o $@
.PHONY: clean
clean:
	rm -rf $(obj) $(target)

