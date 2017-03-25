-- Copyright (C) 1991-2012 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- Generated by Quartus II Version 12.1 Build 177 11/07/2012 SJ Web Edition
-- Created on Mon May 02 13:20:50 2016

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY SM1 IS
    PORT (
        reset : IN STD_LOGIC := '0';
        clock : IN STD_LOGIC;
        one_second : IN STD_LOGIC := '0';
        nine_seconds : IN STD_LOGIC := '0';
        nine_minutes : IN STD_LOGIC := '0';
        fifty_seconds : IN STD_LOGIC := '0';
        fifty_minutes : IN STD_LOGIC := '0';
        nine_hours : IN STD_LOGIC := '0';
        ten_hours : IN STD_LOGIC := '0';
        en_count_to_one_sec : OUT STD_LOGIC;
        en_sec_u : OUT STD_LOGIC;
        rst_count_to_one_sec : OUT STD_LOGIC;
        rst_sec_u : OUT STD_LOGIC;
        en_sec_t : OUT STD_LOGIC;
        rst_sec_t : OUT STD_LOGIC;
        Clock_50 : OUT STD_LOGIC;
        en_min_u : OUT STD_LOGIC;
        rst_min_u : OUT STD_LOGIC;
        en_min_t : OUT STD_LOGIC;
        rst_min_t : OUT STD_LOGIC;
        en_hour_u : OUT STD_LOGIC;
        rst_hour_u : OUT STD_LOGIC;
        en_hour_t : OUT STD_LOGIC;
        rst_hour_t : OUT STD_LOGIC
    );
END SM1;

ARCHITECTURE BEHAVIOR OF SM1 IS
    TYPE type_fstate IS (sec_t,sec_u,count_to_one_sec,min_u,min_t,Hour_u,Hour_t);
    SIGNAL fstate : type_fstate;
    SIGNAL reg_fstate : type_fstate;
    SIGNAL reg_en_count_to_one_sec : STD_LOGIC := '0';
    SIGNAL reg_en_sec_u : STD_LOGIC := '0';
    SIGNAL reg_rst_count_to_one_sec : STD_LOGIC := '0';
    SIGNAL reg_rst_sec_u : STD_LOGIC := '0';
    SIGNAL reg_en_sec_t : STD_LOGIC := '0';
    SIGNAL reg_rst_sec_t : STD_LOGIC := '0';
    SIGNAL reg_Clock_50 : STD_LOGIC := '0';
    SIGNAL reg_en_min_u : STD_LOGIC := '0';
    SIGNAL reg_rst_min_u : STD_LOGIC := '0';
    SIGNAL reg_en_min_t : STD_LOGIC := '0';
    SIGNAL reg_rst_min_t : STD_LOGIC := '0';
    SIGNAL reg_en_hour_u : STD_LOGIC := '0';
    SIGNAL reg_rst_hour_u : STD_LOGIC := '0';
    SIGNAL reg_en_hour_t : STD_LOGIC := '0';
    SIGNAL reg_rst_hour_t : STD_LOGIC := '0';
