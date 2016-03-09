#------------------------------------
# Set compiler commands
#------------------------------------
PFC90 = mpif90
FC90 = gfortran
FLAGS = -g
#------------------------------------
# File Lists
#------------------------------------
test_files = test.f90 my_mod.o
search_files = search.f90 my_mod.o
#------------------------------------
# Rules
#------------------------------------
%: %.o
	$(FC90) $(FLAGS) -o $@
%.o: %.f90
	$(FC90) $(FLAGS) -c $<
#------------------------------------
# Commands
#------------------------------------
all:	test_exe search_exe
test_exe:	$(test_files)
	$(FC90) $(FLAGS) $(test_files) -o $@
search_exe:	$(search_files)
	$(PFC90) $(FLAGS) $(search_files) -o $@

clean:
	rm *.o *.mod *_exe
