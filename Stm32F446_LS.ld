/* Entry Point */
ENTRY(Reset_Handler)

/* Memories definition */
MEMORY
{
	FLASH(rx) : ORIGIN = 0x08000000 , LENGTH = 512K
	SRAM(rwx) : ORIGIN = 0x20000000 , LENGTH = 128K
}

/* Sections */
SECTIONS
{
	.text :
	{
		*(.isr_vector)
		*(.text)
		*(.rodata)
		
		. = ALIGN(4);
		_etext = . ;
		
	}>FLASH  
	
	.data :
	{
		_sdata = . ;
		*(.data)
		. = ALIGN(4);
		_edata = . ;
		
	}>SRAM   AT> FLASH
	 
	.bss :
	{
		_sbss = . ;
		*(.bss)
		. = ALIGN(4);
		_ebss = . ;
		
	}>SRAM
}

