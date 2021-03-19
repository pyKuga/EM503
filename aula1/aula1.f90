program aula1
	implicit none
	
	!declaracao de variaveis
	real(kind=8) :: m, g, c, v0, h,inicio, fim
	real, dimension(:), allocatable :: t, v
	integer :: np, i
	
	!parametros do exercicio
	m = 68.1
	g = 9.81
	c = 12.5
	v0 = 0
	
	!operacao numerica
	np = 21
	inicio = 0
	fim = 30
	h = (fim-inicio)/(np-1)
	
	!geracao de malha t e v

	allocate (t(1:np))
	allocate (v(1:np))
	
	!definicao dos primeiros elementos como as condicoes iniciais
	t(1) = inicio
	v(1) = v0
	
	!gera um arquivo csv
	open (10, file='data.csv', status='unknown')
	
	!colunas tempo e velocidade
	write(10, fmt='(a)') "t,v"
	write(10, *) t(1), "," , v(1)
	do i = 2, np
		!força a operacao com o metodo de euler
		t(i) = t(i-1) + h
		v(i) = v(i-1) + (g-c*v(i-1)/m)*h
		write(10, *) t(i), ",",v(i)
	end do
	close(10, status="keep")

end program aula1
