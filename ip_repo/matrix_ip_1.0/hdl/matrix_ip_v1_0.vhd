library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity matrix_ip_v1_0 is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Master Bus Interface S00_AXI_ws2812
		C_S00_AXI_ws2812_START_DATA_VALUE	: std_logic_vector	:= x"AA000000";
		C_S00_AXI_ws2812_TARGET_SLAVE_BASE_ADDR	: std_logic_vector	:= x"40000000";
		C_S00_AXI_ws2812_ADDR_WIDTH	: integer	:= 32;
		C_S00_AXI_ws2812_DATA_WIDTH	: integer	:= 32;
		C_S00_AXI_ws2812_TRANSACTIONS_NUM	: integer	:= 4
	);
	port (
		-- Users to add ports here

		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Master Bus Interface S00_AXI_ws2812
		s00_axi_ws2812_init_axi_txn	: in std_logic;
		s00_axi_ws2812_error	: out std_logic;
		s00_axi_ws2812_txn_done	: out std_logic;
		s00_axi_ws2812_aclk	: in std_logic;
		s00_axi_ws2812_aresetn	: in std_logic;
		s00_axi_ws2812_awaddr	: out std_logic_vector(C_S00_AXI_ws2812_ADDR_WIDTH-1 downto 0);
		s00_axi_ws2812_awprot	: out std_logic_vector(2 downto 0);
		s00_axi_ws2812_awvalid	: out std_logic;
		s00_axi_ws2812_awready	: in std_logic;
		s00_axi_ws2812_wdata	: out std_logic_vector(C_S00_AXI_ws2812_DATA_WIDTH-1 downto 0);
		s00_axi_ws2812_wstrb	: out std_logic_vector(C_S00_AXI_ws2812_DATA_WIDTH/8-1 downto 0);
		s00_axi_ws2812_wvalid	: out std_logic;
		s00_axi_ws2812_wready	: in std_logic;
		s00_axi_ws2812_bresp	: in std_logic_vector(1 downto 0);
		s00_axi_ws2812_bvalid	: in std_logic;
		s00_axi_ws2812_bready	: out std_logic;
		s00_axi_ws2812_araddr	: out std_logic_vector(C_S00_AXI_ws2812_ADDR_WIDTH-1 downto 0);
		s00_axi_ws2812_arprot	: out std_logic_vector(2 downto 0);
		s00_axi_ws2812_arvalid	: out std_logic;
		s00_axi_ws2812_arready	: in std_logic;
		s00_axi_ws2812_rdata	: in std_logic_vector(C_S00_AXI_ws2812_DATA_WIDTH-1 downto 0);
		s00_axi_ws2812_rresp	: in std_logic_vector(1 downto 0);
		s00_axi_ws2812_rvalid	: in std_logic;
		s00_axi_ws2812_rready	: out std_logic
	);
end matrix_ip_v1_0;

architecture arch_imp of matrix_ip_v1_0 is

	-- component declaration
	component matrix_ip_v1_0_S00_AXI_ws2812 is
		generic (
		C_M_START_DATA_VALUE	: std_logic_vector	:= x"AA000000";
		C_M_TARGET_SLAVE_BASE_ADDR	: std_logic_vector	:= x"40000000";
		C_M_AXI_ADDR_WIDTH	: integer	:= 32;
		C_M_AXI_DATA_WIDTH	: integer	:= 32;
		C_M_TRANSACTIONS_NUM	: integer	:= 4
		);
		port (
		INIT_AXI_TXN	: in std_logic;
		ERROR	: out std_logic;
		TXN_DONE	: out std_logic;
		M_AXI_ACLK	: in std_logic;
		M_AXI_ARESETN	: in std_logic;
		M_AXI_AWADDR	: out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
		M_AXI_AWPROT	: out std_logic_vector(2 downto 0);
		M_AXI_AWVALID	: out std_logic;
		M_AXI_AWREADY	: in std_logic;
		M_AXI_WDATA	: out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
		M_AXI_WSTRB	: out std_logic_vector(C_M_AXI_DATA_WIDTH/8-1 downto 0);
		M_AXI_WVALID	: out std_logic;
		M_AXI_WREADY	: in std_logic;
		M_AXI_BRESP	: in std_logic_vector(1 downto 0);
		M_AXI_BVALID	: in std_logic;
		M_AXI_BREADY	: out std_logic;
		M_AXI_ARADDR	: out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
		M_AXI_ARPROT	: out std_logic_vector(2 downto 0);
		M_AXI_ARVALID	: out std_logic;
		M_AXI_ARREADY	: in std_logic;
		M_AXI_RDATA	: in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
		M_AXI_RRESP	: in std_logic_vector(1 downto 0);
		M_AXI_RVALID	: in std_logic;
		M_AXI_RREADY	: out std_logic
		);
	end component matrix_ip_v1_0_S00_AXI_ws2812;

begin

-- Instantiation of Axi Bus Interface S00_AXI_ws2812
matrix_ip_v1_0_S00_AXI_ws2812_inst : matrix_ip_v1_0_S00_AXI_ws2812
	generic map (
		C_M_START_DATA_VALUE	=> C_S00_AXI_ws2812_START_DATA_VALUE,
		C_M_TARGET_SLAVE_BASE_ADDR	=> C_S00_AXI_ws2812_TARGET_SLAVE_BASE_ADDR,
		C_M_AXI_ADDR_WIDTH	=> C_S00_AXI_ws2812_ADDR_WIDTH,
		C_M_AXI_DATA_WIDTH	=> C_S00_AXI_ws2812_DATA_WIDTH,
		C_M_TRANSACTIONS_NUM	=> C_S00_AXI_ws2812_TRANSACTIONS_NUM
	)
	port map (
		INIT_AXI_TXN	=> s00_axi_ws2812_init_axi_txn,
		ERROR	=> s00_axi_ws2812_error,
		TXN_DONE	=> s00_axi_ws2812_txn_done,
		M_AXI_ACLK	=> s00_axi_ws2812_aclk,
		M_AXI_ARESETN	=> s00_axi_ws2812_aresetn,
		M_AXI_AWADDR	=> s00_axi_ws2812_awaddr,
		M_AXI_AWPROT	=> s00_axi_ws2812_awprot,
		M_AXI_AWVALID	=> s00_axi_ws2812_awvalid,
		M_AXI_AWREADY	=> s00_axi_ws2812_awready,
		M_AXI_WDATA	=> s00_axi_ws2812_wdata,
		M_AXI_WSTRB	=> s00_axi_ws2812_wstrb,
		M_AXI_WVALID	=> s00_axi_ws2812_wvalid,
		M_AXI_WREADY	=> s00_axi_ws2812_wready,
		M_AXI_BRESP	=> s00_axi_ws2812_bresp,
		M_AXI_BVALID	=> s00_axi_ws2812_bvalid,
		M_AXI_BREADY	=> s00_axi_ws2812_bready,
		M_AXI_ARADDR	=> s00_axi_ws2812_araddr,
		M_AXI_ARPROT	=> s00_axi_ws2812_arprot,
		M_AXI_ARVALID	=> s00_axi_ws2812_arvalid,
		M_AXI_ARREADY	=> s00_axi_ws2812_arready,
		M_AXI_RDATA	=> s00_axi_ws2812_rdata,
		M_AXI_RRESP	=> s00_axi_ws2812_rresp,
		M_AXI_RVALID	=> s00_axi_ws2812_rvalid,
		M_AXI_RREADY	=> s00_axi_ws2812_rready
	);

	-- Add user logic here

	-- User logic ends

end arch_imp;
