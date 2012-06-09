--
-- PostgreSQL database dump
--

-- Started on 2012-02-07 20:39:07

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 1492 (class 1259 OID 16428)
-- Dependencies: 3
-- Name: project; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE project (
    projectid numeric(255,0) NOT NULL,
    projectyear bigint,
    startdate date,
    enddate date,
    donorname character varying(255),
    donorprojectid character varying(255),
    financingagency character varying(255),
    implementingagency character varying(255),
    commitmentamount character varying(255),
    currencytype1 character varying(255),
    commitmentconstant2000usd character varying(255),
    commitmentcurrentusd character varying(255),
    totalprojectcost character varying(255),
    currencytype2 character varying(255),
    disbursementamount character varying(255),
    currencytype3 character varying(255),
    disbursementconstantusd character varying(255),
    disbursementcurrentusd character varying(255),
    title character varying(255),
    shortdescription text,
    longdescription text
);


ALTER TABLE public.project OWNER TO postgres;

--
-- TOC entry 1772 (class 0 OID 16428)
-- Dependencies: 1492
-- Data for Name: project; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY project (projectid, projectyear, startdate, enddate, donorname, donorprojectid, financingagency, implementingagency, commitmentamount, currencytype1, commitmentconstant2000usd, commitmentcurrentusd, totalprojectcost, currencytype2, disbursementamount, currencytype3, disbursementconstantusd, disbursementcurrentusd, title, shortdescription, longdescription) FROM stdin;
11288558	1998	\N	\N	AUSTRIA	1555-00/98	BMA		242,401.46	USD	256,083.02	242,401.46			56,562.00	USD	59,754.46	56,562.00	KLIMABÜNDNIS - RÍO NEGRO	ALLIANCE AGAINST CLIMATE CHANGE	
15326390	2001	\N	\N	AUSTRIA	1555-00/01	BMA		121,745.14	USD	118,376.70	121,745.14			109,598.31	USD	106,565.95	109,598.31	KLIMABÜNDNIS - RÍO NEGRO	ALLIANCE AGAINST CLIMATE CHANGE ACTION	
18362579	2002	\N	\N	CANADA	A031525002	CIDA		445,859.87	USD	426,776.38	445,859.87							ENERGY FROM LANDFILL GAS FOR LAC REGION	ENERGY FROM LANDFILL GAS FOR LAC REGION	Additional countries: Sth America MC (35%), Mexico (15%), Chile (5%), Uruguay (5%)  Additional sectors: 041010 (50%)  Themes: 0105 - Capacity Development, 0114 - Environment, 0115 - Climate Change  Expected Impact / Long-term Results: -  Contribution to t
22857123	2004	\N	\N	UNITED STATES	04UCL00722	AID		60,000.00	USD	54,695.61	60,000.00							GLOBAL CLIMATE CHANGE MITIGATED	GLOBAL CLIMATE CHANGE MITIGATED	USAID BRAZIL-WASHINGTON ALLOWANCE, BUREAU FOR LATIN AMERICA AND THE CARIBBEAN, PHX
22857626	2004	\N	\N	UNITED STATES	04UCL00721	AID		1,349,000.00	USD	1,229,739.54	1,349,000.00							GLOBAL CLIMATE CHANGE MITIGATED	GLOBAL CLIMATE CHANGE MITIGATED	512-M, BUREAU FOR LATIN AMERICA AND THE CARIBBEAN, MAL
26037468	2005	\N	\N	UNITED STATES	06UEI07644	AID		1,112,000.00	USD	980,473.12	1,112,000.00			365,000.00	USD	321,827.96	365,000.00	Global Climate Change Mitigated - Renewable Energy & Energy Conservation	GLOBAL CLIMATE CHANGE MITIGATED - RENEWABLE ENERGY & ENERGY CONSERVATION	Global Climate Change Mitigated Through Renewable Energy and Energy Conservation
26038265	2005	\N	\N	UNITED STATES	06UEI07647	AID	UNITED NATIONS DEVELOPMENT PROGRAMME	300,000.00	USD	264,516.13	300,000.00							Global Climate Change Mitigated - Renewable Energy & Energy Conservation	GLOBAL CLIMATE CHANGE MITIGATED - RENEWABLE ENERGY & ENERGY CONSERVATION	Global Climate Change Mitigated Through Renewable Energy and Energy Conservation
26038304	2005	\N	\N	UNITED STATES	06UEI07649	AID		106,000.00	USD	93,462.37	106,000.00			2,247,000.00	USD	1,981,225.81	2,247,000.00	Global Climate Change Mitigated - Renewable Energy & Energy Conservation	GLOBAL CLIMATE CHANGE MITIGATED - RENEWABLE ENERGY & ENERGY CONSERVATION	Global Climate Change Mitigated Through Renewable Energy and Energy Conservation
26038346	2005	\N	\N	UNITED STATES	06UEI07645	AID		14,000.00	USD	12,344.09	14,000.00							Global Climate Change Mitigated - Renewable Energy & Energy Conservation	GLOBAL CLIMATE CHANGE MITIGATED - RENEWABLE ENERGY & ENERGY CONSERVATION	Global Climate Change Mitigated Through Renewable Energy and Energy Conservation
29831440	2006	\N	\N	UNITED STATES	06UEI07644	AID		987,000.00	USD	843,062.50	987,000.00			1,198,000.00	USD	1,023,291.67	1,198,000.00	Global Climate Change Mitigated Through Renew. Energy & Energy Conserv.	GLOBAL CLIMATE CHANGE MITIGATED THROUGH RENEW. ENERGY & ENERGY CONSERV.	Global Climate Change Mitigated Through Renewable Energy and Energy Conservation
29831598	2006	\N	\N	UNITED STATES	06UEI07647	AID	UNITED NATIONS DEVELOPMENT PROGRAMME	300,000.00	USD	256,250.00	300,000.00			79,000.00	USD	67,479.17	79,000.00		BIOSPHERE PROTECTION	Global Climate Change Mitigated Through Renewable Energy and Energy Conservation
29832479	2006	\N	\N	UNITED STATES	06UEI07645	AID		11,000.00	USD	9,395.83	11,000.00			11,000.00	USD	9,395.83	11,000.00		BIOSPHERE PROTECTION	Global Climate Change Mitigated Through Renewable Energy and Energy Conservation
32417200	2007	\N	\N	UNITED KINGDOM	BRFCOCC3	MISC		77,438.46	USD	64,313.57	77,438.46			77,438.46	USD	64,313.57	77,438.46	Using Regional Climate Change Scenarios for Studies on Vulnerability and adaptation in Brazil and South America	TECHNOLOGICAL RESEARCH & DEVELOPMENT	Using Regional Climate Change Scenarios for Studies on Vulnerability and adaptation in Brazil and South America
32417241	2007	\N	\N	UNITED KINGDOM	BRFCOCC6	MISC		14,793.52	USD	12,286.19	14,793.52			14,793.52	USD	12,286.19	14,793.52	Climate Change	BIO-DIVERSITY	Climate Change
32417366	2007	\N	\N	UNITED KINGDOM	BRFCOCC4	MISC		304,568.74	USD	252,947.97	304,568.74			304,568.74	USD	252,947.97	304,568.74	Dangerous Climate Change in Brazil	DANGEROUS CLIMATE CHANGE IN BRAZIL	Dangerous Climate Change in Brazil
32417531	2007	\N	\N	UNITED KINGDOM	BRFCOCC5	MISC		206,425.86	USD	171,439.13	206,425.86			206,425.86	USD	171,439.13	206,425.86	Brazil-level Report on the Economics of Climate Change (Brazilian Stern Report)	BRAZIL-LEVEL REPORT ON THE ECONOMICS OF CLIMATE CHANGE (BRAZILIAN STERN REPORT)	Brazil-level Report on the Economics of Climate Change (Brazilian Stern Report)
33176337	2007	\N	\N	SPAIN	07-BBB-01878	MFA		13,689.25	USD	11,369.09	13,689.25			13,689.25	USD	11,369.09	13,689.25	ENERGY CHALLENGES FOR THE ENVIRONMENT AND SUSTAINABLE DEVELOPMENT IN IBEROAMERICA: THE EUROPEAN UNION AND THE MERCOSUR FACING CLIMATE CHANGE	ENVIRONMENTAL POLICY AND ADMIN. MGMT	DESAFÍOS DE LA ENERGÍA PARA EL MEDIO AMBIENTE Y EL DESARROLLO SOSTENIBLE EN IBEROAMÉRICA: LA UNIÓN EUROPEA Y EL MERCOSUR ANTE EL CAMBIO CLIMÁTICO
33180518	2007	\N	\N	SPAIN	07-MUL-00425	MFA		6,108,547.05	USD	5,073,221.06	6,108,547.05			6,108,547.05	USD	5,073,221.06	6,108,547.05	MDG ACHIEVEMENT FUND: THEMATIC FUND ON ENVIRONMENT AND CLIMATE CHANGE. MAINSTREAMING SOCIO-ENVIRONMENTAL ISSUES INTO CLIMATE CHANGE STRATEGIES IN BRAZIL	MDG ACHIEVEMENT FUND: MAINSTREAMING SOCIO-ENVIRONMENTAL ISSUES INTO CLIMATE CHANGE STRATEGIES IN BRAZIL	FONDO ODM: VENTANA TEMÁTICA MEDIO AMBIENTE Y CAMBIO CLIMÁTICO. INTEGRACIÓN DE LOS TEMAS SOCIO-AMBIENTALES EN LAS ESTRATEGIAS DE CAMBIO CLIMÁTICO EN BRASIL
33777257	2007	\N	\N	UNITED STATES	UEI18085	AID		3,109.00	USD	2,582.06	3,109.00			256,875.00	USD	213,337.75	256,875.00	Global Climate Change Mitigated Through Renewable Energy and Energy Conservation	BIOSPHERE PROTECTION	Global Climate Change Mitigated Through Renewable Energy and Energy Conservation [Enterprise - United States Unknown]
35814471	2008	\N	\N	GERMANY	08_II_009_BRA	Fed Min		1,259,007.64	USD	1,006,958.17	1,259,007.64			00.00	USD	00.00	00.00	Multiplication of best practices of adaptation to climate change in Brazil	MULTIPLICATION OF BEST PRACTICES OF ADAPTATION TO CLIMATE CHANGE IN BRAZIL	The project aims at preparing the rural population to the increasing aridity. Support in building a network of organisations and communities to spread successful adaptation measures. In addition to training, technical equipment (pumps and irrigation equipment) will be provided.
40295617	2005	\N	\N	GEF	1612	United Nations Development Programme (UNDP)	Brazil (Ministry of Science & Technology)	3,400,000.00	USD	2,997,849.46	3,400,000.00	7,575,600.00	USD					Second National Communication of Brazil to the UNFCCC		description:The immediate objective of the project is to prepare the Second National Communication of Brazil to the UNFCCC and carry out studies on vulnerability and adaptation measures, develop regional modeling of climate and climate change scenarios, and build institutional capacity for implementing the Convention in Brazil.;
36362248	2008	\N	\N	NORWAY	BRA-08/026	NORAD		27,158.20	USD	21,721.21	27,158.20			24,859.22	USD	19,882.48	24,859.22	Assessment of a potentional mechanism for support to the Amazon Fund	ENVIRONMENTAL POLICY AND ADMIN. MGMT	The consultant will join a mission to Brasilia and Rio de Janeiro with a team  from Norad and the Norwegian Ministry of Foreign Affairs. The group will do an assessment of the Brazilian bank BNDES as a potentional mechanism for Norwegian support to the Amazon Fund (emission reduction, climate change and sustainable development), in conformity with Terms of Reference.  The assignment includes preparation work, participation and finalization work/mission report.                                                                                                                                                          Saksnr i arkivet 0800705  Ansvarlig saksbehandler i Best Marianne Haugh /Hans Olav IbrekkFor utbetaling i PTA; Sissel Belgen JakobsenAssessment of BNDES as a potentional mechanism for Norwegian support to the Amazon Fund.
36888529	2008	\N	\N	UNITED KINGDOM	113822-101	DFID		904,649.90	USD	723,541.77	904,649.90			457,106.82	USD	365,595.44	457,106.82	ECONOMICS OF CLIMATE CHANGE IN BRAZIL	ECONOMICS OF CLIMATE CHANGE IN BRAZIL	To produce a robust credible review on the economics of climate change in Brazil.
36888701	2008	\N	\N	UNITED KINGDOM	BRFCOCC29	MISC		113,537.18	USD	90,807.39	113,537.18			113,537.18	USD	90,807.39	113,537.18	Data on Economic Impact on Brazilian Bioethanol under Various Climate Change Scenarios	BIO-DIVERSITY	Data on Economic Impact on Brazilian Bioethanol under Various Climate Change Scenarios
36888743	2008	\N	\N	UNITED KINGDOM	BRFCOCC14	MISC		236,619.02	USD	189,248.61	236,619.02			236,619.02	USD	189,248.61	236,619.02	Mitigating Climate Change in Amazon Countries	ENVIRONMENTAL POLICY AND ADMIN. MGMT	Mitigating Climate Change in Amazon Countries
36888824	2008	\N	\N	UNITED KINGDOM	BRFCOCC8	MISC		269,818.13	USD	215,801.37	269,818.13			269,818.13	USD	215,801.37	269,818.13	Dangerous Climate Change in Brazil	ENVIRONMENTAL RESEARCH	Dangerous Climate Change in Brazil
36888865	2008	\N	\N	UNITED KINGDOM	BRFCOCC12	MISC		192,849.65	USD	154,241.74	192,849.65			192,849.65	USD	154,241.74	192,849.65	Mega-cities as a key influencing constituency: climate change vulnerabilities in Sao Paulo and Rio de Janeiro	ENVIRONMENTAL RESEARCH	Mega-cities as a key influencing constituency: climate change vulnerabilities in Sao Paulo and Rio de Janeiro
36889026	2008	\N	\N	UNITED KINGDOM	BRFCOCC10	MISC		349,710.17	USD	279,699.27	349,710.17			349,710.17	USD	279,699.27	349,710.17	working through businesses to tackle climate change	WORKING THROUGH BUSINESSES TO TACKLE CLIMATE CHANGE	working through businesses to tackle climate change
36889640	2008	\N	\N	UNITED KINGDOM	BRFCOCC7	MISC		345,592.55	USD	276,405.98	345,592.55			345,592.55	USD	276,405.98	345,592.55	Climate Change	CLIMATE CHANGE	Climate Change
40295507	1999	\N	2006-06-30	GEF	128	World Bank (IBRD)	Brazil (Electrobras)	20,000,000.00	USD	20,672,268.91	20,000,000.00	125,500,000.00	USD					Energy Efficiency Project		description:The integrated IBRD and GEF project will support supply-side loss-reduction investments; promote integrated supply- and demand-side management pilot projects; create mechanisms to finance investments in energy efficiency by utilities, consumers and ESCOs (including improved institutional and policy frameworks); and provide capacity building and TA to support electric energy efficiency and conservation programs, financial mechanisms, policies, regulations and standards.;implementation status:Project implementation is satisfactory.  There were some difficulties during the power crisis of 2001-2002 but these have been handled well and electricity consumption in Brazil is now 10% less than it was during project appraisal whilst Brazil has shown positive economic growth during this period. It is expected that the project will fully commit the Grant funds over the next few months.;
40295539	2000	\N	\N	GEF	6	United Nations Development Programme (UNDP)	Brazil (Ministry of Mines & Energy)	12,618,100.00	USD	12,618,100.00	12,618,100.00	21,787,100.00	USD					Hydrogen Fuel Cell Buses for Urban Transport		description:This project is designed to stimulate the development and utilization of fuel cell buses by supporting a significant operational test of fuel cell buses in the greater São Paulo Metropolitan Area. It will assist the Brazilian Government and the Empresa Metropolitana de Transportes Urbanos de São Paulo S/A in obtaining and operating 8 fuel cell buses in order to provide feedback to the technology developers and to gain meaningful experience in the operation and management of buses powered by fuel cell drive trains.  This project will both pave the way for further GEF projects in Brazil that will be required for fuel cell buses to be commercially produced and provide experience and increased demand for the fuel cell buses.  Thus, it will contribute to cost-reductions, making the technology more available to other developing countries over the long run.;implementation status:Jan-Mar 2007: The objective of the Project is the reduction of GHG emission with the operation of fuel cell buses supported by a hydrogen production infrastructure. The contract for the provision of the prototype fuel cell bus and the hydrogen infrastructure was signed in May 2006 and both are due to be in testing by December 2007.  During the months of January to March 2007, the final technical documentation was approved and factory acceptance tests were conducted, resulting in the approval of the fuel cell bus system, fuel cell and chassis.  Besides, the technical infrastructure implementation drawings were finished and approved.;
40295576	2005	\N	\N	GEF	1039	World Bank Group (Multiple Agencies)		44,520,000.00	USD	39,254,193.55	44,520,000.00	177,520,000.00	USD					EFCC Advanced Technology Cogeneration Project for the Costa Pinto Sugar Refinery in Piracicaba SP Brazil		description:First version (PDF-B):The proposed project is a new co-generation plant to be located on or adjacent to UAE&rsquo;s sugar mill operations in São Paulo, the most populous and industrialized state in Brazil.  UAE is a high profile company in the Brazilian sugar mill industry and in the nearby major metropolitan area of Campinas.  The mill produces both sugar and ethanol.  The project initially arose from the need for major energy plant improvements at the UAE sugar mill, combined with the obvious need for investment in additional generating--and particularly thermal-based generating--capacity in Brazil, for which the Government of Brazil as well as state-level governments have sought to encourage private sector financing.  Project Brief: The Project seeks to develop, design, finance, build and operate a &ldquo;first-of-its-kind&rdquo; 80 MW two-train bagasse fired EFCC cogeneration facility supplemented by a 250 tonne per hour conventional steam generator (the &ldquo;Project&rdquo;). The Project is to be located at the Costa Pinto sugar mill in Piracicaba, Sao Paulo State, Brazil.;implementation status:Final disbursement of PDF B grant was made in August 2002. PDF C application submitted for approval./Awaiting official letter of approval from GEF CEO for PDF C application./  PDF C received CEO approval on April 10, 2003.;
40295651	2009	\N	\N	GEF	2941	Multiple Agencies		13,750,000.00	USD	11,036,557.80	13,750,000.00	136,524,000.00	USD					Market Transformation for Energy Efficiency in Buildings		description:To influence, transform and develop the market for energy-efficient building operations in Brazil and move towards a less carbon-intensive and more sustainable energy consumption path in the country.;implementation status:Close to start execution;
40295864	2005	\N	\N	GEF	2373	International Fund for Agricultural Development (IFAD)	Brazil (Ministry of Agrarian Development)	6,243,000.00	USD	5,504,580.65	6,243,000.00	15,444,000.00	USD					Sustainable Land Management in the Semi-Arid Sertao		description:The grant is fully blended in the IFAD loan entitled, &ldquo;Sustainable Development Project for Agrarian Reform Settlements in the Semi-Arid North-East (PDHC).&rdquo; This grant complements GoB&rsquo;s existing programs, in particular the PDHC.  It is envisioned that, by addressing existing land degradation in the small-holder sub-sector of Sertão through an adequate approach to the implementation of sustainable land management, the grant will generate highly significant socioeconomic and environmental benefits at the local, national and global levels.  The global objective of the proposed Alternative is to minimise the causes and negative impacts of land degradation on the integrity of the Caatinga biome ecosystem in the North-East of Brazil through the implementation of sustainable land use systems. The development objective is to contribute to an increase in the sustainable development and the quality of life in communities affected by land degradation in the semi-arid North-East of Brazil, through promoting a pilot cross-sectoral approach in support of productive activities and poverty reduction.;implementation status:Project grant CEO endorsed/IFAD approved. Grant Agreement between IFAD and the Government of Brazil was signed on 29DEC06 and the grant is effective. The following activities have been undertaken:\n- preparatory meetings between the national agencies involved (MDA, Treasury, PDHC PMU);\n- PDHC PMU held a workshop in May 2007 on climate change and family agriculture. The seminar (financed by the loan) sought the discussion of experiences on climate change and its effects and impacts on family agriculture in the project region (Sertão), and the exploration of possible opportunities from the Clean Development Mechanism (CDM) for small farmers in the region. Recommendations from the seminar were incorporated into the AWP;\n- annual programme of work (AWP) and budget prepared and revised;\n- opening of project bank accounts;\n- project implementation manual launched;\n- preparation of monitoring and evaluation system on-going;\n- procurement plan launched;\n- TORs finalized and selection of project team finalized.;
40295901	2004	\N	\N	GEF	1343	United Nations Development Programme (UNDP)	Brazil (Ministry of Environment)	4,100,000.00	USD	3,737,533.09	4,100,000.00	26,424,262.00	USD					Demonstrations of Integrated Ecosystem and Watershed Management in the Caatinga, Phase I		description:The goal of the proposed project is to demonstrate the integrated ecosystem management of the Caatinga Forest and build multi-sector capacity so that development and poverty alleviation programmes for the semi-arid region  contribute to the capture of global benefits in Biodiversity, Climate Change, Land Degradation, and Integrated Watershed Management. This project proposal differs from the line of action currently being adopted by public administrations and the civil society alike because it will expand the limited view of problems and solutions from a local (or even at most, the State level) perspective to a bioregional and global scale (depending on the matter at hand). The choice is to demonstrate integrated and global-environment friendly development  in selected watersheds as landscape planning and intervention units, to ensure involvement of all relevant institutions (governmental, non-governmental, academic, research, productive, religious groups, local unions, associations). Also, appropriate actions will be consorted aiming at creating alternatives for activities that reduce emissions of  GHGs, enhance capture of carbon via re-afforestation with native species and  reduce desertification. Furthermore, proposed activities, with a primary focus on ensuring global benefits from the protection to the local fauna and flora, also pervades the interests of local stakeholders because these measures guarantee soil and water quality thus contributing to the maintenance of the productive and human carrying capacity of the Brazilian semi-arid.;implementation status:April-June 2005:  The Inception Phase was finalized in December 2004. During 2005, the project team was formed and the  decentralized management modality started to get operational through Letters of Agreement. The project has succeeded in establishing partnerships for catalyzing initiatives for the protection and sustainable use of the Caatinga Biome. In particular, the project has negotiated with the National Fund for the Environment (FNMA) the approval of seven Climate Change pilot projects that will serve as basis for the discussion of a future credit line for the project priority areas.;
40344335	2009	\N	\N	GEF	4040	United Nations Development Programme (UNDP)	Brazil (Ministry of Science & Technology)	2,700,000.00	USD	2,167,178.62	2,700,000.00	10,415,000.00	USD					TT-Pilot (GEF-4): Renewable CO2 Capture and Storage from Sugar Fermentation Industry in Sao Paulo State		description:Removal of barriers to the deployment, diffusion and transfer of renewable CO2 capture and storage technology from sugar fermentation in the production of ethanol;
\.


--
-- TOC entry 1771 (class 2606 OID 16435)
-- Dependencies: 1492 1492
-- Name: project_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY project
    ADD CONSTRAINT project_pkey PRIMARY KEY (projectid);


-- Completed on 2012-02-07 20:39:07

--
-- PostgreSQL database dump complete
--