BEGIN
    PROCESS (clock,reg_fstate)
    BEGIN
        IF (clock='1' AND clock'event) THEN
            fstate <= reg_fstate;
        END IF;
    END PROCESS;

    PROCESS (fstate,reset,one_second,nine_seconds,nine_minutes,fifty_seconds,fifty_minutes,nine_hours,ten_hours,reg_en_count_to_one_sec,reg_en_sec_u,reg_rst_count_to_one_sec,reg_rst_sec_u,reg_en_sec_t,reg_rst_sec_t,reg_Clock_50,reg_en_min_u,reg_rst_min_u,reg_en_min_t,reg_rst_min_t,reg_en_hour_u,reg_rst_hour_u,reg_en_hour_t,reg_rst_hour_t)
    BEGIN
        IF (reset='1') THEN
            reg_fstate <= count_to_one_sec;
            reg_en_count_to_one_sec <= '0';
            reg_en_sec_u <= '0';
            reg_rst_count_to_one_sec <= '0';
            reg_rst_sec_u <= '0';
            reg_en_sec_t <= '0';
            reg_rst_sec_t <= '0';
            reg_Clock_50 <= '0';
            reg_en_min_u <= '0';
            reg_rst_min_u <= '0';
            reg_en_min_t <= '0';
            reg_rst_min_t <= '0';
            reg_en_hour_u <= '0';
            reg_rst_hour_u <= '0';
            reg_en_hour_t <= '0';
            reg_rst_hour_t <= '0';
            en_count_to_one_sec <= '0';
            en_sec_u <= '0';
            rst_count_to_one_sec <= '0';
            rst_sec_u <= '0';
            en_sec_t <= '0';
            rst_sec_t <= '0';
            Clock_50 <= '0';
            en_min_u <= '0';
            rst_min_u <= '0';
            en_min_t <= '0';
            rst_min_t <= '0';
            en_hour_u <= '0';
            rst_hour_u <= '0';
            en_hour_t <= '0';
            rst_hour_t <= '0';
        ELSE
            reg_en_count_to_one_sec <= '0';
            reg_en_sec_u <= '0';
            reg_rst_count_to_one_sec <= '0';
            reg_rst_sec_u <= '0';
            reg_en_sec_t <= '0';
            reg_rst_sec_t <= '0';
            reg_Clock_50 <= '0';
            reg_en_min_u <= '0';
            reg_rst_min_u <= '0';
            reg_en_min_t <= '0';
            reg_rst_min_t <= '0';
            reg_en_hour_u <= '0';
            reg_rst_hour_u <= '0';
            reg_en_hour_t <= '0';
            reg_rst_hour_t <= '0';
            en_count_to_one_sec <= '0';
            en_sec_u <= '0';
            rst_count_to_one_sec <= '0';
            rst_sec_u <= '0';
            en_sec_t <= '0';
            rst_sec_t <= '0';
            Clock_50 <= '0';
            en_min_u <= '0';
            rst_min_u <= '0';
            en_min_t <= '0';
            rst_min_t <= '0';
            en_hour_u <= '0';
            rst_hour_u <= '0';
            en_hour_t <= '0';
            rst_hour_t <= '0';
            CASE fstate IS
                WHEN sec_t =>
                    reg_fstate <= count_to_one_sec;

                    reg_rst_min_t <= '0';

                    reg_en_min_t <= '0';

                    reg_rst_min_u <= '0';

                    reg_en_sec_t <= '1';

                    reg_Clock_50 <= '0';

                    reg_rst_sec_t <= '0';

                    reg_en_min_u <= '0';

                    reg_en_count_to_one_sec <= '0';

                    reg_en_sec_u <= '0';

                    reg_rst_count_to_one_sec <= '1';

                    reg_rst_sec_u <= '1';
                WHEN sec_u =>
                    reg_fstate <= count_to_one_sec;

                    reg_rst_min_t <= '0';

                    reg_en_min_t <= '0';

                    reg_rst_min_u <= '0';

                    reg_en_sec_t <= '0';

                    reg_Clock_50 <= '0';

                    reg_rst_sec_t <= '0';

                    reg_en_min_u <= '0';

                    reg_en_count_to_one_sec <= '0';

                    reg_en_sec_u <= '1';

                    reg_rst_count_to_one_sec <= '1';

                    reg_rst_sec_u <= '0';
                WHEN count_to_one_sec =>
                    IF ((((((((one_second = '1') AND (nine_seconds = '1')) AND (fifty_seconds = '1')) AND (nine_minutes = '1')) AND (fifty_minutes = '1')) AND (nine_hours = '1')) AND NOT((ten_hours = '1')))) THEN
                        reg_fstate <= Hour_u;
                    ELSIF ((((((((one_second = '1') AND (nine_seconds = '1')) AND (fifty_seconds = '1')) AND (nine_minutes = '1')) AND (fifty_minutes = '1')) AND (nine_hours = '1')) AND (ten_hours = '1'))) THEN
                        reg_fstate <= Hour_t;
                    ELSIF (((one_second = '1') AND NOT((nine_seconds = '1')))) THEN
                        reg_fstate <= sec_u;
                    ELSIF ((((one_second = '1') AND (nine_seconds = '1')) AND NOT((fifty_seconds = '1')))) THEN
                        reg_fstate <= sec_t;
                    ELSIF (((((one_second = '1') AND (nine_seconds = '1')) AND (fifty_seconds = '1')) AND NOT((nine_minutes = '1')))) THEN
                        reg_fstate <= min_u;
                    ELSIF ((((((one_second = '1') AND (nine_seconds = '1')) AND (fifty_seconds = '1')) AND (nine_minutes = '1')) AND NOT((fifty_minutes = '1')))) THEN
                        reg_fstate <= min_t;
                    ELSE
                        reg_fstate <= count_to_one_sec;
                    END IF;

                    reg_rst_min_t <= '0';

                    reg_en_min_t <= '0';

                    reg_rst_min_u <= '0';

                    reg_en_sec_t <= '0';

                    reg_Clock_50 <= '0';

                    reg_rst_sec_t <= '0';

                    reg_en_min_u <= '0';

                    reg_en_count_to_one_sec <= '1';

                    reg_en_sec_u <= '0';

                    reg_rst_count_to_one_sec <= '0';

                    reg_rst_sec_u <= '0';
                WHEN min_u =>
                    reg_fstate <= count_to_one_sec;

                    reg_rst_min_t <= '0';

                    reg_en_min_t <= '0';

                    reg_rst_min_u <= '0';

                    reg_en_sec_t <= '0';

                    reg_Clock_50 <= '0';

                    reg_rst_sec_t <= '1';

                    reg_en_min_u <= '1';

                    reg_en_count_to_one_sec <= '0';

                    reg_en_sec_u <= '0';

                    reg_rst_count_to_one_sec <= '1';

                    reg_rst_sec_u <= '1';
                WHEN min_t =>
                    reg_fstate <= count_to_one_sec;

                    reg_rst_min_t <= '0';

                    reg_en_min_t <= '1';

                    reg_rst_min_u <= '1';

                    reg_en_sec_t <= '0';

                    reg_Clock_50 <= '0';

                    reg_rst_sec_t <= '1';

                    reg_en_min_u <= '0';

                    reg_en_count_to_one_sec <= '0';

                    reg_en_sec_u <= '0';

                    reg_rst_count_to_one_sec <= '1';

                    reg_rst_sec_u <= '1';
                WHEN Hour_u =>
                    reg_fstate <= count_to_one_sec;

                    reg_rst_hour_t <= '0';

                    reg_en_hour_t <= '0';

                    reg_rst_hour_u <= '0';

                    reg_en_hour_u <= '1';

                    reg_en_min_t <= '0';

                    reg_rst_min_u <= '1';

                    reg_en_sec_t <= '0';

                    reg_rst_sec_t <= '1';

                    reg_en_min_u <= '0';

                    reg_en_count_to_one_sec <= '0';

                    reg_en_sec_u <= '0';

                    reg_rst_count_to_one_sec <= '1';

                    reg_rst_sec_u <= '1';
                WHEN Hour_t =>
                    reg_fstate <= count_to_one_sec;

                    reg_rst_hour_t <= '0';

                    reg_en_hour_t <= '1';

                    reg_rst_hour_u <= '1';

                    reg_rst_min_t <= '1';

                    reg_en_hour_u <= '0';

                    reg_en_min_t <= '0';

                    reg_rst_min_u <= '1';

                    reg_en_sec_t <= '0';

                    reg_rst_sec_t <= '1';

                    reg_en_min_u <= '0';

                    reg_en_count_to_one_sec <= '0';

                    reg_en_sec_u <= '0';

                    reg_rst_count_to_one_sec <= '1';

                    reg_rst_sec_u <= '1';
                WHEN OTHERS => 
                    reg_en_count_to_one_sec <= 'X';
                    reg_en_sec_u <= 'X';
                    reg_rst_count_to_one_sec <= 'X';
                    reg_rst_sec_u <= 'X';
                    reg_en_sec_t <= 'X';
                    reg_rst_sec_t <= 'X';
                    reg_Clock_50 <= 'X';
                    reg_en_min_u <= 'X';
                    reg_rst_min_u <= 'X';
                    reg_en_min_t <= 'X';
                    reg_rst_min_t <= 'X';
                    reg_en_hour_u <= 'X';
                    reg_rst_hour_u <= 'X';
                    reg_en_hour_t <= 'X';
                    reg_rst_hour_t <= 'X';
                    report "Reach undefined state";
            END CASE;
            en_count_to_one_sec <= reg_en_count_to_one_sec;
            en_sec_u <= reg_en_sec_u;
            rst_count_to_one_sec <= reg_rst_count_to_one_sec;
            rst_sec_u <= reg_rst_sec_u;
            en_sec_t <= reg_en_sec_t;
            rst_sec_t <= reg_rst_sec_t;
            Clock_50 <= reg_Clock_50;
            en_min_u <= reg_en_min_u;
            rst_min_u <= reg_rst_min_u;
            en_min_t <= reg_en_min_t;
            rst_min_t <= reg_rst_min_t;
            en_hour_u <= reg_en_hour_u;
            rst_hour_u <= reg_rst_hour_u;
            en_hour_t <= reg_en_hour_t;
            rst_hour_t <= reg_rst_hour_t;
        END IF;
    END PROCESS;
END BEHAVIOR;