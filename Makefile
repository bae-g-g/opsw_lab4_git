

PROJ_DIR = $(shell pwd)
SRC_D = $(PROJ_DIR)/src
INC_D = $(PROJ_DIR)/include
OBJ_D = $(PROJ_DIR)/obj
BIN_D = $(PROJ_DIR)/bin
OBJECT = $(OBJ_D)/main.o $(OBJ_D)/func1.o $(OBJ_D)/func2.o

$(BIN_D)/myapp : $(OBJECT)
	gcc -o $@ $^

$(OBJ_D)/%.o : $(SRC_D)/%.c
	gcc -c $< -o $@ -I $(INC_D)
	

clean:
	rm -f $(OBJ_D)/*.o
	rm -f $(BIN_D)/*