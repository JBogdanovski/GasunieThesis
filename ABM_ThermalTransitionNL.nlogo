extensions [ gis csv profiler]

globals [
  ;; Setup state

  model-setup ; if true the model only has to be reset

  ;;; dataset variables
  mp-dataset
  nh-dataset
  RA-table
  network-dataset
  heatsource-dataset
  mr-dataset

  ;;; model/input parameters
  national-hhs

  ;; test reporter
  peak-gas

  ;; OUTPUT REPORTERS
  ; NL transition penalty points
  output-nl-tpp

  ; NL mp transition starts per year
  output-nl-ts

  ; NL nh transition states per year
  output-nl-nh-tst
  output-nl-nh-it
  output-nl-nh-tf

  ; National peak energy output kw
  output-nl-kw
  output-nl-ng-kw
  output-nl-e-kw
  output-nl-h-kw
  output-nl-gg-kw
  output-nl-h2-kw

  ; National peak energy output m3
  output-nl-ng-m3
  output-nl-gg-m3
  output-nl-h2-m3

  ; output MR's ng kw
  output-mr-Abbenbroek-ng-kw
  output-mr-Achterdrempt-ng-kw
  output-mr-Alkmaar-ng-kw
  output-mr-Angerlo-ng-kw
  output-mr-Apeldoorn-ng-kw
  output-mr-Assumburg-ng-kw
  output-mr-Axel-ng-kw
  output-mr-Baal-ng-kw
  output-mr-Belfeld-ng-kw
  output-mr-Bemelen-ng-kw
  output-mr-Best-ng-kw
  output-mr-Beverwijk-ng-kw
  output-mr-Birstum-ng-kw
  output-mr-Bleiswijk-ng-kw
  output-mr-Bornerbroek-ng-kw
  output-mr-Boxtel-ng-kw
  output-mr-DenKaat-ng-kw
  output-mr-Driehuis-ng-kw
  output-mr-Eext-ng-kw
  output-mr-Emmeloord-ng-kw
  output-mr-Enschede-ng-kw
  output-mr-Esveld-ng-kw
  output-mr-Ewijk-ng-kw
  output-mr-Gilze-ng-kw
  output-mr-Gravenpolder-ng-kw
  output-mr-Groenlo-ng-kw
  output-mr-Gronsveld-ng-kw
  output-mr-Haren-ng-kw
  output-mr-Heerhugowaard-ng-kw
  output-mr-Hengelo-ng-kw
  output-mr-Hilversum-ng-kw
  output-mr-Hoofddorp-ng-kw
  output-mr-Hoogezand-ng-kw
  output-mr-Ijsselmonde-ng-kw
  output-mr-Krimpenerwaard-ng-kw
  output-mr-Lambertschaag-ng-kw
  output-mr-Leusden-Zuid-ng-kw
  output-mr-Lingewaal-ng-kw
  output-mr-Lurkeers-ng-kw
  output-mr-Melick-ng-kw
  output-mr-Middelrode-ng-kw
  output-mr-Mierlo-ng-kw
  output-mr-Mill-ng-kw
  output-mr-Moergestel-ng-kw
  output-mr-Nederweert-ng-kw
  output-mr-Nijkerk-ng-kw
  output-mr-Nijland-ng-kw
  output-mr-Odijk-ng-kw
  output-mr-Ommeloop-ng-kw
  output-mr-Oosteind-ng-kw
  output-mr-Oostum-ng-kw
  output-mr-Opsterland-ng-kw
  output-mr-Oss-ng-kw
  output-mr-Ossendrecht-ng-kw
  output-mr-Oudverlaat-ng-kw
  output-mr-Reek-ng-kw
  output-mr-Reijerscop-ng-kw
  output-mr-Rijnsburg-ng-kw
  output-mr-Rijsbergen-ng-kw
  output-mr-Rijswijk-ng-kw
  output-mr-Sanderbout-ng-kw
  output-mr-Scheemda-ng-kw
  output-mr-Schinnen-ng-kw
  output-mr-Schuilenburg-ng-kw
  output-mr-Simpelveld-ng-kw
  output-mr-Sloten-ng-kw
  output-mr-tWoudt-ng-kw
  output-mr-Tiel-ng-kw
  output-mr-Valburg-ng-kw
  output-mr-Venray-ng-kw
  output-mr-Visvliet-ng-kw
  output-mr-Vlaardingen-ng-kw
  output-mr-Vondelingenplaat-ng-kw
  output-mr-Voorburg-ng-kw
  output-mr-Weesp-ng-kw
  output-mr-Westerbork-ng-kw
  output-mr-Wezep-ng-kw
  output-mr-Wijngaarden-ng-kw
  output-mr-Zaltbommel-ng-kw
  output-mr-Zegge-ng-kw
  output-mr-Zoeterwoude-ng-kw
  output-mr-Zuid-Kraayert-ng-kw
  output-mr-Zuideropgaande-ng-kw

  ; output MR' gg kw
  output-mr-Abbenbroek-gg-kw
  output-mr-Achterdrempt-gg-kw
  output-mr-Alkmaar-gg-kw
  output-mr-Angerlo-gg-kw
  output-mr-Apeldoorn-gg-kw
  output-mr-Assumburg-gg-kw
  output-mr-Axel-gg-kw
  output-mr-Baal-gg-kw
  output-mr-Belfeld-gg-kw
  output-mr-Bemelen-gg-kw
  output-mr-Best-gg-kw
  output-mr-Beverwijk-gg-kw
  output-mr-Birstum-gg-kw
  output-mr-Bleiswijk-gg-kw
  output-mr-Bornerbroek-gg-kw
  output-mr-Boxtel-gg-kw
  output-mr-DenKaat-gg-kw
  output-mr-Driehuis-gg-kw
  output-mr-Eext-gg-kw
  output-mr-Emmeloord-gg-kw
  output-mr-Enschede-gg-kw
  output-mr-Esveld-gg-kw
  output-mr-Ewijk-gg-kw
  output-mr-Gilze-gg-kw
  output-mr-Gravenpolder-gg-kw
  output-mr-Groenlo-gg-kw
  output-mr-Gronsveld-gg-kw
  output-mr-Haren-gg-kw
  output-mr-Heerhugowaard-gg-kw
  output-mr-Hengelo-gg-kw
  output-mr-Hilversum-gg-kw
  output-mr-Hoofddorp-gg-kw
  output-mr-Hoogezand-gg-kw
  output-mr-Ijsselmonde-gg-kw
  output-mr-Krimpenerwaard-gg-kw
  output-mr-Lambertschaag-gg-kw
  output-mr-Leusden-Zuid-gg-kw
  output-mr-Lingewaal-gg-kw
  output-mr-Lurkeers-gg-kw
  output-mr-Melick-gg-kw
  output-mr-Middelrode-gg-kw
  output-mr-Mierlo-gg-kw
  output-mr-Mill-gg-kw
  output-mr-Moergestel-gg-kw
  output-mr-Nederweert-gg-kw
  output-mr-Nijkerk-gg-kw
  output-mr-Nijland-gg-kw
  output-mr-Odijk-gg-kw
  output-mr-Ommeloop-gg-kw
  output-mr-Oosteind-gg-kw
  output-mr-Oostum-gg-kw
  output-mr-Opsterland-gg-kw
  output-mr-Oss-gg-kw
  output-mr-Ossendrecht-gg-kw
  output-mr-Oudverlaat-gg-kw
  output-mr-Reek-gg-kw
  output-mr-Reijerscop-gg-kw
  output-mr-Rijnsburg-gg-kw
  output-mr-Rijsbergen-gg-kw
  output-mr-Rijswijk-gg-kw
  output-mr-Sanderbout-gg-kw
  output-mr-Scheemda-gg-kw
  output-mr-Schinnen-gg-kw
  output-mr-Schuilenburg-gg-kw
  output-mr-Simpelveld-gg-kw
  output-mr-Sloten-gg-kw
  output-mr-tWoudt-gg-kw
  output-mr-Tiel-gg-kw
  output-mr-Valburg-gg-kw
  output-mr-Venray-gg-kw
  output-mr-Visvliet-gg-kw
  output-mr-Vlaardingen-gg-kw
  output-mr-Vondelingenplaat-gg-kw
  output-mr-Voorburg-gg-kw
  output-mr-Weesp-gg-kw
  output-mr-Westerbork-gg-kw
  output-mr-Wezep-gg-kw
  output-mr-Wijngaarden-gg-kw
  output-mr-Zaltbommel-gg-kw
  output-mr-Zegge-gg-kw
  output-mr-Zoeterwoude-gg-kw
  output-mr-Zuid-Kraayert-gg-kw
  output-mr-Zuideropgaande-gg-kw

  ; output MR's h2 kw
  output-mr-Abbenbroek-h2-kw
  output-mr-Achterdrempt-h2-kw
  output-mr-Alkmaar-h2-kw
  output-mr-Angerlo-h2-kw
  output-mr-Apeldoorn-h2-kw
  output-mr-Assumburg-h2-kw
  output-mr-Axel-h2-kw
  output-mr-Baal-h2-kw
  output-mr-Belfeld-h2-kw
  output-mr-Bemelen-h2-kw
  output-mr-Best-h2-kw
  output-mr-Beverwijk-h2-kw
  output-mr-Birstum-h2-kw
  output-mr-Bleiswijk-h2-kw
  output-mr-Bornerbroek-h2-kw
  output-mr-Boxtel-h2-kw
  output-mr-DenKaat-h2-kw
  output-mr-Driehuis-h2-kw
  output-mr-Eext-h2-kw
  output-mr-Emmeloord-h2-kw
  output-mr-Enschede-h2-kw
  output-mr-Esveld-h2-kw
  output-mr-Ewijk-h2-kw
  output-mr-Gilze-h2-kw
  output-mr-Gravenpolder-h2-kw
  output-mr-Groenlo-h2-kw
  output-mr-Gronsveld-h2-kw
  output-mr-Haren-h2-kw
  output-mr-Heerhugowaard-h2-kw
  output-mr-Hengelo-h2-kw
  output-mr-Hilversum-h2-kw
  output-mr-Hoofddorp-h2-kw
  output-mr-Hoogezand-h2-kw
  output-mr-Ijsselmonde-h2-kw
  output-mr-Krimpenerwaard-h2-kw
  output-mr-Lambertschaag-h2-kw
  output-mr-Leusden-Zuid-h2-kw
  output-mr-Lingewaal-h2-kw
  output-mr-Lurkeers-h2-kw
  output-mr-Melick-h2-kw
  output-mr-Middelrode-h2-kw
  output-mr-Mierlo-h2-kw
  output-mr-Mill-h2-kw
  output-mr-Moergestel-h2-kw
  output-mr-Nederweert-h2-kw
  output-mr-Nijkerk-h2-kw
  output-mr-Nijland-h2-kw
  output-mr-Odijk-h2-kw
  output-mr-Ommeloop-h2-kw
  output-mr-Oosteind-h2-kw
  output-mr-Oostum-h2-kw
  output-mr-Opsterland-h2-kw
  output-mr-Oss-h2-kw
  output-mr-Ossendrecht-h2-kw
  output-mr-Oudverlaat-h2-kw
  output-mr-Reek-h2-kw
  output-mr-Reijerscop-h2-kw
  output-mr-Rijnsburg-h2-kw
  output-mr-Rijsbergen-h2-kw
  output-mr-Rijswijk-h2-kw
  output-mr-Sanderbout-h2-kw
  output-mr-Scheemda-h2-kw
  output-mr-Schinnen-h2-kw
  output-mr-Schuilenburg-h2-kw
  output-mr-Simpelveld-h2-kw
  output-mr-Sloten-h2-kw
  output-mr-tWoudt-h2-kw
  output-mr-Tiel-h2-kw
  output-mr-Valburg-h2-kw
  output-mr-Venray-h2-kw
  output-mr-Visvliet-h2-kw
  output-mr-Vlaardingen-h2-kw
  output-mr-Vondelingenplaat-h2-kw
  output-mr-Voorburg-h2-kw
  output-mr-Weesp-h2-kw
  output-mr-Westerbork-h2-kw
  output-mr-Wezep-h2-kw
  output-mr-Wijngaarden-h2-kw
  output-mr-Zaltbommel-h2-kw
  output-mr-Zegge-h2-kw
  output-mr-Zoeterwoude-h2-kw
  output-mr-Zuid-Kraayert-h2-kw
  output-mr-Zuideropgaande-h2-kw

  ;output MR's e kw
  output-mr-Abbenbroek-e-kw
  output-mr-Achterdrempt-e-kw
  output-mr-Alkmaar-e-kw
  output-mr-Angerlo-e-kw
  output-mr-Apeldoorn-e-kw
  output-mr-Assumburg-e-kw
  output-mr-Axel-e-kw
  output-mr-Baal-e-kw
  output-mr-Belfeld-e-kw
  output-mr-Bemelen-e-kw
  output-mr-Best-e-kw
  output-mr-Beverwijk-e-kw
  output-mr-Birstum-e-kw
  output-mr-Bleiswijk-e-kw
  output-mr-Bornerbroek-e-kw
  output-mr-Boxtel-e-kw
  output-mr-DenKaat-e-kw
  output-mr-Driehuis-e-kw
  output-mr-Eext-e-kw
  output-mr-Emmeloord-e-kw
  output-mr-Enschede-e-kw
  output-mr-Esveld-e-kw
  output-mr-Ewijk-e-kw
  output-mr-Gilze-e-kw
  output-mr-Gravenpolder-e-kw
  output-mr-Groenlo-e-kw
  output-mr-Gronsveld-e-kw
  output-mr-Haren-e-kw
  output-mr-Heerhugowaard-e-kw
  output-mr-Hengelo-e-kw
  output-mr-Hilversum-e-kw
  output-mr-Hoofddorp-e-kw
  output-mr-Hoogezand-e-kw
  output-mr-Ijsselmonde-e-kw
  output-mr-Krimpenerwaard-e-kw
  output-mr-Lambertschaag-e-kw
  output-mr-Leusden-Zuid-e-kw
  output-mr-Lingewaal-e-kw
  output-mr-Lurkeers-e-kw
  output-mr-Melick-e-kw
  output-mr-Middelrode-e-kw
  output-mr-Mierlo-e-kw
  output-mr-Mill-e-kw
  output-mr-Moergestel-e-kw
  output-mr-Nederweert-e-kw
  output-mr-Nijkerk-e-kw
  output-mr-Nijland-e-kw
  output-mr-Odijk-e-kw
  output-mr-Ommeloop-e-kw
  output-mr-Oosteind-e-kw
  output-mr-Oostum-e-kw
  output-mr-Opsterland-e-kw
  output-mr-Oss-e-kw
  output-mr-Ossendrecht-e-kw
  output-mr-Oudverlaat-e-kw
  output-mr-Reek-e-kw
  output-mr-Reijerscop-e-kw
  output-mr-Rijnsburg-e-kw
  output-mr-Rijsbergen-e-kw
  output-mr-Rijswijk-e-kw
  output-mr-Sanderbout-e-kw
  output-mr-Scheemda-e-kw
  output-mr-Schinnen-e-kw
  output-mr-Schuilenburg-e-kw
  output-mr-Simpelveld-e-kw
  output-mr-Sloten-e-kw
  output-mr-tWoudt-e-kw
  output-mr-Tiel-e-kw
  output-mr-Valburg-e-kw
  output-mr-Venray-e-kw
  output-mr-Visvliet-e-kw
  output-mr-Vlaardingen-e-kw
  output-mr-Vondelingenplaat-e-kw
  output-mr-Voorburg-e-kw
  output-mr-Weesp-e-kw
  output-mr-Westerbork-e-kw
  output-mr-Wezep-e-kw
  output-mr-Wijngaarden-e-kw
  output-mr-Zaltbommel-e-kw
  output-mr-Zegge-e-kw
  output-mr-Zoeterwoude-e-kw
  output-mr-Zuid-Kraayert-e-kw
  output-mr-Zuideropgaande-e-kw

  ; output MR's h kw
  output-mr-Abbenbroek-h-kw
  output-mr-Achterdrempt-h-kw
  output-mr-Alkmaar-h-kw
  output-mr-Angerlo-h-kw
  output-mr-Apeldoorn-h-kw
  output-mr-Assumburg-h-kw
  output-mr-Axel-h-kw
  output-mr-Baal-h-kw
  output-mr-Belfeld-h-kw
  output-mr-Bemelen-h-kw
  output-mr-Best-h-kw
  output-mr-Beverwijk-h-kw
  output-mr-Birstum-h-kw
  output-mr-Bleiswijk-h-kw
  output-mr-Bornerbroek-h-kw
  output-mr-Boxtel-h-kw
  output-mr-DenKaat-h-kw
  output-mr-Driehuis-h-kw
  output-mr-Eext-h-kw
  output-mr-Emmeloord-h-kw
  output-mr-Enschede-h-kw
  output-mr-Esveld-h-kw
  output-mr-Ewijk-h-kw
  output-mr-Gilze-h-kw
  output-mr-Gravenpolder-h-kw
  output-mr-Groenlo-h-kw
  output-mr-Gronsveld-h-kw
  output-mr-Haren-h-kw
  output-mr-Heerhugowaard-h-kw
  output-mr-Hengelo-h-kw
  output-mr-Hilversum-h-kw
  output-mr-Hoofddorp-h-kw
  output-mr-Hoogezand-h-kw
  output-mr-Ijsselmonde-h-kw
  output-mr-Krimpenerwaard-h-kw
  output-mr-Lambertschaag-h-kw
  output-mr-Leusden-Zuid-h-kw
  output-mr-Lingewaal-h-kw
  output-mr-Lurkeers-h-kw
  output-mr-Melick-h-kw
  output-mr-Middelrode-h-kw
  output-mr-Mierlo-h-kw
  output-mr-Mill-h-kw
  output-mr-Moergestel-h-kw
  output-mr-Nederweert-h-kw
  output-mr-Nijkerk-h-kw
  output-mr-Nijland-h-kw
  output-mr-Odijk-h-kw
  output-mr-Ommeloop-h-kw
  output-mr-Oosteind-h-kw
  output-mr-Oostum-h-kw
  output-mr-Opsterland-h-kw
  output-mr-Oss-h-kw
  output-mr-Ossendrecht-h-kw
  output-mr-Oudverlaat-h-kw
  output-mr-Reek-h-kw
  output-mr-Reijerscop-h-kw
  output-mr-Rijnsburg-h-kw
  output-mr-Rijsbergen-h-kw
  output-mr-Rijswijk-h-kw
  output-mr-Sanderbout-h-kw
  output-mr-Scheemda-h-kw
  output-mr-Schinnen-h-kw
  output-mr-Schuilenburg-h-kw
  output-mr-Simpelveld-h-kw
  output-mr-Sloten-h-kw
  output-mr-tWoudt-h-kw
  output-mr-Tiel-h-kw
  output-mr-Valburg-h-kw
  output-mr-Venray-h-kw
  output-mr-Visvliet-h-kw
  output-mr-Vlaardingen-h-kw
  output-mr-Vondelingenplaat-h-kw
  output-mr-Voorburg-h-kw
  output-mr-Weesp-h-kw
  output-mr-Westerbork-h-kw
  output-mr-Wezep-h-kw
  output-mr-Wijngaarden-h-kw
  output-mr-Zaltbommel-h-kw
  output-mr-Zegge-h-kw
  output-mr-Zoeterwoude-h-kw
  output-mr-Zuid-Kraayert-h-kw
  output-mr-Zuideropgaande-h-kw


  output-mr-Vlaardingen-tpp
  output-mr-Haren-tpp
  output-mr-Westerbork-tpp

  ; energy output of 3 specific mp's

  ; energy output MR Vlaardingen MP's
  output-mp-Rotterdam-ng-m3
  output-mp-Rotterdam-gg-m3
  output-mp-Rotterdam-h2-m3
  output-mp-Rotterdam-ng-kw
  output-mp-Rotterdam-gg-kw
  output-mp-Rotterdam-h2-kw
  output-mp-Rotterdam-e-kw
  output-mp-Rotterdam-h-kw
  output-mp-Rotterdam-tpp

  output-mp-Vlaardingen-ng-m3
  output-mp-Vlaardingen-gg-m3
  output-mp-Vlaardingen-h2-m3
  output-mp-Vlaardingen-ng-kw
  output-mp-Vlaardingen-gg-kw
  output-mp-Vlaardingen-h2-kw
  output-mp-Vlaardingen-e-kw
  output-mp-Vlaardingen-h-kw
  output-mp-Vlaardingen-tpp

  output-mp-Maassluis-ng-m3
  output-mp-Maassluis-gg-m3
  output-mp-Maassluis-h2-m3
  output-mp-Maassluis-ng-kw
  output-mp-Maassluis-gg-kw
  output-mp-Maassluis-h2-kw
  output-mp-Maassluis-e-kw
  output-mp-Maassluis-h-kw
  output-mp-Maassluis-tpp

  output-mp-Schiedam-ng-m3
  output-mp-Schiedam-gg-m3
  output-mp-Schiedam-h2-m3
  output-mp-Schiedam-ng-kw
  output-mp-Schiedam-gg-kw
  output-mp-Schiedam-h2-kw
  output-mp-Schiedam-e-kw
  output-mp-Schiedam-h-kw
  output-mp-Schiedam-tpp

  ; energy output MR Haren
  output-mp-Groningen-ng-m3
  output-mp-Groningen-gg-m3
  output-mp-Groningen-h2-m3
  output-mp-Groningen-ng-kw
  output-mp-Groningen-gg-kw
  output-mp-Groningen-h2-kw
  output-mp-Groningen-e-kw
  output-mp-Groningen-h-kw
  output-mp-Groningen-tpp

  output-mp-Leek-ng-m3
  output-mp-Leek-gg-m3
  output-mp-Leek-h2-m3
  output-mp-Leek-ng-kw
  output-mp-Leek-gg-kw
  output-mp-Leek-h2-kw
  output-mp-Leek-e-kw
  output-mp-Leek-h-kw
  output-mp-Leek-tpp

  output-mp-Marum-ng-m3
  output-mp-Marum-gg-m3
  output-mp-Marum-h2-m3
  output-mp-Marum-ng-kw
  output-mp-Marum-gg-kw
  output-mp-Marum-h2-kw
  output-mp-Marum-e-kw
  output-mp-Marum-h-kw
  output-mp-Marum-tpp

  output-mp-Noordenveld-ng-m3
  output-mp-Noordenveld-gg-m3
  output-mp-Noordenveld-h2-m3
  output-mp-Noordenveld-ng-kw
  output-mp-Noordenveld-gg-kw
  output-mp-Noordenveld-h2-kw
  output-mp-Noordenveld-e-kw
  output-mp-Noordenveld-h-kw
  output-mp-Noordenveld-tpp

  output-mp-Haren-ng-m3
  output-mp-Haren-gg-m3
  output-mp-Haren-h2-m3
  output-mp-Haren-ng-kw
  output-mp-Haren-gg-kw
  output-mp-Haren-h2-kw
  output-mp-Haren-e-kw
  output-mp-Haren-h-kw
  output-mp-Haren-tpp

  ; energy output MR Westerbork
  output-mp-Emmen-ng-m3
  output-mp-Emmen-gg-m3
  output-mp-Emmen-h2-m3
  output-mp-Emmen-ng-kw
  output-mp-Emmen-gg-kw
  output-mp-Emmen-h2-kw
  output-mp-Emmen-e-kw
  output-mp-Emmen-h-kw
  output-mp-Emmen-tpp

  output-mp-Westerveld-ng-m3
  output-mp-Westerveld-gg-m3
  output-mp-Westerveld-h2-m3
  output-mp-Westerveld-ng-kw
  output-mp-Westerveld-gg-kw
  output-mp-Westerveld-h2-kw
  output-mp-Westerveld-e-kw
  output-mp-Westerveld-h-kw
  output-mp-Westerveld-tpp

  output-mp-MiddenDrenthe-ng-m3
  output-mp-MiddenDrenthe-gg-m3
  output-mp-MiddenDrenthe-h2-m3
  output-mp-MiddenDrenthe-ng-kw
  output-mp-MiddenDrenthe-gg-kw
  output-mp-MiddenDrenthe-h2-kw
  output-mp-MiddenDrenthe-e-kw
  output-mp-MiddenDrenthe-h-kw
  output-mp-MiddenDrenthe-tpp


  ; nh transition start per tick output
  output-mp-Rotterdam-nh-ts
  output-mp-Groningen-nh-ts
  output-mp-Westerveld-nh-ts

  ; thermal systems of neighborhoods
  output-nh-thermal-system

  ; thermal systems output on nl level
  output-nl-ng
  output-nl-ae
  output-nl-gg
  output-nl-ht/mt
  output-nl-lt
  output-nl-h2

  ; insulation level output on nl level
  output-nl-ins

]

breed [municipalities municipality]
breed [neighborhoods neighborhood]

breed [heatsources heatsource] ;; turtle used for implementing local MT heatsources
breed [ggsources ggsource] ; turtle used for tracking green gas availability in the Netherlands

breed [mrstations mrstation] ;; turtle used for aggregating municipal thermal energy demand

undirected-link-breed [information-links information-link]

municipalities-own [

  ; Input variables from CBS datasets
  mp-name ;municipality name
  mp-code ;municipality code
  mp-hhs ;municipality number of households
  mp-mr-station ; closest mr station this mp is connected to

  ; Model variables
  mp-nh-list ;municipalities agentset containing its neighborhoods
  mp-network-list ; municipality agentset containing all the agents/links that it evaluates (when not evaluating all) TO BE CODED
  mp-transition-goal ;municipality parameter containing the speed it should maintain for the transition translated from the national goals in the Klimaatakkoord [hhs/year]
  mp-transition-state ; municipality transition state; can be "in-transition" and "transition-finished"

  mp-resources-max ; model variable that represents the max number of households a mp can have in transition at the same time
  mp-resources-available ; model variable that represents the available resources that can still be allocated to transitioning a neighborhood
  mp-resources-available-state ; model municipality state that indicates whether the mp has any resources left to transition any of its neighborhoods true/false

  mp-transition-speed ; model variable that tracks the transition speed of a municipality
  mp-hhs-transitioned ; model varibale that tracks the total nr of households a mp has started the transtion of
  mp-goal-deviation ; model variable that tracks how much the mp deviates from its mp transition goal
  mp-pressure ; model variable that indicates the pressure a mp perceives based on how much it deviates from its goal (- deviation) Pressure is a percentage: -0.50 means 50% ahead of transition-goal --> thus negative pressure; 0.50 is 50% behind of transition goal -> positive pressure
  mp-pressure-state ; model state that indicates whether the mp feels pressured to take action based on national goal and its current progress

  mp-network-activity-AE ; municipality list variable that stores the transition actity of its network for all-electric thermal systems
  mp-network-activity-HT/MT ; municipality list variable that stores the transition actity of its network for HT/MT thermal systems
  mp-network-activity-LT ; municipality list variable that stores the transition actity of its network for LT thermal systems
  mp-network-activity-GG ; municipality list variable that stores the transition actity of its network for greengas thermal systems
  mp-network-activity-H2 ; municipality list variable that stores the transition actity of its network for hydrogen thermal systems
  mp-top-n-link-list ; municipality variable that stores the top n other mp's that it shares transition actiivty with

  mp-transitions-this-year ;; temp plotting variable
]

neighborhoods-own [
  ; Input variables from CBS dataset
  nh-name ;neighborhood name
  nh-mp-name ;neighborhood's municipality name
  nh-code ;neighborhood code
  nh-mp-code ;neighborhood's municipality code
  nh-hhs ;neighborhood number of households
  nh-sted ;neighborhood level of urban density
  nh-gas ; neighborhood average gas use per hh
  nh-ins-t0 ;neighborhood insulation level at t0
  nh-ins ; neighborhood insulation level that can develop over time
  nh-mr-station ; neighborhood variable that contains the mr-station its municipality is connected to

  nh-corp ; neighborhood percentage of corporation possession
  nh-dhc ; neighorhood percentage of district heating systems
  nh-nieuw ; neighborhood percentage of dwellings from 2000
  nh-woz ; neighborhood avg value of WOZ value (property value)

  nh-flatapp ; neighborhood percentage flats or appartments
  nh-vrij ; neigbhorhood percentage of villas
  nh-rijhoek ; neighborhood percentage of corner rowhouses
  nh-rijtussen ; neighborhood percentage of rowhouses (excl corners)
  nh-21kap ; neighborhood percentage of 2 under 1 roof dwellings

  ; Model variables
  nh-mp-agent ; neighborhood agentset containing the municipality agent it belongs to
  nh-transition-state ; neighborhood transition state; can be "to-start-transition", "in-transition" and "transition-finished"
  nh-neighborhood-type ; neighborhood type [0 to 11], used for determining the relative probability it will transition to any of the thermal options
  nh-thermal-system ; neighborhoods current thermal system, can be "NG" = natural gas, "AE" = all-electric, "HT/MT" = DHC high or medium temp, "LT" = DHC low temp, "GG" = green gas heat pumps, "H2" = hydrogen heat pumps
  nh-transition-time-left ; neighborhood variable that tracks how many more ticks it will take for the neighborhood to complete its transition

  nh-filter ; model variable that counts from 0 to 8 according to how many tresholds of the filter variables it is compliant

  nh-th-energy-use-y-t0 ; neighborhood thermal energy use per year in Joule at t0
  nh-th-energy-use-y ; neighborhood thermal energy use per year in Joule
  nh-th-energy-peak-KW-t0
  nh-th-energy-peak-kW ; neigbhborhood thermal energy peak power in kW

  nh-AE-available ; neighborhood state variable that indicates whether this thermal system is available for it
  nh-HT/MT-available ; neighborhood state variable that indicates whether this thermal system is available for it
  nh-LT-available ; neighborhood state variable that indicates whether this thermal system is available for it
  nh-GG-available ; neighborhood state variable that indicates whether this thermal system is available for it
  nh-H2-available ; neighborhood state variable that indicates whether this thermal system is available for it   --->> 100 tm 158 TWh available according to estimation of Infastructure Outlook 2050

  nh-best-available ; neighborhood variable that indicates what best thermal system is available for this neighborhood (0 = best pick available --> 4 = last pick only available) --> used for calculating transition penalty points

  nh-gelijktijdigheidsfactor ; because households are aggregated in neighborhoods, we cannot simply add up their peak demands, therefore we need to use this factor that effectively spreads out their peak demand over time. (ecofys)

  nh-potential-heatsource ; this variable tracks the potential heatsource that can be used for a neighborhood to extract its heat from

  nh-min-ins ; this state variable tracks whether the minimum insulation level is reached for this neighborhood. If not then a transition is not possible. this assumption can be switched on and off in the interface

  nh-ng-peak-kW ; model output variable that tracks the neighborhoods peak demand for natural gas in kW (NG thermal systems)
  nh-ng-peak-m3 ; model output variable that tracks the neighborhoods peak demand for natural gas in m3 / hr (NG thermal systems)
  nh-e-peak-kW ; model output variable that tracks the neighborhoods peak demand for electricity in kW (AE, GG and H2 thermal systems)
  nh-h-peak-kW ; model output variable that tracks the neighborhoods peak demand for heat in kW (HT/MT and LT thermal systems)
  nh-gg-peak-kW ; model output variable that tracks the neighborhoods peak demand for greengas in kW (GG thermal systems)
  nh-gg-peak-m3 ; ; model output variable that tracks the neighborhoods peak demand for greengas in m3 / hr (GG thermal systems)
  nh-h2-peak-kW ; model output variable that tracks the neighborhoods peak demand for hydrogen in kW (h2 thermal systems)
  nh-h2-peak-m3 ; ; model output variable that tracks the neighborhoods peak demand for hydrogen in m3 / hr (h2 thermal systems)
]

heatsources-own [
  hs-name
  hs-MW-capacity-t0 ;MW capacity of heatsource at t0
  hs-MW-capacity ; Mw capacity that is used over time to  keep track of capacity
]

ggsources-own [
  gg-MW-capacity
  gg-J-y-t0
  gg-J-y-used
  gg-J-y-current
]

mrstations-own [
  mr-name
  mr-ng-m3
]

links-own [information-volume]

;; //////////////// LOADING DATA ////////////////

to load-data
  print "start load-data"
  load-gis
  load-cost
  load-network
  load-MR
  print "finished load-data"
end

;; ----------------- CBS Dataframes

to load-gis ;load the GIS datasets
  ; projection system is WSG84 EPSG 32632
  gis:load-coordinate-system ("Dataframes/Municipalities/municipalities.prj")
  set mp-dataset gis:load-dataset "Dataframes/Municipalities/municipalities.shp"
  set nh-dataset gis:load-dataset "Dataframes/Neighborhoods/neighborhoods.shp"
  set heatsource-dataset gis:load-dataset "Dataframes/Heatsources/MT_puntbronnen_v1.shp"
  gis:set-world-envelope (gis:envelope-of mp-dataset)
end

;; ----------------- Other Dataframes

to load-cost ;load the cost sheets in variables TEMPORARY DF
  set RA-table csv:from-file "Dataframes/RA_table.csv"
end

to load-network
  set network-dataset csv:from-file "Dataframes/gravity_df.csv"
end

to load-MR
  set mr-dataset csv:from-file "Dataframes/Municipalities/MR_stations.csv"
end


;; //////////////// SETUP MODEL ////////////////

to bs-setup
  ifelse not any? turtles
  [setup]
  [reset]
end

to setup
  clear-all

  random-seed 222

  load-data

  ask municipalities [die]
  ask neighborhoods [die]
  ask heatsources [die]

  setup-mr-stations

  setup-mp-gis
  setup-mp-network
  setup-mp-network-selection
  setup-mp-transition-goal
  setup-mp-variables

  setup-nh-gis
  setup-nh-variables
  setup-nh-type
  setup-nh-count-filter

  setup-hs-gis
  setup-gg-source

  setup-mp-nh-agentset
  setup-nh-mp-agent


  set model-setup true


  reset-ticks
end

;; ----------------- Setup Municipalities


to setup-mp-gis ; 	This procedure sets up the municipality agens according to the CBS Wijken en Buurten dataframe
  print "start draw-mp-gis"
  gis:set-drawing-color white
  gis:draw mp-dataset 1
  foreach gis:feature-list-of mp-dataset [ vector-feature -> ; the fector features are the set of vertices that make up a municipality
    let centroid gis:location-of gis:centroid-of vector-feature ; centroid is the middle of the feature
    if not empty? centroid
    [create-municipalities 1 ; create a municipality agent on the centroid location
      [ set color blue
        set xcor item 0 centroid
        set ycor item 1 centroid
        set size 3
        set shape "house"
        if not mp-icons [ht]
        ;ht
        setup-mp-gis-variables vector-feature ;calls for specific function where all the GIS variables are loaded in the municipalities
  ]]]
  print "finished draw-mp-gis"
end

to setup-mp-gis-variables [vector-feature] ;	This procedure sets up all the variables per municipality according to what is included in the CBS dataframe
  set mp-name gis:property-value vector-feature "GM_NAAM"
  set mp-code gis:property-value vector-feature "GM_CODE"
  set mp-hhs gis:property-value vector-feature "AANTAL_HH"
  set mp-mr-station gis:property-value vector-feature "Station1"
end

to setup-mp-variables
  print "start mp-variables"
  ask municipalities [
    set mp-resources-max (mp-resource-percentage * mp-hhs / 100) ; set max number of hh's that can be transitioned at the same time to a percentage of the total number of households
    set mp-resources-available mp-resources-max ; set t0 value for resources available to max available
    set mp-transition-state "in-transition" ; default state for municipalities
    set mp-resources-available-state false ; default state for municipalities; it first has to check it for true which is done in go
    set mp-transition-speed 0
    set mp-hhs-transitioned 0
    set mp-goal-deviation 0
    set mp-pressure 0
    set mp-pressure-state false ;default state for municipalities; it first has to check it for true which is done in go
  ]
  print "finished draw-mp-gis"
end

to setup-mp-nh-agentset
  print "start mp-nh-agentset"
  ; function that loads all neighborhoods in an agentset with their corresponding municipality
  ; compute this one time -> export this as a datafile and then load it in the model; searching takes a lot of time; use csv: GM_xxxx, BU_xxxx BU_xxxx etc
  ask municipalities [
    set mp-nh-list no-turtles] ; create an empty agentset of the variable mp-nh-list
  ask neighborhoods [
    ask municipalities with [mp-code = [nh-mp-code] of myself] [
      set mp-nh-list (turtle-set mp-nh-list myself)]]
  print "finish mp-nh-agentset"
end

to setup-mp-transition-goal ; this procedure sets up the mp-transition-goal variable used for calculating the pressure on a municipality
  print "start mp-transition-goal"
  set national-hhs sum [mp-hhs] of municipalities ; total amount of household in the model is equal to all households of the included neighborhoods
  ;set national-transition-goal 50000 ; currently speed to 2030 from klimaatakkoord
  ask municipalities [
    set mp-transition-goal ((national-transition-goal * mp-hhs) / national-hhs)] ; ASSUMPTION: transition goal for municipalities is a direct translation from the national goal
  print "finish mp-transition-goal"
end

;;;;;;;

to setup-mp-network ; verified with python scripts
  print "start setup-mp-network"
  ask links [die] ; remove all existing links before starting this procedure again
  ask municipalities [
  let pos-own-name position mp-name (item 0 network-dataset) ; determines the index position of the current municipality
  let row item pos-own-name network-dataset ; using the index number, the row containing all the gravity volumes per municipality combination is stored in row
  let i 0 ; i is initialized to 0 so that it can be iterated over in the next step
  foreach row [ ; iterating over the items in the row of this municipality
    if not is-string? item i row [ ; this line prevents from doing something with item 0 in the row, which is the name of the current municipality
      let gravity-number item i row ; the item i in the row is the information-volume between this municipality and the other
      let to-be-linked-mp item i (item 0 network-dataset) ; the index of item i in row corresponds to the name of the other municipality in the header of the dataset in row 0
      if (to-be-linked-mp != mp-name) [ ; this if statement prevents from the municipality trying to link with itself, which is not possible
      create-information-link-with one-of municipalities with [mp-name = to-be-linked-mp] [ ; create undirected information-link with current municipality and the one iterated over in the row
        set information-volume gravity-number ; set the information-volume variable belonging to this link equal to the gravity-volume
        hide-link ;hide the links in the visualization
        ]
      ]
    ]
    set i (i + 1)
 ]
  ]
  print "finish setup-mp-network"
end

to setup-mp-network-selection ; make top selection of n most important municipalities in network
  print "start setup-mp-network-selection"
  ask municipalities [
    ;set mp-top-n-link-list no-turtles ; create empty agentset so this list is an agentset instead of list
    ;set mp-top-n-link-list (turtle-set [other-end] of max-n-of mp-top-n my-links [information-volume])

    set mp-top-n-link-list [other-end] of max-n-of mp-top-n my-links [information-volume]
  ]

  print "finish setup-mp-network-selection"
end

;;;;;;;


;; ----------------- Setup Neighborhoods


to setup-nh-gis
  print "start setup-nh-gis"
  foreach gis:feature-list-of nh-dataset [ vector-feature ->
    let centroid gis:location-of gis:centroid-of vector-feature
    if not empty? centroid
    [create-neighborhoods 1
      [ set color grey
        set xcor item 0 centroid
        set ycor item 1 centroid
        set size 1
        set shape "person"
        setup-nh-gis-variables vector-feature]]] ;calls for specific function where all the GIS variables are loaded in the neighborhoods
  print "finish setup-nh-gis"
end

to setup-nh-gis-variables [vector-feature];load all data from the vector features into the neighborhood agents
  set nh-name gis:property-value vector-feature "BU_NAAM"
  set nh-mp-name gis:property-value vector-feature "GM_NAAM"
  set nh-code gis:property-value vector-feature "BU_CODE"
  set nh-mp-code gis:property-value vector-feature "GM_CODE"
  set nh-sted gis:property-value vector-feature "STED"
  set nh-ins-t0 gis:property-value vector-feature "LABELCAT"
  set nh-hhs gis:property-value vector-feature "AANTAL_HH"
  set nh-gas gis:property-value vector-feature "G_GAS_TOT"

  set nh-corp gis:property-value vector-feature "P_HUURCORP"
  set nh-dhc gis:property-value vector-feature "P_STADVERW"
  set nh-nieuw gis:property-value vector-feature "P_WONV2000"
  set nh-woz gis:property-value vector-feature "WOZ"

  set nh-flatapp gis:property-value vector-feature "FLAT_APP"
  set nh-vrij gis:property-value vector-feature "VRIJ"
  set nh-rijhoek gis:property-value vector-feature "RIJHOEK"
  set nh-rijtussen gis:property-value vector-feature "RIJTUSSEN"
  set nh-21kap gis:property-value vector-feature "TWEE_KAP"
end

to setup-nh-variables ;	This procedure sets up all the other variables of municipalities that are not in the CBS dataset
  print "start setup-nh-variables"
  ask neighborhoods [
    set nh-transition-state "to-start-transition" ; default to-start-transition TEMPORARY --> add other state possibilities based on their default thermal system
    ;set nh-neighborhood-type random 12 + 1 ; random neighborhood type before setting according to data TEMPORARY
    set nh-thermal-system "NG" ; default natural gas TEMPORARY has to be extended with starting system according to CBS dataset
    set color grey ; default color for NG neighborhoods is GREY
    set nh-transition-time-left nh-transition-duration ; set transition timer to default value that can be set with slider
    ;set nh-resources-for-me? false ; set state that determines whether municipality has resources for this neighborhood to transition to false
    set nh-th-energy-use-y-t0 nh-gas * nh-hhs * 36000000 ; total neighborhood thermal energy use per year in Joule --> calorific upper value https://www.energieleveranciers.nl/energie/begrippen/calorische-waarde
    set nh-th-energy-peak-kW-t0 (nh-gelijktijdigheidsfactor * nh-th-energy-use-y-t0 / 36000000 / 1650 )
    set nh-ins nh-ins-t0 ; set the starting position of insulation equal to data input
    set nh-best-available 0
    set nh-min-ins true

  ]
  nh-calc-th-peak-demand ; procedure that calculates the peak thermal demand of neighborhoods
  nh-calc-esource-peak-demand ; procedure that calculates the peak thermal demand per energysource of neighborhoods

  print "finish setup-nh-variables"
end

to setup-nh-mp-agent ; procedure that asks neighborhoods to create an agentset containing their one municipality
  print "start setup-nh-mp-agent"
  ask neighborhoods [
    set nh-mp-agent one-of municipalities with [mp-code = [nh-mp-code] of myself]
    set nh-mr-station [mp-mr-station] of nh-mp-agent
  ]
  print "finish setup-nh-mp-agent"
end

to setup-nh-type ; function that determines which neighborhood-type the neighborhood is based on insulation level and urban density, based on Ecofys/CE Delft report
  print "start setup-nh-type"
  ask neighborhoods [
    if ((nh-sted = 1) or (nh-sted = 2)) and (nh-ins < 3.5) [ ;
      set nh-neighborhood-type 0]
      ;set size 10    ]
    if ((nh-sted = 1) or (nh-sted = 2)) and (nh-ins >= 3.5) and (nh-ins < 5.5) [
      set nh-neighborhood-type 1]
      ;set size 10    ]
    if ((nh-sted = 1) or (nh-sted = 2)) and (nh-ins >= 5.5) [
      set nh-neighborhood-type 2]
      ;set size 10    ]
    if (nh-sted = 3) and (nh-ins < 3.5) [
      set nh-neighborhood-type 3]
      ;set size 10    ]
    if (nh-sted = 3) and (nh-ins >= 3) and (nh-ins < 5.5) [
      set nh-neighborhood-type 4]
      ;set size 10    ]
    if (nh-sted = 3) and (nh-ins >= 5.5) [
      set nh-neighborhood-type 5]
      ;set size 10    ]
    if (nh-sted = 4) and (nh-ins < 3.5) [
      set nh-neighborhood-type 6]
      ;set size 10    ]
    if (nh-sted = 4) and (nh-ins >= 3.5) and (nh-ins < 5.5) [
      set nh-neighborhood-type 7]
      ;set size 10    ]
    if (nh-sted = 4) and (nh-ins >= 5.5) [
      set nh-neighborhood-type 8]
      ;set size 10    ]
    if (nh-sted = 5) and (nh-ins < 3.5) [
      set nh-neighborhood-type 9]
      ;set size 10    ]
    if (nh-sted = 5) and (nh-ins >= 3.5) and (nh-ins < 5.5) [
      set nh-neighborhood-type 10]
      ;set size 10    ]
    if (nh-sted = 5) and (nh-ins >= 5.5) [
      set nh-neighborhood-type 11]
      ;set size 10    ]
  ]
  print "finish setup-nh-type"
end

to setup-nh-count-filter ; procedure that counts how many tresholds of the district order variables are met and stores it in a variable
  ; first do it without range in-range of MT source --> only needs to be evaluated once (in setup)
  ask neighborhoods [
    set nh-filter 0 ; reset the variable that counts how many of the treshold values it satisfies, the higher the number the more priority the neighborhood has
    if nh-corp > nh-corp-treshold-high [
      set nh-filter nh-filter + 1]
    if nh-corp > nh-corp-treshold-med [
      set nh-filter nh-filter + 1]
    if nh-dhc > nh-dhc-treshold-high [
      set nh-filter nh-filter + 1]
    if nh-dhc > nh-dhc-treshold-med [
      set nh-filter nh-filter + 1]
    if nh-nieuw > nh-nieuw-treshold-high [
      set nh-filter nh-filter + 1]
    if nh-nieuw > nh-nieuw-treshold-med [
      set nh-filter nh-filter + 1]
    if nh-woz > nh-woz-treshold-high [
      set nh-filter nh-filter + 1]
    if nh-woz > nh-woz-treshold-med [
      set nh-filter nh-filter + 1]
  ]
end

;; ----------------- Setup Heatsources

to setup-hs-gis
  foreach gis:feature-list-of heatsource-dataset [ vector-feature ->
    let centroid gis:location-of gis:centroid-of vector-feature
    if not empty? centroid
    [create-heatsources 1
      [ set color pink
        set xcor item 0 centroid
        set ycor item 1 centroid
        set size 3
        set shape "flag"
        set hs-name gis:property-value vector-feature "bron_naam"
        if not hs-labels [ht]
        set hs-MW-capacity-t0 gis:property-value vector-feature "MWCAPACITE" ;netlogo gis does not understand full names apperantly
        set hs-MW-capacity hs-MW-capacity-t0
  ]]]
end

;; ----------------- Setup GG Source

to setup-gg-source
  create-ggsources 1 [
    set color green
    set xcor -90
    set ycor 90
    set size 5
    set shape "flag"
    set gg-J-y-t0 (national-gg-potential-PJ * 10 ^ 15) ; set the gg-J-y stockpile equal to total potential slider and correct to Joule
    set gg-J-y-current gg-J-y-t0
  ]
end

;; ----------------- Setup MR Stations

to setup-mr-stations
  ask mrstations [die]
  foreach mr-dataset [row ->
    create-mrstations 1 [
      set xcor 90
      set ycor 90
      set color yellow
      ht
      set mr-name item 1 row]
  ]
end


;; //////////////// RESET MODEL ////////////////

to reset ;; -> adjust to setup? and make setup startup/initialization?
  reset-municipalities
  reset-nh-variables
  setup-nh-count-filter

  ask ggsources [
    set gg-J-y-t0 (national-gg-potential-PJ * 10 ^ 15) ; set the gg-J-y stockpile equal to total potential slider and correct to Joule
    set gg-J-y-current gg-J-y-t0]

  ask heatsources [
    set hs-MW-capacity hs-MW-capacity-t0]


  clear-all-plots
  reset-ticks
end


;; ----------------- Reset Municipalities

to reset-municipalities
  setup-mp-variables
  setup-mp-transition-goal
end


;; ----------------- Reset Neighborhoods


to reset-nh-variables
  setup-nh-variables ; for now same procedure
  setup-nh-type
end






;; //////////////// GO PROCEDURES ////////////////

to go

  if ticks = 31 [stop] ; stop simulation after 30 years (2020 --> 2050) //  t1 = 2020
  ask municipalities [set mp-transitions-this-year 0]

  ;; UPDATING STATES PROCEDURES

  nh-update-transition ; starting procedure neighborhoods: update their transition progress if in transition and give final color if finished
  mp-update-transition ; starting procedure municipalities: update their transition progress, if transition-finished it will not start other go-procedures

  nh-update-ins ; procedure that updates the neighborhoods insulation level

  nh-calc-th-peak-demand ; procedure that calculates the peak thermal demand of neighborhoods
  nh-calc-esource-peak-demand ; procedure that calculates the peak thermal demand per energysource of neighborhoods

  if (mp-transition-strategy) = "2"  [
    ask neighborhoods with [nh-transition-state = "to-start-transition"] [
      nh-update-best-available]] ; procedure that updates the nh-best-available variable number for every neighborhood, is used in transition procedure with mp-strategy 2
      ; or when monitoring of this variable is switched on, it evaluates this for all strategies

  ask municipalities with [mp-transition-state = "in-transition"] [
    mp-calc-resources-available ; procecure that calculates the amount of resources available for a municipality
    mp-update-resources-state ; procedure that checks if the mp can transition at least one of its nh's based on its available resources
    mp-calc-pressure]

  ; selecting strategy
  if (mp-transition-strategy = "0") [
    mp-transition-strategy-0]
  if (mp-transition-strategy = "1") [
    mp-transition-strategy-1]
  if (mp-transition-strategy = "2") [
    mp-transition-strategy-2]
  if (mp-transition-strategy = "2_inv_nh") [
    mp-transition-strategy-2-inv-nh]
  if (mp-transition-strategy = "2_inv_th") [
  mp-transition-strategy-2-inv-th]
  if (mp-transition-strategy = "2_inv_nh_th") [
    mp-transition-strategy-2-inv-nh-th]
  if (mp-transition-strategy = "3") [
    mp-transition-strategy-3]
  if (mp-transition-strategy = "4") [
    mp-transition-strategy-4
    mp-collect-transition-activity]

  update-output

  tick
end


;; ----------------- Municipality Procedures

to mp-transition-strategy-0 ; mp transition strategy where a random neighborhood is asked to do a random transition
  ask municipalities with [(mp-transition-state = "in-transition") and mp-pressure-state and mp-resources-available-state] [ ; only ask municipalities that are still in transition, perceive enough pressure and have available resources
    set mp-transitions-this-year 0
    while [mp-pressure-state and mp-resources-available-state] [ ; keep transitioning one of their neighborhoods while it still perceives enough pressure and if resources are available, if not it stops the loop
      set mp-transitions-this-year (mp-transitions-this-year + 1) ; model variable used to track how many neighborhoods are transitioned per year per municipality
      let mp-nh-list-within-resources mp-nh-list with [nh-transition-state = "to-start-transition" and nh-min-ins = true and (nh-hhs <= [mp-resources-available] of myself)] ; create a subset of neighborhoods that the municipality can pick to transition
      ask one-of mp-nh-list-within-resources [ ; ask one of this list randomly to transition towards its best available option
        nh-transition-random] ; nh-transition-best-available-cost]
      mp-calc-resources-available
      mp-update-resources-state ; after the neighborhood has started its transition, the municipality has to reevaluate its current resources
      mp-calc-pressure ; the municipality reevaluates the pressure it perceives after transitioning this neighborhood
  ]]
end

to mp-transition-strategy-1 ;  mp transition strategy where a random neighborhood is asked to transition to their best possible thermal system available at that time
  ask municipalities with [(mp-transition-state = "in-transition") and mp-pressure-state and mp-resources-available-state] [ ; only ask municipalities that are still in transition, perceive enough pressure and have available resources
    set mp-transitions-this-year 0
    while [mp-pressure-state and mp-resources-available-state] [ ; keep transitioning one of their neighborhoods while it still perceives enough pressure and if resources are available, if not it stops the loop
      set mp-transitions-this-year (mp-transitions-this-year + 1) ; model variable used to track how many neighborhoods are transitioned per year per municipality
      let mp-nh-list-within-resources mp-nh-list with [nh-transition-state = "to-start-transition" and nh-min-ins = true and (nh-hhs <= [mp-resources-available] of myself)] ; create a subset of neighborhoods that the municipality can pick to transition
      ask one-of mp-nh-list-within-resources [ ; ask one of this list randomly to transition towards its best available option
        nh-transition-best-available-cost]
      mp-calc-resources-available
      mp-update-resources-state ; after the neighborhood has started its transition, the municipality has to reevaluate its current resources
      mp-calc-pressure ; the municipality reevaluates the pressure it perceives after transitioning this neighborhood
  ]]
end

to mp-transition-strategy-2 ; mp transition strategy where a random neighborhood who is able to transition to its first choice based on cost is asked to transition to their best possible thermal system available at that time
  ask municipalities with [(mp-transition-state = "in-transition") and mp-pressure-state and mp-resources-available-state] [ ; only ask municipalities that are still in transition, perceive enough pressure and have available resources
    set mp-transitions-this-year 0
    while [mp-pressure-state and mp-resources-available-state] [ ; keep transitioning one of their neighborhoods while it still perceives enough pressure and if resources are available, if not it stops the loop
      set mp-transitions-this-year (mp-transitions-this-year + 1) ; model variable used to track how many neighborhoods are transitioned per year per municipality
      let mp-nh-list-within-resources mp-nh-list with [nh-transition-state = "to-start-transition" and nh-min-ins = true and (nh-hhs <= [mp-resources-available] of myself)] ; create a subset of neighborhoods that the municipality can pick to transition
      ask min-one-of mp-nh-list-within-resources [nh-best-available] [
        nh-transition-best-available-cost]
      mp-calc-resources-available
      mp-update-resources-state ; after the neighborhood has started its transition, the municipality has to reevaluate its current resources
      mp-calc-pressure ; the municipality reevaluates the pressure it perceives after transitioning this neighborhood
      ask mp-nh-list with [nh-transition-state = "to-start-transition"] [
        nh-update-best-available] ; after one of the neighborhoods is transitioned, all neighborhoods that still need a transition have to reevaluate their now best available option
  ]]
end

to mp-transition-strategy-2-inv-nh ; mp transition strategy where a random neighborhood who is able to transition to its last choice based on cost is asked to transition to their best possible thermal system available at that time
  ask municipalities with [(mp-transition-state = "in-transition") and mp-pressure-state and mp-resources-available-state] [ ; only ask municipalities that are still in transition, perceive enough pressure and have available resources
    set mp-transitions-this-year 0
    while [mp-pressure-state and mp-resources-available-state] [ ; keep transitioning one of their neighborhoods while it still perceives enough pressure and if resources are available, if not it stops the loop
      set mp-transitions-this-year (mp-transitions-this-year + 1) ; model variable used to track how many neighborhoods are transitioned per year per municipality
      let mp-nh-list-within-resources mp-nh-list with [nh-transition-state = "to-start-transition" and nh-min-ins = true and (nh-hhs <= [mp-resources-available] of myself)] ; create a subset of neighborhoods that the municipality can pick to transition
      ask max-one-of mp-nh-list-within-resources [nh-best-available] [
        nh-transition-best-available-cost]
      mp-calc-resources-available
      mp-update-resources-state ; after the neighborhood has started its transition, the municipality has to reevaluate its current resources
      mp-calc-pressure ; the municipality reevaluates the pressure it perceives after transitioning this neighborhood
      ask mp-nh-list with [nh-transition-state = "to-start-transition"] [
        nh-update-best-available] ; after one of the neighborhoods is transitioned, all neighborhoods that still need a transition have to reevaluate their now best available option
  ]]
end

to mp-transition-strategy-2-inv-th ; mp transition strategy where a random neighborhood who is able to transition to its last choice based on cost is asked to transition to their worst possible thermal system available at that time
  ask municipalities with [(mp-transition-state = "in-transition") and mp-pressure-state and mp-resources-available-state] [ ; only ask municipalities that are still in transition, perceive enough pressure and have available resources
    set mp-transitions-this-year 0
    while [mp-pressure-state and mp-resources-available-state] [ ; keep transitioning one of their neighborhoods while it still perceives enough pressure and if resources are available, if not it stops the loop
      set mp-transitions-this-year (mp-transitions-this-year + 1) ; model variable used to track how many neighborhoods are transitioned per year per municipality
      let mp-nh-list-within-resources mp-nh-list with [nh-transition-state = "to-start-transition" and nh-min-ins = true and (nh-hhs <= [mp-resources-available] of myself)] ; create a subset of neighborhoods that the municipality can pick to transition
      ask min-one-of mp-nh-list-within-resources [nh-best-available] [
        nh-transition-best-available-cost-inverse]
      mp-calc-resources-available
      mp-update-resources-state ; after the neighborhood has started its transition, the municipality has to reevaluate its current resources
      mp-calc-pressure ; the municipality reevaluates the pressure it perceives after transitioning this neighborhood
      ask mp-nh-list with [nh-transition-state = "to-start-transition"] [
        nh-update-best-available] ; after one of the neighborhoods is transitioned, all neighborhoods that still need a transition have to reevaluate their now best available option
  ]]
end

to mp-transition-strategy-2-inv-nh-th ; mp transition strategy where a random neighborhood who is able to transition to its last choice based on cost is asked to transition to their worst possible thermal system available at that time
  ask municipalities with [(mp-transition-state = "in-transition") and mp-pressure-state and mp-resources-available-state] [ ; only ask municipalities that are still in transition, perceive enough pressure and have available resources
    set mp-transitions-this-year 0
    while [mp-pressure-state and mp-resources-available-state] [ ; keep transitioning one of their neighborhoods while it still perceives enough pressure and if resources are available, if not it stops the loop
      set mp-transitions-this-year (mp-transitions-this-year + 1) ; model variable used to track how many neighborhoods are transitioned per year per municipality
      let mp-nh-list-within-resources mp-nh-list with [nh-transition-state = "to-start-transition" and nh-min-ins = true and (nh-hhs <= [mp-resources-available] of myself)] ; create a subset of neighborhoods that the municipality can pick to transition
      ask max-one-of mp-nh-list-within-resources [nh-best-available] [
        nh-transition-best-available-cost-inverse]
      mp-calc-resources-available
      mp-update-resources-state ; after the neighborhood has started its transition, the municipality has to reevaluate its current resources
      mp-calc-pressure ; the municipality reevaluates the pressure it perceives after transitioning this neighborhood
      ask mp-nh-list with [nh-transition-state = "to-start-transition"] [
        nh-update-best-available] ; after one of the neighborhoods is transitioned, all neighborhoods that still need a transition have to reevaluate their now best available option
  ]]
end

to mp-transition-strategy-3 ;mp transition strategy where they ask one of their neighbohroods with the highest nh-filter variable to transition to their best possible thermal system at that time
  ask municipalities with [(mp-transition-state = "in-transition") and mp-pressure-state and mp-resources-available-state] [ ; only ask municipalities that are still in transition, perceive enough pressure and have available resources
    set mp-transitions-this-year 0
    while [mp-pressure-state and mp-resources-available-state] [ ; keep transitioning one of their neighborhoods while it still perceives enough pressure and if resources are available, if not it stops the loop
      set mp-transitions-this-year (mp-transitions-this-year + 1) ; model variable used to track how many neighborhoods are transitioned per year per municipality
      let mp-nh-list-within-resources mp-nh-list with [nh-transition-state = "to-start-transition" and nh-min-ins = true and (nh-hhs <= [mp-resources-available] of myself)] ; create a subset of neighborhoods that the municipality can pick to transition
      ask max-one-of mp-nh-list-within-resources [nh-filter] [
        nh-transition-best-available-cost]
      mp-calc-resources-available
      mp-update-resources-state ; after the neighborhood has started its transition, the municipality has to reevaluate its current resources
      mp-calc-pressure ; the municipality reevaluates the pressure it perceives after transitioning this neighborhood
  ]]
end

to mp-transition-strategy-4 ; mp transition strategy where they ask one of their neighborhoods with highest nh-filter to transition to thermal system based on transition activity and cost
  ask municipalities with [(mp-transition-state = "in-transition") and mp-pressure-state and mp-resources-available-state] [ ; only ask municipalities that are still in transition, perceive enough pressure and have available resources
    set mp-transitions-this-year 0
    while [mp-pressure-state and mp-resources-available-state] [ ; keep transitioning one of their neighborhoods while it still perceives enough pressure and if resources are available, if not it stops the loop
      set mp-transitions-this-year (mp-transitions-this-year + 1) ; model variable used to track how many neighborhoods are transitioned per year per municipality
      let mp-nh-list-within-resources mp-nh-list with [nh-transition-state = "to-start-transition" and nh-min-ins = true and (nh-hhs <= [mp-resources-available] of myself) and nh-min-ins = true]; create a subset of neighborhoods that the municipality can pick to transition
      ask max-one-of mp-nh-list-within-resources [nh-filter] [
        nh-transition-cost-activity]
      mp-calc-resources-available
      mp-update-resources-state ; after the neighborhood has started its transition, the municipality has to reevaluate its current resources
      mp-calc-pressure ; the municipality reevaluates the pressure it perceives after transitioning this neighborhood
  ]]
end

to mp-update-transition ; procedure that updates the transition status of municipalities
  ask municipalities with [mp-transition-state = "in-transition"] [
    if not any? mp-nh-list with [(nh-transition-state = "to-start-transition") or (nh-transition-state = "in-transition")] [
      set mp-transition-state "transition-finished"]]
end

to mp-calc-resources-available ; procedure that calculates how much resources a municipality has left
    ifelse ((not any? mp-nh-list with [nh-transition-state = "in-transition"]) and ((max [nh-hhs] of mp-nh-list with [nh-transition-state = "to-start-transition"]) >= mp-resources-max))
    ; this ifelse statement makes sure that neighborhoods who are bigger than the max resources can also transition, they take up all the resouces
    ; because mp-max-resources takes on the same value as the biggest neighborhood if currently no neighborhoods are in transition
    ; if it can currently not transition any of its neighborhoods because they all have higher hhs than the max-resources, it can still transition one of them at the same time
      [set mp-resources-available (max [nh-hhs] of mp-nh-list with [nh-transition-state = "to-start-transition"])] ; it does this by setting the resources available to the max nr of households of all neighborhoods that still have to transition
      [let mp-resources-in-use (sum [nh-hhs] of mp-nh-list with [nh-transition-state = "in-transition"]) ;
       set mp-resources-available (mp-resources-max - mp-resources-in-use)]
end

to mp-update-resources-state ; this procedure checks if there are any neighborhoods for the municipality that it can transition based on its available resources
    ifelse any? mp-nh-list with [(nh-transition-state = "to-start-transition") and (nh-hhs <= [mp-resources-available] of myself) and nh-min-ins = true] [ ;this ifelse statement updates the mp-resource-states
      set mp-resources-available-state true] [ ;if this state is true, this indicates that there are still resources left to transition at least one of its neighborhoods
      set mp-resources-available-state false] ; this is used in a while statement in the go procedure. As long as there are municipalities with this state true they can transition these neighborhoods
  mp-visualize-readiness
end

to mp-calc-pressure ; procedure that calculates the deviation of the municipality from its mp transition goal
    set mp-hhs-transitioned (sum [nh-hhs] of mp-nh-list with [nh-transition-state = "in-transition" or nh-transition-state = "transition-finished"]) ; based on what the mp has transitioned uptil now
    set mp-transition-speed (mp-hhs-transitioned / (ticks + 1)) ; speed is based on total transitioned divided by years passed (+1 because of division by 0)
    set mp-goal-deviation ((mp-transition-speed - mp-transition-goal) / mp-transition-goal)
    set mp-pressure 0 - mp-goal-deviation
    ifelse mp-pressure > 0 [set mp-pressure-state true] [set mp-pressure-state false] ; if pressure is positive, municipality feels pressured to take action
end

to mp-visualize-readiness ; procedure that colors the mp's green if they are able to transition any of their nh's based on available resources and pressure
  ask municipalities [
    ifelse mp-resources-available-state = true and mp-pressure-state = true [
      set color green] [
      set color blue]]
end

to mp-collect-transition-activity ; procedure that calculates the weighted network activity per thermal system per municipality in mp-top-n-network
  ask municipalities with [mp-transition-state = "in-transition"] [
    set mp-network-activity-AE 0 ; has to be reset to 0 every tick to prevent storing double activity in the variable
    set mp-network-activity-HT/MT 0 ; has to be reset to 0 every tick to prevent storing double activity in the variable
    set mp-network-activity-LT 0 ; has to be reset to 0 every tick to prevent storing double activity in the variable
    set mp-network-activity-GG 0 ; has to be reset to 0 every tick to prevent storing double activity in the variable
    set mp-network-activity-H2 0 ; has to be reset to 0 every tick to prevent storing double activity in the variable

    foreach mp-top-n-link-list [mp -> ; this calculation procedure is verified in notebook by hand calculation
                                      ; the procedure iterates over the municipalities in the mp-top-n-link-list and multiplies their history on neighborhoods transitioned towards system X by the information-volume (gravity-value) with the current municipality
      set mp-network-activity-AE (mp-network-activity-AE + (count [mp-nh-list with [nh-thermal-system = "AE"]] of mp) * ([information-volume] of link-with mp))
      set mp-network-activity-HT/MT (mp-network-activity-HT/MT + (count [mp-nh-list with [nh-thermal-system = "HT/MT"]] of mp) * ([information-volume] of link-with mp))
      set mp-network-activity-LT (mp-network-activity-LT + (count [mp-nh-list with [nh-thermal-system = "LT"]] of mp) * ([information-volume] of link-with mp))
      set mp-network-activity-GG (mp-network-activity-GG + (count [mp-nh-list with [nh-thermal-system = "GG"]] of mp) * ([information-volume] of link-with mp))
      set mp-network-activity-H2 (mp-network-activity-H2 + (count [mp-nh-list with [nh-thermal-system = "H2"]] of mp) * ([information-volume] of link-with mp))
      ; foreach mp-top-n-link-list [mp -> ask mp [print mp-name]]
  ]]
end

;; ----------------- Neighborhood Procedures

to nh-transition-random ; lets the neighborhood transition to a random thermal system based on nothing but randomness and whether it is available for this neighborhood
  let thermal-system-found false ; this state is necessary to evaluate whether a solution has been found that is available, then this state is turned true and the while loop is broken
  while [thermal-system-found = false] [ ; as long as not any of the conditions is satisfied, this statement stays false and thus the while loop keeps iterating over the order of preferred thermal systems
    let random-choice-iteration random 5
      if random-choice-iteration = 0 and nh-AE-report-available [
      ; if the index corresonds to 0 and AE alternative is available for this neighborhood, the procedure enters this statement and executes a transition towards AE
        set nh-thermal-system "AE"
        set nh-transition-time-left nh-transition-duration
        set nh-transition-state "in-transition"
        set color white
        set thermal-system-found true]
      if random-choice-iteration = 1 and nh-HT/MT-report-available [
      ; if the index corresonds to 0 and AE alternative is available for this neighborhood, the procedure enters this statement and executes a transition towards HT/MT
        set nh-thermal-system "HT/MT"
        set nh-transition-time-left nh-transition-duration
        set nh-transition-state "in-transition"
        if hs-limited? [
          ask nh-potential-heatsource [
            set hs-MW-capacity hs-MW-capacity - ([nh-th-energy-peak-KW] of myself / 1000) ; correction for KW and MW and capacities are calculated based on peak demand for neighborhoods
        ]]
        set color white
        set thermal-system-found true]
      if random-choice-iteration = 2 and nh-LT-report-available [
      ; if the index corresonds to 0 and LT alternative is available for this neighborhood, the procedure enters this statement and executes a transition towards LT
        set nh-thermal-system "LT"
        set nh-transition-time-left nh-transition-duration
        set nh-transition-state "in-transition"
        set color white
        set thermal-system-found true]
      if random-choice-iteration = 3 and nh-GG-report-available [
      ; if the index corresonds to 0 and GG alternative is available for this neighborhood, the procedure enters this statement and executes a transition towards GG
        set nh-thermal-system "GG"
        set nh-transition-time-left nh-transition-duration
        set nh-transition-state "in-transition"
        ;ask one-of ggsources [set gg-J-y (gg-J-y - [nh-th-energy-use-y] of myself)]
        gg-update-capacity
        ; the national greengas stock has to be asked to update its current stock according to this transition towards greengas
        set color white
        set thermal-system-found true]
      if random-choice-iteration = 4 and nh-H2-report-available [
      ; if the index corresonds to 0 and H2 alternative is available for this neighborhood, the procedure enters this statement and executes a transition towards H2
        set nh-thermal-system "H2"
        set nh-transition-time-left nh-transition-duration
        set nh-transition-state "in-transition"
        set color white
        set thermal-system-found true]
    ]
  if nh-transition-time-left = 0 [nh-update-transition] ; if nh-transition-duration is 0 already in this procedure, because nh-transition-duration is set to 0, we have to update immediately to thermal system
  nh-update-best-available
end

to nh-transition-cost-activity ; lets the neighborhood transition to the alternative with the best combination of cost and activity by others in the mp's network --> check if correct
  ; feature scaling formula from https://en.wikipedia.org/wiki/Feature_scaling
  ; feature scaling is done to add transition activity with cost scores
  ifelse ticks > 0 [ ; to prevent division by zero in tick 0 as there is no transition activity information to be shared between municipalities

    let neighborhood-type-list item (nh-neighborhood-type) RA-table
    ; retrieves the row with the order of cost for the neighborhoods own neighborhood type by indexing the complete external table based on its neighborhood type

    let nh-ae-cost (6 - item 0 neighborhood-type-list) ; yields highest score of 5 for lowest cost and lowest score of 1 for most expensive alternative
    let nh-ht/mt-cost (6 - item 1 neighborhood-type-list) ; yields highest score of 5 for lowest cost and lowest score of 1 for most expensive alternative
    let nh-lt-cost (6 - item 2 neighborhood-type-list) ; yields highest score of 5 for lowest cost and lowest score of 1 for most expensive alternative
    let nh-gg-cost (6 - item 3 neighborhood-type-list) ; yields highest score of 5 for lowest cost and lowest score of 1 for most expensive alternative
    let nh-h2-cost (6 - item 4 neighborhood-type-list) ; yields highest score of 5 for lowest cost and lowest score of 1 for most expensive alternative
                                                       ; inverts the cost meaning that lowest score has highest score, easier to combine with the alternative with most transition activity

    let nh-mp-network-activity-scores (list ([mp-network-activity-AE] of nh-mp-agent) ([mp-network-activity-HT/MT] of nh-mp-agent) ([mp-network-activity-LT] of nh-mp-agent) ([mp-network-activity-GG] of nh-mp-agent) ([mp-network-activity-H2] of nh-mp-agent)) ;create a list of all network activity values
    let nh-mp-network-activity-scores-min min nh-mp-network-activity-scores
    let nh-mp-network-activity-scores-max max nh-mp-network-activity-scores

    let nh-ae-activity 1 + ((([mp-network-activity-AE] of nh-mp-agent) - nh-mp-network-activity-scores-min) * (5 - 1) ) / (nh-mp-network-activity-scores-max - nh-mp-network-activity-scores-min)
    let nh-ht/mt-activity 1 + ((([mp-network-activity-ht/mt] of nh-mp-agent) - nh-mp-network-activity-scores-min) * (5 - 1) ) / (nh-mp-network-activity-scores-max - nh-mp-network-activity-scores-min)
    let nh-lt-activity 1 + ((([mp-network-activity-lt] of nh-mp-agent) - nh-mp-network-activity-scores-min) * (5 - 1) ) / (nh-mp-network-activity-scores-max - nh-mp-network-activity-scores-min)
    let nh-gg-activity 1 + ((([mp-network-activity-gg] of nh-mp-agent) - nh-mp-network-activity-scores-min) * (5 - 1) ) / (nh-mp-network-activity-scores-max - nh-mp-network-activity-scores-min)
    let nh-h2-activity 1 + ((([mp-network-activity-h2] of nh-mp-agent) - nh-mp-network-activity-scores-min) * (5 - 1) ) / (nh-mp-network-activity-scores-max - nh-mp-network-activity-scores-min)

    ; combine the scores and include model parameter for the cost and activity components
    let nh-ae-score (nh-cost-par * nh-ae-cost + (100 - nh-cost-par) * nh-ae-activity)
    let nh-ht/mt-score (nh-cost-par * nh-ht/mt-cost + (100 - nh-cost-par) * nh-ht/mt-activity)
    let nh-lt-score (nh-cost-par * nh-lt-cost + (100 - nh-cost-par) * nh-lt-activity)
    let nh-gg-score (nh-cost-par * nh-gg-cost + (100 - nh-cost-par) * nh-gg-activity)
    let nh-h2-score (nh-cost-par * nh-h2-cost + (100 - nh-cost-par) * nh-h2-activity)

    ; determine the order based on the scores (0,1,2,3,4)
    let nh-ae-order 1
    if (nh-ae-score > nh-ht/mt-score) [set nh-ae-order (nh-ae-order + 1)]
    if (nh-ae-score > nh-lt-score) [set nh-ae-order (nh-ae-order + 1)]
    if (nh-ae-score > nh-gg-score) [set nh-ae-order (nh-ae-order + 1)]
    if (nh-ae-score > nh-h2-score) [set nh-ae-order (nh-ae-order + 1)]

    let nh-ht/mt-order 1
    if (nh-ht/mt-score > nh-ae-score) [set nh-ht/mt-order (nh-ht/mt-order + 1)]
    if (nh-ht/mt-score > nh-lt-score) [set nh-ht/mt-order (nh-ht/mt-order + 1)]
    if (nh-ht/mt-score > nh-gg-score) [set nh-ht/mt-order (nh-ht/mt-order + 1)]
    if (nh-ht/mt-score > nh-h2-score) [set nh-ht/mt-order (nh-ht/mt-order + 1)]

    let nh-lt-order 1
    if (nh-lt-score > nh-ae-score) [set nh-lt-order (nh-lt-order + 1)]
    if (nh-lt-score > nh-ht/mt-score) [set nh-lt-order (nh-lt-order + 1)]
    if (nh-lt-score > nh-gg-score) [set nh-lt-order (nh-lt-order + 1)]
    if (nh-lt-score > nh-h2-score) [set nh-lt-order (nh-lt-order + 1)]

    let nh-gg-order 1
    if (nh-gg-score > nh-ae-score) [set nh-gg-order (nh-gg-order + 1)]
    if (nh-gg-score > nh-ht/mt-score) [set nh-gg-order (nh-gg-order + 1)]
    if (nh-gg-score > nh-lt-score) [set nh-gg-order (nh-gg-order + 1)]
    if (nh-gg-score > nh-h2-score) [set nh-gg-order (nh-gg-order + 1)]

    let nh-h2-order 1
    if (nh-h2-score > nh-ae-score) [set nh-h2-order (nh-h2-order + 1)]
    if (nh-h2-score > nh-ht/mt-score) [set nh-h2-order (nh-h2-order + 1)]
    if (nh-h2-score > nh-lt-score) [set nh-h2-order (nh-h2-order + 1)]
    if (nh-h2-score > nh-gg-score) [set nh-h2-order (nh-h2-order + 1)]

    ; create list with default order of alternative columns based on combined cost and activity scores
    let nh-score-list (list nh-ae-order nh-ht/mt-order nh-lt-order nh-gg-order nh-h2-order)

    let choice-iteration 5
    ; this variable is used to iterate over the order of best choices, it first starts at the best choice of the table (1), if htis is not available, it iterates to 2 etc
    let thermal-system-found false
    ; this state is necessary to evaluate whether a solution has been found that is available, then this state is turned true and the while loop is broken

    ; this neighborhood procedure lets the neighborhood evaluate whether it is capable of transitioning on any of the thermal systems, sets the state variable true or false per alternative
    while [thermal-system-found = false] [
      ; as long as not any of the conditions is satisfied, this statement stays false and thus the while loop keeps iterating over the order of preferred thermal systems
      let index-best position choice-iteration nh-score-list
      ; through this variable the neighborhood can look up the 1st till nth best alternative
      (ifelse
        index-best = 0 and nh-AE-report-available [
          ; if the index corresonds to 0 and AE alternative is available for this neighborhood, the procedure enters this statement and executes a transition towards AE
          set nh-thermal-system "AE"
          set nh-transition-time-left nh-transition-duration
          set nh-transition-state "in-transition"
          set color white
          set thermal-system-found true]
        index-best = 1 and nh-HT/MT-report-available [
          ; if the index corresonds to 0 and AE alternative is available for this neighborhood, the procedure enters this statement and executes a transition towards HT/MT
          set nh-thermal-system "HT/MT"
          set nh-transition-time-left nh-transition-duration
          set nh-transition-state "in-transition"
          if hs-limited? [
            ask nh-potential-heatsource [
              set hs-MW-capacity hs-MW-capacity - ([nh-th-energy-peak-KW] of myself / 1000) ; correction for KW and MW and capacities are calculated based on peak demand for neighborhoods
          ]]
          set color white
          set thermal-system-found true]
        index-best = 2 and nh-LT-report-available [
          ; if the index corresonds to 0 and LT alternative is available for this neighborhood, the procedure enters this statement and executes a transition towards LT
          set nh-thermal-system "LT"
          set nh-transition-time-left nh-transition-duration
          set nh-transition-state "in-transition"
          set color white
          set thermal-system-found true]
        index-best = 3 and nh-GG-report-available [
          ; if the index corresonds to 0 and GG alternative is available for this neighborhood, the procedure enters this statement and executes a transition towards GG
          set nh-thermal-system "GG"
          set nh-transition-time-left nh-transition-duration
          set nh-transition-state "in-transition"
          ;ask one-of ggsources [set gg-J-y (gg-J-y - [nh-th-energy-use-y] of myself)]
          gg-update-capacity
          ; the national greengas stock has to be asked to update its current stock according to this transition towards greengas
          set color white
          set thermal-system-found true]
        index-best = 4 and nh-H2-report-available [
          ; if the index corresonds to 0 and H2 alternative is available for this neighborhood, the procedure enters this statement and executes a transition towards H2
          set nh-thermal-system "H2"
          set nh-transition-time-left nh-transition-duration
          set nh-transition-state "in-transition"
          set color white
          set thermal-system-found true]
        [set choice-iteration (choice-iteration - 1)
          if choice-iteration < 0 [print "error nh-transition-best-available-cost " stop]])
    ]
    if nh-transition-time-left = 0 [nh-update-transition] ; if nh-transition-duration is 0 already in this procedure, because nh-transition-duration is set to 0, we have to update immediately to thermal system
  ]
    [ ; nested part of the function that is only run when t=0 to prevent using activity by others that is zero
    nh-transition-best-available-cost  ]
  nh-update-best-available
end

to nh-transition-best-available-cost
  let neighborhood-type-list item (nh-neighborhood-type) RA-table ; retrieves the row with the order of cost for the neighborhoods own neighborhood type by indexing the complete external table based on its neighborhood type
  let choice-iteration 1 ; this variable is used to iterate over the order of best choices, it first starts at the best choice of the table (1), if htis is not available, it iterates to 2 etc
  let thermal-system-found false ; this state is necessary to evaluate whether a solution has been found that is available, then this state is turned true and the while loop is broken
  while [thermal-system-found = false] [ ; as long as not any of the conditions is satisfied, this statement stays false and thus the while loop keeps iterating over the order of preferred thermal systems
    let index-best position choice-iteration neighborhood-type-list ; through this variable the neighborhood can look up the 1st till nth best alternative
    (ifelse
      index-best = 0 and nh-AE-report-available [
      ; if the index corresonds to 0 and AE alternative is available for this neighborhood, the procedure enters this statement and executes a transition towards AE
        set nh-thermal-system "AE"
        set nh-transition-time-left nh-transition-duration
        set nh-transition-state "in-transition"
        set color white
        set thermal-system-found true]
      index-best = 1 and nh-HT/MT-report-available [
      ; if the index corresonds to 0 and AE alternative is available for this neighborhood, the procedure enters this statement and executes a transition towards HT/MT
        set nh-thermal-system "HT/MT"
        set nh-transition-time-left nh-transition-duration
        set nh-transition-state "in-transition"
        if hs-limited? [
          ask nh-potential-heatsource [
            set hs-MW-capacity hs-MW-capacity - ([nh-th-energy-peak-KW] of myself / 1000) ; correction for KW and MW and capacities are calculated based on peak demand for neighborhoods
        ]]
        set color white
        set thermal-system-found true]
      index-best = 2 and nh-LT-report-available [
      ; if the index corresonds to 0 and LT alternative is available for this neighborhood, the procedure enters this statement and executes a transition towards LT
        set nh-thermal-system "LT"
        set nh-transition-time-left nh-transition-duration
        set nh-transition-state "in-transition"
        set color white
        set thermal-system-found true]
      index-best = 3 and nh-GG-report-available [
      ; if the index corresonds to 0 and GG alternative is available for this neighborhood, the procedure enters this statement and executes a transition towards GG
        set nh-thermal-system "GG"
        set nh-transition-time-left nh-transition-duration
        set nh-transition-state "in-transition"
        ;ask one-of ggsources [set gg-J-y (gg-J-y - [nh-th-energy-use-y] of myself)]
        gg-update-capacity
        ; the national greengas stock has to be asked to update its current stock according to this transition towards greengas
        set color white
        set thermal-system-found true]
      index-best = 4 and nh-H2-report-available [
      ; if the index corresonds to 0 and H2 alternative is available for this neighborhood, the procedure enters this statement and executes a transition towards H2
        set nh-thermal-system "H2"
        set nh-transition-time-left nh-transition-duration
        set nh-transition-state "in-transition"
        set color white
        set thermal-system-found true]
      [set choice-iteration (choice-iteration + 1)
        if choice-iteration > 5 [print "error nh-transition-best-available-cost " stop]])
    ]
  if nh-transition-time-left = 0 [nh-update-transition] ; if nh-transition-duration is 0 already in this procedure, because nh-transition-duration is set to 0, we have to update immediately to thermal system
  nh-update-best-available
end

to nh-transition-best-available-cost-inverse
  let neighborhood-type-list item (nh-neighborhood-type) RA-table ; retrieves the row with the order of cost for the neighborhoods own neighborhood type by indexing the complete external table based on its neighborhood type
  let choice-iteration 5 ; this variable is used to iterate over the order of best choices, it first starts at the best choice of the table (1), if htis is not available, it iterates to 2 etc
  let thermal-system-found false ; this state is necessary to evaluate whether a solution has been found that is available, then this state is turned true and the while loop is broken
  while [thermal-system-found = false] [ ; as long as not any of the conditions is satisfied, this statement stays false and thus the while loop keeps iterating over the order of preferred thermal systems
    let index-best position choice-iteration neighborhood-type-list ; through this variable the neighborhood can look up the 1st till nth best alternative
    (ifelse
      index-best = 0 and nh-AE-report-available [
      ; if the index corresonds to 0 and AE alternative is available for this neighborhood, the procedure enters this statement and executes a transition towards AE
        set nh-thermal-system "AE"
        set nh-transition-time-left nh-transition-duration
        set nh-transition-state "in-transition"
        set color white
        set thermal-system-found true]
      index-best = 1 and nh-HT/MT-report-available [
      ; if the index corresonds to 0 and AE alternative is available for this neighborhood, the procedure enters this statement and executes a transition towards HT/MT
        set nh-thermal-system "HT/MT"
        set nh-transition-time-left nh-transition-duration
        set nh-transition-state "in-transition"
        if hs-limited? [
          ask nh-potential-heatsource [
            set hs-MW-capacity hs-MW-capacity - ([nh-th-energy-peak-KW] of myself / 1000) ; correction for KW and MW and capacities are calculated based on peak demand for neighborhoods
        ]]
        set color white
        set thermal-system-found true]
      index-best = 2 and nh-LT-report-available [
      ; if the index corresonds to 0 and LT alternative is available for this neighborhood, the procedure enters this statement and executes a transition towards LT
        set nh-thermal-system "LT"
        set nh-transition-time-left nh-transition-duration
        set nh-transition-state "in-transition"
        set color white
        set thermal-system-found true]
      index-best = 3 and nh-GG-report-available [
      ; if the index corresonds to 0 and GG alternative is available for this neighborhood, the procedure enters this statement and executes a transition towards GG
        set nh-thermal-system "GG"
        set nh-transition-time-left nh-transition-duration
        set nh-transition-state "in-transition"
        ;ask one-of ggsources [set gg-J-y (gg-J-y - [nh-th-energy-use-y] of myself)]
        gg-update-capacity
        ; the national greengas stock has to be asked to update its current stock according to this transition towards greengas
        set color white
        set thermal-system-found true]
      index-best = 4 and nh-H2-report-available [
      ; if the index corresonds to 0 and H2 alternative is available for this neighborhood, the procedure enters this statement and executes a transition towards H2
        set nh-thermal-system "H2"
        set nh-transition-time-left nh-transition-duration
        set nh-transition-state "in-transition"
        set color white
        set thermal-system-found true]
      [set choice-iteration (choice-iteration - 1)
        if choice-iteration = 0 [print "error nh-transition-best-available-cost " stop]])
    ]
  if nh-transition-time-left = 0 [nh-update-transition] ; if nh-transition-duration is 0 already in this procedure, because nh-transition-duration is set to 0, we have to update immediately to thermal system
  nh-update-best-available
end

to nh-update-transition ; procedure that asks the neighborhoods to update their time left to finish their transition if have started it. it also gives the neighorhoods their
  ; final color if they finish the transiton
  ask neighborhoods with [nh-transition-state = "in-transition"] [
    if nh-transition-time-left > 0 [ ; prevents from negative nh-transition-time-left when nh-transition-duration is set to 0 by default
      set nh-transition-time-left (nh-transition-time-left - 1)]
    if nh-transition-time-left = 0 [
      set nh-transition-state "transition-finished"
      if nh-thermal-system = "AE" [
        set color yellow]
      if nh-thermal-system = "HT/MT" [
        set color red]
      if nh-thermal-system = "LT" [
        set color orange]
      if nh-thermal-system = "GG" [
        set color green]
      if nh-thermal-system = "H2" [
        set color blue]
    ]
  ]
end


to-report nh-ae-report-available
  report true
end

to-report nh-ht/mt-report-available
  ifelse hs-limited? [ ;only set nh-potential-resource when hs-limited? is switched on thus incorporating the heatsources and their capacities
    set nh-potential-heatsource 0
    ifelse any? heatsources with [(distance myself < max-distance-heatsource) and ((hs-MW-capacity * 1000) > [nh-th-energy-peak-KW] of myself)] ; ask the heatsources within the range and that have enough capacity left; MW corrected to KW
    [set nh-potential-heatsource min-one-of heatsources with [(distance myself < max-distance-heatsource) and ((hs-MW-capacity * 1000) > [nh-th-energy-peak-KW] of myself)] [distance myself]
      report true] ;set state true if any in range with capacity
    [report false]  ; set false if not any in range with capacity
  ]
  [report true ; always set tro if heatsource datapoints are not used
                               ;print "warmtebronnen worden niet meegenomen"
  ]
end

to-report nh-LT-report-available
  report true ;; for now assuming LT sources can be used anywhere in NL: Royal Haskoning report states this
end

to-report nh-GG-report-available
  ; this procedure checks whether there are enough greengas resources for this neighborhood to make a transition towards this alternative
  let gg-energy-cap-J ([gg-J-y-current] of one-of ggsources)
  ifelse nh-th-energy-use-y-t0 <= gg-energy-cap-J
   [report true]
   [report false]
end

to-report nh-H2-report-available
  ;; if my current energy demand < gg capacity left --> set state true
  ifelse (national-h2-availability-ticks < ticks)
   [report true]
   [report false]
end


to nh-calc-esource-peak-demand
  ; general formula: nh-th-energy-peak-kW / efficiency x distribution energy fuel
  ask neighborhoods [

    ; first set al esource-peak demand values to 0 in order to recalculate and prevent them from adding up
    set nh-ng-peak-kW 0 ; model output variable that tracks the neighborhoods peak demand for natural gas in kW (NG thermal systems)
    set nh-ng-peak-m3 0 ; model output variable that tracks the neighborhoods peak demand for natural gas in m3 / hr (NG thermal systems)
    set nh-e-peak-kW 0 ; model output variable that tracks the neighborhoods peak demand for electricity in kW (AE, GG and H2 thermal systems)
    set nh-h-peak-kW 0 ; model output variable that tracks the neighborhoods peak demand for heat in kW (HT/MT and LT thermal systems)
    set nh-gg-peak-kW 0 ; model output variable that tracks the neighborhoods peak demand for greengas in kW (GG thermal systems)
    set nh-gg-peak-m3 0 ; ; model output variable that tracks the neighborhoods peak demand for greengas in m3 / hr (GG thermal systems)
    set nh-h2-peak-kW 0 ; model output variable that tracks the neighborhoods peak demand for hydrogen in kW (h2 thermal systems)
    set nh-h2-peak-m3 0 ; ; model output variable that tracks the neighborhoods peak demand for hydrogen in m3 / hr (h2 thermal systems)

    ; kW to m3 natural/greengas conversion factor
    ; calorific upper value MJ (m3) / MJ (kWh) --> factor from kW (avg over hour thus kwh) to m3
    let kW-to-m3-g 35.17 / 3.6
    let kW-to-m3-h2 12 / 3.6 ; --> DNVGL 2017 3.2


    if nh-thermal-system = "NG" [
      let boiler-efficiency 0
      ifelse nh-ins <= 3.5 [
        set boiler-efficiency 0.90] [ ; low insulated dwellings have lower average boiler efficiency: Ecofys 2015 2.2.2.1, Energy Matters 2014
        set boiler-efficiency 0.95]
      set nh-ng-peak-kW (nh-th-energy-peak-kW / boiler-efficiency) ; assuming 100% natural gas use by boiler
      set nh-ng-peak-m3 (nh-ng-peak-kW / kW-to-m3-g)]

    if nh-thermal-system = "AE" [
      let hp-efficiency 1.5 ; based on COP of 1.5 in very extreme cold (which is peak demand) --> Ecofys figure 35
      set nh-e-peak-kW (nh-th-energy-peak-kW / hp-efficiency)]

    if nh-thermal-system = "HT/MT" [
      let ht/mt-efficiency 1 ; assuming direct heat supply with efficiency of 100% --> Ecofys table 6
      set nh-h-peak-kW (nh-th-energy-peak-kW * ht/mt-efficiency)]

    if nh-thermal-system = "LT" [
      let lt-efficiency 1 ; assuming direct heat supply with efficiency of 100% --> Ecofys table 6
      set nh-h-peak-kW (nh-th-energy-peak-kW * lt-efficiency)]

    if nh-thermal-system = "GG" [
      let gg-power-share 0.947 ; based on rowdwelling medium insulation peak power distribution table of Ecofys table 8 --> high is 0.878 --> do sensitivity analysis??
      let e-power-share 1 - gg-power-share ;
      let hp-efficiency 1.5 ; assuming same COP of 1.5 as AE hp's
      let boiler-efficiency 0.95 ; assuming these systems have higher efficnecy boilers

      set nh-gg-peak-kW ((nh-th-energy-peak-kW / boiler-efficiency) * gg-power-share)
      set nh-gg-peak-m3 (nh-gg-peak-kW / kW-to-m3-g)

      set nh-e-peak-kW ((nh-th-energy-peak-kW / hp-efficiency) * e-power-share)]

    if nh-thermal-system = "H2" [
      let h2-power-share 0.947 ; assuming same hp system as greengas systems
      let e-power-share 1 - h2-power-share
      let hp-efficiency 1.5 ; assuming same COP of 1.5 as AE hp's
      let boiler-efficiency 0.95 ; assuming h2 hp's to have higher efficiency boilers

      set nh-h2-peak-kW ((nh-th-energy-peak-kW / boiler-efficiency ) * h2-power-share)
      set nh-h2-peak-m3 (nh-h2-peak-kW / kW-to-m3-h2)

      set nh-e-peak-kW ((nh-th-energy-peak-kW / hp-efficiency) * e-power-share)]
  ]
end

to nh-calc-th-peak-demand
  ; algemene formule: nr of households x percentage of specific type dwelling x peak demand specific type dwelling x gelijktijdigheidsfactor
  ; different thermal demand profiles used according to dwelling types
  ask neighborhoods [
    let nh-flatapp-peak-demand (nh-hhs * nh-flatapp * (hh-peak-demand-calibrated "FLAT_APP" nh-ins) * (nh-gelijktijdigheid nh-ins))
    let nh-vrij-peak-demand (nh-hhs * nh-vrij * (hh-peak-demand-calibrated "VRIJ" nh-ins) * (nh-gelijktijdigheid nh-ins))
    let nh-rijhoek-peak-demand (nh-hhs * nh-rijhoek * (hh-peak-demand-calibrated "RIJHOEK" nh-ins) * (nh-gelijktijdigheid nh-ins))
    let nh-rijtussen-peak-demand (nh-hhs * nh-rijtussen * (hh-peak-demand-calibrated "RIJTUSSEN" nh-ins) * (nh-gelijktijdigheid nh-ins))
    let nh-21kap-peak-demand (nh-hhs * nh-21kap * (hh-peak-demand-calibrated "2_1_KAP" nh-ins) * (nh-gelijktijdigheid nh-ins))

    set nh-th-energy-peak-kW (nh-flatapp-peak-demand + nh-vrij-peak-demand + nh-rijhoek-peak-demand + nh-rijtussen-peak-demand + nh-21kap-peak-demand)
  ]
end

to-report hh-peak-demand-calibrated [hh-type hh-ins] ; procedure that reports peak heat demand for a given household type and insulation level
  ; formulas derived from ecofys/ECN peak heat demand profiles (tables 10 and 11) for dutch dwellings
  ; NOTE: sharp decline in peak heat demand when going towards high insulation --> see ecofys for explanation: flat profile + much lower heat loss
  if hh-type = "FLAT_APP" [
    if hh-ins <= 2 [ ; ; constant between level 0 and 2,  --> no datapoints here
      report 13]
    if hh-ins <= 5 and hh-ins > 2 [ ; interpolated between level 2 and 5, linearity assumed --> ecofys datapoints included
      report -0.29 * hh-ins + 13.57]
    if hh-ins > 5 and hh-ins <= 7 [ ; interpolated between level 5 and 7 , linearity assumed --> ecofys datapoints included
      report -4.77 * hh-ins + 35.97]
    if hh-ins > 7 [ ; constant after nh-ins 7 --> no datapoints here
      report 2 + 3 / 5]]
  if hh-type = "VRIJ" [
    if hh-ins <= 2 [ ; constant between level 0 and 2,  --> no datapoints here
      report 26]
    if hh-ins <= 5 and hh-ins > 2 [ ; interpolated between level 2 and 5, linearity assumed --> ecofys datapoints included
      report -0.58 * hh-ins + 27.15]
    if hh-ins > 5 and hh-ins <= 7 [ ; interpolated between level 5 and 7 , linearity assumed --> ecofys datapoints included
      report -9.53 * hh-ins + 71.93]
    if hh-ins > 7 [
        report 5 + 1 / 5]] ; constant after nh-ins 7 --> no datapoints here
  if hh-type = "RIJHOEK" [
    if hh-ins <= 2 [ ; constant between level 0 and 2, --> no datapoints here
        report 18]
    if hh-ins <= 5 and hh-ins > 2 [ ; interpolated between level 2 and 5, linearity assumed --> ecofys datapoints included
      report -0.40 * hh-ins + 18.80]
    if hh-ins > 5 and hh-ins <= 7 [ ; interpolated between level 5 and 7 , linearity assumed --> ecofys datapoints included
      report -6.60 * hh-ins + 49.80]
    if hh-ins > 7 [
        report 3 + 3 / 5]] ; constant after nh-ins 7 --> no datapoints here
  if hh-type = "RIJTUSSEN" [
    if hh-ins <= 2 [
        report 15] ; constant between level 0 and 2 --> no datapoints here
    if hh-ins <= 5 and hh-ins > 2 [ ; interpolated between level 2 and 5, linearity assumed --> ecofys datapoints included
      report -0.33 * hh-ins + 15.67]
    if hh-ins > 5 and hh-ins <= 7 [ ; interpolated between level 5 and 7 , linearity assumed --> ecofys datapoints included
      report -5.50 * hh-ins + 41.50]
    if hh-ins > 7 [
        report 3]] ; constant after nh-ins 7 --> no datapoints here
  if hh-type = "2_1_KAP" [
    if hh-ins <= 2 [ ; constant between level 0 and 2, --> no datapoints here
        report 18]
    if hh-ins <= 5 and hh-ins > 2 [ ; interpolated between level 2 and 5, linearity assumed --> ecofys datapoints included
      report -0.40 * hh-ins + 18.80]
    if hh-ins > 5 and hh-ins <= 7 [ ; interpolated between level 5 and 7 , linearity assumed --> ecofys datapoints included
      report -6.60 * hh-ins + 49.80]
    if hh-ins > 7 [
        report 3 + 3 / 5]] ; constant after nh-ins 7 --> no datapoints here
end


to-report nh-gelijktijdigheid [ins] ; procedure that reports the gelijktijdigheidsfactor for a given insulation level
  if ins <= 5.5 [ ; if insulation is low or medium
    report 0.53] ; given in Ecofys report for low and medium insulation
  if ins > 5.5 [ ; after 5.5 (which is the border of medium insulation) it rises to 1 at 7.5; in between 5.5 and 7.5 linear interpollation is assumed!
    report 0.23 * nh-ins - 0.76] ; interpolated between 0.53 for medium and 1 for high --> ecofys. Linearity assumed
end

to nh-update-best-available ; neighborhood procedure that sets the best available number variable at that moment for a neighborhood
  let neighborhood-type-list item (nh-neighborhood-type) RA-table ; retrieves the row with the order of cost for the neighborhoods own neighborhood type by indexing the complete external table based on its neighborhood type
  let choice-iteration 1 ; this variable is used to iterate over the order of best choices, it first starts at the best choice of the table (1), if htis is not available, it iterates to 2 etc
  let thermal-system-found false ; this state is necessary to evaluate whether a solution has been found that is available, then this state is turned true and the while loop is broken
  while [thermal-system-found = false] [ ; as long as not any of the conditions is satisfied, this statement stays false and thus the while loop keeps iterating over the order of preferred thermal systems
    let index-best position choice-iteration neighborhood-type-list ; through this variable the neighborhood can look up the 1st till nth best alternative
    (ifelse
      index-best = 0 and nh-AE-report-available [
      ; if the index corresonds to 0 and AE alternative is available for this neighborhood, the procedure enters this statement and sets the nh-best-available variable equal to the iteration number
        set nh-best-available choice-iteration ;
        set thermal-system-found true]
      index-best = 1 and nh-HT/MT-report-available [
      ; if the index corresonds to 0 and HT/MT alternative is available for this neighborhood, the procedure enters this statement and sets the nh-best-available variable equal to the iteration number
        set nh-best-available choice-iteration
        set thermal-system-found true]
      index-best = 2 and nh-LT-report-available [
      ; if the index corresonds to 0 and LT alternative is available for this neighborhood, the procedure enters this statement and sets the nh-best-available variable equal to the iteration number
        set nh-best-available choice-iteration
        set thermal-system-found true]
      index-best = 3 and nh-GG-report-available [
      ; if the index corresonds to 3 and GG alternative is available for this neighborhood, the procedure enters this statement and sets the nh-best-available variable equal to the iteration number
        set nh-best-available choice-iteration
        set thermal-system-found true]
      index-best = 4 and nh-H2-report-available [
      ; if the index corresonds to 4 and H2 alternative is available for this neighborhood, the procedure enters this statement and sets the nh-best-available variable equal to the iteration number
        set nh-best-available choice-iteration
        set thermal-system-found true]
      [set choice-iteration (choice-iteration + 1)
        if choice-iteration > 5 [print "error tnh-update-best-available-variable " stop]])
  ]
end

to nh-update-ins ; procedure that updates the current insulation level of neighborhoods
  ask neighborhoods [
    let ins-improvement 0
    if nh-ins-strategy1 > 0 [
      set ins-improvement nh-ins-strategy1 / 10 / 30] ;; nh-ins-strategy of 10 means an improvement of 1 insulation level in total for all hh's --> all low insulated neighborhoods are on average now medium insulated
                                                      ;; nh-ins strategy of 60 means an improvement of 6 insulation levels in total for all hh's --> all low insulated nh's are now highly insulate
    if nh-ins < 8.5 [ ; 8.5 is the maximum --> A++
      set nh-ins nh-ins + ins-improvement]
    nh-update-type ; updates the neighborhoods nh-type according to new insulation level
    ifelse nh-ins < 3.5 and nh-low-ins-transition? [ ; if this assumption is switched on and insulation is level low than
      set nh-min-ins false] ; a state is set true wich prevents this neighborhood from being able to transition
    [set nh-min-ins true]
  ]
end

to nh-update-type ; function that determines which neighborhood-type the neighborhood is based on insulation level and urban density, based on Ecofys/CE Delft report
    if ((nh-sted = 1) or (nh-sted = 2)) and (nh-ins < 3.5) [ ;
      set nh-neighborhood-type 0]
    if ((nh-sted = 1) or (nh-sted = 2)) and (nh-ins >= 3.5) and (nh-ins < 5.5) [
      set nh-neighborhood-type 1]
    if ((nh-sted = 1) or (nh-sted = 2)) and (nh-ins >= 5.5) [
      set nh-neighborhood-type 2]
    if (nh-sted = 3) and (nh-ins < 3.5) [
      set nh-neighborhood-type 3]
    if (nh-sted = 3) and (nh-ins >= 3.5) and (nh-ins < 5.5) [
      set nh-neighborhood-type 4]
    if (nh-sted = 3) and (nh-ins >= 5.5) [
      set nh-neighborhood-type 5]
    if (nh-sted = 4) and (nh-ins < 3.5) [
      set nh-neighborhood-type 6]
    if (nh-sted = 4) and (nh-ins >= 3.5) and (nh-ins < 5.5) [
      set nh-neighborhood-type 7]
    if (nh-sted = 4) and (nh-ins >= 5.5) [
      set nh-neighborhood-type 8]
    if (nh-sted = 5) and (nh-ins < 3.5) [
      set nh-neighborhood-type 9]
    if (nh-sted = 5) and (nh-ins >= 3.5) and (nh-ins < 5.5) [
      set nh-neighborhood-type 10]
    if (nh-sted = 5) and (nh-ins >= 5.5) [
      set nh-neighborhood-type 11]
end

;; ----------------- Other Procedures

to gg-update-capacity ; this procedure is necessary to update the used greengas capacity accordingly with reduced thermal demand of neighborhoods due to isolation
  ask one-of ggsources [
    set gg-J-y-used (sum [nh-th-energy-use-y-t0] of neighborhoods with [(nh-transition-state != "to-start-transition") and (nh-thermal-system = "GG")])
    set gg-J-y-current (gg-J-y-t0 - gg-J-y-used)
  ]
end

;; ----------------- OUTPUT Procedures

to update-output
  ; national peak energy output kW
  set output-nl-kw sum [nh-th-energy-peak-kw] of neighborhoods
  set output-nl-ng-kw sum [nh-ng-peak-kw] of neighborhoods
  set output-nl-e-kw sum [nh-e-peak-kw] of neighborhoods
  set output-nl-h-kw sum [nh-h-peak-kw] of neighborhoods
  set output-nl-gg-kw sum [nh-gg-peak-kw] of neighborhoods
  set output-nl-h2-kw sum [nh-h2-peak-kw] of neighborhoods

  ; Nl peak energy output m3
  set output-nl-ng-m3 sum [nh-ng-peak-m3] of neighborhoods
  set output-nl-gg-m3 sum [nh-gg-peak-m3] of neighborhoods
  set output-nl-h2-m3 sum [nh-h2-peak-m3] of neighborhoods


  ; lock-in of decisions municipalities
  set output-nl-tpp mean ([nh-best-available] of neighborhoods with [nh-transition-state != "to-start-transition"])

  ; transition starts of mp's per year
  set output-nl-ts sum ([mp-transitions-this-year] of municipalities)

    ; NL nh transition states per year
  set output-nl-nh-tst count neighborhoods with [nh-transition-state = "to-start-transition"]
  set output-nl-nh-it count neighborhoods with [nh-transition-state = "in-transition"]
  set output-nl-nh-tf count neighborhoods with [nh-transition-state = "transition-finished"]

  ; output MR ng kw
  set output-mr-Abbenbroek-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Abbenbroek"]
  set output-mr-Achterdrempt-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Achterdrempt"]
  set output-mr-Alkmaar-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Alkmaar"]
  set output-mr-Angerlo-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Angerlo"]
  set output-mr-Apeldoorn-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Apeldoorn"]
  set output-mr-Assumburg-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Assumburg"]
  set output-mr-Axel-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Axel"]
  set output-mr-Baal-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Baal"]
  set output-mr-Belfeld-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Belfeld"]
  set output-mr-Bemelen-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Bemelen"]
  set output-mr-Best-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Best"]
  set output-mr-Beverwijk-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Beverwijk"]
  set output-mr-Birstum-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Birstum"]
  set output-mr-Bleiswijk-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Bleiswijk"]
  set output-mr-Bornerbroek-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Bornerbroek"]
  set output-mr-Boxtel-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Boxtel"]
  set output-mr-DenKaat-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Den Kaat"]
  set output-mr-Driehuis-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Driehuis"]
  set output-mr-Eext-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Eext"]
  set output-mr-Emmeloord-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Emmeloord"]
  set output-mr-Enschede-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Enschede"]
  set output-mr-Esveld-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Esveld"]
  set output-mr-Ewijk-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Ewijk"]
  set output-mr-Gilze-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Gilze"]
  set output-mr-Gravenpolder-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Gravenpolder"]
  set output-mr-Groenlo-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Groenlo"]
  set output-mr-Gronsveld-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Gronsveld"]
  set output-mr-Haren-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Haren"]
  set output-mr-Heerhugowaard-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Heerhugowaard"]
  set output-mr-Hengelo-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Hengelo"]
  set output-mr-Hilversum-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Hilversum"]
  set output-mr-Hoofddorp-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Hoofddorp"]
  set output-mr-Hoogezand-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Hoogezand"]
  set output-mr-Ijsselmonde-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Ijsselmonde"]
  set output-mr-Krimpenerwaard-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Krimpenerwaard"]
  set output-mr-Lambertschaag-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Lambertschaag"]
  set output-mr-Leusden-Zuid-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Leusden-Zuid"]
  set output-mr-Lingewaal-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Lingewaal"]
  set output-mr-Lurkeers-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Lurkeers"]
  set output-mr-Melick-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Melick"]
  set output-mr-Middelrode-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Middelrode"]
  set output-mr-Mierlo-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Mierlo"]
  set output-mr-Mill-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Mill"]
  set output-mr-Moergestel-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Moergestel"]
  set output-mr-Nederweert-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Nederweert"]
  set output-mr-Nijkerk-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Nijkerk"]
  set output-mr-Nijland-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Nijland"]
  set output-mr-Odijk-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Odijk"]
  set output-mr-Ommeloop-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Ommeloop"]
  set output-mr-Oosteind-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Oosteind"]
  set output-mr-Oostum-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Oostum"]
  set output-mr-Opsterland-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Opsterland"]
  set output-mr-Oss-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Oss"]
  set output-mr-Ossendrecht-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Ossendrecht"]
  set output-mr-Oudverlaat-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Oudverlaat"]
  set output-mr-Reek-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Reek"]
  set output-mr-Reijerscop-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Reijerscop"]
  set output-mr-Rijnsburg-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Rijnsburg"]
  set output-mr-Rijsbergen-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Rijsbergen"]
  set output-mr-Rijswijk-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Rijswijk"]
  set output-mr-Sanderbout-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Sanderbout"]
  set output-mr-Scheemda-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Scheemda"]
  set output-mr-Schinnen-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Schinnen"]
  set output-mr-Schuilenburg-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Schuilenburg"]
  set output-mr-Simpelveld-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Simpelveld"]
  set output-mr-Sloten-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Sloten"]
  set output-mr-tWoudt-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "t Woudt"]
  set output-mr-Tiel-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Tiel"]
  set output-mr-Valburg-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Valburg"]
  set output-mr-Venray-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Venray"]
  set output-mr-Visvliet-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Visvliet"]
  set output-mr-Vlaardingen-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Vlaardingen"]
  set output-mr-Vondelingenplaat-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Vondelingenplaat"]
  set output-mr-Voorburg-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Voorburg"]
  set output-mr-Weesp-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Weesp"]
  set output-mr-Westerbork-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Westerbork"]
  set output-mr-Wezep-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Wezep"]
  set output-mr-Wijngaarden-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Wijngaarden"]
  set output-mr-Zaltbommel-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Zaltbommel"]
  set output-mr-Zegge-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Zegge"]
  set output-mr-Zoeterwoude-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Zoeterwoude"]
  set output-mr-Zuid-Kraayert-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Zuid-Kraayert"]
  set output-mr-Zuideropgaande-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mr-station = "Zuideropgaande"]


  ; output MR gg kw
  set output-mr-Abbenbroek-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Abbenbroek"]
  set output-mr-Achterdrempt-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Achterdrempt"]
  set output-mr-Alkmaar-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Alkmaar"]
  set output-mr-Angerlo-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Angerlo"]
  set output-mr-Apeldoorn-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Apeldoorn"]
  set output-mr-Assumburg-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Assumburg"]
  set output-mr-Axel-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Axel"]
  set output-mr-Baal-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Baal"]
  set output-mr-Belfeld-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Belfeld"]
  set output-mr-Bemelen-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Bemelen"]
  set output-mr-Best-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Best"]
  set output-mr-Beverwijk-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Beverwijk"]
  set output-mr-Birstum-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Birstum"]
  set output-mr-Bleiswijk-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Bleiswijk"]
  set output-mr-Bornerbroek-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Bornerbroek"]
  set output-mr-Boxtel-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Boxtel"]
  set output-mr-DenKaat-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Den Kaat"]
  set output-mr-Driehuis-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Driehuis"]
  set output-mr-Eext-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Eext"]
  set output-mr-Emmeloord-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Emmeloord"]
  set output-mr-Enschede-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Enschede"]
  set output-mr-Esveld-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Esveld"]
  set output-mr-Ewijk-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Ewijk"]
  set output-mr-Gilze-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Gilze"]
  set output-mr-Gravenpolder-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Gravenpolder"]
  set output-mr-Groenlo-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Groenlo"]
  set output-mr-Gronsveld-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Gronsveld"]
  set output-mr-Haren-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Haren"]
  set output-mr-Heerhugowaard-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Heerhugowaard"]
  set output-mr-Hengelo-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Hengelo"]
  set output-mr-Hilversum-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Hilversum"]
  set output-mr-Hoofddorp-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Hoofddorp"]
  set output-mr-Hoogezand-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Hoogezand"]
  set output-mr-Ijsselmonde-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Ijsselmonde"]
  set output-mr-Krimpenerwaard-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Krimpenerwaard"]
  set output-mr-Lambertschaag-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Lambertschaag"]
  set output-mr-Leusden-Zuid-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Leusden-Zuid"]
  set output-mr-Lingewaal-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Lingewaal"]
  set output-mr-Lurkeers-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Lurkeers"]
  set output-mr-Melick-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Melick"]
  set output-mr-Middelrode-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Middelrode"]
  set output-mr-Mierlo-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Mierlo"]
  set output-mr-Mill-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Mill"]
  set output-mr-Moergestel-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Moergestel"]
  set output-mr-Nederweert-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Nederweert"]
  set output-mr-Nijkerk-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Nijkerk"]
  set output-mr-Nijland-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Nijland"]
  set output-mr-Odijk-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Odijk"]
  set output-mr-Ommeloop-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Ommeloop"]
  set output-mr-Oosteind-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Oosteind"]
  set output-mr-Oostum-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Oostum"]
  set output-mr-Opsterland-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Opsterland"]
  set output-mr-Oss-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Oss"]
  set output-mr-Ossendrecht-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Ossendrecht"]
  set output-mr-Oudverlaat-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Oudverlaat"]
  set output-mr-Reek-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Reek"]
  set output-mr-Reijerscop-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Reijerscop"]
  set output-mr-Rijnsburg-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Rijnsburg"]
  set output-mr-Rijsbergen-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Rijsbergen"]
  set output-mr-Rijswijk-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Rijswijk"]
  set output-mr-Sanderbout-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Sanderbout"]
  set output-mr-Scheemda-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Scheemda"]
  set output-mr-Schinnen-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Schinnen"]
  set output-mr-Schuilenburg-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Schuilenburg"]
  set output-mr-Simpelveld-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Simpelveld"]
  set output-mr-Sloten-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Sloten"]
  set output-mr-tWoudt-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "t Woudt"]
  set output-mr-Tiel-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Tiel"]
  set output-mr-Valburg-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Valburg"]
  set output-mr-Venray-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Venray"]
  set output-mr-Visvliet-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Visvliet"]
  set output-mr-Vlaardingen-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Vlaardingen"]
  set output-mr-Vondelingenplaat-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Vondelingenplaat"]
  set output-mr-Voorburg-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Voorburg"]
  set output-mr-Weesp-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Weesp"]
  set output-mr-Westerbork-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Westerbork"]
  set output-mr-Wezep-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Wezep"]
  set output-mr-Wijngaarden-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Wijngaarden"]
  set output-mr-Zaltbommel-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Zaltbommel"]
  set output-mr-Zegge-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Zegge"]
  set output-mr-Zoeterwoude-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Zoeterwoude"]
  set output-mr-Zuid-Kraayert-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Zuid-Kraayert"]
  set output-mr-Zuideropgaande-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mr-station = "Zuideropgaande"]

  ; output MR h2 kw
  set output-mr-Abbenbroek-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Abbenbroek"]
  set output-mr-Achterdrempt-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Achterdrempt"]
  set output-mr-Alkmaar-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Alkmaar"]
  set output-mr-Angerlo-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Angerlo"]
  set output-mr-Apeldoorn-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Apeldoorn"]
  set output-mr-Assumburg-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Assumburg"]
  set output-mr-Axel-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Axel"]
  set output-mr-Baal-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Baal"]
  set output-mr-Belfeld-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Belfeld"]
  set output-mr-Bemelen-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Bemelen"]
  set output-mr-Best-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Best"]
  set output-mr-Beverwijk-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Beverwijk"]
  set output-mr-Birstum-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Birstum"]
  set output-mr-Bleiswijk-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Bleiswijk"]
  set output-mr-Bornerbroek-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Bornerbroek"]
  set output-mr-Boxtel-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Boxtel"]
  set output-mr-DenKaat-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Den Kaat"]
  set output-mr-Driehuis-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Driehuis"]
  set output-mr-Eext-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Eext"]
  set output-mr-Emmeloord-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Emmeloord"]
  set output-mr-Enschede-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Enschede"]
  set output-mr-Esveld-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Esveld"]
  set output-mr-Ewijk-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Ewijk"]
  set output-mr-Gilze-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Gilze"]
  set output-mr-Gravenpolder-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Gravenpolder"]
  set output-mr-Groenlo-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Groenlo"]
  set output-mr-Gronsveld-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Gronsveld"]
  set output-mr-Haren-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Haren"]
  set output-mr-Heerhugowaard-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Heerhugowaard"]
  set output-mr-Hengelo-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Hengelo"]
  set output-mr-Hilversum-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Hilversum"]
  set output-mr-Hoofddorp-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Hoofddorp"]
  set output-mr-Hoogezand-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Hoogezand"]
  set output-mr-Ijsselmonde-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Ijsselmonde"]
  set output-mr-Krimpenerwaard-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Krimpenerwaard"]
  set output-mr-Lambertschaag-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Lambertschaag"]
  set output-mr-Leusden-Zuid-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Leusden-Zuid"]
  set output-mr-Lingewaal-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Lingewaal"]
  set output-mr-Lurkeers-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Lurkeers"]
  set output-mr-Melick-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Melick"]
  set output-mr-Middelrode-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Middelrode"]
  set output-mr-Mierlo-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Mierlo"]
  set output-mr-Mill-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Mill"]
  set output-mr-Moergestel-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Moergestel"]
  set output-mr-Nederweert-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Nederweert"]
  set output-mr-Nijkerk-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Nijkerk"]
  set output-mr-Nijland-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Nijland"]
  set output-mr-Odijk-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Odijk"]
  set output-mr-Ommeloop-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Ommeloop"]
  set output-mr-Oosteind-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Oosteind"]
  set output-mr-Oostum-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Oostum"]
  set output-mr-Opsterland-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Opsterland"]
  set output-mr-Oss-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Oss"]
  set output-mr-Ossendrecht-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Ossendrecht"]
  set output-mr-Oudverlaat-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Oudverlaat"]
  set output-mr-Reek-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Reek"]
  set output-mr-Reijerscop-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Reijerscop"]
  set output-mr-Rijnsburg-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Rijnsburg"]
  set output-mr-Rijsbergen-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Rijsbergen"]
  set output-mr-Rijswijk-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Rijswijk"]
  set output-mr-Sanderbout-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Sanderbout"]
  set output-mr-Scheemda-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Scheemda"]
  set output-mr-Schinnen-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Schinnen"]
  set output-mr-Schuilenburg-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Schuilenburg"]
  set output-mr-Simpelveld-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Simpelveld"]
  set output-mr-Sloten-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Sloten"]
  set output-mr-tWoudt-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "t Woudt"]
  set output-mr-Tiel-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Tiel"]
  set output-mr-Valburg-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Valburg"]
  set output-mr-Venray-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Venray"]
  set output-mr-Visvliet-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Visvliet"]
  set output-mr-Vlaardingen-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Vlaardingen"]
  set output-mr-Vondelingenplaat-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Vondelingenplaat"]
  set output-mr-Voorburg-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Voorburg"]
  set output-mr-Weesp-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Weesp"]
  set output-mr-Westerbork-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Westerbork"]
  set output-mr-Wezep-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Wezep"]
  set output-mr-Wijngaarden-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Wijngaarden"]
  set output-mr-Zaltbommel-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Zaltbommel"]
  set output-mr-Zegge-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Zegge"]
  set output-mr-Zoeterwoude-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Zoeterwoude"]
  set output-mr-Zuid-Kraayert-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Zuid-Kraayert"]
  set output-mr-Zuideropgaande-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mr-station = "Zuideropgaande"]

  ; output MR e kw
  set output-mr-Abbenbroek-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Abbenbroek"]
  set output-mr-Achterdrempt-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Achterdrempt"]
  set output-mr-Alkmaar-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Alkmaar"]
  set output-mr-Angerlo-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Angerlo"]
  set output-mr-Apeldoorn-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Apeldoorn"]
  set output-mr-Assumburg-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Assumburg"]
  set output-mr-Axel-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Axel"]
  set output-mr-Baal-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Baal"]
  set output-mr-Belfeld-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Belfeld"]
  set output-mr-Bemelen-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Bemelen"]
  set output-mr-Best-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Best"]
  set output-mr-Beverwijk-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Beverwijk"]
  set output-mr-Birstum-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Birstum"]
  set output-mr-Bleiswijk-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Bleiswijk"]
  set output-mr-Bornerbroek-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Bornerbroek"]
  set output-mr-Boxtel-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Boxtel"]
  set output-mr-DenKaat-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Den Kaat"]
  set output-mr-Driehuis-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Driehuis"]
  set output-mr-Eext-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Eext"]
  set output-mr-Emmeloord-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Emmeloord"]
  set output-mr-Enschede-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Enschede"]
  set output-mr-Esveld-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Esveld"]
  set output-mr-Ewijk-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Ewijk"]
  set output-mr-Gilze-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Gilze"]
  set output-mr-Gravenpolder-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Gravenpolder"]
  set output-mr-Groenlo-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Groenlo"]
  set output-mr-Gronsveld-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Gronsveld"]
  set output-mr-Haren-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Haren"]
  set output-mr-Heerhugowaard-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Heerhugowaard"]
  set output-mr-Hengelo-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Hengelo"]
  set output-mr-Hilversum-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Hilversum"]
  set output-mr-Hoofddorp-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Hoofddorp"]
  set output-mr-Hoogezand-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Hoogezand"]
  set output-mr-Ijsselmonde-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Ijsselmonde"]
  set output-mr-Krimpenerwaard-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Krimpenerwaard"]
  set output-mr-Lambertschaag-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Lambertschaag"]
  set output-mr-Leusden-Zuid-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Leusden-Zuid"]
  set output-mr-Lingewaal-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Lingewaal"]
  set output-mr-Lurkeers-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Lurkeers"]
  set output-mr-Melick-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Melick"]
  set output-mr-Middelrode-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Middelrode"]
  set output-mr-Mierlo-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Mierlo"]
  set output-mr-Mill-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Mill"]
  set output-mr-Moergestel-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Moergestel"]
  set output-mr-Nederweert-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Nederweert"]
  set output-mr-Nijkerk-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Nijkerk"]
  set output-mr-Nijland-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Nijland"]
  set output-mr-Odijk-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Odijk"]
  set output-mr-Ommeloop-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Ommeloop"]
  set output-mr-Oosteind-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Oosteind"]
  set output-mr-Oostum-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Oostum"]
  set output-mr-Opsterland-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Opsterland"]
  set output-mr-Oss-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Oss"]
  set output-mr-Ossendrecht-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Ossendrecht"]
  set output-mr-Oudverlaat-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Oudverlaat"]
  set output-mr-Reek-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Reek"]
  set output-mr-Reijerscop-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Reijerscop"]
  set output-mr-Rijnsburg-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Rijnsburg"]
  set output-mr-Rijsbergen-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Rijsbergen"]
  set output-mr-Rijswijk-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Rijswijk"]
  set output-mr-Sanderbout-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Sanderbout"]
  set output-mr-Scheemda-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Scheemda"]
  set output-mr-Schinnen-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Schinnen"]
  set output-mr-Schuilenburg-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Schuilenburg"]
  set output-mr-Simpelveld-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Simpelveld"]
  set output-mr-Sloten-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Sloten"]
  set output-mr-tWoudt-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "t Woudt"]
  set output-mr-Tiel-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Tiel"]
  set output-mr-Valburg-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Valburg"]
  set output-mr-Venray-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Venray"]
  set output-mr-Visvliet-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Visvliet"]
  set output-mr-Vlaardingen-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Vlaardingen"]
  set output-mr-Vondelingenplaat-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Vondelingenplaat"]
  set output-mr-Voorburg-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Voorburg"]
  set output-mr-Weesp-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Weesp"]
  set output-mr-Westerbork-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Westerbork"]
  set output-mr-Wezep-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Wezep"]
  set output-mr-Wijngaarden-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Wijngaarden"]
  set output-mr-Zaltbommel-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Zaltbommel"]
  set output-mr-Zegge-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Zegge"]
  set output-mr-Zoeterwoude-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Zoeterwoude"]
  set output-mr-Zuid-Kraayert-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Zuid-Kraayert"]
  set output-mr-Zuideropgaande-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mr-station = "Zuideropgaande"]

  ; output MR h kw
  set output-mr-Abbenbroek-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Abbenbroek"]
  set output-mr-Achterdrempt-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Achterdrempt"]
  set output-mr-Alkmaar-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Alkmaar"]
  set output-mr-Angerlo-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Angerlo"]
  set output-mr-Apeldoorn-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Apeldoorn"]
  set output-mr-Assumburg-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Assumburg"]
  set output-mr-Axel-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Axel"]
  set output-mr-Baal-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Baal"]
  set output-mr-Belfeld-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Belfeld"]
  set output-mr-Bemelen-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Bemelen"]
  set output-mr-Best-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Best"]
  set output-mr-Beverwijk-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Beverwijk"]
  set output-mr-Birstum-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Birstum"]
  set output-mr-Bleiswijk-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Bleiswijk"]
  set output-mr-Bornerbroek-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Bornerbroek"]
  set output-mr-Boxtel-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Boxtel"]
  set output-mr-DenKaat-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Den Kaat"]
  set output-mr-Driehuis-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Driehuis"]
  set output-mr-Eext-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Eext"]
  set output-mr-Emmeloord-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Emmeloord"]
  set output-mr-Enschede-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Enschede"]
  set output-mr-Esveld-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Esveld"]
  set output-mr-Ewijk-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Ewijk"]
  set output-mr-Gilze-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Gilze"]
  set output-mr-Gravenpolder-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Gravenpolder"]
  set output-mr-Groenlo-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Groenlo"]
  set output-mr-Gronsveld-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Gronsveld"]
  set output-mr-Haren-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Haren"]
  set output-mr-Heerhugowaard-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Heerhugowaard"]
  set output-mr-Hengelo-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Hengelo"]
  set output-mr-Hilversum-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Hilversum"]
  set output-mr-Hoofddorp-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Hoofddorp"]
  set output-mr-Hoogezand-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Hoogezand"]
  set output-mr-Ijsselmonde-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Ijsselmonde"]
  set output-mr-Krimpenerwaard-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Krimpenerwaard"]
  set output-mr-Lambertschaag-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Lambertschaag"]
  set output-mr-Leusden-Zuid-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Leusden-Zuid"]
  set output-mr-Lingewaal-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Lingewaal"]
  set output-mr-Lurkeers-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Lurkeers"]
  set output-mr-Melick-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Melick"]
  set output-mr-Middelrode-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Middelrode"]
  set output-mr-Mierlo-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Mierlo"]
  set output-mr-Mill-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Mill"]
  set output-mr-Moergestel-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Moergestel"]
  set output-mr-Nederweert-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Nederweert"]
  set output-mr-Nijkerk-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Nijkerk"]
  set output-mr-Nijland-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Nijland"]
  set output-mr-Odijk-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Odijk"]
  set output-mr-Ommeloop-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Ommeloop"]
  set output-mr-Oosteind-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Oosteind"]
  set output-mr-Oostum-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Oostum"]
  set output-mr-Opsterland-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Opsterland"]
  set output-mr-Oss-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Oss"]
  set output-mr-Ossendrecht-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Ossendrecht"]
  set output-mr-Oudverlaat-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Oudverlaat"]
  set output-mr-Reek-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Reek"]
  set output-mr-Reijerscop-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Reijerscop"]
  set output-mr-Rijnsburg-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Rijnsburg"]
  set output-mr-Rijsbergen-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Rijsbergen"]
  set output-mr-Rijswijk-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Rijswijk"]
  set output-mr-Sanderbout-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Sanderbout"]
  set output-mr-Scheemda-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Scheemda"]
  set output-mr-Schinnen-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Schinnen"]
  set output-mr-Schuilenburg-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Schuilenburg"]
  set output-mr-Simpelveld-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Simpelveld"]
  set output-mr-Sloten-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Sloten"]
  set output-mr-tWoudt-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "t Woudt"]
  set output-mr-Tiel-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Tiel"]
  set output-mr-Valburg-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Valburg"]
  set output-mr-Venray-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Venray"]
  set output-mr-Visvliet-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Visvliet"]
  set output-mr-Vlaardingen-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Vlaardingen"]
  set output-mr-Vondelingenplaat-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Vondelingenplaat"]
  set output-mr-Voorburg-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Voorburg"]
  set output-mr-Weesp-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Weesp"]
  set output-mr-Westerbork-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Westerbork"]
  set output-mr-Wezep-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Wezep"]
  set output-mr-Wijngaarden-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Wijngaarden"]
  set output-mr-Zaltbommel-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Zaltbommel"]
  set output-mr-Zegge-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Zegge"]
  set output-mr-Zoeterwoude-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Zoeterwoude"]
  set output-mr-Zuid-Kraayert-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Zuid-Kraayert"]
  set output-mr-Zuideropgaande-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mr-station = "Zuideropgaande"]



  set output-mr-Vlaardingen-tpp mean ([nh-best-available] of neighborhoods with [nh-transition-state != "to-start-transition" and nh-mr-station = "Vlaardingen"])
  set output-mr-Haren-tpp mean ([nh-best-available] of neighborhoods with [nh-transition-state != "to-start-transition" and nh-mr-station = "Haren"])
  set output-mr-Westerbork-tpp mean ([nh-best-available] of neighborhoods with [nh-transition-state != "to-start-transition" and nh-mr-station = "Westerbork"])

  ; energy output mp's MR Vlaardingen
  set output-mp-Rotterdam-ng-m3 sum [nh-ng-peak-m3] of neighborhoods with [nh-mp-name = "Rotterdam"]
  set output-mp-Rotterdam-gg-m3 sum [nh-gg-peak-m3] of neighborhoods with [nh-mp-name = "Rotterdam"]
  set output-mp-Rotterdam-h2-m3 sum [nh-h2-peak-m3] of neighborhoods with [nh-mp-name = "Rotterdam"]
  set output-mp-Rotterdam-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mp-name = "Rotterdam"]
  set output-mp-Rotterdam-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mp-name = "Rotterdam"]
  set output-mp-Rotterdam-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mp-name = "Rotterdam"]
  set output-mp-Rotterdam-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mp-name = "Rotterdam"]
  set output-mp-Rotterdam-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mp-name = "Rotterdam"]
  ifelse any? neighborhoods with [nh-transition-state != "to-start-transition" and nh-mp-name = "Rotterdam"] [
    set output-mp-Rotterdam-tpp mean ([nh-best-available] of neighborhoods with [nh-transition-state != "to-start-transition" and nh-mp-name = "Rotterdam"])] [
    set output-mp-Rotterdam-tpp 0]

  set output-mp-Vlaardingen-ng-m3 sum [nh-ng-peak-m3] of neighborhoods with [nh-mp-name = "Vlaardingen"]
  set output-mp-Vlaardingen-gg-m3 sum [nh-gg-peak-m3] of neighborhoods with [nh-mp-name = "Vlaardingen"]
  set output-mp-Vlaardingen-h2-m3 sum [nh-h2-peak-m3] of neighborhoods with [nh-mp-name = "Vlaardingen"]
  set output-mp-Vlaardingen-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mp-name = "Vlaardingen"]
  set output-mp-Vlaardingen-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mp-name = "Vlaardingen"]
  set output-mp-Vlaardingen-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mp-name = "Vlaardingen"]
  set output-mp-Vlaardingen-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mp-name = "Vlaardingen"]
  set output-mp-Vlaardingen-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mp-name = "Vlaardingen"]
  ifelse any? neighborhoods with [nh-transition-state != "to-start-transition" and nh-mp-name = "Vlaardingen"] [
    set output-mp-Vlaardingen-tpp mean ([nh-best-available] of neighborhoods with [nh-transition-state != "to-start-transition" and nh-mp-name = "Vlaardingen"])] [
    set output-mp-Vlaardingen-tpp 0]

  set output-mp-Maassluis-ng-m3 sum [nh-ng-peak-m3] of neighborhoods with [nh-mp-name = "Maassluis"]
  set output-mp-Maassluis-gg-m3 sum [nh-gg-peak-m3] of neighborhoods with [nh-mp-name = "Maassluis"]
  set output-mp-Maassluis-h2-m3 sum [nh-h2-peak-m3] of neighborhoods with [nh-mp-name = "Maassluis"]
  set output-mp-Maassluis-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mp-name = "Maassluis"]
  set output-mp-Maassluis-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mp-name = "Maassluis"]
  set output-mp-Maassluis-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mp-name = "Maassluis"]
  set output-mp-Maassluis-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mp-name = "Maassluis"]
  set output-mp-Maassluis-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mp-name = "Maassluis"]
  ifelse any? neighborhoods with [nh-transition-state != "to-start-transition" and nh-mp-name = "Maassluis"] [
    set output-mp-Maassluis-tpp mean ([nh-best-available] of neighborhoods with [nh-transition-state != "to-start-transition" and nh-mp-name = "Maassluis"])] [
    set output-mp-Maassluis-tpp 0]

  set output-mp-Schiedam-ng-m3 sum [nh-ng-peak-m3] of neighborhoods with [nh-mp-name = "Schiedam"]
  set output-mp-Schiedam-gg-m3 sum [nh-gg-peak-m3] of neighborhoods with [nh-mp-name = "Schiedam"]
  set output-mp-Schiedam-h2-m3 sum [nh-h2-peak-m3] of neighborhoods with [nh-mp-name = "Schiedam"]
  set output-mp-Schiedam-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mp-name = "Schiedam"]
  set output-mp-Schiedam-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mp-name = "Schiedam"]
  set output-mp-Schiedam-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mp-name = "Schiedam"]
  set output-mp-Schiedam-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mp-name = "Schiedam"]
  set output-mp-Schiedam-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mp-name = "Schiedam"]
  ifelse any? neighborhoods with [nh-transition-state != "to-start-transition" and nh-mp-name = "Schiedam"] [
    set output-mp-Schiedam-tpp mean ([nh-best-available] of neighborhoods with [nh-transition-state != "to-start-transition" and nh-mp-name = "Schiedam"])] [
    set output-mp-Schiedam-tpp 0]


  ; energy output mp's MR Haren
  set output-mp-Groningen-ng-m3 sum [nh-ng-peak-m3] of neighborhoods with [nh-mp-name = "Groningen"]
  set output-mp-Groningen-gg-m3 sum [nh-gg-peak-m3] of neighborhoods with [nh-mp-name = "Groningen"]
  set output-mp-Groningen-h2-m3 sum [nh-h2-peak-m3] of neighborhoods with [nh-mp-name = "Groningen"]
  set output-mp-Groningen-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mp-name = "Groningen"]
  set output-mp-Groningen-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mp-name = "Groningen"]
  set output-mp-Groningen-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mp-name = "Groningen"]
  set output-mp-Groningen-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mp-name = "Groningen"]
  set output-mp-Groningen-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mp-name = "Groningen"]
  ifelse any? neighborhoods with [nh-transition-state != "to-start-transition" and nh-mp-name = "Groningen"] [
    set output-mp-Groningen-tpp mean ([nh-best-available] of neighborhoods with [nh-transition-state != "to-start-transition" and nh-mp-name = "Groningen"])] [
    set output-mp-Groningen-tpp 0]

  set output-mp-Leek-ng-m3 sum [nh-ng-peak-m3] of neighborhoods with [nh-mp-name = "Leek"]
  set output-mp-Leek-gg-m3 sum [nh-gg-peak-m3] of neighborhoods with [nh-mp-name = "Leek"]
  set output-mp-Leek-h2-m3 sum [nh-h2-peak-m3] of neighborhoods with [nh-mp-name = "Leek"]
  set output-mp-Leek-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mp-name = "Leek"]
  set output-mp-Leek-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mp-name = "Leek"]
  set output-mp-Leek-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mp-name = "Leek"]
  set output-mp-Leek-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mp-name = "Leek"]
  set output-mp-Leek-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mp-name = "Leek"]
  ifelse any? neighborhoods with [nh-transition-state != "to-start-transition" and nh-mp-name = "Leek"] [
    set output-mp-Leek-tpp mean ([nh-best-available] of neighborhoods with [nh-transition-state != "to-start-transition" and nh-mp-name = "Leek"])] [
    set output-mp-Leek-tpp 0]

  set output-mp-Marum-ng-m3 sum [nh-ng-peak-m3] of neighborhoods with [nh-mp-name = "Marum"]
  set output-mp-Marum-gg-m3 sum [nh-gg-peak-m3] of neighborhoods with [nh-mp-name = "Marum"]
  set output-mp-Marum-h2-m3 sum [nh-h2-peak-m3] of neighborhoods with [nh-mp-name = "Marum"]
  set output-mp-Marum-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mp-name = "Marum"]
  set output-mp-Marum-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mp-name = "Marum"]
  set output-mp-Marum-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mp-name = "Marum"]
  set output-mp-Marum-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mp-name = "Marum"]
  set output-mp-Marum-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mp-name = "Marum"]
  ifelse any? neighborhoods with [nh-transition-state != "to-start-transition" and nh-mp-name = "Marum"] [
    set output-mp-Marum-tpp mean ([nh-best-available] of neighborhoods with [nh-transition-state != "to-start-transition" and nh-mp-name = "Marum"])] [
    set output-mp-Marum-tpp 0]

  set output-mp-Noordenveld-ng-m3 sum [nh-ng-peak-m3] of neighborhoods with [nh-mp-name = "Noordenveld"]
  set output-mp-Noordenveld-gg-m3 sum [nh-gg-peak-m3] of neighborhoods with [nh-mp-name = "Noordenveld"]
  set output-mp-Noordenveld-h2-m3 sum [nh-h2-peak-m3] of neighborhoods with [nh-mp-name = "Noordenveld"]
  set output-mp-Noordenveld-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mp-name = "Noordenveld"]
  set output-mp-Noordenveld-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mp-name = "Noordenveld"]
  set output-mp-Noordenveld-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mp-name = "Noordenveld"]
  set output-mp-Noordenveld-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mp-name = "Noordenveld"]
  set output-mp-Noordenveld-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mp-name = "Noordenveld"]
  ifelse any? neighborhoods with [nh-transition-state != "to-start-transition" and nh-mp-name = "Noordenveld"] [
    set output-mp-Noordenveld-tpp mean ([nh-best-available] of neighborhoods with [nh-transition-state != "to-start-transition" and nh-mp-name = "Noordenveld"])] [
    set output-mp-Noordenveld-tpp 0]

  set output-mp-Haren-ng-m3 sum [nh-ng-peak-m3] of neighborhoods with [nh-mp-name = "Haren"]
  set output-mp-Haren-gg-m3 sum [nh-gg-peak-m3] of neighborhoods with [nh-mp-name = "Haren"]
  set output-mp-Haren-h2-m3 sum [nh-h2-peak-m3] of neighborhoods with [nh-mp-name = "Haren"]
  set output-mp-Haren-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mp-name = "Haren"]
  set output-mp-Haren-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mp-name = "Haren"]
  set output-mp-Haren-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mp-name = "Haren"]
  set output-mp-Haren-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mp-name = "Haren"]
  set output-mp-Haren-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mp-name = "Haren"]
  ifelse any? neighborhoods with [nh-transition-state != "to-start-transition" and nh-mp-name = "Haren"] [
    set output-mp-Haren-tpp mean ([nh-best-available] of neighborhoods with [nh-transition-state != "to-start-transition" and nh-mp-name = "Haren"])] [
    set output-mp-Haren-tpp 0]

  ; energy output mp's MR Westerveld
   set output-mp-Emmen-ng-m3 sum [nh-ng-peak-m3] of neighborhoods with [nh-mp-name = "Emmen"]
  set output-mp-Emmen-gg-m3 sum [nh-gg-peak-m3] of neighborhoods with [nh-mp-name = "Emmen"]
  set output-mp-Emmen-h2-m3 sum [nh-h2-peak-m3] of neighborhoods with [nh-mp-name = "Emmen"]
  set output-mp-Emmen-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mp-name = "Emmen"]
  set output-mp-Emmen-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mp-name = "Emmen"]
  set output-mp-Emmen-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mp-name = "Emmen"]
  set output-mp-Emmen-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mp-name = "Emmen"]
  set output-mp-Emmen-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mp-name = "Emmen"]
  ifelse any? neighborhoods with [nh-transition-state != "to-start-transition" and nh-mp-name = "Emmen"] [
    set output-mp-Emmen-tpp mean ([nh-best-available] of neighborhoods with [nh-transition-state != "to-start-transition" and nh-mp-name = "Emmen"])] [
    set output-mp-Emmen-tpp 0]

  set output-mp-Westerveld-ng-m3 sum [nh-ng-peak-m3] of neighborhoods with [nh-mp-name = "Westerveld"]
  set output-mp-Westerveld-gg-m3 sum [nh-gg-peak-m3] of neighborhoods with [nh-mp-name = "Westerveld"]
  set output-mp-Westerveld-h2-m3 sum [nh-h2-peak-m3] of neighborhoods with [nh-mp-name = "Westerveld"]
  set output-mp-Westerveld-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mp-name = "Westerveld"]
  set output-mp-Westerveld-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mp-name = "Westerveld"]
  set output-mp-Westerveld-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mp-name = "Westerveld"]
  set output-mp-Westerveld-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mp-name = "Westerveld"]
  set output-mp-Westerveld-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mp-name = "Westerveld"]
  ifelse any? neighborhoods with [nh-transition-state != "to-start-transition" and nh-mp-name = "Westerveld"] [
    set output-mp-Westerveld-tpp mean ([nh-best-available] of neighborhoods with [nh-transition-state != "to-start-transition" and nh-mp-name = "Westerveld"])] [
    set output-mp-Westerveld-tpp 0]

  set output-mp-MiddenDrenthe-ng-m3 sum [nh-ng-peak-m3] of neighborhoods with [nh-mp-name = "Midden-Drenthe"]
  set output-mp-MiddenDrenthe-gg-m3 sum [nh-gg-peak-m3] of neighborhoods with [nh-mp-name = "Midden-Drenthe"]
  set output-mp-MiddenDrenthe-h2-m3 sum [nh-h2-peak-m3] of neighborhoods with [nh-mp-name = "Midden-Drenthe"]
  set output-mp-MiddenDrenthe-ng-kw sum [nh-ng-peak-kw] of neighborhoods with [nh-mp-name = "Midden-Drenthe"]
  set output-mp-MiddenDrenthe-gg-kw sum [nh-gg-peak-kw] of neighborhoods with [nh-mp-name = "Midden-Drenthe"]
  set output-mp-MiddenDrenthe-h2-kw sum [nh-h2-peak-kw] of neighborhoods with [nh-mp-name = "Midden-Drenthe"]
  set output-mp-MiddenDrenthe-e-kw sum [nh-e-peak-kw] of neighborhoods with [nh-mp-name = "Midden-Drenthe"]
  set output-mp-MiddenDrenthe-h-kw sum [nh-h-peak-kw] of neighborhoods with [nh-mp-name = "Midden-Drenthe"]
  ifelse any? neighborhoods with [nh-transition-state != "to-start-transition" and nh-mp-name = "Midden-Drenthe"] [
    set output-mp-MiddenDrenthe-tpp mean ([nh-best-available] of neighborhoods with [nh-transition-state != "to-start-transition" and nh-mp-name = "Midden-Drenthe"])] [
    set output-mp-MiddenDrenthe-tpp 0]


  ; nh transition start per tick output
  ask one-of municipalities with [mp-name = "Rotterdam"] [set output-mp-Rotterdam-nh-ts (list [nh-name] of mp-nh-list with [nh-transition-time-left = nh-transition-duration and nh-transition-state = "in-transition"])]
  ask one-of municipalities with [mp-name = "Groningen"] [set output-mp-Groningen-nh-ts (list [nh-name] of mp-nh-list with [nh-transition-time-left = nh-transition-duration and nh-transition-state = "in-transition"])]
  ask one-of municipalities with [mp-name = "Westerveld"] [set output-mp-Westerveld-nh-ts (list [nh-name] of mp-nh-list with [nh-transition-time-left = nh-transition-duration and nh-transition-state = "in-transition"])]

  ; nh's thermal systems per tick
  ;set output-nh-thermal-system [(list nh-name nh-mp-name nh-thermal-system)] of neighborhoods

  ; thermal systems output on nl level
  set output-nl-ng count neighborhoods with [nh-thermal-system = "NG"]
  set output-nl-ae count neighborhoods with [nh-thermal-system = "AE"]
  set output-nl-gg count neighborhoods with [nh-thermal-system = "GG"]
  set output-nl-ht/mt count neighborhoods with [nh-thermal-system = "HT/MT"]
  set output-nl-lt count neighborhoods with [nh-thermal-system = "LT"]
  set output-nl-h2 count neighborhoods with [nh-thermal-system = "H2"]

  ; insulation level output on nl level
  set output-nl-ins mean [nh-ins] of neighborhoods

end



;; //////////////// PROFILER

to profiler-report
  profiler:start
  repeat 30 [go]
  profiler:stop
  print profiler:report
  profiler:reset
end
@#$#@#$#@
GRAPHICS-WINDOW
0
12
699
712
-1
-1
3.44
1
8
1
1
1
0
1
1
1
-100
100
-100
100
0
0
1
ticks
30.0

BUTTON
0
729
124
763
NIL
setup
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
0
764
124
798
NIL
reset
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
0
803
125
837
NIL
go
T
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
0
877
124
910
NIL
profiler-report
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

SLIDER
137
879
340
912
mp-resource-percentage
mp-resource-percentage
1
100
10.0
1
1
NIL
HORIZONTAL

SLIDER
137
810
340
843
nh-transition-duration
nh-transition-duration
0
5
2.0
1
1
NIL
HORIZONTAL

SLIDER
137
776
339
809
national-transition-goal
national-transition-goal
1
500000
250000.0
1
1
NIL
HORIZONTAL

BUTTON
0
837
125
871
go-once
go
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

SLIDER
352
729
558
762
national-gg-potential-PJ
national-gg-potential-PJ
0
100
60.0
1
1
NIL
HORIZONTAL

SWITCH
352
764
558
797
national-h2-availability
national-h2-availability
0
1
-1000

PLOT
1107
699
1471
849
PJ GG capacity left
NIL
NIL
0.0
10.0
0.0
10.0
true
false
"" ""
PENS
"default" 1.0 0 -16777216 true "" "plot sum [gg-J-y-current] of ggsources"

SLIDER
137
845
340
878
mp-top-n
mp-top-n
0
100
10.0
1
1
NIL
HORIZONTAL

SLIDER
352
799
558
832
max-distance-heatsource
max-distance-heatsource
0
40
15.0
1
1
NIL
HORIZONTAL

CHOOSER
137
729
340
774
mp-transition-strategy
mp-transition-strategy
"0" "1" "2" "2_inv_nh" "2_inv_th" "2_inv_nh_th" "3" "4"
2

PLOT
1108
538
1470
685
Best Choice Available Current
NIL
NIL
0.0
5.0
0.0
10.0
true
true
"" ""
PENS
"1" 1.0 1 -13840069 true "" "histogram [nh-best-available] of neighborhoods with [(nh-best-available = 1) and (nh-transition-state = \"to-start-transition\")]"
"2" 1.0 1 -1184463 true "" "histogram [nh-best-available] of neighborhoods with [(nh-best-available = 2) and (nh-transition-state = \"to-start-transition\")]"
"3" 1.0 1 -955883 true "" "histogram [nh-best-available] of neighborhoods with [(nh-best-available = 3) and (nh-transition-state = \"to-start-transition\")]"
"4" 1.0 1 -2674135 true "" "histogram [nh-best-available] of neighborhoods with [(nh-best-available = 4) and (nh-transition-state = \"to-start-transition\")]"
"5" 1.0 1 -6459832 true "" "histogram [nh-best-available] of neighborhoods with [(nh-best-available = 5) and (nh-transition-state = \"to-start-transition\")]"

SLIDER
702
30
898
63
nh-corp-treshold-high
nh-corp-treshold-high
0
100
50.0
1
1
NIL
HORIZONTAL

SLIDER
702
66
898
99
nh-corp-treshold-med
nh-corp-treshold-med
0
100
10.0
1
1
NIL
HORIZONTAL

SLIDER
702
109
899
142
nh-dhc-treshold-high
nh-dhc-treshold-high
0
100
50.0
1
1
NIL
HORIZONTAL

SLIDER
702
144
900
177
nh-dhc-treshold-med
nh-dhc-treshold-med
0
100
10.0
1
1
NIL
HORIZONTAL

SLIDER
702
188
900
221
nh-nieuw-treshold-high
nh-nieuw-treshold-high
0
100
50.0
1
1
NIL
HORIZONTAL

SLIDER
702
224
901
257
nh-nieuw-treshold-med
nh-nieuw-treshold-med
0
100
10.0
1
1
NIL
HORIZONTAL

SLIDER
703
269
901
302
nh-woz-treshold-high
nh-woz-treshold-high
0
1000
500.0
1
1
NIL
HORIZONTAL

SLIDER
703
305
902
338
nh-woz-treshold-med
nh-woz-treshold-med
0
1000
250.0
1
1
NIL
HORIZONTAL

SLIDER
570
730
742
763
nh-cost-par
nh-cost-par
0
100
50.0
1
1
NIL
HORIZONTAL

TEXTBOX
3
714
170
734
SETUP AND GO
11
0.0
1

TEXTBOX
139
714
306
734
POLICY LEVERS
11
0.0
1

TEXTBOX
353
713
520
733
ENERGY CONSTRAINTS
11
0.0
1

TEXTBOX
573
715
740
735
STRATEGY 4 SCORE BALANCE
11
0.0
1

TEXTBOX
700
12
867
32
LIKELIHOOD TRESHOLDS
11
0.0
1

PLOT
1105
35
1465
230
National Peak Energy Demand
Year
KW
0.0
10.0
0.0
10.0
true
true
"" ""
PENS
"Total" 1.0 0 -16777216 true "" "plot sum [nh-th-energy-peak-kW] of neighborhoods"
"Natural Gas" 1.0 0 -7500403 true "" "plot sum [nh-ng-peak-kW] of neighborhoods"
"Electricity" 1.0 0 -1184463 true "" "plot sum [nh-e-peak-kW] of neighborhoods"
"Green Gas" 1.0 0 -13840069 true "" "plot sum [nh-gg-peak-kW] of neighborhoods"
"HT/MT/LT Heat" 1.0 0 -2674135 true "" "plot sum [nh-h-peak-kW] of neighborhoods"
"Hydrogen" 1.0 0 -13345367 true "" "plot sum [nh-h2-peak-kW] of neighborhoods"
"Methane gas" 1.0 0 -5825686 true "" "plot (sum [nh-ng-peak-kW] of neighborhoods + sum [nh-gg-peak-kW] of neighborhoods)"
"Renewable gas" 1.0 0 -8990512 true "" "plot (sum [nh-h2-peak-kW] of neighborhoods + sum [nh-gg-peak-kW] of neighborhoods)"
"All gas" 1.0 0 -2064490 true "" "plot (sum [nh-h2-peak-kW] of neighborhoods + sum [nh-gg-peak-kW] of neighborhoods + sum [nh-ng-peak-kW] of neighborhoods)"
"sumall" 1.0 0 -955883 true "" "plot (sum [nh-ng-peak-kW] of neighborhoods + sum [nh-e-peak-kW] of neighborhoods + sum [nh-h-peak-kW] of neighborhoods + sum [nh-gg-peak-kW] of neighborhoods + sum [nh-h2-peak-kW] of neighborhoods)"

PLOT
1467
34
1827
229
National Thermal Systems
Year
# of nh's
0.0
10.0
0.0
10.0
true
true
"" ""
PENS
"Total" 1.0 0 -16777216 true "" "plot count neighborhoods with [is-string? nh-thermal-system]"
"Natural Gas" 1.0 0 -7500403 true "" "plot count neighborhoods with [nh-thermal-system = \"NG\"]"
"All-Electric HP" 1.0 0 -1184463 true "" "plot count neighborhoods with [nh-thermal-system = \"AE\"]"
"Green Gas HP" 1.0 0 -13840069 true "" "plot count neighborhoods with [nh-thermal-system = \"GG\"]"
"HT/MT Heat" 1.0 0 -2674135 true "" "plot count neighborhoods with [nh-thermal-system = \"HT/MT\"]"
"LT Heat" 1.0 0 -955883 true "" "plot count neighborhoods with [nh-thermal-system = \"LT\"]"
"Hydrogen HP" 1.0 0 -13345367 true "" "plot count neighborhoods with [nh-thermal-system = \"H2\"]"

TEXTBOX
1028
35
1195
64
ENERGY \nOUTPUT KPI's
11
0.0
1

TEXTBOX
1403
17
1570
37
NATIONAL AGGREGATION
11
0.0
1

PLOT
1107
233
1469
383
Municipality Transition States
States
#
0.0
10.0
0.0
10.0
true
true
"" ""
PENS
"in-transition" 1.0 0 -955883 true "" "plot count municipalities with [mp-transition-state = \"in-transition\"]"
"transition-finished" 1.0 0 -13840069 true "" "plot count municipalities with [mp-transition-state = \"transition-finished\"]"

PLOT
1107
386
1470
536
Neighborhoods Transition States
NIL
NIL
0.0
10.0
0.0
10.0
true
true
"" ""
PENS
"to-start-transition" 1.0 0 -16514813 true "" "plot count neighborhoods with [nh-transition-state = \"to-start-transition\"]"
"in-transition" 1.0 0 -955883 true "" "plot count neighborhoods with [nh-transition-state = \"in-transition\"]"
"transition-finished" 1.0 0 -14439633 true "" "plot count neighborhoods with [nh-transition-state = \"transition-finished\"]"

TEXTBOX
1019
237
1186
257
BEHAVIOR KPI'S
11
0.0
1

PLOT
1469
233
1829
383
Resource Utilization Rate
NIL
NIL
0.0
10.0
0.0
1.0
true
true
"" ""
PENS
"Current" 1.0 0 -16777216 true "" "plot (sum [mp-resources-available] of municipalities) / (sum [mp-resources-max] of municipalities)"
"Average" 1.0 0 -2674135 true "" ""

PLOT
1472
385
1830
535
Transition Starts
Years
# nh's
0.0
10.0
0.0
10.0
true
true
"" ""
PENS
"Current" 1.0 0 -16777216 true "" "plot sum ([mp-transitions-this-year] of municipalities)"
"Average" 1.0 0 -5298144 true "" "plot (count neighborhoods with [nh-transition-state != \"to-start-transition\"]) / (ticks + 1)"

PLOT
1472
538
1828
688
Transition Penalty Points
NIL
NIL
0.0
10.0
0.0
10.0
true
true
"" ""
PENS
"Current" 1.0 0 -16777216 true "" ""
"Cumulative" 1.0 0 -1184463 true "" ""
"Average" 1.0 0 -2674135 true "" "plot mean ([nh-best-available] of neighborhoods)"

SWITCH
0
913
126
946
hs-labels
hs-labels
1
1
-1000

SWITCH
353
835
558
868
hs-limited?
hs-limited?
0
1
-1000

SWITCH
0
949
127
982
mp-icons
mp-icons
1
1
-1000

PLOT
1474
703
1831
853
MW MT capacity left
NIL
NIL
0.0
10.0
0.0
10.0
true
false
"" ""
PENS
"default" 1.0 0 -16777216 true "" "plot sum [hs-MW-capacity] of heatsources"

SLIDER
354
873
561
906
national-h2-availability-ticks
national-h2-availability-ticks
0
30
15.0
1
1
NIL
HORIZONTAL

PLOT
703
343
903
493
Distribution of Treshold score neighborhoods
NIL
NIL
0.0
10.0
0.0
10.0
true
false
"" ""
PENS
"Neighborhoods" 1.0 1 -16777216 true "" "histogram [nh-filter] of neighborhoods"

MONITOR
901
19
988
64
nh-corp-high
count neighborhoods with [nh-corp > nh-corp-treshold-high]
17
1
11

MONITOR
901
55
988
100
nh-corp-med
count neighborhoods with [nh-corp > nh-corp-treshold-med]
17
1
11

MONITOR
901
98
988
143
nh-dhc-high
count neighborhoods with [nh-dhc > nh-dhc-treshold-high]
17
1
11

MONITOR
901
133
988
178
nh-dhc-med
count neighborhoods with [nh-dhc > nh-dhc-treshold-med]
17
1
11

MONITOR
901
177
988
222
nh-nieuw-high
count neighborhoods with [nh-nieuw > nh-nieuw-treshold-high]
17
1
11

MONITOR
902
213
988
258
nh-nieuw-med
count neighborhoods with [nh-nieuw > nh-nieuw-treshold-med]
17
1
11

MONITOR
902
257
988
302
nh-woz-high
count neighborhoods with [nh-woz > nh-woz-treshold-high]
17
1
11

MONITOR
903
293
988
338
nh-woz-med
count neighborhoods with [nh-woz > nh-woz-treshold-med]
17
1
11

SWITCH
137
914
340
947
nh-low-ins-transition?
nh-low-ins-transition?
0
1
-1000

PLOT
744
699
922
849
Average ins level of neighborhoods
Ticks
ins level
0.0
10.0
0.0
10.0
true
false
"" ""
PENS
"default" 1.0 0 -16777216 true "" "plot mean [nh-ins] of neighborhoods"

MONITOR
1007
654
1103
699
NL th peak GW
sum [nh-th-energy-peak-kW] of neighborhoods / 1000000
17
1
11

PLOT
924
699
1106
849
Peak thermal demand of avg hh
Ticks
kW
0.0
10.0
0.0
10.0
true
false
"" ""
PENS
"default" 1.0 0 -16777216 true "" "plot (mean [nh-th-energy-peak-kW] of neighborhoods / mean [nh-hhs] of neighborhoods)"

SLIDER
137
948
314
981
nh-ins-strategy1
nh-ins-strategy1
0
80
20.0
1
1
NIL
HORIZONTAL

@#$#@#$#@
## WHAT IS IT?

(a general understanding of what the model is trying to show or explain)

## HOW IT WORKS

(what rules the agents use to create the overall behavior of the model)

## HOW TO USE IT

(how to use the model, including a description of each of the items in the Interface tab)

## THINGS TO NOTICE

(suggested things for the user to notice while running the model)

## THINGS TO TRY

(suggested things for the user to try to do (move sliders, switches, etc.) with the model)

## EXTENDING THE MODEL

(suggested things to add or change in the Code tab to make the model more complicated, detailed, accurate, etc.)

## NETLOGO FEATURES

(interesting or unusual features of NetLogo that the model uses, particularly in the Code tab; or where workarounds were needed for missing features)

## RELATED MODELS

(models in the NetLogo Models Library and elsewhere which are of related interest)

## CREDITS AND REFERENCES

(a reference to the model's URL on the web if it has one, as well as any other necessary credits, citations, and links)
@#$#@#$#@
default
true
0
Polygon -7500403 true true 150 5 40 250 150 205 260 250

airplane
true
0
Polygon -7500403 true true 150 0 135 15 120 60 120 105 15 165 15 195 120 180 135 240 105 270 120 285 150 270 180 285 210 270 165 240 180 180 285 195 285 165 180 105 180 60 165 15

arrow
true
0
Polygon -7500403 true true 150 0 0 150 105 150 105 293 195 293 195 150 300 150

box
false
0
Polygon -7500403 true true 150 285 285 225 285 75 150 135
Polygon -7500403 true true 150 135 15 75 150 15 285 75
Polygon -7500403 true true 15 75 15 225 150 285 150 135
Line -16777216 false 150 285 150 135
Line -16777216 false 150 135 15 75
Line -16777216 false 150 135 285 75

bug
true
0
Circle -7500403 true true 96 182 108
Circle -7500403 true true 110 127 80
Circle -7500403 true true 110 75 80
Line -7500403 true 150 100 80 30
Line -7500403 true 150 100 220 30

butterfly
true
0
Polygon -7500403 true true 150 165 209 199 225 225 225 255 195 270 165 255 150 240
Polygon -7500403 true true 150 165 89 198 75 225 75 255 105 270 135 255 150 240
Polygon -7500403 true true 139 148 100 105 55 90 25 90 10 105 10 135 25 180 40 195 85 194 139 163
Polygon -7500403 true true 162 150 200 105 245 90 275 90 290 105 290 135 275 180 260 195 215 195 162 165
Polygon -16777216 true false 150 255 135 225 120 150 135 120 150 105 165 120 180 150 165 225
Circle -16777216 true false 135 90 30
Line -16777216 false 150 105 195 60
Line -16777216 false 150 105 105 60

car
false
0
Polygon -7500403 true true 300 180 279 164 261 144 240 135 226 132 213 106 203 84 185 63 159 50 135 50 75 60 0 150 0 165 0 225 300 225 300 180
Circle -16777216 true false 180 180 90
Circle -16777216 true false 30 180 90
Polygon -16777216 true false 162 80 132 78 134 135 209 135 194 105 189 96 180 89
Circle -7500403 true true 47 195 58
Circle -7500403 true true 195 195 58

circle
false
0
Circle -7500403 true true 0 0 300

circle 2
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240

cow
false
0
Polygon -7500403 true true 200 193 197 249 179 249 177 196 166 187 140 189 93 191 78 179 72 211 49 209 48 181 37 149 25 120 25 89 45 72 103 84 179 75 198 76 252 64 272 81 293 103 285 121 255 121 242 118 224 167
Polygon -7500403 true true 73 210 86 251 62 249 48 208
Polygon -7500403 true true 25 114 16 195 9 204 23 213 25 200 39 123

cylinder
false
0
Circle -7500403 true true 0 0 300

dot
false
0
Circle -7500403 true true 90 90 120

face happy
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 255 90 239 62 213 47 191 67 179 90 203 109 218 150 225 192 218 210 203 227 181 251 194 236 217 212 240

face neutral
false
0
Circle -7500403 true true 8 7 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Rectangle -16777216 true false 60 195 240 225

face sad
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 168 90 184 62 210 47 232 67 244 90 220 109 205 150 198 192 205 210 220 227 242 251 229 236 206 212 183

fish
false
0
Polygon -1 true false 44 131 21 87 15 86 0 120 15 150 0 180 13 214 20 212 45 166
Polygon -1 true false 135 195 119 235 95 218 76 210 46 204 60 165
Polygon -1 true false 75 45 83 77 71 103 86 114 166 78 135 60
Polygon -7500403 true true 30 136 151 77 226 81 280 119 292 146 292 160 287 170 270 195 195 210 151 212 30 166
Circle -16777216 true false 215 106 30

flag
false
0
Rectangle -7500403 true true 60 15 75 300
Polygon -7500403 true true 90 150 270 90 90 30
Line -7500403 true 75 135 90 135
Line -7500403 true 75 45 90 45

flower
false
0
Polygon -10899396 true false 135 120 165 165 180 210 180 240 150 300 165 300 195 240 195 195 165 135
Circle -7500403 true true 85 132 38
Circle -7500403 true true 130 147 38
Circle -7500403 true true 192 85 38
Circle -7500403 true true 85 40 38
Circle -7500403 true true 177 40 38
Circle -7500403 true true 177 132 38
Circle -7500403 true true 70 85 38
Circle -7500403 true true 130 25 38
Circle -7500403 true true 96 51 108
Circle -16777216 true false 113 68 74
Polygon -10899396 true false 189 233 219 188 249 173 279 188 234 218
Polygon -10899396 true false 180 255 150 210 105 210 75 240 135 240

house
false
0
Rectangle -7500403 true true 45 120 255 285
Rectangle -16777216 true false 120 210 180 285
Polygon -7500403 true true 15 120 150 15 285 120
Line -16777216 false 30 120 270 120

leaf
false
0
Polygon -7500403 true true 150 210 135 195 120 210 60 210 30 195 60 180 60 165 15 135 30 120 15 105 40 104 45 90 60 90 90 105 105 120 120 120 105 60 120 60 135 30 150 15 165 30 180 60 195 60 180 120 195 120 210 105 240 90 255 90 263 104 285 105 270 120 285 135 240 165 240 180 270 195 240 210 180 210 165 195
Polygon -7500403 true true 135 195 135 240 120 255 105 255 105 285 135 285 165 240 165 195

line
true
0
Line -7500403 true 150 0 150 300

line half
true
0
Line -7500403 true 150 0 150 150

pentagon
false
0
Polygon -7500403 true true 150 15 15 120 60 285 240 285 285 120

person
false
0
Circle -7500403 true true 110 5 80
Polygon -7500403 true true 105 90 120 195 90 285 105 300 135 300 150 225 165 300 195 300 210 285 180 195 195 90
Rectangle -7500403 true true 127 79 172 94
Polygon -7500403 true true 195 90 240 150 225 180 165 105
Polygon -7500403 true true 105 90 60 150 75 180 135 105

plant
false
0
Rectangle -7500403 true true 135 90 165 300
Polygon -7500403 true true 135 255 90 210 45 195 75 255 135 285
Polygon -7500403 true true 165 255 210 210 255 195 225 255 165 285
Polygon -7500403 true true 135 180 90 135 45 120 75 180 135 210
Polygon -7500403 true true 165 180 165 210 225 180 255 120 210 135
Polygon -7500403 true true 135 105 90 60 45 45 75 105 135 135
Polygon -7500403 true true 165 105 165 135 225 105 255 45 210 60
Polygon -7500403 true true 135 90 120 45 150 15 180 45 165 90

sheep
false
15
Circle -1 true true 203 65 88
Circle -1 true true 70 65 162
Circle -1 true true 150 105 120
Polygon -7500403 true false 218 120 240 165 255 165 278 120
Circle -7500403 true false 214 72 67
Rectangle -1 true true 164 223 179 298
Polygon -1 true true 45 285 30 285 30 240 15 195 45 210
Circle -1 true true 3 83 150
Rectangle -1 true true 65 221 80 296
Polygon -1 true true 195 285 210 285 210 240 240 210 195 210
Polygon -7500403 true false 276 85 285 105 302 99 294 83
Polygon -7500403 true false 219 85 210 105 193 99 201 83

square
false
0
Rectangle -7500403 true true 30 30 270 270

square 2
false
0
Rectangle -7500403 true true 30 30 270 270
Rectangle -16777216 true false 60 60 240 240

star
false
0
Polygon -7500403 true true 151 1 185 108 298 108 207 175 242 282 151 216 59 282 94 175 3 108 116 108

target
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240
Circle -7500403 true true 60 60 180
Circle -16777216 true false 90 90 120
Circle -7500403 true true 120 120 60

tree
false
0
Circle -7500403 true true 118 3 94
Rectangle -6459832 true false 120 195 180 300
Circle -7500403 true true 65 21 108
Circle -7500403 true true 116 41 127
Circle -7500403 true true 45 90 120
Circle -7500403 true true 104 74 152

triangle
false
0
Polygon -7500403 true true 150 30 15 255 285 255

triangle 2
false
0
Polygon -7500403 true true 150 30 15 255 285 255
Polygon -16777216 true false 151 99 225 223 75 224

truck
false
0
Rectangle -7500403 true true 4 45 195 187
Polygon -7500403 true true 296 193 296 150 259 134 244 104 208 104 207 194
Rectangle -1 true false 195 60 195 105
Polygon -16777216 true false 238 112 252 141 219 141 218 112
Circle -16777216 true false 234 174 42
Rectangle -7500403 true true 181 185 214 194
Circle -16777216 true false 144 174 42
Circle -16777216 true false 24 174 42
Circle -7500403 false true 24 174 42
Circle -7500403 false true 144 174 42
Circle -7500403 false true 234 174 42

turtle
true
0
Polygon -10899396 true false 215 204 240 233 246 254 228 266 215 252 193 210
Polygon -10899396 true false 195 90 225 75 245 75 260 89 269 108 261 124 240 105 225 105 210 105
Polygon -10899396 true false 105 90 75 75 55 75 40 89 31 108 39 124 60 105 75 105 90 105
Polygon -10899396 true false 132 85 134 64 107 51 108 17 150 2 192 18 192 52 169 65 172 87
Polygon -10899396 true false 85 204 60 233 54 254 72 266 85 252 107 210
Polygon -7500403 true true 119 75 179 75 209 101 224 135 220 225 175 261 128 261 81 224 74 135 88 99

wheel
false
0
Circle -7500403 true true 3 3 294
Circle -16777216 true false 30 30 240
Line -7500403 true 150 285 150 15
Line -7500403 true 15 150 285 150
Circle -7500403 true true 120 120 60
Line -7500403 true 216 40 79 269
Line -7500403 true 40 84 269 221
Line -7500403 true 40 216 269 79
Line -7500403 true 84 40 221 269

wolf
false
0
Polygon -16777216 true false 253 133 245 131 245 133
Polygon -7500403 true true 2 194 13 197 30 191 38 193 38 205 20 226 20 257 27 265 38 266 40 260 31 253 31 230 60 206 68 198 75 209 66 228 65 243 82 261 84 268 100 267 103 261 77 239 79 231 100 207 98 196 119 201 143 202 160 195 166 210 172 213 173 238 167 251 160 248 154 265 169 264 178 247 186 240 198 260 200 271 217 271 219 262 207 258 195 230 192 198 210 184 227 164 242 144 259 145 284 151 277 141 293 140 299 134 297 127 273 119 270 105
Polygon -7500403 true true -1 195 14 180 36 166 40 153 53 140 82 131 134 133 159 126 188 115 227 108 236 102 238 98 268 86 269 92 281 87 269 103 269 113

x
false
0
Polygon -7500403 true true 270 75 225 30 30 225 75 270
Polygon -7500403 true true 30 75 75 30 270 225 225 270
@#$#@#$#@
NetLogo 6.1.1
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
<experiments>
  <experiment name="DR_EXP" repetitions="10" runMetricsEveryStep="true">
    <setup>bs-setup</setup>
    <go>go</go>
    <metric>output-nl-tpp</metric>
    <metric>output-nl-ng-kw</metric>
    <metric>output-nl-e-kw</metric>
    <metric>output-nl-h-kw</metric>
    <metric>output-nl-gg-kw</metric>
    <metric>output-nl-h2-kw</metric>
    <metric>output-nl-ng-m3</metric>
    <metric>output-nl-gg-m3</metric>
    <metric>output-nl-h2-m3</metric>
    <metric>output-mr-Abbenbroek-ng-m3</metric>
    <metric>output-mr-achterdrempt-ng-m3</metric>
    <metric>output-mr-alkmaar-ng-m3</metric>
    <metric>output-mr-angerlo-ng-m3</metric>
    <metric>output-mr-Apeldoorn-ng-m3</metric>
    <metric>output-mr-Assumburg-ng-m3</metric>
    <metric>output-mr-Axel-ng-m3</metric>
    <metric>output-mr-Baal-ng-m3</metric>
    <metric>output-mr-Belfeld-ng-m3</metric>
    <metric>output-mr-Bemelen-ng-m3</metric>
    <metric>output-mr-Best-ng-m3</metric>
    <metric>output-mr-Beverwijk-ng-m3</metric>
    <metric>output-mr-Birstum-ng-m3</metric>
    <metric>output-mr-Bleiswijk-ng-m3</metric>
    <metric>output-mr-Bornerbroek-ng-m3</metric>
    <metric>output-mr-Boxtel-ng-m3</metric>
    <metric>output-mr-DenKaat-ng-m3</metric>
    <metric>output-mr-Driehuis-ng-m3</metric>
    <metric>output-mr-Eext-ng-m3</metric>
    <metric>output-mr-Emmeloord-ng-m3</metric>
    <metric>output-mr-Enschede-ng-m3</metric>
    <metric>output-mr-Esveld-ng-m3</metric>
    <metric>output-mr-Ewijk-ng-m3</metric>
    <metric>output-mr-Gilze-ng-m3</metric>
    <metric>output-mr-Gravenpolder-ng-m3</metric>
    <metric>output-mr-Groenlo-ng-m3</metric>
    <metric>output-mr-Gronsveld-ng-m3</metric>
    <metric>output-mr-Haren-ng-m3</metric>
    <metric>output-mr-Heerhugowaard-ng-m3</metric>
    <metric>output-mr-Hengelo-ng-m3</metric>
    <metric>output-mr-Hilversum-ng-m3</metric>
    <metric>output-mr-Hoofddorp-ng-m3</metric>
    <metric>output-mr-Hoogezand-ng-m3</metric>
    <metric>output-mr-Ijsselmonde-ng-m3</metric>
    <metric>output-mr-Krimpenerwaard-ng-m3</metric>
    <metric>output-mr-Lambertschaag-ng-m3</metric>
    <metric>output-mr-Leusden-Zuid-ng-m3</metric>
    <metric>output-mr-Lingewaal-ng-m3</metric>
    <metric>output-mr-Lurkeers-ng-m3</metric>
    <metric>output-mr-Melick-ng-m3</metric>
    <metric>output-mr-Middelrode-ng-m3</metric>
    <metric>output-mr-Mierlo-ng-m3</metric>
    <metric>output-mr-Mill-ng-m3</metric>
    <metric>output-mr-Moergestel-ng-m3</metric>
    <metric>output-mr-Nederweert-ng-m3</metric>
    <metric>output-mr-Nijkerk-ng-m3</metric>
    <metric>output-mr-Nijland-ng-m3</metric>
    <metric>output-mr-Odijk-ng-m3</metric>
    <metric>output-mr-Ommeloop-ng-m3</metric>
    <metric>output-mr-Oosteind-ng-m3</metric>
    <metric>output-mr-Oostum-ng-m3</metric>
    <metric>output-mr-Opsterland-ng-m3</metric>
    <metric>output-mr-Oss-ng-m3</metric>
    <metric>output-mr-Ossendrecht-ng-m3</metric>
    <metric>output-mr-Oudverlaat-ng-m3</metric>
    <metric>output-mr-Reek-ng-m3</metric>
    <metric>output-mr-Reijerscop-ng-m3</metric>
    <metric>output-mr-Rijnsburg-ng-m3</metric>
    <metric>output-mr-Rijsbergen-ng-m3</metric>
    <metric>output-mr-Rijswijk-ng-m3</metric>
    <metric>output-mr-Sanderbout-ng-m3</metric>
    <metric>output-mr-Scheemda-ng-m3</metric>
    <metric>output-mr-Schinnen-ng-m3</metric>
    <metric>output-mr-Schuilenburg-ng-m3</metric>
    <metric>output-mr-Simpelveld-ng-m3</metric>
    <metric>output-mr-Sloten-ng-m3</metric>
    <metric>output-mr-tWoudt-ng-m3</metric>
    <metric>output-mr-Tiel-ng-m3</metric>
    <metric>output-mr-Valburg-ng-m3</metric>
    <metric>output-mr-Venray-ng-m3</metric>
    <metric>output-mr-Visvliet-ng-m3</metric>
    <metric>output-mr-Vlaardingen-ng-m3</metric>
    <metric>output-mr-Vondelingenplaat-ng-m3</metric>
    <metric>output-mr-Voorburg-ng-m3</metric>
    <metric>output-mr-Weesp-ng-m3</metric>
    <metric>output-mr-Westerbork-ng-m3</metric>
    <metric>output-mr-Wezep-ng-m3</metric>
    <metric>output-mr-Wijngaarden-ng-m3</metric>
    <metric>output-mr-Zaltbommel-ng-m3</metric>
    <metric>output-mr-Zegge-ng-m3</metric>
    <metric>output-mr-Zoeterwoude-ng-m3</metric>
    <metric>output-mr-Zuid-Kraayert-ng-m3</metric>
    <metric>output-mr-Zuideropgaande-ng-m3</metric>
    <metric>output-mr-Abbenbroek-gg-m3</metric>
    <metric>output-mr-Achterdrempt-gg-m3</metric>
    <metric>output-mr-Alkmaar-gg-m3</metric>
    <metric>output-mr-Angerlo-gg-m3</metric>
    <metric>output-mr-Apeldoorn-gg-m3</metric>
    <metric>output-mr-Assumburg-gg-m3</metric>
    <metric>output-mr-Axel-gg-m3</metric>
    <metric>output-mr-Baal-gg-m3</metric>
    <metric>output-mr-Belfeld-gg-m3</metric>
    <metric>output-mr-Bemelen-gg-m3</metric>
    <metric>output-mr-Best-gg-m3</metric>
    <metric>output-mr-Beverwijk-gg-m3</metric>
    <metric>output-mr-Birstum-gg-m3</metric>
    <metric>output-mr-Bleiswijk-gg-m3</metric>
    <metric>output-mr-Bornerbroek-gg-m3</metric>
    <metric>output-mr-Boxtel-gg-m3</metric>
    <metric>output-mr-DenKaat-gg-m3</metric>
    <metric>output-mr-Driehuis-gg-m3</metric>
    <metric>output-mr-Eext-gg-m3</metric>
    <metric>output-mr-Emmeloord-gg-m3</metric>
    <metric>output-mr-Enschede-gg-m3</metric>
    <metric>output-mr-Esveld-gg-m3</metric>
    <metric>output-mr-Ewijk-gg-m3</metric>
    <metric>output-mr-Gilze-gg-m3</metric>
    <metric>output-mr-Gravenpolder-gg-m3</metric>
    <metric>output-mr-Groenlo-gg-m3</metric>
    <metric>output-mr-Gronsveld-gg-m3</metric>
    <metric>output-mr-Haren-gg-m3</metric>
    <metric>output-mr-Heerhugowaard-gg-m3</metric>
    <metric>output-mr-Hengelo-gg-m3</metric>
    <metric>output-mr-Hilversum-gg-m3</metric>
    <metric>output-mr-Hoofddorp-gg-m3</metric>
    <metric>output-mr-Hoogezand-gg-m3</metric>
    <metric>output-mr-Ijsselmonde-gg-m3</metric>
    <metric>output-mr-Krimpenerwaard-gg-m3</metric>
    <metric>output-mr-Lambertschaag-gg-m3</metric>
    <metric>output-mr-Leusden-Zuid-gg-m3</metric>
    <metric>output-mr-Lingewaal-gg-m3</metric>
    <metric>output-mr-Lurkeers-gg-m3</metric>
    <metric>output-mr-Melick-gg-m3</metric>
    <metric>output-mr-Middelrode-gg-m3</metric>
    <metric>output-mr-Mierlo-gg-m3</metric>
    <metric>output-mr-Mill-gg-m3</metric>
    <metric>output-mr-Moergestel-gg-m3</metric>
    <metric>output-mr-Nederweert-gg-m3</metric>
    <metric>output-mr-Nijkerk-gg-m3</metric>
    <metric>output-mr-Nijland-gg-m3</metric>
    <metric>output-mr-Odijk-gg-m3</metric>
    <metric>output-mr-Ommeloop-gg-m3</metric>
    <metric>output-mr-Oosteind-gg-m3</metric>
    <metric>output-mr-Oostum-gg-m3</metric>
    <metric>output-mr-Opsterland-gg-m3</metric>
    <metric>output-mr-Oss-gg-m3</metric>
    <metric>output-mr-Ossendrecht-gg-m3</metric>
    <metric>output-mr-Oudverlaat-gg-m3</metric>
    <metric>output-mr-Reek-gg-m3</metric>
    <metric>output-mr-Reijerscop-gg-m3</metric>
    <metric>output-mr-Rijnsburg-gg-m3</metric>
    <metric>output-mr-Rijsbergen-gg-m3</metric>
    <metric>output-mr-Rijswijk-gg-m3</metric>
    <metric>output-mr-Sanderbout-gg-m3</metric>
    <metric>output-mr-Scheemda-gg-m3</metric>
    <metric>output-mr-Schinnen-gg-m3</metric>
    <metric>output-mr-Schuilenburg-gg-m3</metric>
    <metric>output-mr-Simpelveld-gg-m3</metric>
    <metric>output-mr-Sloten-gg-m3</metric>
    <metric>output-mr-tWoudt-gg-m3</metric>
    <metric>output-mr-Tiel-gg-m3</metric>
    <metric>output-mr-Valburg-gg-m3</metric>
    <metric>output-mr-Venray-gg-m3</metric>
    <metric>output-mr-Visvliet-gg-m3</metric>
    <metric>output-mr-Vlaardingen-gg-m3</metric>
    <metric>output-mr-Vondelingenplaat-gg-m3</metric>
    <metric>output-mr-Voorburg-gg-m3</metric>
    <metric>output-mr-Weesp-gg-m3</metric>
    <metric>output-mr-Westerbork-gg-m3</metric>
    <metric>output-mr-Wezep-gg-m3</metric>
    <metric>output-mr-Wijngaarden-gg-m3</metric>
    <metric>output-mr-Zaltbommel-gg-m3</metric>
    <metric>output-mr-Zegge-gg-m3</metric>
    <metric>output-mr-Zoeterwoude-gg-m3</metric>
    <metric>output-mr-Zuid-Kraayert-gg-m3</metric>
    <metric>output-mr-Zuideropgaande-gg-m3</metric>
    <metric>output-mr-Abbenbroek-h2-m3</metric>
    <metric>output-mr-Achterdrempt-h2-m3</metric>
    <metric>output-mr-Alkmaar-h2-m3</metric>
    <metric>output-mr-Angerlo-h2-m3</metric>
    <metric>output-mr-Apeldoorn-h2-m3</metric>
    <metric>output-mr-Assumburg-h2-m3</metric>
    <metric>output-mr-Axel-h2-m3</metric>
    <metric>output-mr-Baal-h2-m3</metric>
    <metric>output-mr-Belfeld-h2-m3</metric>
    <metric>output-mr-Bemelen-h2-m3</metric>
    <metric>output-mr-Best-h2-m3</metric>
    <metric>output-mr-Beverwijk-h2-m3</metric>
    <metric>output-mr-Birstum-h2-m3</metric>
    <metric>output-mr-Bleiswijk-h2-m3</metric>
    <metric>output-mr-Bornerbroek-h2-m3</metric>
    <metric>output-mr-Boxtel-h2-m3</metric>
    <metric>output-mr-DenKaat-h2-m3</metric>
    <metric>output-mr-Driehuis-h2-m3</metric>
    <metric>output-mr-Eext-h2-m3</metric>
    <metric>output-mr-Emmeloord-h2-m3</metric>
    <metric>output-mr-Enschede-h2-m3</metric>
    <metric>output-mr-Esveld-h2-m3</metric>
    <metric>output-mr-Ewijk-h2-m3</metric>
    <metric>output-mr-Gilze-h2-m3</metric>
    <metric>output-mr-Gravenpolder-h2-m3</metric>
    <metric>output-mr-Groenlo-h2-m3</metric>
    <metric>output-mr-Gronsveld-h2-m3</metric>
    <metric>output-mr-Haren-h2-m3</metric>
    <metric>output-mr-Heerhugowaard-h2-m3</metric>
    <metric>output-mr-Hengelo-h2-m3</metric>
    <metric>output-mr-Hilversum-h2-m3</metric>
    <metric>output-mr-Hoofddorp-h2-m3</metric>
    <metric>output-mr-Hoogezand-h2-m3</metric>
    <metric>output-mr-Ijsselmonde-h2-m3</metric>
    <metric>output-mr-Krimpenerwaard-h2-m3</metric>
    <metric>output-mr-Lambertschaag-h2-m3</metric>
    <metric>output-mr-Leusden-Zuid-h2-m3</metric>
    <metric>output-mr-Lingewaal-h2-m3</metric>
    <metric>output-mr-Lurkeers-h2-m3</metric>
    <metric>output-mr-Melick-h2-m3</metric>
    <metric>output-mr-Middelrode-h2-m3</metric>
    <metric>output-mr-Mierlo-h2-m3</metric>
    <metric>output-mr-Mill-h2-m3</metric>
    <metric>output-mr-Moergestel-h2-m3</metric>
    <metric>output-mr-Nederweert-h2-m3</metric>
    <metric>output-mr-Nijkerk-h2-m3</metric>
    <metric>output-mr-Nijland-h2-m3</metric>
    <metric>output-mr-Odijk-h2-m3</metric>
    <metric>output-mr-Ommeloop-h2-m3</metric>
    <metric>output-mr-Oosteind-h2-m3</metric>
    <metric>output-mr-Oostum-h2-m3</metric>
    <metric>output-mr-Opsterland-h2-m3</metric>
    <metric>output-mr-Oss-h2-m3</metric>
    <metric>output-mr-Ossendrecht-h2-m3</metric>
    <metric>output-mr-Oudverlaat-h2-m3</metric>
    <metric>output-mr-Reek-h2-m3</metric>
    <metric>output-mr-Reijerscop-h2-m3</metric>
    <metric>output-mr-Rijnsburg-h2-m3</metric>
    <metric>output-mr-Rijsbergen-h2-m3</metric>
    <metric>output-mr-Rijswijk-h2-m3</metric>
    <metric>output-mr-Sanderbout-h2-m3</metric>
    <metric>output-mr-Scheemda-h2-m3</metric>
    <metric>output-mr-Schinnen-h2-m3</metric>
    <metric>output-mr-Schuilenburg-h2-m3</metric>
    <metric>output-mr-Simpelveld-h2-m3</metric>
    <metric>output-mr-Sloten-h2-m3</metric>
    <metric>output-mr-tWoudt-h2-m3</metric>
    <metric>output-mr-Tiel-h2-m3</metric>
    <metric>output-mr-Valburg-h2-m3</metric>
    <metric>output-mr-Venray-h2-m3</metric>
    <metric>output-mr-Visvliet-h2-m3</metric>
    <metric>output-mr-Vlaardingen-h2-m3</metric>
    <metric>output-mr-Vondelingenplaat-h2-m3</metric>
    <metric>output-mr-Voorburg-h2-m3</metric>
    <metric>output-mr-Weesp-h2-m3</metric>
    <metric>output-mr-Westerbork-h2-m3</metric>
    <metric>output-mr-Wezep-h2-m3</metric>
    <metric>output-mr-Wijngaarden-h2-m3</metric>
    <metric>output-mr-Zaltbommel-h2-m3</metric>
    <metric>output-mr-Zegge-h2-m3</metric>
    <metric>output-mr-Zoeterwoude-h2-m3</metric>
    <metric>output-mr-Zuid-Kraayert-h2-m3</metric>
    <metric>output-mr-Zuideropgaande-h2-m3</metric>
    <metric>output-mr-Vlaardingen-e-kw</metric>
    <metric>output-mr-Vlaardingen-h-kw</metric>
    <metric>output-mr-Haren-e-kw</metric>
    <metric>output-mr-Haren-h-kw</metric>
    <metric>output-mr-Westerbork-e-kw</metric>
    <metric>output-mr-Westerbork-h-kw</metric>
    <metric>output-nl-ng</metric>
    <metric>output-nl-ae</metric>
    <metric>output-nl-gg</metric>
    <metric>output-nl-ht/mt</metric>
    <metric>output-nl-lt</metric>
    <metric>output-nl-h2</metric>
    <metric>output-nl-ins</metric>
    <enumeratedValueSet variable="mp-icons">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-low-ins-transition?">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="national-h2-availability-ticks">
      <value value="15"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-nieuw-treshold-high">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="national-gg-potential-PJ">
      <value value="60"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-woz-treshold-high">
      <value value="500"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="national-h2-availability">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-cost-par">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-corp-treshold-med">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mp-top-n">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mp-transition-strategy">
      <value value="&quot;1&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-transition-duration">
      <value value="2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-woz-treshold-med">
      <value value="250"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="hs-labels">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-nieuw-treshold-med">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-dhc-treshold-med">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="hs-limited?">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="max-distance-heatsource">
      <value value="15"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mp-resource-percentage">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-ins-strategy1">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="national-transition-goal">
      <value value="250000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-corp-treshold-high">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-dhc-treshold-high">
      <value value="50"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="test_multrepl" repetitions="5" runMetricsEveryStep="true">
    <setup>bs-setup</setup>
    <go>go</go>
    <metric>output-nl-ng-kw</metric>
    <metric>output-nl-e-kw</metric>
    <metric>output-nl-h-kw</metric>
    <metric>output-nl-gg-kw</metric>
    <metric>output-nl-h2-kw</metric>
    <metric>output-nl-ng-m3</metric>
    <metric>output-nl-gg-m3</metric>
    <metric>output-nl-h2-m3</metric>
    <metric>output-nl-tpp</metric>
    <metric>output-mr-Abbenbroek-ng-m3</metric>
    <metric>output-mr-achterdrempt-ng-m3</metric>
    <metric>output-mr-alkmaar-ng-m3</metric>
    <metric>output-mr-angerlo-ng-m3</metric>
    <metric>output-mr-Apeldoorn-ng-m3</metric>
    <metric>output-mr-Assumburg-ng-m3</metric>
    <metric>output-mr-Axel-ng-m3</metric>
    <metric>output-mr-Baal-ng-m3</metric>
    <metric>output-mr-Belfeld-ng-m3</metric>
    <metric>output-mr-Bemelen-ng-m3</metric>
    <metric>output-mr-Best-ng-m3</metric>
    <metric>output-mr-Beverwijk-ng-m3</metric>
    <metric>output-mr-Birstum-ng-m3</metric>
    <metric>output-mr-Bleiswijk-ng-m3</metric>
    <metric>output-mr-Bornerbroek-ng-m3</metric>
    <metric>output-mr-Boxtel-ng-m3</metric>
    <metric>output-mr-DenKaat-ng-m3</metric>
    <metric>output-mr-Driehuis-ng-m3</metric>
    <metric>output-mr-Eext-ng-m3</metric>
    <metric>output-mr-Emmeloord-ng-m3</metric>
    <metric>output-mr-Enschede-ng-m3</metric>
    <metric>output-mr-Esveld-ng-m3</metric>
    <metric>output-mr-Ewijk-ng-m3</metric>
    <metric>output-mr-Gilze-ng-m3</metric>
    <metric>output-mr-Gravenpolder-ng-m3</metric>
    <metric>output-mr-Groenlo-ng-m3</metric>
    <metric>output-mr-Gronsveld-ng-m3</metric>
    <metric>output-mr-Haren-ng-m3</metric>
    <metric>output-mr-Heerhugowaard-ng-m3</metric>
    <metric>output-mr-Hengelo-ng-m3</metric>
    <metric>output-mr-Hilversum-ng-m3</metric>
    <metric>output-mr-Hoofddorp-ng-m3</metric>
    <metric>output-mr-Hoogezand-ng-m3</metric>
    <metric>output-mr-Ijsselmonde-ng-m3</metric>
    <metric>output-mr-Krimpenerwaard-ng-m3</metric>
    <metric>output-mr-Lambertschaag-ng-m3</metric>
    <metric>output-mr-Leusden-Zuid-ng-m3</metric>
    <metric>output-mr-Lingewaal-ng-m3</metric>
    <metric>output-mr-Lurkeers-ng-m3</metric>
    <metric>output-mr-Melick-ng-m3</metric>
    <metric>output-mr-Middelrode-ng-m3</metric>
    <metric>output-mr-Mierlo-ng-m3</metric>
    <metric>output-mr-Mill-ng-m3</metric>
    <metric>output-mr-Moergestel-ng-m3</metric>
    <metric>output-mr-Nederweert-ng-m3</metric>
    <metric>output-mr-Nijkerk-ng-m3</metric>
    <metric>output-mr-Nijland-ng-m3</metric>
    <metric>output-mr-Odijk-ng-m3</metric>
    <metric>output-mr-Ommeloop-ng-m3</metric>
    <metric>output-mr-Oosteind-ng-m3</metric>
    <metric>output-mr-Oostum-ng-m3</metric>
    <metric>output-mr-Opsterland-ng-m3</metric>
    <metric>output-mr-Oss-ng-m3</metric>
    <metric>output-mr-Ossendrecht-ng-m3</metric>
    <metric>output-mr-Oudverlaat-ng-m3</metric>
    <metric>output-mr-Reek-ng-m3</metric>
    <metric>output-mr-Reijerscop-ng-m3</metric>
    <metric>output-mr-Rijnsburg-ng-m3</metric>
    <metric>output-mr-Rijsbergen-ng-m3</metric>
    <metric>output-mr-Rijswijk-ng-m3</metric>
    <metric>output-mr-Sanderbout-ng-m3</metric>
    <metric>output-mr-Scheemda-ng-m3</metric>
    <metric>output-mr-Schinnen-ng-m3</metric>
    <metric>output-mr-Schuilenburg-ng-m3</metric>
    <metric>output-mr-Simpelveld-ng-m3</metric>
    <metric>output-mr-Sloten-ng-m3</metric>
    <metric>output-mr-tWoudt-ng-m3</metric>
    <metric>output-mr-Tiel-ng-m3</metric>
    <metric>output-mr-Valburg-ng-m3</metric>
    <metric>output-mr-Venray-ng-m3</metric>
    <metric>output-mr-Visvliet-ng-m3</metric>
    <metric>output-mr-Vlaardingen-ng-m3</metric>
    <metric>output-mr-Vondelingenplaat-ng-m3</metric>
    <metric>output-mr-Voorburg-ng-m3</metric>
    <metric>output-mr-Weesp-ng-m3</metric>
    <metric>output-mr-Westerbork-ng-m3</metric>
    <metric>output-mr-Wezep-ng-m3</metric>
    <metric>output-mr-Wijngaarden-ng-m3</metric>
    <metric>output-mr-Zaltbommel-ng-m3</metric>
    <metric>output-mr-Zegge-ng-m3</metric>
    <metric>output-mr-Zoeterwoude-ng-m3</metric>
    <metric>output-mr-Zuid-Kraayert-ng-m3</metric>
    <metric>output-mr-Zuideropgaande-ng-m3</metric>
    <metric>output-mr-Abbenbroek-gg-m3</metric>
    <metric>output-mr-Achterdrempt-gg-m3</metric>
    <metric>output-mr-Alkmaar-gg-m3</metric>
    <metric>output-mr-Angerlo-gg-m3</metric>
    <metric>output-mr-Apeldoorn-gg-m3</metric>
    <metric>output-mr-Assumburg-gg-m3</metric>
    <metric>output-mr-Axel-gg-m3</metric>
    <metric>output-mr-Baal-gg-m3</metric>
    <metric>output-mr-Belfeld-gg-m3</metric>
    <metric>output-mr-Bemelen-gg-m3</metric>
    <metric>output-mr-Best-gg-m3</metric>
    <metric>output-mr-Beverwijk-gg-m3</metric>
    <metric>output-mr-Birstum-gg-m3</metric>
    <metric>output-mr-Bleiswijk-gg-m3</metric>
    <metric>output-mr-Bornerbroek-gg-m3</metric>
    <metric>output-mr-Boxtel-gg-m3</metric>
    <metric>output-mr-DenKaat-gg-m3</metric>
    <metric>output-mr-Driehuis-gg-m3</metric>
    <metric>output-mr-Eext-gg-m3</metric>
    <metric>output-mr-Emmeloord-gg-m3</metric>
    <metric>output-mr-Enschede-gg-m3</metric>
    <metric>output-mr-Esveld-gg-m3</metric>
    <metric>output-mr-Ewijk-gg-m3</metric>
    <metric>output-mr-Gilze-gg-m3</metric>
    <metric>output-mr-Gravenpolder-gg-m3</metric>
    <metric>output-mr-Groenlo-gg-m3</metric>
    <metric>output-mr-Gronsveld-gg-m3</metric>
    <metric>output-mr-Haren-gg-m3</metric>
    <metric>output-mr-Heerhugowaard-gg-m3</metric>
    <metric>output-mr-Hengelo-gg-m3</metric>
    <metric>output-mr-Hilversum-gg-m3</metric>
    <metric>output-mr-Hoofddorp-gg-m3</metric>
    <metric>output-mr-Hoogezand-gg-m3</metric>
    <metric>output-mr-Ijsselmonde-gg-m3</metric>
    <metric>output-mr-Krimpenerwaard-gg-m3</metric>
    <metric>output-mr-Lambertschaag-gg-m3</metric>
    <metric>output-mr-Leusden-Zuid-gg-m3</metric>
    <metric>output-mr-Lingewaal-gg-m3</metric>
    <metric>output-mr-Lurkeers-gg-m3</metric>
    <metric>output-mr-Melick-gg-m3</metric>
    <metric>output-mr-Middelrode-gg-m3</metric>
    <metric>output-mr-Mierlo-gg-m3</metric>
    <metric>output-mr-Mill-gg-m3</metric>
    <metric>output-mr-Moergestel-gg-m3</metric>
    <metric>output-mr-Nederweert-gg-m3</metric>
    <metric>output-mr-Nijkerk-gg-m3</metric>
    <metric>output-mr-Nijland-gg-m3</metric>
    <metric>output-mr-Odijk-gg-m3</metric>
    <metric>output-mr-Ommeloop-gg-m3</metric>
    <metric>output-mr-Oosteind-gg-m3</metric>
    <metric>output-mr-Oostum-gg-m3</metric>
    <metric>output-mr-Opsterland-gg-m3</metric>
    <metric>output-mr-Oss-gg-m3</metric>
    <metric>output-mr-Ossendrecht-gg-m3</metric>
    <metric>output-mr-Oudverlaat-gg-m3</metric>
    <metric>output-mr-Reek-gg-m3</metric>
    <metric>output-mr-Reijerscop-gg-m3</metric>
    <metric>output-mr-Rijnsburg-gg-m3</metric>
    <metric>output-mr-Rijsbergen-gg-m3</metric>
    <metric>output-mr-Rijswijk-gg-m3</metric>
    <metric>output-mr-Sanderbout-gg-m3</metric>
    <metric>output-mr-Scheemda-gg-m3</metric>
    <metric>output-mr-Schinnen-gg-m3</metric>
    <metric>output-mr-Schuilenburg-gg-m3</metric>
    <metric>output-mr-Simpelveld-gg-m3</metric>
    <metric>output-mr-Sloten-gg-m3</metric>
    <metric>output-mr-tWoudt-gg-m3</metric>
    <metric>output-mr-Tiel-gg-m3</metric>
    <metric>output-mr-Valburg-gg-m3</metric>
    <metric>output-mr-Venray-gg-m3</metric>
    <metric>output-mr-Visvliet-gg-m3</metric>
    <metric>output-mr-Vlaardingen-gg-m3</metric>
    <metric>output-mr-Vondelingenplaat-gg-m3</metric>
    <metric>output-mr-Voorburg-gg-m3</metric>
    <metric>output-mr-Weesp-gg-m3</metric>
    <metric>output-mr-Westerbork-gg-m3</metric>
    <metric>output-mr-Wezep-gg-m3</metric>
    <metric>output-mr-Wijngaarden-gg-m3</metric>
    <metric>output-mr-Zaltbommel-gg-m3</metric>
    <metric>output-mr-Zegge-gg-m3</metric>
    <metric>output-mr-Zoeterwoude-gg-m3</metric>
    <metric>output-mr-Zuid-Kraayert-gg-m3</metric>
    <metric>output-mr-Zuideropgaande-gg-m3</metric>
    <metric>output-mr-Abbenbroek-h2-m3</metric>
    <metric>output-mr-Achterdrempt-h2-m3</metric>
    <metric>output-mr-Alkmaar-h2-m3</metric>
    <metric>output-mr-Angerlo-h2-m3</metric>
    <metric>output-mr-Apeldoorn-h2-m3</metric>
    <metric>output-mr-Assumburg-h2-m3</metric>
    <metric>output-mr-Axel-h2-m3</metric>
    <metric>output-mr-Baal-h2-m3</metric>
    <metric>output-mr-Belfeld-h2-m3</metric>
    <metric>output-mr-Bemelen-h2-m3</metric>
    <metric>output-mr-Best-h2-m3</metric>
    <metric>output-mr-Beverwijk-h2-m3</metric>
    <metric>output-mr-Birstum-h2-m3</metric>
    <metric>output-mr-Bleiswijk-h2-m3</metric>
    <metric>output-mr-Bornerbroek-h2-m3</metric>
    <metric>output-mr-Boxtel-h2-m3</metric>
    <metric>output-mr-DenKaat-h2-m3</metric>
    <metric>output-mr-Driehuis-h2-m3</metric>
    <metric>output-mr-Eext-h2-m3</metric>
    <metric>output-mr-Emmeloord-h2-m3</metric>
    <metric>output-mr-Enschede-h2-m3</metric>
    <metric>output-mr-Esveld-h2-m3</metric>
    <metric>output-mr-Ewijk-h2-m3</metric>
    <metric>output-mr-Gilze-h2-m3</metric>
    <metric>output-mr-Gravenpolder-h2-m3</metric>
    <metric>output-mr-Groenlo-h2-m3</metric>
    <metric>output-mr-Gronsveld-h2-m3</metric>
    <metric>output-mr-Haren-h2-m3</metric>
    <metric>output-mr-Heerhugowaard-h2-m3</metric>
    <metric>output-mr-Hengelo-h2-m3</metric>
    <metric>output-mr-Hilversum-h2-m3</metric>
    <metric>output-mr-Hoofddorp-h2-m3</metric>
    <metric>output-mr-Hoogezand-h2-m3</metric>
    <metric>output-mr-Ijsselmonde-h2-m3</metric>
    <metric>output-mr-Krimpenerwaard-h2-m3</metric>
    <metric>output-mr-Lambertschaag-h2-m3</metric>
    <metric>output-mr-Leusden-Zuid-h2-m3</metric>
    <metric>output-mr-Lingewaal-h2-m3</metric>
    <metric>output-mr-Lurkeers-h2-m3</metric>
    <metric>output-mr-Melick-h2-m3</metric>
    <metric>output-mr-Middelrode-h2-m3</metric>
    <metric>output-mr-Mierlo-h2-m3</metric>
    <metric>output-mr-Mill-h2-m3</metric>
    <metric>output-mr-Moergestel-h2-m3</metric>
    <metric>output-mr-Nederweert-h2-m3</metric>
    <metric>output-mr-Nijkerk-h2-m3</metric>
    <metric>output-mr-Nijland-h2-m3</metric>
    <metric>output-mr-Odijk-h2-m3</metric>
    <metric>output-mr-Ommeloop-h2-m3</metric>
    <metric>output-mr-Oosteind-h2-m3</metric>
    <metric>output-mr-Oostum-h2-m3</metric>
    <metric>output-mr-Opsterland-h2-m3</metric>
    <metric>output-mr-Oss-h2-m3</metric>
    <metric>output-mr-Ossendrecht-h2-m3</metric>
    <metric>output-mr-Oudverlaat-h2-m3</metric>
    <metric>output-mr-Reek-h2-m3</metric>
    <metric>output-mr-Reijerscop-h2-m3</metric>
    <metric>output-mr-Rijnsburg-h2-m3</metric>
    <metric>output-mr-Rijsbergen-h2-m3</metric>
    <metric>output-mr-Rijswijk-h2-m3</metric>
    <metric>output-mr-Sanderbout-h2-m3</metric>
    <metric>output-mr-Scheemda-h2-m3</metric>
    <metric>output-mr-Schinnen-h2-m3</metric>
    <metric>output-mr-Schuilenburg-h2-m3</metric>
    <metric>output-mr-Simpelveld-h2-m3</metric>
    <metric>output-mr-Sloten-h2-m3</metric>
    <metric>output-mr-tWoudt-h2-m3</metric>
    <metric>output-mr-Tiel-h2-m3</metric>
    <metric>output-mr-Valburg-h2-m3</metric>
    <metric>output-mr-Venray-h2-m3</metric>
    <metric>output-mr-Visvliet-h2-m3</metric>
    <metric>output-mr-Vlaardingen-h2-m3</metric>
    <metric>output-mr-Vondelingenplaat-h2-m3</metric>
    <metric>output-mr-Voorburg-h2-m3</metric>
    <metric>output-mr-Weesp-h2-m3</metric>
    <metric>output-mr-Westerbork-h2-m3</metric>
    <metric>output-mr-Wezep-h2-m3</metric>
    <metric>output-mr-Wijngaarden-h2-m3</metric>
    <metric>output-mr-Zaltbommel-h2-m3</metric>
    <metric>output-mr-Zegge-h2-m3</metric>
    <metric>output-mr-Zoeterwoude-h2-m3</metric>
    <metric>output-mr-Zuid-Kraayert-h2-m3</metric>
    <metric>output-mr-Zuideropgaande-h2-m3</metric>
    <enumeratedValueSet variable="mp-icons">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-low-ins-transition?">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="national-h2-availability-ticks">
      <value value="16"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-nieuw-treshold-high">
      <value value="52"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="national-gg-potential-PJ">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-woz-treshold-high">
      <value value="522"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="national-h2-availability">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-cost-par">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-corp-treshold-med">
      <value value="19"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mp-top-n">
      <value value="12"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mp-transition-strategy">
      <value value="&quot;1&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-transition-duration">
      <value value="2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-woz-treshold-med">
      <value value="305"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="hs-labels">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-nieuw-treshold-med">
      <value value="23"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-dhc-treshold-med">
      <value value="9"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="hs-limited?">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="max-distance-heatsource">
      <value value="51"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mp-resource-percentage">
      <value value="27"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-ins-strategy1">
      <value value="69"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="national-transition-goal">
      <value value="360933"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-corp-treshold-high">
      <value value="54"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-dhc-treshold-high">
      <value value="55"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="parametrization_resource" repetitions="1" runMetricsEveryStep="false">
    <setup>bs-setup</setup>
    <go>go</go>
    <metric>count neighborhoods with [nh-transition-state = "transition-finished"]</metric>
    <metric>count neighborhoods with [nh-transition-state = "in-transition"]</metric>
    <metric>count neighborhoods with [nh-transition-state = "to-start-transition"]</metric>
    <enumeratedValueSet variable="mp-icons">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-low-ins-transition?">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="national-h2-availability-ticks">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-nieuw-treshold-high">
      <value value="52"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="national-gg-potential-PJ">
      <value value="60"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-woz-treshold-high">
      <value value="522"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="national-h2-availability">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-cost-par">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-corp-treshold-med">
      <value value="25"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mp-top-n">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mp-transition-strategy">
      <value value="&quot;1&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-transition-duration">
      <value value="2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-woz-treshold-med">
      <value value="305"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="hs-labels">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-nieuw-treshold-med">
      <value value="25"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-dhc-treshold-med">
      <value value="9"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="hs-limited?">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="max-distance-heatsource">
      <value value="15"/>
    </enumeratedValueSet>
    <steppedValueSet variable="mp-resource-percentage" first="5" step="1" last="30"/>
    <enumeratedValueSet variable="nh-ins-strategy1">
      <value value="30"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="national-transition-goal">
      <value value="248664"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-corp-treshold-high">
      <value value="54"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-dhc-treshold-high">
      <value value="55"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="parametrization_resource_goal" repetitions="1" runMetricsEveryStep="false">
    <setup>bs-setup</setup>
    <go>go</go>
    <metric>count neighborhoods with [nh-transition-state = "transition-finished"]</metric>
    <metric>count neighborhoods with [nh-transition-state = "in-transition"]</metric>
    <metric>count neighborhoods with [nh-transition-state = "to-start-transition"]</metric>
    <enumeratedValueSet variable="mp-icons">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-low-ins-transition?">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="national-h2-availability-ticks">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-nieuw-treshold-high">
      <value value="52"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="national-gg-potential-PJ">
      <value value="60"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-woz-treshold-high">
      <value value="522"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="national-h2-availability">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-cost-par">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-corp-treshold-med">
      <value value="25"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mp-top-n">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mp-transition-strategy">
      <value value="&quot;1&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-transition-duration">
      <value value="2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-woz-treshold-med">
      <value value="305"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="hs-labels">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-nieuw-treshold-med">
      <value value="25"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-dhc-treshold-med">
      <value value="9"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="hs-limited?">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="max-distance-heatsource">
      <value value="15"/>
    </enumeratedValueSet>
    <steppedValueSet variable="mp-resource-percentage" first="5" step="1" last="30"/>
    <enumeratedValueSet variable="nh-ins-strategy1">
      <value value="30"/>
    </enumeratedValueSet>
    <steppedValueSet variable="national-transition-goal" first="200000" step="50000" last="350000"/>
    <enumeratedValueSet variable="nh-corp-treshold-high">
      <value value="54"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-dhc-treshold-high">
      <value value="55"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="REFERENCE_EXP" repetitions="1" runMetricsEveryStep="true">
    <setup>bs-setup</setup>
    <go>go</go>
    <metric>output-nl-tpp</metric>
    <metric>output-nl-ts</metric>
    <metric>output-nl-nh-tst</metric>
    <metric>output-nl-nh-it</metric>
    <metric>output-nl-nh-tf</metric>
    <metric>output-nl-kw</metric>
    <metric>output-nl-ng-kw</metric>
    <metric>output-nl-e-kw</metric>
    <metric>output-nl-h-kw</metric>
    <metric>output-nl-gg-kw</metric>
    <metric>output-nl-h2-kw</metric>
    <metric>output-nl-ng-m3</metric>
    <metric>output-nl-gg-m3</metric>
    <metric>output-nl-h2-m3</metric>
    <metric>output-mr-Abbenbroek-ng-m3</metric>
    <metric>output-mr-achterdrempt-ng-m3</metric>
    <metric>output-mr-alkmaar-ng-m3</metric>
    <metric>output-mr-angerlo-ng-m3</metric>
    <metric>output-mr-Apeldoorn-ng-m3</metric>
    <metric>output-mr-Assumburg-ng-m3</metric>
    <metric>output-mr-Axel-ng-m3</metric>
    <metric>output-mr-Baal-ng-m3</metric>
    <metric>output-mr-Belfeld-ng-m3</metric>
    <metric>output-mr-Bemelen-ng-m3</metric>
    <metric>output-mr-Best-ng-m3</metric>
    <metric>output-mr-Beverwijk-ng-m3</metric>
    <metric>output-mr-Birstum-ng-m3</metric>
    <metric>output-mr-Bleiswijk-ng-m3</metric>
    <metric>output-mr-Bornerbroek-ng-m3</metric>
    <metric>output-mr-Boxtel-ng-m3</metric>
    <metric>output-mr-DenKaat-ng-m3</metric>
    <metric>output-mr-Driehuis-ng-m3</metric>
    <metric>output-mr-Eext-ng-m3</metric>
    <metric>output-mr-Emmeloord-ng-m3</metric>
    <metric>output-mr-Enschede-ng-m3</metric>
    <metric>output-mr-Esveld-ng-m3</metric>
    <metric>output-mr-Ewijk-ng-m3</metric>
    <metric>output-mr-Gilze-ng-m3</metric>
    <metric>output-mr-Gravenpolder-ng-m3</metric>
    <metric>output-mr-Groenlo-ng-m3</metric>
    <metric>output-mr-Gronsveld-ng-m3</metric>
    <metric>output-mr-Haren-ng-m3</metric>
    <metric>output-mr-Heerhugowaard-ng-m3</metric>
    <metric>output-mr-Hengelo-ng-m3</metric>
    <metric>output-mr-Hilversum-ng-m3</metric>
    <metric>output-mr-Hoofddorp-ng-m3</metric>
    <metric>output-mr-Hoogezand-ng-m3</metric>
    <metric>output-mr-Ijsselmonde-ng-m3</metric>
    <metric>output-mr-Krimpenerwaard-ng-m3</metric>
    <metric>output-mr-Lambertschaag-ng-m3</metric>
    <metric>output-mr-Leusden-Zuid-ng-m3</metric>
    <metric>output-mr-Lingewaal-ng-m3</metric>
    <metric>output-mr-Lurkeers-ng-m3</metric>
    <metric>output-mr-Melick-ng-m3</metric>
    <metric>output-mr-Middelrode-ng-m3</metric>
    <metric>output-mr-Mierlo-ng-m3</metric>
    <metric>output-mr-Mill-ng-m3</metric>
    <metric>output-mr-Moergestel-ng-m3</metric>
    <metric>output-mr-Nederweert-ng-m3</metric>
    <metric>output-mr-Nijkerk-ng-m3</metric>
    <metric>output-mr-Nijland-ng-m3</metric>
    <metric>output-mr-Odijk-ng-m3</metric>
    <metric>output-mr-Ommeloop-ng-m3</metric>
    <metric>output-mr-Oosteind-ng-m3</metric>
    <metric>output-mr-Oostum-ng-m3</metric>
    <metric>output-mr-Opsterland-ng-m3</metric>
    <metric>output-mr-Oss-ng-m3</metric>
    <metric>output-mr-Ossendrecht-ng-m3</metric>
    <metric>output-mr-Oudverlaat-ng-m3</metric>
    <metric>output-mr-Reek-ng-m3</metric>
    <metric>output-mr-Reijerscop-ng-m3</metric>
    <metric>output-mr-Rijnsburg-ng-m3</metric>
    <metric>output-mr-Rijsbergen-ng-m3</metric>
    <metric>output-mr-Rijswijk-ng-m3</metric>
    <metric>output-mr-Sanderbout-ng-m3</metric>
    <metric>output-mr-Scheemda-ng-m3</metric>
    <metric>output-mr-Schinnen-ng-m3</metric>
    <metric>output-mr-Schuilenburg-ng-m3</metric>
    <metric>output-mr-Simpelveld-ng-m3</metric>
    <metric>output-mr-Sloten-ng-m3</metric>
    <metric>output-mr-tWoudt-ng-m3</metric>
    <metric>output-mr-Tiel-ng-m3</metric>
    <metric>output-mr-Valburg-ng-m3</metric>
    <metric>output-mr-Venray-ng-m3</metric>
    <metric>output-mr-Visvliet-ng-m3</metric>
    <metric>output-mr-Vlaardingen-ng-m3</metric>
    <metric>output-mr-Vondelingenplaat-ng-m3</metric>
    <metric>output-mr-Voorburg-ng-m3</metric>
    <metric>output-mr-Weesp-ng-m3</metric>
    <metric>output-mr-Westerbork-ng-m3</metric>
    <metric>output-mr-Wezep-ng-m3</metric>
    <metric>output-mr-Wijngaarden-ng-m3</metric>
    <metric>output-mr-Zaltbommel-ng-m3</metric>
    <metric>output-mr-Zegge-ng-m3</metric>
    <metric>output-mr-Zoeterwoude-ng-m3</metric>
    <metric>output-mr-Zuid-Kraayert-ng-m3</metric>
    <metric>output-mr-Zuideropgaande-ng-m3</metric>
    <metric>output-mr-Abbenbroek-gg-m3</metric>
    <metric>output-mr-Achterdrempt-gg-m3</metric>
    <metric>output-mr-Alkmaar-gg-m3</metric>
    <metric>output-mr-Angerlo-gg-m3</metric>
    <metric>output-mr-Apeldoorn-gg-m3</metric>
    <metric>output-mr-Assumburg-gg-m3</metric>
    <metric>output-mr-Axel-gg-m3</metric>
    <metric>output-mr-Baal-gg-m3</metric>
    <metric>output-mr-Belfeld-gg-m3</metric>
    <metric>output-mr-Bemelen-gg-m3</metric>
    <metric>output-mr-Best-gg-m3</metric>
    <metric>output-mr-Beverwijk-gg-m3</metric>
    <metric>output-mr-Birstum-gg-m3</metric>
    <metric>output-mr-Bleiswijk-gg-m3</metric>
    <metric>output-mr-Bornerbroek-gg-m3</metric>
    <metric>output-mr-Boxtel-gg-m3</metric>
    <metric>output-mr-DenKaat-gg-m3</metric>
    <metric>output-mr-Driehuis-gg-m3</metric>
    <metric>output-mr-Eext-gg-m3</metric>
    <metric>output-mr-Emmeloord-gg-m3</metric>
    <metric>output-mr-Enschede-gg-m3</metric>
    <metric>output-mr-Esveld-gg-m3</metric>
    <metric>output-mr-Ewijk-gg-m3</metric>
    <metric>output-mr-Gilze-gg-m3</metric>
    <metric>output-mr-Gravenpolder-gg-m3</metric>
    <metric>output-mr-Groenlo-gg-m3</metric>
    <metric>output-mr-Gronsveld-gg-m3</metric>
    <metric>output-mr-Haren-gg-m3</metric>
    <metric>output-mr-Heerhugowaard-gg-m3</metric>
    <metric>output-mr-Hengelo-gg-m3</metric>
    <metric>output-mr-Hilversum-gg-m3</metric>
    <metric>output-mr-Hoofddorp-gg-m3</metric>
    <metric>output-mr-Hoogezand-gg-m3</metric>
    <metric>output-mr-Ijsselmonde-gg-m3</metric>
    <metric>output-mr-Krimpenerwaard-gg-m3</metric>
    <metric>output-mr-Lambertschaag-gg-m3</metric>
    <metric>output-mr-Leusden-Zuid-gg-m3</metric>
    <metric>output-mr-Lingewaal-gg-m3</metric>
    <metric>output-mr-Lurkeers-gg-m3</metric>
    <metric>output-mr-Melick-gg-m3</metric>
    <metric>output-mr-Middelrode-gg-m3</metric>
    <metric>output-mr-Mierlo-gg-m3</metric>
    <metric>output-mr-Mill-gg-m3</metric>
    <metric>output-mr-Moergestel-gg-m3</metric>
    <metric>output-mr-Nederweert-gg-m3</metric>
    <metric>output-mr-Nijkerk-gg-m3</metric>
    <metric>output-mr-Nijland-gg-m3</metric>
    <metric>output-mr-Odijk-gg-m3</metric>
    <metric>output-mr-Ommeloop-gg-m3</metric>
    <metric>output-mr-Oosteind-gg-m3</metric>
    <metric>output-mr-Oostum-gg-m3</metric>
    <metric>output-mr-Opsterland-gg-m3</metric>
    <metric>output-mr-Oss-gg-m3</metric>
    <metric>output-mr-Ossendrecht-gg-m3</metric>
    <metric>output-mr-Oudverlaat-gg-m3</metric>
    <metric>output-mr-Reek-gg-m3</metric>
    <metric>output-mr-Reijerscop-gg-m3</metric>
    <metric>output-mr-Rijnsburg-gg-m3</metric>
    <metric>output-mr-Rijsbergen-gg-m3</metric>
    <metric>output-mr-Rijswijk-gg-m3</metric>
    <metric>output-mr-Sanderbout-gg-m3</metric>
    <metric>output-mr-Scheemda-gg-m3</metric>
    <metric>output-mr-Schinnen-gg-m3</metric>
    <metric>output-mr-Schuilenburg-gg-m3</metric>
    <metric>output-mr-Simpelveld-gg-m3</metric>
    <metric>output-mr-Sloten-gg-m3</metric>
    <metric>output-mr-tWoudt-gg-m3</metric>
    <metric>output-mr-Tiel-gg-m3</metric>
    <metric>output-mr-Valburg-gg-m3</metric>
    <metric>output-mr-Venray-gg-m3</metric>
    <metric>output-mr-Visvliet-gg-m3</metric>
    <metric>output-mr-Vlaardingen-gg-m3</metric>
    <metric>output-mr-Vondelingenplaat-gg-m3</metric>
    <metric>output-mr-Voorburg-gg-m3</metric>
    <metric>output-mr-Weesp-gg-m3</metric>
    <metric>output-mr-Westerbork-gg-m3</metric>
    <metric>output-mr-Wezep-gg-m3</metric>
    <metric>output-mr-Wijngaarden-gg-m3</metric>
    <metric>output-mr-Zaltbommel-gg-m3</metric>
    <metric>output-mr-Zegge-gg-m3</metric>
    <metric>output-mr-Zoeterwoude-gg-m3</metric>
    <metric>output-mr-Zuid-Kraayert-gg-m3</metric>
    <metric>output-mr-Zuideropgaande-gg-m3</metric>
    <metric>output-mr-Abbenbroek-h2-m3</metric>
    <metric>output-mr-Achterdrempt-h2-m3</metric>
    <metric>output-mr-Alkmaar-h2-m3</metric>
    <metric>output-mr-Angerlo-h2-m3</metric>
    <metric>output-mr-Apeldoorn-h2-m3</metric>
    <metric>output-mr-Assumburg-h2-m3</metric>
    <metric>output-mr-Axel-h2-m3</metric>
    <metric>output-mr-Baal-h2-m3</metric>
    <metric>output-mr-Belfeld-h2-m3</metric>
    <metric>output-mr-Bemelen-h2-m3</metric>
    <metric>output-mr-Best-h2-m3</metric>
    <metric>output-mr-Beverwijk-h2-m3</metric>
    <metric>output-mr-Birstum-h2-m3</metric>
    <metric>output-mr-Bleiswijk-h2-m3</metric>
    <metric>output-mr-Bornerbroek-h2-m3</metric>
    <metric>output-mr-Boxtel-h2-m3</metric>
    <metric>output-mr-DenKaat-h2-m3</metric>
    <metric>output-mr-Driehuis-h2-m3</metric>
    <metric>output-mr-Eext-h2-m3</metric>
    <metric>output-mr-Emmeloord-h2-m3</metric>
    <metric>output-mr-Enschede-h2-m3</metric>
    <metric>output-mr-Esveld-h2-m3</metric>
    <metric>output-mr-Ewijk-h2-m3</metric>
    <metric>output-mr-Gilze-h2-m3</metric>
    <metric>output-mr-Gravenpolder-h2-m3</metric>
    <metric>output-mr-Groenlo-h2-m3</metric>
    <metric>output-mr-Gronsveld-h2-m3</metric>
    <metric>output-mr-Haren-h2-m3</metric>
    <metric>output-mr-Heerhugowaard-h2-m3</metric>
    <metric>output-mr-Hengelo-h2-m3</metric>
    <metric>output-mr-Hilversum-h2-m3</metric>
    <metric>output-mr-Hoofddorp-h2-m3</metric>
    <metric>output-mr-Hoogezand-h2-m3</metric>
    <metric>output-mr-Ijsselmonde-h2-m3</metric>
    <metric>output-mr-Krimpenerwaard-h2-m3</metric>
    <metric>output-mr-Lambertschaag-h2-m3</metric>
    <metric>output-mr-Leusden-Zuid-h2-m3</metric>
    <metric>output-mr-Lingewaal-h2-m3</metric>
    <metric>output-mr-Lurkeers-h2-m3</metric>
    <metric>output-mr-Melick-h2-m3</metric>
    <metric>output-mr-Middelrode-h2-m3</metric>
    <metric>output-mr-Mierlo-h2-m3</metric>
    <metric>output-mr-Mill-h2-m3</metric>
    <metric>output-mr-Moergestel-h2-m3</metric>
    <metric>output-mr-Nederweert-h2-m3</metric>
    <metric>output-mr-Nijkerk-h2-m3</metric>
    <metric>output-mr-Nijland-h2-m3</metric>
    <metric>output-mr-Odijk-h2-m3</metric>
    <metric>output-mr-Ommeloop-h2-m3</metric>
    <metric>output-mr-Oosteind-h2-m3</metric>
    <metric>output-mr-Oostum-h2-m3</metric>
    <metric>output-mr-Opsterland-h2-m3</metric>
    <metric>output-mr-Oss-h2-m3</metric>
    <metric>output-mr-Ossendrecht-h2-m3</metric>
    <metric>output-mr-Oudverlaat-h2-m3</metric>
    <metric>output-mr-Reek-h2-m3</metric>
    <metric>output-mr-Reijerscop-h2-m3</metric>
    <metric>output-mr-Rijnsburg-h2-m3</metric>
    <metric>output-mr-Rijsbergen-h2-m3</metric>
    <metric>output-mr-Rijswijk-h2-m3</metric>
    <metric>output-mr-Sanderbout-h2-m3</metric>
    <metric>output-mr-Scheemda-h2-m3</metric>
    <metric>output-mr-Schinnen-h2-m3</metric>
    <metric>output-mr-Schuilenburg-h2-m3</metric>
    <metric>output-mr-Simpelveld-h2-m3</metric>
    <metric>output-mr-Sloten-h2-m3</metric>
    <metric>output-mr-tWoudt-h2-m3</metric>
    <metric>output-mr-Tiel-h2-m3</metric>
    <metric>output-mr-Valburg-h2-m3</metric>
    <metric>output-mr-Venray-h2-m3</metric>
    <metric>output-mr-Visvliet-h2-m3</metric>
    <metric>output-mr-Vlaardingen-h2-m3</metric>
    <metric>output-mr-Vondelingenplaat-h2-m3</metric>
    <metric>output-mr-Voorburg-h2-m3</metric>
    <metric>output-mr-Weesp-h2-m3</metric>
    <metric>output-mr-Westerbork-h2-m3</metric>
    <metric>output-mr-Wezep-h2-m3</metric>
    <metric>output-mr-Wijngaarden-h2-m3</metric>
    <metric>output-mr-Zaltbommel-h2-m3</metric>
    <metric>output-mr-Zegge-h2-m3</metric>
    <metric>output-mr-Zoeterwoude-h2-m3</metric>
    <metric>output-mr-Zuid-Kraayert-h2-m3</metric>
    <metric>output-mr-Zuideropgaande-h2-m3</metric>
    <metric>output-mr-Vlaardingen-ng-kw</metric>
    <metric>output-mr-Vlaardingen-gg-kw</metric>
    <metric>output-mr-Vlaardingen-h2-kw</metric>
    <metric>output-mr-Vlaardingen-e-kw</metric>
    <metric>output-mr-Vlaardingen-h-kw</metric>
    <metric>output-mr-Haren-ng-kw</metric>
    <metric>output-mr-Haren-gg-kw</metric>
    <metric>output-mr-Haren-h2-kw</metric>
    <metric>output-mr-Haren-e-kw</metric>
    <metric>output-mr-Haren-h-kw</metric>
    <metric>output-mr-Westerbork-ng-kw</metric>
    <metric>output-mr-Westerbork-gg-kw</metric>
    <metric>output-mr-Westerbork-h2-kw</metric>
    <metric>output-mr-Westerbork-e-kw</metric>
    <metric>output-mr-Westerbork-h-kw</metric>
    <metric>output-mr-Vlaardingen-tpp</metric>
    <metric>output-mr-Haren-tpp</metric>
    <metric>output-mr-Westerbork-tpp</metric>
    <metric>output-mp-Rotterdam-ng-m3</metric>
    <metric>output-mp-Rotterdam-gg-m3</metric>
    <metric>output-mp-Rotterdam-h2-m3</metric>
    <metric>output-mp-Rotterdam-ng-kw</metric>
    <metric>output-mp-Rotterdam-gg-kw</metric>
    <metric>output-mp-Rotterdam-h2-kw</metric>
    <metric>output-mp-Rotterdam-e-kw</metric>
    <metric>output-mp-Rotterdam-h-kw</metric>
    <metric>output-mp-Rotterdam-tpp</metric>
    <metric>output-mp-Vlaardingen-ng-m3</metric>
    <metric>output-mp-Vlaardingen-gg-m3</metric>
    <metric>output-mp-Vlaardingen-h2-m3</metric>
    <metric>output-mp-Vlaardingen-ng-kw</metric>
    <metric>output-mp-Vlaardingen-gg-kw</metric>
    <metric>output-mp-Vlaardingen-h2-kw</metric>
    <metric>output-mp-Vlaardingen-e-kw</metric>
    <metric>output-mp-Vlaardingen-h-kw</metric>
    <metric>output-mp-Vlaardingen-tpp</metric>
    <metric>output-mp-Maassluis-ng-m3</metric>
    <metric>output-mp-Maassluis-gg-m3</metric>
    <metric>output-mp-Maassluis-h2-m3</metric>
    <metric>output-mp-Maassluis-ng-kw</metric>
    <metric>output-mp-Maassluis-gg-kw</metric>
    <metric>output-mp-Maassluis-h2-kw</metric>
    <metric>output-mp-Maassluis-e-kw</metric>
    <metric>output-mp-Maassluis-h-kw</metric>
    <metric>output-mp-Maassluis-tpp</metric>
    <metric>output-mp-Schiedam-ng-m3</metric>
    <metric>output-mp-Schiedam-gg-m3</metric>
    <metric>output-mp-Schiedam-h2-m3</metric>
    <metric>output-mp-Schiedam-ng-kw</metric>
    <metric>output-mp-Schiedam-gg-kw</metric>
    <metric>output-mp-Schiedam-h2-kw</metric>
    <metric>output-mp-Schiedam-e-kw</metric>
    <metric>output-mp-Schiedam-h-kw</metric>
    <metric>output-mp-Schiedam-tpp</metric>
    <metric>output-mp-Groningen-ng-m3</metric>
    <metric>output-mp-Groningen-gg-m3</metric>
    <metric>output-mp-Groningen-h2-m3</metric>
    <metric>output-mp-Groningen-ng-kw</metric>
    <metric>output-mp-Groningen-gg-kw</metric>
    <metric>output-mp-Groningen-h2-kw</metric>
    <metric>output-mp-Groningen-e-kw</metric>
    <metric>output-mp-Groningen-h-kw</metric>
    <metric>output-mp-Groningen-tpp</metric>
    <metric>output-mp-Leek-ng-m3</metric>
    <metric>output-mp-Leek-gg-m3</metric>
    <metric>output-mp-Leek-h2-m3</metric>
    <metric>output-mp-Leek-ng-kw</metric>
    <metric>output-mp-Leek-gg-kw</metric>
    <metric>output-mp-Leek-h2-kw</metric>
    <metric>output-mp-Leek-e-kw</metric>
    <metric>output-mp-Leek-h-kw</metric>
    <metric>output-mp-Leek-tpp</metric>
    <metric>output-mp-Marum-ng-m3</metric>
    <metric>output-mp-Marum-gg-m3</metric>
    <metric>output-mp-Marum-h2-m3</metric>
    <metric>output-mp-Marum-ng-kw</metric>
    <metric>output-mp-Marum-gg-kw</metric>
    <metric>output-mp-Marum-h2-kw</metric>
    <metric>output-mp-Marum-e-kw</metric>
    <metric>output-mp-Marum-h-kw</metric>
    <metric>output-mp-Marum-tpp</metric>
    <metric>output-mp-Noordenveld-ng-m3</metric>
    <metric>output-mp-Noordenveld-gg-m3</metric>
    <metric>output-mp-Noordenveld-h2-m3</metric>
    <metric>output-mp-Noordenveld-ng-kw</metric>
    <metric>output-mp-Noordenveld-gg-kw</metric>
    <metric>output-mp-Noordenveld-h2-kw</metric>
    <metric>output-mp-Noordenveld-e-kw</metric>
    <metric>output-mp-Noordenveld-h-kw</metric>
    <metric>output-mp-Noordenveld-tpp</metric>
    <metric>output-mp-Haren-ng-m3</metric>
    <metric>output-mp-Haren-gg-m3</metric>
    <metric>output-mp-Haren-h2-m3</metric>
    <metric>output-mp-Haren-ng-kw</metric>
    <metric>output-mp-Haren-gg-kw</metric>
    <metric>output-mp-Haren-h2-kw</metric>
    <metric>output-mp-Haren-e-kw</metric>
    <metric>output-mp-Haren-h-kw</metric>
    <metric>output-mp-Haren-tpp</metric>
    <metric>output-mp-Emmen-ng-m3</metric>
    <metric>output-mp-Emmen-gg-m3</metric>
    <metric>output-mp-Emmen-h2-m3</metric>
    <metric>output-mp-Emmen-ng-kw</metric>
    <metric>output-mp-Emmen-gg-kw</metric>
    <metric>output-mp-Emmen-h2-kw</metric>
    <metric>output-mp-Emmen-e-kw</metric>
    <metric>output-mp-Emmen-h-kw</metric>
    <metric>output-mp-Emmen-tpp</metric>
    <metric>output-mp-Westerveld-ng-m3</metric>
    <metric>output-mp-Westerveld-gg-m3</metric>
    <metric>output-mp-Westerveld-h2-m3</metric>
    <metric>output-mp-Westerveld-ng-kw</metric>
    <metric>output-mp-Westerveld-gg-kw</metric>
    <metric>output-mp-Westerveld-h2-kw</metric>
    <metric>output-mp-Westerveld-e-kw</metric>
    <metric>output-mp-Westerveld-h-kw</metric>
    <metric>output-mp-Westerveld-tpp</metric>
    <metric>output-mp-Midden-Drenthe-ng-m3</metric>
    <metric>output-mp-Midden-Drenthe-gg-m3</metric>
    <metric>output-mp-Midden-Drenthe-h2-m3</metric>
    <metric>output-mp-Midden-Drenthe-ng-kw</metric>
    <metric>output-mp-Midden-Drenthe-gg-kw</metric>
    <metric>output-mp-Midden-Drenthe-h2-kw</metric>
    <metric>output-mp-Midden-Drenthe-e-kw</metric>
    <metric>output-mp-Midden-Drenthe-h-kw</metric>
    <metric>output-mp-Midden-Drenthe-tpp</metric>
    <metric>output-mp-ng-m3</metric>
    <metric>output-mp-gg-m3</metric>
    <metric>output-mp-h2-m3</metric>
    <metric>output-mp-ng-kw</metric>
    <metric>output-mp-gg-kw</metric>
    <metric>output-mp-h2-kw</metric>
    <metric>output-mp-e-kw</metric>
    <metric>output-mp-h-kw</metric>
    <metric>output-mp-Rotterdam-nh-ts</metric>
    <metric>output-mp-Groningen-nh-ts</metric>
    <metric>output-mp-Westerveld-nh-ts</metric>
    <metric>output-nh-thermal-system</metric>
    <metric>output-nl-ng</metric>
    <metric>output-nl-ae</metric>
    <metric>output-nl-gg</metric>
    <metric>output-nl-ht/mt</metric>
    <metric>output-nl-lt</metric>
    <metric>output-nl-h2</metric>
    <metric>output-nl-ins</metric>
    <enumeratedValueSet variable="mp-icons">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-low-ins-transition?">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="national-h2-availability-ticks">
      <value value="15"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-nieuw-treshold-high">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="national-gg-potential-PJ">
      <value value="60"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-woz-treshold-high">
      <value value="500"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="national-h2-availability">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-cost-par">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-corp-treshold-med">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mp-top-n">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mp-transition-strategy">
      <value value="&quot;2&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-transition-duration">
      <value value="2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-woz-treshold-med">
      <value value="250"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="hs-labels">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-nieuw-treshold-med">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-dhc-treshold-med">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="hs-limited?">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="max-distance-heatsource">
      <value value="15"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mp-resource-percentage">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-ins-strategy1">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="national-transition-goal">
      <value value="250000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-corp-treshold-high">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-dhc-treshold-high">
      <value value="50"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="A_low_ins_10" repetitions="10" runMetricsEveryStep="true">
    <setup>bs-setup</setup>
    <go>go</go>
    <metric>output-nl-tpp</metric>
    <metric>output-nl-ts</metric>
    <metric>output-nl-nh-tst</metric>
    <metric>output-nl-nh-it</metric>
    <metric>output-nl-nh-tf</metric>
    <metric>output-nl-kw</metric>
    <metric>output-nl-ng-kw</metric>
    <metric>output-nl-e-kw</metric>
    <metric>output-nl-h-kw</metric>
    <metric>output-nl-gg-kw</metric>
    <metric>output-nl-h2-kw</metric>
    <metric>output-nl-ng-m3</metric>
    <metric>output-nl-gg-m3</metric>
    <metric>output-nl-h2-m3</metric>
    <metric>output-mr-Abbenbroek-ng-m3</metric>
    <metric>output-mr-achterdrempt-ng-m3</metric>
    <metric>output-mr-alkmaar-ng-m3</metric>
    <metric>output-mr-angerlo-ng-m3</metric>
    <metric>output-mr-Apeldoorn-ng-m3</metric>
    <metric>output-mr-Assumburg-ng-m3</metric>
    <metric>output-mr-Axel-ng-m3</metric>
    <metric>output-mr-Baal-ng-m3</metric>
    <metric>output-mr-Belfeld-ng-m3</metric>
    <metric>output-mr-Bemelen-ng-m3</metric>
    <metric>output-mr-Best-ng-m3</metric>
    <metric>output-mr-Beverwijk-ng-m3</metric>
    <metric>output-mr-Birstum-ng-m3</metric>
    <metric>output-mr-Bleiswijk-ng-m3</metric>
    <metric>output-mr-Bornerbroek-ng-m3</metric>
    <metric>output-mr-Boxtel-ng-m3</metric>
    <metric>output-mr-DenKaat-ng-m3</metric>
    <metric>output-mr-Driehuis-ng-m3</metric>
    <metric>output-mr-Eext-ng-m3</metric>
    <metric>output-mr-Emmeloord-ng-m3</metric>
    <metric>output-mr-Enschede-ng-m3</metric>
    <metric>output-mr-Esveld-ng-m3</metric>
    <metric>output-mr-Ewijk-ng-m3</metric>
    <metric>output-mr-Gilze-ng-m3</metric>
    <metric>output-mr-Gravenpolder-ng-m3</metric>
    <metric>output-mr-Groenlo-ng-m3</metric>
    <metric>output-mr-Gronsveld-ng-m3</metric>
    <metric>output-mr-Haren-ng-m3</metric>
    <metric>output-mr-Heerhugowaard-ng-m3</metric>
    <metric>output-mr-Hengelo-ng-m3</metric>
    <metric>output-mr-Hilversum-ng-m3</metric>
    <metric>output-mr-Hoofddorp-ng-m3</metric>
    <metric>output-mr-Hoogezand-ng-m3</metric>
    <metric>output-mr-Ijsselmonde-ng-m3</metric>
    <metric>output-mr-Krimpenerwaard-ng-m3</metric>
    <metric>output-mr-Lambertschaag-ng-m3</metric>
    <metric>output-mr-Leusden-Zuid-ng-m3</metric>
    <metric>output-mr-Lingewaal-ng-m3</metric>
    <metric>output-mr-Lurkeers-ng-m3</metric>
    <metric>output-mr-Melick-ng-m3</metric>
    <metric>output-mr-Middelrode-ng-m3</metric>
    <metric>output-mr-Mierlo-ng-m3</metric>
    <metric>output-mr-Mill-ng-m3</metric>
    <metric>output-mr-Moergestel-ng-m3</metric>
    <metric>output-mr-Nederweert-ng-m3</metric>
    <metric>output-mr-Nijkerk-ng-m3</metric>
    <metric>output-mr-Nijland-ng-m3</metric>
    <metric>output-mr-Odijk-ng-m3</metric>
    <metric>output-mr-Ommeloop-ng-m3</metric>
    <metric>output-mr-Oosteind-ng-m3</metric>
    <metric>output-mr-Oostum-ng-m3</metric>
    <metric>output-mr-Opsterland-ng-m3</metric>
    <metric>output-mr-Oss-ng-m3</metric>
    <metric>output-mr-Ossendrecht-ng-m3</metric>
    <metric>output-mr-Oudverlaat-ng-m3</metric>
    <metric>output-mr-Reek-ng-m3</metric>
    <metric>output-mr-Reijerscop-ng-m3</metric>
    <metric>output-mr-Rijnsburg-ng-m3</metric>
    <metric>output-mr-Rijsbergen-ng-m3</metric>
    <metric>output-mr-Rijswijk-ng-m3</metric>
    <metric>output-mr-Sanderbout-ng-m3</metric>
    <metric>output-mr-Scheemda-ng-m3</metric>
    <metric>output-mr-Schinnen-ng-m3</metric>
    <metric>output-mr-Schuilenburg-ng-m3</metric>
    <metric>output-mr-Simpelveld-ng-m3</metric>
    <metric>output-mr-Sloten-ng-m3</metric>
    <metric>output-mr-tWoudt-ng-m3</metric>
    <metric>output-mr-Tiel-ng-m3</metric>
    <metric>output-mr-Valburg-ng-m3</metric>
    <metric>output-mr-Venray-ng-m3</metric>
    <metric>output-mr-Visvliet-ng-m3</metric>
    <metric>output-mr-Vlaardingen-ng-m3</metric>
    <metric>output-mr-Vondelingenplaat-ng-m3</metric>
    <metric>output-mr-Voorburg-ng-m3</metric>
    <metric>output-mr-Weesp-ng-m3</metric>
    <metric>output-mr-Westerbork-ng-m3</metric>
    <metric>output-mr-Wezep-ng-m3</metric>
    <metric>output-mr-Wijngaarden-ng-m3</metric>
    <metric>output-mr-Zaltbommel-ng-m3</metric>
    <metric>output-mr-Zegge-ng-m3</metric>
    <metric>output-mr-Zoeterwoude-ng-m3</metric>
    <metric>output-mr-Zuid-Kraayert-ng-m3</metric>
    <metric>output-mr-Zuideropgaande-ng-m3</metric>
    <metric>output-mr-Abbenbroek-gg-m3</metric>
    <metric>output-mr-Achterdrempt-gg-m3</metric>
    <metric>output-mr-Alkmaar-gg-m3</metric>
    <metric>output-mr-Angerlo-gg-m3</metric>
    <metric>output-mr-Apeldoorn-gg-m3</metric>
    <metric>output-mr-Assumburg-gg-m3</metric>
    <metric>output-mr-Axel-gg-m3</metric>
    <metric>output-mr-Baal-gg-m3</metric>
    <metric>output-mr-Belfeld-gg-m3</metric>
    <metric>output-mr-Bemelen-gg-m3</metric>
    <metric>output-mr-Best-gg-m3</metric>
    <metric>output-mr-Beverwijk-gg-m3</metric>
    <metric>output-mr-Birstum-gg-m3</metric>
    <metric>output-mr-Bleiswijk-gg-m3</metric>
    <metric>output-mr-Bornerbroek-gg-m3</metric>
    <metric>output-mr-Boxtel-gg-m3</metric>
    <metric>output-mr-DenKaat-gg-m3</metric>
    <metric>output-mr-Driehuis-gg-m3</metric>
    <metric>output-mr-Eext-gg-m3</metric>
    <metric>output-mr-Emmeloord-gg-m3</metric>
    <metric>output-mr-Enschede-gg-m3</metric>
    <metric>output-mr-Esveld-gg-m3</metric>
    <metric>output-mr-Ewijk-gg-m3</metric>
    <metric>output-mr-Gilze-gg-m3</metric>
    <metric>output-mr-Gravenpolder-gg-m3</metric>
    <metric>output-mr-Groenlo-gg-m3</metric>
    <metric>output-mr-Gronsveld-gg-m3</metric>
    <metric>output-mr-Haren-gg-m3</metric>
    <metric>output-mr-Heerhugowaard-gg-m3</metric>
    <metric>output-mr-Hengelo-gg-m3</metric>
    <metric>output-mr-Hilversum-gg-m3</metric>
    <metric>output-mr-Hoofddorp-gg-m3</metric>
    <metric>output-mr-Hoogezand-gg-m3</metric>
    <metric>output-mr-Ijsselmonde-gg-m3</metric>
    <metric>output-mr-Krimpenerwaard-gg-m3</metric>
    <metric>output-mr-Lambertschaag-gg-m3</metric>
    <metric>output-mr-Leusden-Zuid-gg-m3</metric>
    <metric>output-mr-Lingewaal-gg-m3</metric>
    <metric>output-mr-Lurkeers-gg-m3</metric>
    <metric>output-mr-Melick-gg-m3</metric>
    <metric>output-mr-Middelrode-gg-m3</metric>
    <metric>output-mr-Mierlo-gg-m3</metric>
    <metric>output-mr-Mill-gg-m3</metric>
    <metric>output-mr-Moergestel-gg-m3</metric>
    <metric>output-mr-Nederweert-gg-m3</metric>
    <metric>output-mr-Nijkerk-gg-m3</metric>
    <metric>output-mr-Nijland-gg-m3</metric>
    <metric>output-mr-Odijk-gg-m3</metric>
    <metric>output-mr-Ommeloop-gg-m3</metric>
    <metric>output-mr-Oosteind-gg-m3</metric>
    <metric>output-mr-Oostum-gg-m3</metric>
    <metric>output-mr-Opsterland-gg-m3</metric>
    <metric>output-mr-Oss-gg-m3</metric>
    <metric>output-mr-Ossendrecht-gg-m3</metric>
    <metric>output-mr-Oudverlaat-gg-m3</metric>
    <metric>output-mr-Reek-gg-m3</metric>
    <metric>output-mr-Reijerscop-gg-m3</metric>
    <metric>output-mr-Rijnsburg-gg-m3</metric>
    <metric>output-mr-Rijsbergen-gg-m3</metric>
    <metric>output-mr-Rijswijk-gg-m3</metric>
    <metric>output-mr-Sanderbout-gg-m3</metric>
    <metric>output-mr-Scheemda-gg-m3</metric>
    <metric>output-mr-Schinnen-gg-m3</metric>
    <metric>output-mr-Schuilenburg-gg-m3</metric>
    <metric>output-mr-Simpelveld-gg-m3</metric>
    <metric>output-mr-Sloten-gg-m3</metric>
    <metric>output-mr-tWoudt-gg-m3</metric>
    <metric>output-mr-Tiel-gg-m3</metric>
    <metric>output-mr-Valburg-gg-m3</metric>
    <metric>output-mr-Venray-gg-m3</metric>
    <metric>output-mr-Visvliet-gg-m3</metric>
    <metric>output-mr-Vlaardingen-gg-m3</metric>
    <metric>output-mr-Vondelingenplaat-gg-m3</metric>
    <metric>output-mr-Voorburg-gg-m3</metric>
    <metric>output-mr-Weesp-gg-m3</metric>
    <metric>output-mr-Westerbork-gg-m3</metric>
    <metric>output-mr-Wezep-gg-m3</metric>
    <metric>output-mr-Wijngaarden-gg-m3</metric>
    <metric>output-mr-Zaltbommel-gg-m3</metric>
    <metric>output-mr-Zegge-gg-m3</metric>
    <metric>output-mr-Zoeterwoude-gg-m3</metric>
    <metric>output-mr-Zuid-Kraayert-gg-m3</metric>
    <metric>output-mr-Zuideropgaande-gg-m3</metric>
    <metric>output-mr-Abbenbroek-h2-m3</metric>
    <metric>output-mr-Achterdrempt-h2-m3</metric>
    <metric>output-mr-Alkmaar-h2-m3</metric>
    <metric>output-mr-Angerlo-h2-m3</metric>
    <metric>output-mr-Apeldoorn-h2-m3</metric>
    <metric>output-mr-Assumburg-h2-m3</metric>
    <metric>output-mr-Axel-h2-m3</metric>
    <metric>output-mr-Baal-h2-m3</metric>
    <metric>output-mr-Belfeld-h2-m3</metric>
    <metric>output-mr-Bemelen-h2-m3</metric>
    <metric>output-mr-Best-h2-m3</metric>
    <metric>output-mr-Beverwijk-h2-m3</metric>
    <metric>output-mr-Birstum-h2-m3</metric>
    <metric>output-mr-Bleiswijk-h2-m3</metric>
    <metric>output-mr-Bornerbroek-h2-m3</metric>
    <metric>output-mr-Boxtel-h2-m3</metric>
    <metric>output-mr-DenKaat-h2-m3</metric>
    <metric>output-mr-Driehuis-h2-m3</metric>
    <metric>output-mr-Eext-h2-m3</metric>
    <metric>output-mr-Emmeloord-h2-m3</metric>
    <metric>output-mr-Enschede-h2-m3</metric>
    <metric>output-mr-Esveld-h2-m3</metric>
    <metric>output-mr-Ewijk-h2-m3</metric>
    <metric>output-mr-Gilze-h2-m3</metric>
    <metric>output-mr-Gravenpolder-h2-m3</metric>
    <metric>output-mr-Groenlo-h2-m3</metric>
    <metric>output-mr-Gronsveld-h2-m3</metric>
    <metric>output-mr-Haren-h2-m3</metric>
    <metric>output-mr-Heerhugowaard-h2-m3</metric>
    <metric>output-mr-Hengelo-h2-m3</metric>
    <metric>output-mr-Hilversum-h2-m3</metric>
    <metric>output-mr-Hoofddorp-h2-m3</metric>
    <metric>output-mr-Hoogezand-h2-m3</metric>
    <metric>output-mr-Ijsselmonde-h2-m3</metric>
    <metric>output-mr-Krimpenerwaard-h2-m3</metric>
    <metric>output-mr-Lambertschaag-h2-m3</metric>
    <metric>output-mr-Leusden-Zuid-h2-m3</metric>
    <metric>output-mr-Lingewaal-h2-m3</metric>
    <metric>output-mr-Lurkeers-h2-m3</metric>
    <metric>output-mr-Melick-h2-m3</metric>
    <metric>output-mr-Middelrode-h2-m3</metric>
    <metric>output-mr-Mierlo-h2-m3</metric>
    <metric>output-mr-Mill-h2-m3</metric>
    <metric>output-mr-Moergestel-h2-m3</metric>
    <metric>output-mr-Nederweert-h2-m3</metric>
    <metric>output-mr-Nijkerk-h2-m3</metric>
    <metric>output-mr-Nijland-h2-m3</metric>
    <metric>output-mr-Odijk-h2-m3</metric>
    <metric>output-mr-Ommeloop-h2-m3</metric>
    <metric>output-mr-Oosteind-h2-m3</metric>
    <metric>output-mr-Oostum-h2-m3</metric>
    <metric>output-mr-Opsterland-h2-m3</metric>
    <metric>output-mr-Oss-h2-m3</metric>
    <metric>output-mr-Ossendrecht-h2-m3</metric>
    <metric>output-mr-Oudverlaat-h2-m3</metric>
    <metric>output-mr-Reek-h2-m3</metric>
    <metric>output-mr-Reijerscop-h2-m3</metric>
    <metric>output-mr-Rijnsburg-h2-m3</metric>
    <metric>output-mr-Rijsbergen-h2-m3</metric>
    <metric>output-mr-Rijswijk-h2-m3</metric>
    <metric>output-mr-Sanderbout-h2-m3</metric>
    <metric>output-mr-Scheemda-h2-m3</metric>
    <metric>output-mr-Schinnen-h2-m3</metric>
    <metric>output-mr-Schuilenburg-h2-m3</metric>
    <metric>output-mr-Simpelveld-h2-m3</metric>
    <metric>output-mr-Sloten-h2-m3</metric>
    <metric>output-mr-tWoudt-h2-m3</metric>
    <metric>output-mr-Tiel-h2-m3</metric>
    <metric>output-mr-Valburg-h2-m3</metric>
    <metric>output-mr-Venray-h2-m3</metric>
    <metric>output-mr-Visvliet-h2-m3</metric>
    <metric>output-mr-Vlaardingen-h2-m3</metric>
    <metric>output-mr-Vondelingenplaat-h2-m3</metric>
    <metric>output-mr-Voorburg-h2-m3</metric>
    <metric>output-mr-Weesp-h2-m3</metric>
    <metric>output-mr-Westerbork-h2-m3</metric>
    <metric>output-mr-Wezep-h2-m3</metric>
    <metric>output-mr-Wijngaarden-h2-m3</metric>
    <metric>output-mr-Zaltbommel-h2-m3</metric>
    <metric>output-mr-Zegge-h2-m3</metric>
    <metric>output-mr-Zoeterwoude-h2-m3</metric>
    <metric>output-mr-Zuid-Kraayert-h2-m3</metric>
    <metric>output-mr-Zuideropgaande-h2-m3</metric>
    <metric>output-mr-Vlaardingen-ng-kw</metric>
    <metric>output-mr-Vlaardingen-gg-kw</metric>
    <metric>output-mr-Vlaardingen-h2-kw</metric>
    <metric>output-mr-Vlaardingen-e-kw</metric>
    <metric>output-mr-Vlaardingen-h-kw</metric>
    <metric>output-mr-Haren-ng-kw</metric>
    <metric>output-mr-Haren-gg-kw</metric>
    <metric>output-mr-Haren-h2-kw</metric>
    <metric>output-mr-Haren-e-kw</metric>
    <metric>output-mr-Haren-h-kw</metric>
    <metric>output-mr-Westerbork-ng-kw</metric>
    <metric>output-mr-Westerbork-gg-kw</metric>
    <metric>output-mr-Westerbork-h2-kw</metric>
    <metric>output-mr-Westerbork-e-kw</metric>
    <metric>output-mr-Westerbork-h-kw</metric>
    <metric>output-mr-Vlaardingen-tpp</metric>
    <metric>output-mr-Haren-tpp</metric>
    <metric>output-mr-Westerbork-tpp</metric>
    <metric>output-mp-Rotterdam-ng-m3</metric>
    <metric>output-mp-Rotterdam-gg-m3</metric>
    <metric>output-mp-Rotterdam-h2-m3</metric>
    <metric>output-mp-Rotterdam-ng-kw</metric>
    <metric>output-mp-Rotterdam-gg-kw</metric>
    <metric>output-mp-Rotterdam-h2-kw</metric>
    <metric>output-mp-Rotterdam-e-kw</metric>
    <metric>output-mp-Rotterdam-h-kw</metric>
    <metric>output-mp-Rotterdam-tpp</metric>
    <metric>output-mp-Vlaardingen-ng-m3</metric>
    <metric>output-mp-Vlaardingen-gg-m3</metric>
    <metric>output-mp-Vlaardingen-h2-m3</metric>
    <metric>output-mp-Vlaardingen-ng-kw</metric>
    <metric>output-mp-Vlaardingen-gg-kw</metric>
    <metric>output-mp-Vlaardingen-h2-kw</metric>
    <metric>output-mp-Vlaardingen-e-kw</metric>
    <metric>output-mp-Vlaardingen-h-kw</metric>
    <metric>output-mp-Vlaardingen-tpp</metric>
    <metric>output-mp-Maassluis-ng-m3</metric>
    <metric>output-mp-Maassluis-gg-m3</metric>
    <metric>output-mp-Maassluis-h2-m3</metric>
    <metric>output-mp-Maassluis-ng-kw</metric>
    <metric>output-mp-Maassluis-gg-kw</metric>
    <metric>output-mp-Maassluis-h2-kw</metric>
    <metric>output-mp-Maassluis-e-kw</metric>
    <metric>output-mp-Maassluis-h-kw</metric>
    <metric>output-mp-Maassluis-tpp</metric>
    <metric>output-mp-Schiedam-ng-m3</metric>
    <metric>output-mp-Schiedam-gg-m3</metric>
    <metric>output-mp-Schiedam-h2-m3</metric>
    <metric>output-mp-Schiedam-ng-kw</metric>
    <metric>output-mp-Schiedam-gg-kw</metric>
    <metric>output-mp-Schiedam-h2-kw</metric>
    <metric>output-mp-Schiedam-e-kw</metric>
    <metric>output-mp-Schiedam-h-kw</metric>
    <metric>output-mp-Schiedam-tpp</metric>
    <metric>output-mp-Groningen-ng-m3</metric>
    <metric>output-mp-Groningen-gg-m3</metric>
    <metric>output-mp-Groningen-h2-m3</metric>
    <metric>output-mp-Groningen-ng-kw</metric>
    <metric>output-mp-Groningen-gg-kw</metric>
    <metric>output-mp-Groningen-h2-kw</metric>
    <metric>output-mp-Groningen-e-kw</metric>
    <metric>output-mp-Groningen-h-kw</metric>
    <metric>output-mp-Groningen-tpp</metric>
    <metric>output-mp-Leek-ng-m3</metric>
    <metric>output-mp-Leek-gg-m3</metric>
    <metric>output-mp-Leek-h2-m3</metric>
    <metric>output-mp-Leek-ng-kw</metric>
    <metric>output-mp-Leek-gg-kw</metric>
    <metric>output-mp-Leek-h2-kw</metric>
    <metric>output-mp-Leek-e-kw</metric>
    <metric>output-mp-Leek-h-kw</metric>
    <metric>output-mp-Leek-tpp</metric>
    <metric>output-mp-Marum-ng-m3</metric>
    <metric>output-mp-Marum-gg-m3</metric>
    <metric>output-mp-Marum-h2-m3</metric>
    <metric>output-mp-Marum-ng-kw</metric>
    <metric>output-mp-Marum-gg-kw</metric>
    <metric>output-mp-Marum-h2-kw</metric>
    <metric>output-mp-Marum-e-kw</metric>
    <metric>output-mp-Marum-h-kw</metric>
    <metric>output-mp-Marum-tpp</metric>
    <metric>output-mp-Noordenveld-ng-m3</metric>
    <metric>output-mp-Noordenveld-gg-m3</metric>
    <metric>output-mp-Noordenveld-h2-m3</metric>
    <metric>output-mp-Noordenveld-ng-kw</metric>
    <metric>output-mp-Noordenveld-gg-kw</metric>
    <metric>output-mp-Noordenveld-h2-kw</metric>
    <metric>output-mp-Noordenveld-e-kw</metric>
    <metric>output-mp-Noordenveld-h-kw</metric>
    <metric>output-mp-Noordenveld-tpp</metric>
    <metric>output-mp-Haren-ng-m3</metric>
    <metric>output-mp-Haren-gg-m3</metric>
    <metric>output-mp-Haren-h2-m3</metric>
    <metric>output-mp-Haren-ng-kw</metric>
    <metric>output-mp-Haren-gg-kw</metric>
    <metric>output-mp-Haren-h2-kw</metric>
    <metric>output-mp-Haren-e-kw</metric>
    <metric>output-mp-Haren-h-kw</metric>
    <metric>output-mp-Haren-tpp</metric>
    <metric>output-mp-Emmen-ng-m3</metric>
    <metric>output-mp-Emmen-gg-m3</metric>
    <metric>output-mp-Emmen-h2-m3</metric>
    <metric>output-mp-Emmen-ng-kw</metric>
    <metric>output-mp-Emmen-gg-kw</metric>
    <metric>output-mp-Emmen-h2-kw</metric>
    <metric>output-mp-Emmen-e-kw</metric>
    <metric>output-mp-Emmen-h-kw</metric>
    <metric>output-mp-Emmen-tpp</metric>
    <metric>output-mp-Westerveld-ng-m3</metric>
    <metric>output-mp-Westerveld-gg-m3</metric>
    <metric>output-mp-Westerveld-h2-m3</metric>
    <metric>output-mp-Westerveld-ng-kw</metric>
    <metric>output-mp-Westerveld-gg-kw</metric>
    <metric>output-mp-Westerveld-h2-kw</metric>
    <metric>output-mp-Westerveld-e-kw</metric>
    <metric>output-mp-Westerveld-h-kw</metric>
    <metric>output-mp-Westerveld-tpp</metric>
    <metric>output-mp-Midden-Drenthe-ng-m3</metric>
    <metric>output-mp-Midden-Drenthe-gg-m3</metric>
    <metric>output-mp-Midden-Drenthe-h2-m3</metric>
    <metric>output-mp-Midden-Drenthe-ng-kw</metric>
    <metric>output-mp-Midden-Drenthe-gg-kw</metric>
    <metric>output-mp-Midden-Drenthe-h2-kw</metric>
    <metric>output-mp-Midden-Drenthe-e-kw</metric>
    <metric>output-mp-Midden-Drenthe-h-kw</metric>
    <metric>output-mp-Midden-Drenthe-tpp</metric>
    <metric>output-mp-ng-m3</metric>
    <metric>output-mp-gg-m3</metric>
    <metric>output-mp-h2-m3</metric>
    <metric>output-mp-ng-kw</metric>
    <metric>output-mp-gg-kw</metric>
    <metric>output-mp-h2-kw</metric>
    <metric>output-mp-e-kw</metric>
    <metric>output-mp-h-kw</metric>
    <metric>output-mp-Rotterdam-nh-ts</metric>
    <metric>output-mp-Groningen-nh-ts</metric>
    <metric>output-mp-Westerveld-nh-ts</metric>
    <metric>output-nh-thermal-system</metric>
    <metric>output-nl-ng</metric>
    <metric>output-nl-ae</metric>
    <metric>output-nl-gg</metric>
    <metric>output-nl-ht/mt</metric>
    <metric>output-nl-lt</metric>
    <metric>output-nl-h2</metric>
    <metric>output-nl-ins</metric>
    <enumeratedValueSet variable="mp-icons">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-low-ins-transition?">
      <value value="true"/>
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="national-h2-availability-ticks">
      <value value="15"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-nieuw-treshold-high">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="national-gg-potential-PJ">
      <value value="60"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-woz-treshold-high">
      <value value="500"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="national-h2-availability">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-cost-par">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-corp-treshold-med">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mp-top-n">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mp-transition-strategy">
      <value value="&quot;2&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-transition-duration">
      <value value="2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-woz-treshold-med">
      <value value="250"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="hs-labels">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-nieuw-treshold-med">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-dhc-treshold-med">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="hs-limited?">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="max-distance-heatsource">
      <value value="15"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mp-resource-percentage">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-ins-strategy1">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="national-transition-goal">
      <value value="250000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-corp-treshold-high">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-dhc-treshold-high">
      <value value="50"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="A_ins_strat_10" repetitions="10" runMetricsEveryStep="true">
    <setup>bs-setup</setup>
    <go>go</go>
    <metric>output-nl-tpp</metric>
    <metric>output-nl-ts</metric>
    <metric>output-nl-nh-tst</metric>
    <metric>output-nl-nh-it</metric>
    <metric>output-nl-nh-tf</metric>
    <metric>output-nl-kw</metric>
    <metric>output-nl-ng-kw</metric>
    <metric>output-nl-e-kw</metric>
    <metric>output-nl-h-kw</metric>
    <metric>output-nl-gg-kw</metric>
    <metric>output-nl-h2-kw</metric>
    <metric>output-nl-ng-m3</metric>
    <metric>output-nl-gg-m3</metric>
    <metric>output-nl-h2-m3</metric>
    <metric>output-mr-Abbenbroek-ng-m3</metric>
    <metric>output-mr-achterdrempt-ng-m3</metric>
    <metric>output-mr-alkmaar-ng-m3</metric>
    <metric>output-mr-angerlo-ng-m3</metric>
    <metric>output-mr-Apeldoorn-ng-m3</metric>
    <metric>output-mr-Assumburg-ng-m3</metric>
    <metric>output-mr-Axel-ng-m3</metric>
    <metric>output-mr-Baal-ng-m3</metric>
    <metric>output-mr-Belfeld-ng-m3</metric>
    <metric>output-mr-Bemelen-ng-m3</metric>
    <metric>output-mr-Best-ng-m3</metric>
    <metric>output-mr-Beverwijk-ng-m3</metric>
    <metric>output-mr-Birstum-ng-m3</metric>
    <metric>output-mr-Bleiswijk-ng-m3</metric>
    <metric>output-mr-Bornerbroek-ng-m3</metric>
    <metric>output-mr-Boxtel-ng-m3</metric>
    <metric>output-mr-DenKaat-ng-m3</metric>
    <metric>output-mr-Driehuis-ng-m3</metric>
    <metric>output-mr-Eext-ng-m3</metric>
    <metric>output-mr-Emmeloord-ng-m3</metric>
    <metric>output-mr-Enschede-ng-m3</metric>
    <metric>output-mr-Esveld-ng-m3</metric>
    <metric>output-mr-Ewijk-ng-m3</metric>
    <metric>output-mr-Gilze-ng-m3</metric>
    <metric>output-mr-Gravenpolder-ng-m3</metric>
    <metric>output-mr-Groenlo-ng-m3</metric>
    <metric>output-mr-Gronsveld-ng-m3</metric>
    <metric>output-mr-Haren-ng-m3</metric>
    <metric>output-mr-Heerhugowaard-ng-m3</metric>
    <metric>output-mr-Hengelo-ng-m3</metric>
    <metric>output-mr-Hilversum-ng-m3</metric>
    <metric>output-mr-Hoofddorp-ng-m3</metric>
    <metric>output-mr-Hoogezand-ng-m3</metric>
    <metric>output-mr-Ijsselmonde-ng-m3</metric>
    <metric>output-mr-Krimpenerwaard-ng-m3</metric>
    <metric>output-mr-Lambertschaag-ng-m3</metric>
    <metric>output-mr-Leusden-Zuid-ng-m3</metric>
    <metric>output-mr-Lingewaal-ng-m3</metric>
    <metric>output-mr-Lurkeers-ng-m3</metric>
    <metric>output-mr-Melick-ng-m3</metric>
    <metric>output-mr-Middelrode-ng-m3</metric>
    <metric>output-mr-Mierlo-ng-m3</metric>
    <metric>output-mr-Mill-ng-m3</metric>
    <metric>output-mr-Moergestel-ng-m3</metric>
    <metric>output-mr-Nederweert-ng-m3</metric>
    <metric>output-mr-Nijkerk-ng-m3</metric>
    <metric>output-mr-Nijland-ng-m3</metric>
    <metric>output-mr-Odijk-ng-m3</metric>
    <metric>output-mr-Ommeloop-ng-m3</metric>
    <metric>output-mr-Oosteind-ng-m3</metric>
    <metric>output-mr-Oostum-ng-m3</metric>
    <metric>output-mr-Opsterland-ng-m3</metric>
    <metric>output-mr-Oss-ng-m3</metric>
    <metric>output-mr-Ossendrecht-ng-m3</metric>
    <metric>output-mr-Oudverlaat-ng-m3</metric>
    <metric>output-mr-Reek-ng-m3</metric>
    <metric>output-mr-Reijerscop-ng-m3</metric>
    <metric>output-mr-Rijnsburg-ng-m3</metric>
    <metric>output-mr-Rijsbergen-ng-m3</metric>
    <metric>output-mr-Rijswijk-ng-m3</metric>
    <metric>output-mr-Sanderbout-ng-m3</metric>
    <metric>output-mr-Scheemda-ng-m3</metric>
    <metric>output-mr-Schinnen-ng-m3</metric>
    <metric>output-mr-Schuilenburg-ng-m3</metric>
    <metric>output-mr-Simpelveld-ng-m3</metric>
    <metric>output-mr-Sloten-ng-m3</metric>
    <metric>output-mr-tWoudt-ng-m3</metric>
    <metric>output-mr-Tiel-ng-m3</metric>
    <metric>output-mr-Valburg-ng-m3</metric>
    <metric>output-mr-Venray-ng-m3</metric>
    <metric>output-mr-Visvliet-ng-m3</metric>
    <metric>output-mr-Vlaardingen-ng-m3</metric>
    <metric>output-mr-Vondelingenplaat-ng-m3</metric>
    <metric>output-mr-Voorburg-ng-m3</metric>
    <metric>output-mr-Weesp-ng-m3</metric>
    <metric>output-mr-Westerbork-ng-m3</metric>
    <metric>output-mr-Wezep-ng-m3</metric>
    <metric>output-mr-Wijngaarden-ng-m3</metric>
    <metric>output-mr-Zaltbommel-ng-m3</metric>
    <metric>output-mr-Zegge-ng-m3</metric>
    <metric>output-mr-Zoeterwoude-ng-m3</metric>
    <metric>output-mr-Zuid-Kraayert-ng-m3</metric>
    <metric>output-mr-Zuideropgaande-ng-m3</metric>
    <metric>output-mr-Abbenbroek-gg-m3</metric>
    <metric>output-mr-Achterdrempt-gg-m3</metric>
    <metric>output-mr-Alkmaar-gg-m3</metric>
    <metric>output-mr-Angerlo-gg-m3</metric>
    <metric>output-mr-Apeldoorn-gg-m3</metric>
    <metric>output-mr-Assumburg-gg-m3</metric>
    <metric>output-mr-Axel-gg-m3</metric>
    <metric>output-mr-Baal-gg-m3</metric>
    <metric>output-mr-Belfeld-gg-m3</metric>
    <metric>output-mr-Bemelen-gg-m3</metric>
    <metric>output-mr-Best-gg-m3</metric>
    <metric>output-mr-Beverwijk-gg-m3</metric>
    <metric>output-mr-Birstum-gg-m3</metric>
    <metric>output-mr-Bleiswijk-gg-m3</metric>
    <metric>output-mr-Bornerbroek-gg-m3</metric>
    <metric>output-mr-Boxtel-gg-m3</metric>
    <metric>output-mr-DenKaat-gg-m3</metric>
    <metric>output-mr-Driehuis-gg-m3</metric>
    <metric>output-mr-Eext-gg-m3</metric>
    <metric>output-mr-Emmeloord-gg-m3</metric>
    <metric>output-mr-Enschede-gg-m3</metric>
    <metric>output-mr-Esveld-gg-m3</metric>
    <metric>output-mr-Ewijk-gg-m3</metric>
    <metric>output-mr-Gilze-gg-m3</metric>
    <metric>output-mr-Gravenpolder-gg-m3</metric>
    <metric>output-mr-Groenlo-gg-m3</metric>
    <metric>output-mr-Gronsveld-gg-m3</metric>
    <metric>output-mr-Haren-gg-m3</metric>
    <metric>output-mr-Heerhugowaard-gg-m3</metric>
    <metric>output-mr-Hengelo-gg-m3</metric>
    <metric>output-mr-Hilversum-gg-m3</metric>
    <metric>output-mr-Hoofddorp-gg-m3</metric>
    <metric>output-mr-Hoogezand-gg-m3</metric>
    <metric>output-mr-Ijsselmonde-gg-m3</metric>
    <metric>output-mr-Krimpenerwaard-gg-m3</metric>
    <metric>output-mr-Lambertschaag-gg-m3</metric>
    <metric>output-mr-Leusden-Zuid-gg-m3</metric>
    <metric>output-mr-Lingewaal-gg-m3</metric>
    <metric>output-mr-Lurkeers-gg-m3</metric>
    <metric>output-mr-Melick-gg-m3</metric>
    <metric>output-mr-Middelrode-gg-m3</metric>
    <metric>output-mr-Mierlo-gg-m3</metric>
    <metric>output-mr-Mill-gg-m3</metric>
    <metric>output-mr-Moergestel-gg-m3</metric>
    <metric>output-mr-Nederweert-gg-m3</metric>
    <metric>output-mr-Nijkerk-gg-m3</metric>
    <metric>output-mr-Nijland-gg-m3</metric>
    <metric>output-mr-Odijk-gg-m3</metric>
    <metric>output-mr-Ommeloop-gg-m3</metric>
    <metric>output-mr-Oosteind-gg-m3</metric>
    <metric>output-mr-Oostum-gg-m3</metric>
    <metric>output-mr-Opsterland-gg-m3</metric>
    <metric>output-mr-Oss-gg-m3</metric>
    <metric>output-mr-Ossendrecht-gg-m3</metric>
    <metric>output-mr-Oudverlaat-gg-m3</metric>
    <metric>output-mr-Reek-gg-m3</metric>
    <metric>output-mr-Reijerscop-gg-m3</metric>
    <metric>output-mr-Rijnsburg-gg-m3</metric>
    <metric>output-mr-Rijsbergen-gg-m3</metric>
    <metric>output-mr-Rijswijk-gg-m3</metric>
    <metric>output-mr-Sanderbout-gg-m3</metric>
    <metric>output-mr-Scheemda-gg-m3</metric>
    <metric>output-mr-Schinnen-gg-m3</metric>
    <metric>output-mr-Schuilenburg-gg-m3</metric>
    <metric>output-mr-Simpelveld-gg-m3</metric>
    <metric>output-mr-Sloten-gg-m3</metric>
    <metric>output-mr-tWoudt-gg-m3</metric>
    <metric>output-mr-Tiel-gg-m3</metric>
    <metric>output-mr-Valburg-gg-m3</metric>
    <metric>output-mr-Venray-gg-m3</metric>
    <metric>output-mr-Visvliet-gg-m3</metric>
    <metric>output-mr-Vlaardingen-gg-m3</metric>
    <metric>output-mr-Vondelingenplaat-gg-m3</metric>
    <metric>output-mr-Voorburg-gg-m3</metric>
    <metric>output-mr-Weesp-gg-m3</metric>
    <metric>output-mr-Westerbork-gg-m3</metric>
    <metric>output-mr-Wezep-gg-m3</metric>
    <metric>output-mr-Wijngaarden-gg-m3</metric>
    <metric>output-mr-Zaltbommel-gg-m3</metric>
    <metric>output-mr-Zegge-gg-m3</metric>
    <metric>output-mr-Zoeterwoude-gg-m3</metric>
    <metric>output-mr-Zuid-Kraayert-gg-m3</metric>
    <metric>output-mr-Zuideropgaande-gg-m3</metric>
    <metric>output-mr-Abbenbroek-h2-m3</metric>
    <metric>output-mr-Achterdrempt-h2-m3</metric>
    <metric>output-mr-Alkmaar-h2-m3</metric>
    <metric>output-mr-Angerlo-h2-m3</metric>
    <metric>output-mr-Apeldoorn-h2-m3</metric>
    <metric>output-mr-Assumburg-h2-m3</metric>
    <metric>output-mr-Axel-h2-m3</metric>
    <metric>output-mr-Baal-h2-m3</metric>
    <metric>output-mr-Belfeld-h2-m3</metric>
    <metric>output-mr-Bemelen-h2-m3</metric>
    <metric>output-mr-Best-h2-m3</metric>
    <metric>output-mr-Beverwijk-h2-m3</metric>
    <metric>output-mr-Birstum-h2-m3</metric>
    <metric>output-mr-Bleiswijk-h2-m3</metric>
    <metric>output-mr-Bornerbroek-h2-m3</metric>
    <metric>output-mr-Boxtel-h2-m3</metric>
    <metric>output-mr-DenKaat-h2-m3</metric>
    <metric>output-mr-Driehuis-h2-m3</metric>
    <metric>output-mr-Eext-h2-m3</metric>
    <metric>output-mr-Emmeloord-h2-m3</metric>
    <metric>output-mr-Enschede-h2-m3</metric>
    <metric>output-mr-Esveld-h2-m3</metric>
    <metric>output-mr-Ewijk-h2-m3</metric>
    <metric>output-mr-Gilze-h2-m3</metric>
    <metric>output-mr-Gravenpolder-h2-m3</metric>
    <metric>output-mr-Groenlo-h2-m3</metric>
    <metric>output-mr-Gronsveld-h2-m3</metric>
    <metric>output-mr-Haren-h2-m3</metric>
    <metric>output-mr-Heerhugowaard-h2-m3</metric>
    <metric>output-mr-Hengelo-h2-m3</metric>
    <metric>output-mr-Hilversum-h2-m3</metric>
    <metric>output-mr-Hoofddorp-h2-m3</metric>
    <metric>output-mr-Hoogezand-h2-m3</metric>
    <metric>output-mr-Ijsselmonde-h2-m3</metric>
    <metric>output-mr-Krimpenerwaard-h2-m3</metric>
    <metric>output-mr-Lambertschaag-h2-m3</metric>
    <metric>output-mr-Leusden-Zuid-h2-m3</metric>
    <metric>output-mr-Lingewaal-h2-m3</metric>
    <metric>output-mr-Lurkeers-h2-m3</metric>
    <metric>output-mr-Melick-h2-m3</metric>
    <metric>output-mr-Middelrode-h2-m3</metric>
    <metric>output-mr-Mierlo-h2-m3</metric>
    <metric>output-mr-Mill-h2-m3</metric>
    <metric>output-mr-Moergestel-h2-m3</metric>
    <metric>output-mr-Nederweert-h2-m3</metric>
    <metric>output-mr-Nijkerk-h2-m3</metric>
    <metric>output-mr-Nijland-h2-m3</metric>
    <metric>output-mr-Odijk-h2-m3</metric>
    <metric>output-mr-Ommeloop-h2-m3</metric>
    <metric>output-mr-Oosteind-h2-m3</metric>
    <metric>output-mr-Oostum-h2-m3</metric>
    <metric>output-mr-Opsterland-h2-m3</metric>
    <metric>output-mr-Oss-h2-m3</metric>
    <metric>output-mr-Ossendrecht-h2-m3</metric>
    <metric>output-mr-Oudverlaat-h2-m3</metric>
    <metric>output-mr-Reek-h2-m3</metric>
    <metric>output-mr-Reijerscop-h2-m3</metric>
    <metric>output-mr-Rijnsburg-h2-m3</metric>
    <metric>output-mr-Rijsbergen-h2-m3</metric>
    <metric>output-mr-Rijswijk-h2-m3</metric>
    <metric>output-mr-Sanderbout-h2-m3</metric>
    <metric>output-mr-Scheemda-h2-m3</metric>
    <metric>output-mr-Schinnen-h2-m3</metric>
    <metric>output-mr-Schuilenburg-h2-m3</metric>
    <metric>output-mr-Simpelveld-h2-m3</metric>
    <metric>output-mr-Sloten-h2-m3</metric>
    <metric>output-mr-tWoudt-h2-m3</metric>
    <metric>output-mr-Tiel-h2-m3</metric>
    <metric>output-mr-Valburg-h2-m3</metric>
    <metric>output-mr-Venray-h2-m3</metric>
    <metric>output-mr-Visvliet-h2-m3</metric>
    <metric>output-mr-Vlaardingen-h2-m3</metric>
    <metric>output-mr-Vondelingenplaat-h2-m3</metric>
    <metric>output-mr-Voorburg-h2-m3</metric>
    <metric>output-mr-Weesp-h2-m3</metric>
    <metric>output-mr-Westerbork-h2-m3</metric>
    <metric>output-mr-Wezep-h2-m3</metric>
    <metric>output-mr-Wijngaarden-h2-m3</metric>
    <metric>output-mr-Zaltbommel-h2-m3</metric>
    <metric>output-mr-Zegge-h2-m3</metric>
    <metric>output-mr-Zoeterwoude-h2-m3</metric>
    <metric>output-mr-Zuid-Kraayert-h2-m3</metric>
    <metric>output-mr-Zuideropgaande-h2-m3</metric>
    <metric>output-mr-Vlaardingen-ng-kw</metric>
    <metric>output-mr-Vlaardingen-gg-kw</metric>
    <metric>output-mr-Vlaardingen-h2-kw</metric>
    <metric>output-mr-Vlaardingen-e-kw</metric>
    <metric>output-mr-Vlaardingen-h-kw</metric>
    <metric>output-mr-Haren-ng-kw</metric>
    <metric>output-mr-Haren-gg-kw</metric>
    <metric>output-mr-Haren-h2-kw</metric>
    <metric>output-mr-Haren-e-kw</metric>
    <metric>output-mr-Haren-h-kw</metric>
    <metric>output-mr-Westerbork-ng-kw</metric>
    <metric>output-mr-Westerbork-gg-kw</metric>
    <metric>output-mr-Westerbork-h2-kw</metric>
    <metric>output-mr-Westerbork-e-kw</metric>
    <metric>output-mr-Westerbork-h-kw</metric>
    <metric>output-mr-Vlaardingen-tpp</metric>
    <metric>output-mr-Haren-tpp</metric>
    <metric>output-mr-Westerbork-tpp</metric>
    <metric>output-mp-Rotterdam-ng-m3</metric>
    <metric>output-mp-Rotterdam-gg-m3</metric>
    <metric>output-mp-Rotterdam-h2-m3</metric>
    <metric>output-mp-Rotterdam-ng-kw</metric>
    <metric>output-mp-Rotterdam-gg-kw</metric>
    <metric>output-mp-Rotterdam-h2-kw</metric>
    <metric>output-mp-Rotterdam-e-kw</metric>
    <metric>output-mp-Rotterdam-h-kw</metric>
    <metric>output-mp-Rotterdam-tpp</metric>
    <metric>output-mp-Vlaardingen-ng-m3</metric>
    <metric>output-mp-Vlaardingen-gg-m3</metric>
    <metric>output-mp-Vlaardingen-h2-m3</metric>
    <metric>output-mp-Vlaardingen-ng-kw</metric>
    <metric>output-mp-Vlaardingen-gg-kw</metric>
    <metric>output-mp-Vlaardingen-h2-kw</metric>
    <metric>output-mp-Vlaardingen-e-kw</metric>
    <metric>output-mp-Vlaardingen-h-kw</metric>
    <metric>output-mp-Vlaardingen-tpp</metric>
    <metric>output-mp-Maassluis-ng-m3</metric>
    <metric>output-mp-Maassluis-gg-m3</metric>
    <metric>output-mp-Maassluis-h2-m3</metric>
    <metric>output-mp-Maassluis-ng-kw</metric>
    <metric>output-mp-Maassluis-gg-kw</metric>
    <metric>output-mp-Maassluis-h2-kw</metric>
    <metric>output-mp-Maassluis-e-kw</metric>
    <metric>output-mp-Maassluis-h-kw</metric>
    <metric>output-mp-Maassluis-tpp</metric>
    <metric>output-mp-Schiedam-ng-m3</metric>
    <metric>output-mp-Schiedam-gg-m3</metric>
    <metric>output-mp-Schiedam-h2-m3</metric>
    <metric>output-mp-Schiedam-ng-kw</metric>
    <metric>output-mp-Schiedam-gg-kw</metric>
    <metric>output-mp-Schiedam-h2-kw</metric>
    <metric>output-mp-Schiedam-e-kw</metric>
    <metric>output-mp-Schiedam-h-kw</metric>
    <metric>output-mp-Schiedam-tpp</metric>
    <metric>output-mp-Groningen-ng-m3</metric>
    <metric>output-mp-Groningen-gg-m3</metric>
    <metric>output-mp-Groningen-h2-m3</metric>
    <metric>output-mp-Groningen-ng-kw</metric>
    <metric>output-mp-Groningen-gg-kw</metric>
    <metric>output-mp-Groningen-h2-kw</metric>
    <metric>output-mp-Groningen-e-kw</metric>
    <metric>output-mp-Groningen-h-kw</metric>
    <metric>output-mp-Groningen-tpp</metric>
    <metric>output-mp-Leek-ng-m3</metric>
    <metric>output-mp-Leek-gg-m3</metric>
    <metric>output-mp-Leek-h2-m3</metric>
    <metric>output-mp-Leek-ng-kw</metric>
    <metric>output-mp-Leek-gg-kw</metric>
    <metric>output-mp-Leek-h2-kw</metric>
    <metric>output-mp-Leek-e-kw</metric>
    <metric>output-mp-Leek-h-kw</metric>
    <metric>output-mp-Leek-tpp</metric>
    <metric>output-mp-Marum-ng-m3</metric>
    <metric>output-mp-Marum-gg-m3</metric>
    <metric>output-mp-Marum-h2-m3</metric>
    <metric>output-mp-Marum-ng-kw</metric>
    <metric>output-mp-Marum-gg-kw</metric>
    <metric>output-mp-Marum-h2-kw</metric>
    <metric>output-mp-Marum-e-kw</metric>
    <metric>output-mp-Marum-h-kw</metric>
    <metric>output-mp-Marum-tpp</metric>
    <metric>output-mp-Noordenveld-ng-m3</metric>
    <metric>output-mp-Noordenveld-gg-m3</metric>
    <metric>output-mp-Noordenveld-h2-m3</metric>
    <metric>output-mp-Noordenveld-ng-kw</metric>
    <metric>output-mp-Noordenveld-gg-kw</metric>
    <metric>output-mp-Noordenveld-h2-kw</metric>
    <metric>output-mp-Noordenveld-e-kw</metric>
    <metric>output-mp-Noordenveld-h-kw</metric>
    <metric>output-mp-Noordenveld-tpp</metric>
    <metric>output-mp-Haren-ng-m3</metric>
    <metric>output-mp-Haren-gg-m3</metric>
    <metric>output-mp-Haren-h2-m3</metric>
    <metric>output-mp-Haren-ng-kw</metric>
    <metric>output-mp-Haren-gg-kw</metric>
    <metric>output-mp-Haren-h2-kw</metric>
    <metric>output-mp-Haren-e-kw</metric>
    <metric>output-mp-Haren-h-kw</metric>
    <metric>output-mp-Haren-tpp</metric>
    <metric>output-mp-Emmen-ng-m3</metric>
    <metric>output-mp-Emmen-gg-m3</metric>
    <metric>output-mp-Emmen-h2-m3</metric>
    <metric>output-mp-Emmen-ng-kw</metric>
    <metric>output-mp-Emmen-gg-kw</metric>
    <metric>output-mp-Emmen-h2-kw</metric>
    <metric>output-mp-Emmen-e-kw</metric>
    <metric>output-mp-Emmen-h-kw</metric>
    <metric>output-mp-Emmen-tpp</metric>
    <metric>output-mp-Westerveld-ng-m3</metric>
    <metric>output-mp-Westerveld-gg-m3</metric>
    <metric>output-mp-Westerveld-h2-m3</metric>
    <metric>output-mp-Westerveld-ng-kw</metric>
    <metric>output-mp-Westerveld-gg-kw</metric>
    <metric>output-mp-Westerveld-h2-kw</metric>
    <metric>output-mp-Westerveld-e-kw</metric>
    <metric>output-mp-Westerveld-h-kw</metric>
    <metric>output-mp-Westerveld-tpp</metric>
    <metric>output-mp-Midden-Drenthe-ng-m3</metric>
    <metric>output-mp-Midden-Drenthe-gg-m3</metric>
    <metric>output-mp-Midden-Drenthe-h2-m3</metric>
    <metric>output-mp-Midden-Drenthe-ng-kw</metric>
    <metric>output-mp-Midden-Drenthe-gg-kw</metric>
    <metric>output-mp-Midden-Drenthe-h2-kw</metric>
    <metric>output-mp-Midden-Drenthe-e-kw</metric>
    <metric>output-mp-Midden-Drenthe-h-kw</metric>
    <metric>output-mp-Midden-Drenthe-tpp</metric>
    <metric>output-mp-ng-m3</metric>
    <metric>output-mp-gg-m3</metric>
    <metric>output-mp-h2-m3</metric>
    <metric>output-mp-ng-kw</metric>
    <metric>output-mp-gg-kw</metric>
    <metric>output-mp-h2-kw</metric>
    <metric>output-mp-e-kw</metric>
    <metric>output-mp-h-kw</metric>
    <metric>output-mp-Rotterdam-nh-ts</metric>
    <metric>output-mp-Groningen-nh-ts</metric>
    <metric>output-mp-Westerveld-nh-ts</metric>
    <metric>output-nh-thermal-system</metric>
    <metric>output-nl-ng</metric>
    <metric>output-nl-ae</metric>
    <metric>output-nl-gg</metric>
    <metric>output-nl-ht/mt</metric>
    <metric>output-nl-lt</metric>
    <metric>output-nl-h2</metric>
    <metric>output-nl-ins</metric>
    <enumeratedValueSet variable="mp-icons">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-low-ins-transition?">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="national-h2-availability-ticks">
      <value value="15"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-nieuw-treshold-high">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="national-gg-potential-PJ">
      <value value="60"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-woz-treshold-high">
      <value value="500"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="national-h2-availability">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-cost-par">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-corp-treshold-med">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mp-top-n">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mp-transition-strategy">
      <value value="&quot;2&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-transition-duration">
      <value value="2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-woz-treshold-med">
      <value value="250"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="hs-labels">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-nieuw-treshold-med">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-dhc-treshold-med">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="hs-limited?">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="max-distance-heatsource">
      <value value="15"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mp-resource-percentage">
      <value value="10"/>
    </enumeratedValueSet>
    <steppedValueSet variable="nh-ins-strategy1" first="0" step="10" last="80"/>
    <enumeratedValueSet variable="national-transition-goal">
      <value value="250000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-corp-treshold-high">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-dhc-treshold-high">
      <value value="50"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="A_lim_hs_10" repetitions="10" runMetricsEveryStep="true">
    <setup>bs-setup</setup>
    <go>go</go>
    <metric>output-nl-tpp</metric>
    <metric>output-nl-ts</metric>
    <metric>output-nl-nh-tst</metric>
    <metric>output-nl-nh-it</metric>
    <metric>output-nl-nh-tf</metric>
    <metric>output-nl-kw</metric>
    <metric>output-nl-ng-kw</metric>
    <metric>output-nl-e-kw</metric>
    <metric>output-nl-h-kw</metric>
    <metric>output-nl-gg-kw</metric>
    <metric>output-nl-h2-kw</metric>
    <metric>output-nl-ng-m3</metric>
    <metric>output-nl-gg-m3</metric>
    <metric>output-nl-h2-m3</metric>
    <metric>output-mr-Abbenbroek-ng-m3</metric>
    <metric>output-mr-achterdrempt-ng-m3</metric>
    <metric>output-mr-alkmaar-ng-m3</metric>
    <metric>output-mr-angerlo-ng-m3</metric>
    <metric>output-mr-Apeldoorn-ng-m3</metric>
    <metric>output-mr-Assumburg-ng-m3</metric>
    <metric>output-mr-Axel-ng-m3</metric>
    <metric>output-mr-Baal-ng-m3</metric>
    <metric>output-mr-Belfeld-ng-m3</metric>
    <metric>output-mr-Bemelen-ng-m3</metric>
    <metric>output-mr-Best-ng-m3</metric>
    <metric>output-mr-Beverwijk-ng-m3</metric>
    <metric>output-mr-Birstum-ng-m3</metric>
    <metric>output-mr-Bleiswijk-ng-m3</metric>
    <metric>output-mr-Bornerbroek-ng-m3</metric>
    <metric>output-mr-Boxtel-ng-m3</metric>
    <metric>output-mr-DenKaat-ng-m3</metric>
    <metric>output-mr-Driehuis-ng-m3</metric>
    <metric>output-mr-Eext-ng-m3</metric>
    <metric>output-mr-Emmeloord-ng-m3</metric>
    <metric>output-mr-Enschede-ng-m3</metric>
    <metric>output-mr-Esveld-ng-m3</metric>
    <metric>output-mr-Ewijk-ng-m3</metric>
    <metric>output-mr-Gilze-ng-m3</metric>
    <metric>output-mr-Gravenpolder-ng-m3</metric>
    <metric>output-mr-Groenlo-ng-m3</metric>
    <metric>output-mr-Gronsveld-ng-m3</metric>
    <metric>output-mr-Haren-ng-m3</metric>
    <metric>output-mr-Heerhugowaard-ng-m3</metric>
    <metric>output-mr-Hengelo-ng-m3</metric>
    <metric>output-mr-Hilversum-ng-m3</metric>
    <metric>output-mr-Hoofddorp-ng-m3</metric>
    <metric>output-mr-Hoogezand-ng-m3</metric>
    <metric>output-mr-Ijsselmonde-ng-m3</metric>
    <metric>output-mr-Krimpenerwaard-ng-m3</metric>
    <metric>output-mr-Lambertschaag-ng-m3</metric>
    <metric>output-mr-Leusden-Zuid-ng-m3</metric>
    <metric>output-mr-Lingewaal-ng-m3</metric>
    <metric>output-mr-Lurkeers-ng-m3</metric>
    <metric>output-mr-Melick-ng-m3</metric>
    <metric>output-mr-Middelrode-ng-m3</metric>
    <metric>output-mr-Mierlo-ng-m3</metric>
    <metric>output-mr-Mill-ng-m3</metric>
    <metric>output-mr-Moergestel-ng-m3</metric>
    <metric>output-mr-Nederweert-ng-m3</metric>
    <metric>output-mr-Nijkerk-ng-m3</metric>
    <metric>output-mr-Nijland-ng-m3</metric>
    <metric>output-mr-Odijk-ng-m3</metric>
    <metric>output-mr-Ommeloop-ng-m3</metric>
    <metric>output-mr-Oosteind-ng-m3</metric>
    <metric>output-mr-Oostum-ng-m3</metric>
    <metric>output-mr-Opsterland-ng-m3</metric>
    <metric>output-mr-Oss-ng-m3</metric>
    <metric>output-mr-Ossendrecht-ng-m3</metric>
    <metric>output-mr-Oudverlaat-ng-m3</metric>
    <metric>output-mr-Reek-ng-m3</metric>
    <metric>output-mr-Reijerscop-ng-m3</metric>
    <metric>output-mr-Rijnsburg-ng-m3</metric>
    <metric>output-mr-Rijsbergen-ng-m3</metric>
    <metric>output-mr-Rijswijk-ng-m3</metric>
    <metric>output-mr-Sanderbout-ng-m3</metric>
    <metric>output-mr-Scheemda-ng-m3</metric>
    <metric>output-mr-Schinnen-ng-m3</metric>
    <metric>output-mr-Schuilenburg-ng-m3</metric>
    <metric>output-mr-Simpelveld-ng-m3</metric>
    <metric>output-mr-Sloten-ng-m3</metric>
    <metric>output-mr-tWoudt-ng-m3</metric>
    <metric>output-mr-Tiel-ng-m3</metric>
    <metric>output-mr-Valburg-ng-m3</metric>
    <metric>output-mr-Venray-ng-m3</metric>
    <metric>output-mr-Visvliet-ng-m3</metric>
    <metric>output-mr-Vlaardingen-ng-m3</metric>
    <metric>output-mr-Vondelingenplaat-ng-m3</metric>
    <metric>output-mr-Voorburg-ng-m3</metric>
    <metric>output-mr-Weesp-ng-m3</metric>
    <metric>output-mr-Westerbork-ng-m3</metric>
    <metric>output-mr-Wezep-ng-m3</metric>
    <metric>output-mr-Wijngaarden-ng-m3</metric>
    <metric>output-mr-Zaltbommel-ng-m3</metric>
    <metric>output-mr-Zegge-ng-m3</metric>
    <metric>output-mr-Zoeterwoude-ng-m3</metric>
    <metric>output-mr-Zuid-Kraayert-ng-m3</metric>
    <metric>output-mr-Zuideropgaande-ng-m3</metric>
    <metric>output-mr-Abbenbroek-gg-m3</metric>
    <metric>output-mr-Achterdrempt-gg-m3</metric>
    <metric>output-mr-Alkmaar-gg-m3</metric>
    <metric>output-mr-Angerlo-gg-m3</metric>
    <metric>output-mr-Apeldoorn-gg-m3</metric>
    <metric>output-mr-Assumburg-gg-m3</metric>
    <metric>output-mr-Axel-gg-m3</metric>
    <metric>output-mr-Baal-gg-m3</metric>
    <metric>output-mr-Belfeld-gg-m3</metric>
    <metric>output-mr-Bemelen-gg-m3</metric>
    <metric>output-mr-Best-gg-m3</metric>
    <metric>output-mr-Beverwijk-gg-m3</metric>
    <metric>output-mr-Birstum-gg-m3</metric>
    <metric>output-mr-Bleiswijk-gg-m3</metric>
    <metric>output-mr-Bornerbroek-gg-m3</metric>
    <metric>output-mr-Boxtel-gg-m3</metric>
    <metric>output-mr-DenKaat-gg-m3</metric>
    <metric>output-mr-Driehuis-gg-m3</metric>
    <metric>output-mr-Eext-gg-m3</metric>
    <metric>output-mr-Emmeloord-gg-m3</metric>
    <metric>output-mr-Enschede-gg-m3</metric>
    <metric>output-mr-Esveld-gg-m3</metric>
    <metric>output-mr-Ewijk-gg-m3</metric>
    <metric>output-mr-Gilze-gg-m3</metric>
    <metric>output-mr-Gravenpolder-gg-m3</metric>
    <metric>output-mr-Groenlo-gg-m3</metric>
    <metric>output-mr-Gronsveld-gg-m3</metric>
    <metric>output-mr-Haren-gg-m3</metric>
    <metric>output-mr-Heerhugowaard-gg-m3</metric>
    <metric>output-mr-Hengelo-gg-m3</metric>
    <metric>output-mr-Hilversum-gg-m3</metric>
    <metric>output-mr-Hoofddorp-gg-m3</metric>
    <metric>output-mr-Hoogezand-gg-m3</metric>
    <metric>output-mr-Ijsselmonde-gg-m3</metric>
    <metric>output-mr-Krimpenerwaard-gg-m3</metric>
    <metric>output-mr-Lambertschaag-gg-m3</metric>
    <metric>output-mr-Leusden-Zuid-gg-m3</metric>
    <metric>output-mr-Lingewaal-gg-m3</metric>
    <metric>output-mr-Lurkeers-gg-m3</metric>
    <metric>output-mr-Melick-gg-m3</metric>
    <metric>output-mr-Middelrode-gg-m3</metric>
    <metric>output-mr-Mierlo-gg-m3</metric>
    <metric>output-mr-Mill-gg-m3</metric>
    <metric>output-mr-Moergestel-gg-m3</metric>
    <metric>output-mr-Nederweert-gg-m3</metric>
    <metric>output-mr-Nijkerk-gg-m3</metric>
    <metric>output-mr-Nijland-gg-m3</metric>
    <metric>output-mr-Odijk-gg-m3</metric>
    <metric>output-mr-Ommeloop-gg-m3</metric>
    <metric>output-mr-Oosteind-gg-m3</metric>
    <metric>output-mr-Oostum-gg-m3</metric>
    <metric>output-mr-Opsterland-gg-m3</metric>
    <metric>output-mr-Oss-gg-m3</metric>
    <metric>output-mr-Ossendrecht-gg-m3</metric>
    <metric>output-mr-Oudverlaat-gg-m3</metric>
    <metric>output-mr-Reek-gg-m3</metric>
    <metric>output-mr-Reijerscop-gg-m3</metric>
    <metric>output-mr-Rijnsburg-gg-m3</metric>
    <metric>output-mr-Rijsbergen-gg-m3</metric>
    <metric>output-mr-Rijswijk-gg-m3</metric>
    <metric>output-mr-Sanderbout-gg-m3</metric>
    <metric>output-mr-Scheemda-gg-m3</metric>
    <metric>output-mr-Schinnen-gg-m3</metric>
    <metric>output-mr-Schuilenburg-gg-m3</metric>
    <metric>output-mr-Simpelveld-gg-m3</metric>
    <metric>output-mr-Sloten-gg-m3</metric>
    <metric>output-mr-tWoudt-gg-m3</metric>
    <metric>output-mr-Tiel-gg-m3</metric>
    <metric>output-mr-Valburg-gg-m3</metric>
    <metric>output-mr-Venray-gg-m3</metric>
    <metric>output-mr-Visvliet-gg-m3</metric>
    <metric>output-mr-Vlaardingen-gg-m3</metric>
    <metric>output-mr-Vondelingenplaat-gg-m3</metric>
    <metric>output-mr-Voorburg-gg-m3</metric>
    <metric>output-mr-Weesp-gg-m3</metric>
    <metric>output-mr-Westerbork-gg-m3</metric>
    <metric>output-mr-Wezep-gg-m3</metric>
    <metric>output-mr-Wijngaarden-gg-m3</metric>
    <metric>output-mr-Zaltbommel-gg-m3</metric>
    <metric>output-mr-Zegge-gg-m3</metric>
    <metric>output-mr-Zoeterwoude-gg-m3</metric>
    <metric>output-mr-Zuid-Kraayert-gg-m3</metric>
    <metric>output-mr-Zuideropgaande-gg-m3</metric>
    <metric>output-mr-Abbenbroek-h2-m3</metric>
    <metric>output-mr-Achterdrempt-h2-m3</metric>
    <metric>output-mr-Alkmaar-h2-m3</metric>
    <metric>output-mr-Angerlo-h2-m3</metric>
    <metric>output-mr-Apeldoorn-h2-m3</metric>
    <metric>output-mr-Assumburg-h2-m3</metric>
    <metric>output-mr-Axel-h2-m3</metric>
    <metric>output-mr-Baal-h2-m3</metric>
    <metric>output-mr-Belfeld-h2-m3</metric>
    <metric>output-mr-Bemelen-h2-m3</metric>
    <metric>output-mr-Best-h2-m3</metric>
    <metric>output-mr-Beverwijk-h2-m3</metric>
    <metric>output-mr-Birstum-h2-m3</metric>
    <metric>output-mr-Bleiswijk-h2-m3</metric>
    <metric>output-mr-Bornerbroek-h2-m3</metric>
    <metric>output-mr-Boxtel-h2-m3</metric>
    <metric>output-mr-DenKaat-h2-m3</metric>
    <metric>output-mr-Driehuis-h2-m3</metric>
    <metric>output-mr-Eext-h2-m3</metric>
    <metric>output-mr-Emmeloord-h2-m3</metric>
    <metric>output-mr-Enschede-h2-m3</metric>
    <metric>output-mr-Esveld-h2-m3</metric>
    <metric>output-mr-Ewijk-h2-m3</metric>
    <metric>output-mr-Gilze-h2-m3</metric>
    <metric>output-mr-Gravenpolder-h2-m3</metric>
    <metric>output-mr-Groenlo-h2-m3</metric>
    <metric>output-mr-Gronsveld-h2-m3</metric>
    <metric>output-mr-Haren-h2-m3</metric>
    <metric>output-mr-Heerhugowaard-h2-m3</metric>
    <metric>output-mr-Hengelo-h2-m3</metric>
    <metric>output-mr-Hilversum-h2-m3</metric>
    <metric>output-mr-Hoofddorp-h2-m3</metric>
    <metric>output-mr-Hoogezand-h2-m3</metric>
    <metric>output-mr-Ijsselmonde-h2-m3</metric>
    <metric>output-mr-Krimpenerwaard-h2-m3</metric>
    <metric>output-mr-Lambertschaag-h2-m3</metric>
    <metric>output-mr-Leusden-Zuid-h2-m3</metric>
    <metric>output-mr-Lingewaal-h2-m3</metric>
    <metric>output-mr-Lurkeers-h2-m3</metric>
    <metric>output-mr-Melick-h2-m3</metric>
    <metric>output-mr-Middelrode-h2-m3</metric>
    <metric>output-mr-Mierlo-h2-m3</metric>
    <metric>output-mr-Mill-h2-m3</metric>
    <metric>output-mr-Moergestel-h2-m3</metric>
    <metric>output-mr-Nederweert-h2-m3</metric>
    <metric>output-mr-Nijkerk-h2-m3</metric>
    <metric>output-mr-Nijland-h2-m3</metric>
    <metric>output-mr-Odijk-h2-m3</metric>
    <metric>output-mr-Ommeloop-h2-m3</metric>
    <metric>output-mr-Oosteind-h2-m3</metric>
    <metric>output-mr-Oostum-h2-m3</metric>
    <metric>output-mr-Opsterland-h2-m3</metric>
    <metric>output-mr-Oss-h2-m3</metric>
    <metric>output-mr-Ossendrecht-h2-m3</metric>
    <metric>output-mr-Oudverlaat-h2-m3</metric>
    <metric>output-mr-Reek-h2-m3</metric>
    <metric>output-mr-Reijerscop-h2-m3</metric>
    <metric>output-mr-Rijnsburg-h2-m3</metric>
    <metric>output-mr-Rijsbergen-h2-m3</metric>
    <metric>output-mr-Rijswijk-h2-m3</metric>
    <metric>output-mr-Sanderbout-h2-m3</metric>
    <metric>output-mr-Scheemda-h2-m3</metric>
    <metric>output-mr-Schinnen-h2-m3</metric>
    <metric>output-mr-Schuilenburg-h2-m3</metric>
    <metric>output-mr-Simpelveld-h2-m3</metric>
    <metric>output-mr-Sloten-h2-m3</metric>
    <metric>output-mr-tWoudt-h2-m3</metric>
    <metric>output-mr-Tiel-h2-m3</metric>
    <metric>output-mr-Valburg-h2-m3</metric>
    <metric>output-mr-Venray-h2-m3</metric>
    <metric>output-mr-Visvliet-h2-m3</metric>
    <metric>output-mr-Vlaardingen-h2-m3</metric>
    <metric>output-mr-Vondelingenplaat-h2-m3</metric>
    <metric>output-mr-Voorburg-h2-m3</metric>
    <metric>output-mr-Weesp-h2-m3</metric>
    <metric>output-mr-Westerbork-h2-m3</metric>
    <metric>output-mr-Wezep-h2-m3</metric>
    <metric>output-mr-Wijngaarden-h2-m3</metric>
    <metric>output-mr-Zaltbommel-h2-m3</metric>
    <metric>output-mr-Zegge-h2-m3</metric>
    <metric>output-mr-Zoeterwoude-h2-m3</metric>
    <metric>output-mr-Zuid-Kraayert-h2-m3</metric>
    <metric>output-mr-Zuideropgaande-h2-m3</metric>
    <metric>output-mr-Vlaardingen-ng-kw</metric>
    <metric>output-mr-Vlaardingen-gg-kw</metric>
    <metric>output-mr-Vlaardingen-h2-kw</metric>
    <metric>output-mr-Vlaardingen-e-kw</metric>
    <metric>output-mr-Vlaardingen-h-kw</metric>
    <metric>output-mr-Haren-ng-kw</metric>
    <metric>output-mr-Haren-gg-kw</metric>
    <metric>output-mr-Haren-h2-kw</metric>
    <metric>output-mr-Haren-e-kw</metric>
    <metric>output-mr-Haren-h-kw</metric>
    <metric>output-mr-Westerbork-ng-kw</metric>
    <metric>output-mr-Westerbork-gg-kw</metric>
    <metric>output-mr-Westerbork-h2-kw</metric>
    <metric>output-mr-Westerbork-e-kw</metric>
    <metric>output-mr-Westerbork-h-kw</metric>
    <metric>output-mr-Vlaardingen-tpp</metric>
    <metric>output-mr-Haren-tpp</metric>
    <metric>output-mr-Westerbork-tpp</metric>
    <metric>output-mp-Rotterdam-ng-m3</metric>
    <metric>output-mp-Rotterdam-gg-m3</metric>
    <metric>output-mp-Rotterdam-h2-m3</metric>
    <metric>output-mp-Rotterdam-ng-kw</metric>
    <metric>output-mp-Rotterdam-gg-kw</metric>
    <metric>output-mp-Rotterdam-h2-kw</metric>
    <metric>output-mp-Rotterdam-e-kw</metric>
    <metric>output-mp-Rotterdam-h-kw</metric>
    <metric>output-mp-Rotterdam-tpp</metric>
    <metric>output-mp-Vlaardingen-ng-m3</metric>
    <metric>output-mp-Vlaardingen-gg-m3</metric>
    <metric>output-mp-Vlaardingen-h2-m3</metric>
    <metric>output-mp-Vlaardingen-ng-kw</metric>
    <metric>output-mp-Vlaardingen-gg-kw</metric>
    <metric>output-mp-Vlaardingen-h2-kw</metric>
    <metric>output-mp-Vlaardingen-e-kw</metric>
    <metric>output-mp-Vlaardingen-h-kw</metric>
    <metric>output-mp-Vlaardingen-tpp</metric>
    <metric>output-mp-Maassluis-ng-m3</metric>
    <metric>output-mp-Maassluis-gg-m3</metric>
    <metric>output-mp-Maassluis-h2-m3</metric>
    <metric>output-mp-Maassluis-ng-kw</metric>
    <metric>output-mp-Maassluis-gg-kw</metric>
    <metric>output-mp-Maassluis-h2-kw</metric>
    <metric>output-mp-Maassluis-e-kw</metric>
    <metric>output-mp-Maassluis-h-kw</metric>
    <metric>output-mp-Maassluis-tpp</metric>
    <metric>output-mp-Schiedam-ng-m3</metric>
    <metric>output-mp-Schiedam-gg-m3</metric>
    <metric>output-mp-Schiedam-h2-m3</metric>
    <metric>output-mp-Schiedam-ng-kw</metric>
    <metric>output-mp-Schiedam-gg-kw</metric>
    <metric>output-mp-Schiedam-h2-kw</metric>
    <metric>output-mp-Schiedam-e-kw</metric>
    <metric>output-mp-Schiedam-h-kw</metric>
    <metric>output-mp-Schiedam-tpp</metric>
    <metric>output-mp-Groningen-ng-m3</metric>
    <metric>output-mp-Groningen-gg-m3</metric>
    <metric>output-mp-Groningen-h2-m3</metric>
    <metric>output-mp-Groningen-ng-kw</metric>
    <metric>output-mp-Groningen-gg-kw</metric>
    <metric>output-mp-Groningen-h2-kw</metric>
    <metric>output-mp-Groningen-e-kw</metric>
    <metric>output-mp-Groningen-h-kw</metric>
    <metric>output-mp-Groningen-tpp</metric>
    <metric>output-mp-Leek-ng-m3</metric>
    <metric>output-mp-Leek-gg-m3</metric>
    <metric>output-mp-Leek-h2-m3</metric>
    <metric>output-mp-Leek-ng-kw</metric>
    <metric>output-mp-Leek-gg-kw</metric>
    <metric>output-mp-Leek-h2-kw</metric>
    <metric>output-mp-Leek-e-kw</metric>
    <metric>output-mp-Leek-h-kw</metric>
    <metric>output-mp-Leek-tpp</metric>
    <metric>output-mp-Marum-ng-m3</metric>
    <metric>output-mp-Marum-gg-m3</metric>
    <metric>output-mp-Marum-h2-m3</metric>
    <metric>output-mp-Marum-ng-kw</metric>
    <metric>output-mp-Marum-gg-kw</metric>
    <metric>output-mp-Marum-h2-kw</metric>
    <metric>output-mp-Marum-e-kw</metric>
    <metric>output-mp-Marum-h-kw</metric>
    <metric>output-mp-Marum-tpp</metric>
    <metric>output-mp-Noordenveld-ng-m3</metric>
    <metric>output-mp-Noordenveld-gg-m3</metric>
    <metric>output-mp-Noordenveld-h2-m3</metric>
    <metric>output-mp-Noordenveld-ng-kw</metric>
    <metric>output-mp-Noordenveld-gg-kw</metric>
    <metric>output-mp-Noordenveld-h2-kw</metric>
    <metric>output-mp-Noordenveld-e-kw</metric>
    <metric>output-mp-Noordenveld-h-kw</metric>
    <metric>output-mp-Noordenveld-tpp</metric>
    <metric>output-mp-Haren-ng-m3</metric>
    <metric>output-mp-Haren-gg-m3</metric>
    <metric>output-mp-Haren-h2-m3</metric>
    <metric>output-mp-Haren-ng-kw</metric>
    <metric>output-mp-Haren-gg-kw</metric>
    <metric>output-mp-Haren-h2-kw</metric>
    <metric>output-mp-Haren-e-kw</metric>
    <metric>output-mp-Haren-h-kw</metric>
    <metric>output-mp-Haren-tpp</metric>
    <metric>output-mp-Emmen-ng-m3</metric>
    <metric>output-mp-Emmen-gg-m3</metric>
    <metric>output-mp-Emmen-h2-m3</metric>
    <metric>output-mp-Emmen-ng-kw</metric>
    <metric>output-mp-Emmen-gg-kw</metric>
    <metric>output-mp-Emmen-h2-kw</metric>
    <metric>output-mp-Emmen-e-kw</metric>
    <metric>output-mp-Emmen-h-kw</metric>
    <metric>output-mp-Emmen-tpp</metric>
    <metric>output-mp-Westerveld-ng-m3</metric>
    <metric>output-mp-Westerveld-gg-m3</metric>
    <metric>output-mp-Westerveld-h2-m3</metric>
    <metric>output-mp-Westerveld-ng-kw</metric>
    <metric>output-mp-Westerveld-gg-kw</metric>
    <metric>output-mp-Westerveld-h2-kw</metric>
    <metric>output-mp-Westerveld-e-kw</metric>
    <metric>output-mp-Westerveld-h-kw</metric>
    <metric>output-mp-Westerveld-tpp</metric>
    <metric>output-mp-Midden-Drenthe-ng-m3</metric>
    <metric>output-mp-Midden-Drenthe-gg-m3</metric>
    <metric>output-mp-Midden-Drenthe-h2-m3</metric>
    <metric>output-mp-Midden-Drenthe-ng-kw</metric>
    <metric>output-mp-Midden-Drenthe-gg-kw</metric>
    <metric>output-mp-Midden-Drenthe-h2-kw</metric>
    <metric>output-mp-Midden-Drenthe-e-kw</metric>
    <metric>output-mp-Midden-Drenthe-h-kw</metric>
    <metric>output-mp-Midden-Drenthe-tpp</metric>
    <metric>output-mp-ng-m3</metric>
    <metric>output-mp-gg-m3</metric>
    <metric>output-mp-h2-m3</metric>
    <metric>output-mp-ng-kw</metric>
    <metric>output-mp-gg-kw</metric>
    <metric>output-mp-h2-kw</metric>
    <metric>output-mp-e-kw</metric>
    <metric>output-mp-h-kw</metric>
    <metric>output-mp-Rotterdam-nh-ts</metric>
    <metric>output-mp-Groningen-nh-ts</metric>
    <metric>output-mp-Westerveld-nh-ts</metric>
    <metric>output-nh-thermal-system</metric>
    <metric>output-nl-ng</metric>
    <metric>output-nl-ae</metric>
    <metric>output-nl-gg</metric>
    <metric>output-nl-ht/mt</metric>
    <metric>output-nl-lt</metric>
    <metric>output-nl-h2</metric>
    <metric>output-nl-ins</metric>
    <enumeratedValueSet variable="mp-icons">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-low-ins-transition?">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="national-h2-availability-ticks">
      <value value="15"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-nieuw-treshold-high">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="national-gg-potential-PJ">
      <value value="60"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-woz-treshold-high">
      <value value="500"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="national-h2-availability">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-cost-par">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-corp-treshold-med">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mp-top-n">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mp-transition-strategy">
      <value value="&quot;2&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-transition-duration">
      <value value="2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-woz-treshold-med">
      <value value="250"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="hs-labels">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-nieuw-treshold-med">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-dhc-treshold-med">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="hs-limited?">
      <value value="true"/>
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="max-distance-heatsource">
      <value value="15"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mp-resource-percentage">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-ins-strategy1">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="national-transition-goal">
      <value value="250000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-corp-treshold-high">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-dhc-treshold-high">
      <value value="50"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="A_gg_pot_10" repetitions="10" runMetricsEveryStep="true">
    <setup>bs-setup</setup>
    <go>go</go>
    <metric>output-nl-tpp</metric>
    <metric>output-nl-ts</metric>
    <metric>output-nl-nh-tst</metric>
    <metric>output-nl-nh-it</metric>
    <metric>output-nl-nh-tf</metric>
    <metric>output-nl-kw</metric>
    <metric>output-nl-ng-kw</metric>
    <metric>output-nl-e-kw</metric>
    <metric>output-nl-h-kw</metric>
    <metric>output-nl-gg-kw</metric>
    <metric>output-nl-h2-kw</metric>
    <metric>output-nl-ng-m3</metric>
    <metric>output-nl-gg-m3</metric>
    <metric>output-nl-h2-m3</metric>
    <metric>output-mr-Abbenbroek-ng-m3</metric>
    <metric>output-mr-achterdrempt-ng-m3</metric>
    <metric>output-mr-alkmaar-ng-m3</metric>
    <metric>output-mr-angerlo-ng-m3</metric>
    <metric>output-mr-Apeldoorn-ng-m3</metric>
    <metric>output-mr-Assumburg-ng-m3</metric>
    <metric>output-mr-Axel-ng-m3</metric>
    <metric>output-mr-Baal-ng-m3</metric>
    <metric>output-mr-Belfeld-ng-m3</metric>
    <metric>output-mr-Bemelen-ng-m3</metric>
    <metric>output-mr-Best-ng-m3</metric>
    <metric>output-mr-Beverwijk-ng-m3</metric>
    <metric>output-mr-Birstum-ng-m3</metric>
    <metric>output-mr-Bleiswijk-ng-m3</metric>
    <metric>output-mr-Bornerbroek-ng-m3</metric>
    <metric>output-mr-Boxtel-ng-m3</metric>
    <metric>output-mr-DenKaat-ng-m3</metric>
    <metric>output-mr-Driehuis-ng-m3</metric>
    <metric>output-mr-Eext-ng-m3</metric>
    <metric>output-mr-Emmeloord-ng-m3</metric>
    <metric>output-mr-Enschede-ng-m3</metric>
    <metric>output-mr-Esveld-ng-m3</metric>
    <metric>output-mr-Ewijk-ng-m3</metric>
    <metric>output-mr-Gilze-ng-m3</metric>
    <metric>output-mr-Gravenpolder-ng-m3</metric>
    <metric>output-mr-Groenlo-ng-m3</metric>
    <metric>output-mr-Gronsveld-ng-m3</metric>
    <metric>output-mr-Haren-ng-m3</metric>
    <metric>output-mr-Heerhugowaard-ng-m3</metric>
    <metric>output-mr-Hengelo-ng-m3</metric>
    <metric>output-mr-Hilversum-ng-m3</metric>
    <metric>output-mr-Hoofddorp-ng-m3</metric>
    <metric>output-mr-Hoogezand-ng-m3</metric>
    <metric>output-mr-Ijsselmonde-ng-m3</metric>
    <metric>output-mr-Krimpenerwaard-ng-m3</metric>
    <metric>output-mr-Lambertschaag-ng-m3</metric>
    <metric>output-mr-Leusden-Zuid-ng-m3</metric>
    <metric>output-mr-Lingewaal-ng-m3</metric>
    <metric>output-mr-Lurkeers-ng-m3</metric>
    <metric>output-mr-Melick-ng-m3</metric>
    <metric>output-mr-Middelrode-ng-m3</metric>
    <metric>output-mr-Mierlo-ng-m3</metric>
    <metric>output-mr-Mill-ng-m3</metric>
    <metric>output-mr-Moergestel-ng-m3</metric>
    <metric>output-mr-Nederweert-ng-m3</metric>
    <metric>output-mr-Nijkerk-ng-m3</metric>
    <metric>output-mr-Nijland-ng-m3</metric>
    <metric>output-mr-Odijk-ng-m3</metric>
    <metric>output-mr-Ommeloop-ng-m3</metric>
    <metric>output-mr-Oosteind-ng-m3</metric>
    <metric>output-mr-Oostum-ng-m3</metric>
    <metric>output-mr-Opsterland-ng-m3</metric>
    <metric>output-mr-Oss-ng-m3</metric>
    <metric>output-mr-Ossendrecht-ng-m3</metric>
    <metric>output-mr-Oudverlaat-ng-m3</metric>
    <metric>output-mr-Reek-ng-m3</metric>
    <metric>output-mr-Reijerscop-ng-m3</metric>
    <metric>output-mr-Rijnsburg-ng-m3</metric>
    <metric>output-mr-Rijsbergen-ng-m3</metric>
    <metric>output-mr-Rijswijk-ng-m3</metric>
    <metric>output-mr-Sanderbout-ng-m3</metric>
    <metric>output-mr-Scheemda-ng-m3</metric>
    <metric>output-mr-Schinnen-ng-m3</metric>
    <metric>output-mr-Schuilenburg-ng-m3</metric>
    <metric>output-mr-Simpelveld-ng-m3</metric>
    <metric>output-mr-Sloten-ng-m3</metric>
    <metric>output-mr-tWoudt-ng-m3</metric>
    <metric>output-mr-Tiel-ng-m3</metric>
    <metric>output-mr-Valburg-ng-m3</metric>
    <metric>output-mr-Venray-ng-m3</metric>
    <metric>output-mr-Visvliet-ng-m3</metric>
    <metric>output-mr-Vlaardingen-ng-m3</metric>
    <metric>output-mr-Vondelingenplaat-ng-m3</metric>
    <metric>output-mr-Voorburg-ng-m3</metric>
    <metric>output-mr-Weesp-ng-m3</metric>
    <metric>output-mr-Westerbork-ng-m3</metric>
    <metric>output-mr-Wezep-ng-m3</metric>
    <metric>output-mr-Wijngaarden-ng-m3</metric>
    <metric>output-mr-Zaltbommel-ng-m3</metric>
    <metric>output-mr-Zegge-ng-m3</metric>
    <metric>output-mr-Zoeterwoude-ng-m3</metric>
    <metric>output-mr-Zuid-Kraayert-ng-m3</metric>
    <metric>output-mr-Zuideropgaande-ng-m3</metric>
    <metric>output-mr-Abbenbroek-gg-m3</metric>
    <metric>output-mr-Achterdrempt-gg-m3</metric>
    <metric>output-mr-Alkmaar-gg-m3</metric>
    <metric>output-mr-Angerlo-gg-m3</metric>
    <metric>output-mr-Apeldoorn-gg-m3</metric>
    <metric>output-mr-Assumburg-gg-m3</metric>
    <metric>output-mr-Axel-gg-m3</metric>
    <metric>output-mr-Baal-gg-m3</metric>
    <metric>output-mr-Belfeld-gg-m3</metric>
    <metric>output-mr-Bemelen-gg-m3</metric>
    <metric>output-mr-Best-gg-m3</metric>
    <metric>output-mr-Beverwijk-gg-m3</metric>
    <metric>output-mr-Birstum-gg-m3</metric>
    <metric>output-mr-Bleiswijk-gg-m3</metric>
    <metric>output-mr-Bornerbroek-gg-m3</metric>
    <metric>output-mr-Boxtel-gg-m3</metric>
    <metric>output-mr-DenKaat-gg-m3</metric>
    <metric>output-mr-Driehuis-gg-m3</metric>
    <metric>output-mr-Eext-gg-m3</metric>
    <metric>output-mr-Emmeloord-gg-m3</metric>
    <metric>output-mr-Enschede-gg-m3</metric>
    <metric>output-mr-Esveld-gg-m3</metric>
    <metric>output-mr-Ewijk-gg-m3</metric>
    <metric>output-mr-Gilze-gg-m3</metric>
    <metric>output-mr-Gravenpolder-gg-m3</metric>
    <metric>output-mr-Groenlo-gg-m3</metric>
    <metric>output-mr-Gronsveld-gg-m3</metric>
    <metric>output-mr-Haren-gg-m3</metric>
    <metric>output-mr-Heerhugowaard-gg-m3</metric>
    <metric>output-mr-Hengelo-gg-m3</metric>
    <metric>output-mr-Hilversum-gg-m3</metric>
    <metric>output-mr-Hoofddorp-gg-m3</metric>
    <metric>output-mr-Hoogezand-gg-m3</metric>
    <metric>output-mr-Ijsselmonde-gg-m3</metric>
    <metric>output-mr-Krimpenerwaard-gg-m3</metric>
    <metric>output-mr-Lambertschaag-gg-m3</metric>
    <metric>output-mr-Leusden-Zuid-gg-m3</metric>
    <metric>output-mr-Lingewaal-gg-m3</metric>
    <metric>output-mr-Lurkeers-gg-m3</metric>
    <metric>output-mr-Melick-gg-m3</metric>
    <metric>output-mr-Middelrode-gg-m3</metric>
    <metric>output-mr-Mierlo-gg-m3</metric>
    <metric>output-mr-Mill-gg-m3</metric>
    <metric>output-mr-Moergestel-gg-m3</metric>
    <metric>output-mr-Nederweert-gg-m3</metric>
    <metric>output-mr-Nijkerk-gg-m3</metric>
    <metric>output-mr-Nijland-gg-m3</metric>
    <metric>output-mr-Odijk-gg-m3</metric>
    <metric>output-mr-Ommeloop-gg-m3</metric>
    <metric>output-mr-Oosteind-gg-m3</metric>
    <metric>output-mr-Oostum-gg-m3</metric>
    <metric>output-mr-Opsterland-gg-m3</metric>
    <metric>output-mr-Oss-gg-m3</metric>
    <metric>output-mr-Ossendrecht-gg-m3</metric>
    <metric>output-mr-Oudverlaat-gg-m3</metric>
    <metric>output-mr-Reek-gg-m3</metric>
    <metric>output-mr-Reijerscop-gg-m3</metric>
    <metric>output-mr-Rijnsburg-gg-m3</metric>
    <metric>output-mr-Rijsbergen-gg-m3</metric>
    <metric>output-mr-Rijswijk-gg-m3</metric>
    <metric>output-mr-Sanderbout-gg-m3</metric>
    <metric>output-mr-Scheemda-gg-m3</metric>
    <metric>output-mr-Schinnen-gg-m3</metric>
    <metric>output-mr-Schuilenburg-gg-m3</metric>
    <metric>output-mr-Simpelveld-gg-m3</metric>
    <metric>output-mr-Sloten-gg-m3</metric>
    <metric>output-mr-tWoudt-gg-m3</metric>
    <metric>output-mr-Tiel-gg-m3</metric>
    <metric>output-mr-Valburg-gg-m3</metric>
    <metric>output-mr-Venray-gg-m3</metric>
    <metric>output-mr-Visvliet-gg-m3</metric>
    <metric>output-mr-Vlaardingen-gg-m3</metric>
    <metric>output-mr-Vondelingenplaat-gg-m3</metric>
    <metric>output-mr-Voorburg-gg-m3</metric>
    <metric>output-mr-Weesp-gg-m3</metric>
    <metric>output-mr-Westerbork-gg-m3</metric>
    <metric>output-mr-Wezep-gg-m3</metric>
    <metric>output-mr-Wijngaarden-gg-m3</metric>
    <metric>output-mr-Zaltbommel-gg-m3</metric>
    <metric>output-mr-Zegge-gg-m3</metric>
    <metric>output-mr-Zoeterwoude-gg-m3</metric>
    <metric>output-mr-Zuid-Kraayert-gg-m3</metric>
    <metric>output-mr-Zuideropgaande-gg-m3</metric>
    <metric>output-mr-Abbenbroek-h2-m3</metric>
    <metric>output-mr-Achterdrempt-h2-m3</metric>
    <metric>output-mr-Alkmaar-h2-m3</metric>
    <metric>output-mr-Angerlo-h2-m3</metric>
    <metric>output-mr-Apeldoorn-h2-m3</metric>
    <metric>output-mr-Assumburg-h2-m3</metric>
    <metric>output-mr-Axel-h2-m3</metric>
    <metric>output-mr-Baal-h2-m3</metric>
    <metric>output-mr-Belfeld-h2-m3</metric>
    <metric>output-mr-Bemelen-h2-m3</metric>
    <metric>output-mr-Best-h2-m3</metric>
    <metric>output-mr-Beverwijk-h2-m3</metric>
    <metric>output-mr-Birstum-h2-m3</metric>
    <metric>output-mr-Bleiswijk-h2-m3</metric>
    <metric>output-mr-Bornerbroek-h2-m3</metric>
    <metric>output-mr-Boxtel-h2-m3</metric>
    <metric>output-mr-DenKaat-h2-m3</metric>
    <metric>output-mr-Driehuis-h2-m3</metric>
    <metric>output-mr-Eext-h2-m3</metric>
    <metric>output-mr-Emmeloord-h2-m3</metric>
    <metric>output-mr-Enschede-h2-m3</metric>
    <metric>output-mr-Esveld-h2-m3</metric>
    <metric>output-mr-Ewijk-h2-m3</metric>
    <metric>output-mr-Gilze-h2-m3</metric>
    <metric>output-mr-Gravenpolder-h2-m3</metric>
    <metric>output-mr-Groenlo-h2-m3</metric>
    <metric>output-mr-Gronsveld-h2-m3</metric>
    <metric>output-mr-Haren-h2-m3</metric>
    <metric>output-mr-Heerhugowaard-h2-m3</metric>
    <metric>output-mr-Hengelo-h2-m3</metric>
    <metric>output-mr-Hilversum-h2-m3</metric>
    <metric>output-mr-Hoofddorp-h2-m3</metric>
    <metric>output-mr-Hoogezand-h2-m3</metric>
    <metric>output-mr-Ijsselmonde-h2-m3</metric>
    <metric>output-mr-Krimpenerwaard-h2-m3</metric>
    <metric>output-mr-Lambertschaag-h2-m3</metric>
    <metric>output-mr-Leusden-Zuid-h2-m3</metric>
    <metric>output-mr-Lingewaal-h2-m3</metric>
    <metric>output-mr-Lurkeers-h2-m3</metric>
    <metric>output-mr-Melick-h2-m3</metric>
    <metric>output-mr-Middelrode-h2-m3</metric>
    <metric>output-mr-Mierlo-h2-m3</metric>
    <metric>output-mr-Mill-h2-m3</metric>
    <metric>output-mr-Moergestel-h2-m3</metric>
    <metric>output-mr-Nederweert-h2-m3</metric>
    <metric>output-mr-Nijkerk-h2-m3</metric>
    <metric>output-mr-Nijland-h2-m3</metric>
    <metric>output-mr-Odijk-h2-m3</metric>
    <metric>output-mr-Ommeloop-h2-m3</metric>
    <metric>output-mr-Oosteind-h2-m3</metric>
    <metric>output-mr-Oostum-h2-m3</metric>
    <metric>output-mr-Opsterland-h2-m3</metric>
    <metric>output-mr-Oss-h2-m3</metric>
    <metric>output-mr-Ossendrecht-h2-m3</metric>
    <metric>output-mr-Oudverlaat-h2-m3</metric>
    <metric>output-mr-Reek-h2-m3</metric>
    <metric>output-mr-Reijerscop-h2-m3</metric>
    <metric>output-mr-Rijnsburg-h2-m3</metric>
    <metric>output-mr-Rijsbergen-h2-m3</metric>
    <metric>output-mr-Rijswijk-h2-m3</metric>
    <metric>output-mr-Sanderbout-h2-m3</metric>
    <metric>output-mr-Scheemda-h2-m3</metric>
    <metric>output-mr-Schinnen-h2-m3</metric>
    <metric>output-mr-Schuilenburg-h2-m3</metric>
    <metric>output-mr-Simpelveld-h2-m3</metric>
    <metric>output-mr-Sloten-h2-m3</metric>
    <metric>output-mr-tWoudt-h2-m3</metric>
    <metric>output-mr-Tiel-h2-m3</metric>
    <metric>output-mr-Valburg-h2-m3</metric>
    <metric>output-mr-Venray-h2-m3</metric>
    <metric>output-mr-Visvliet-h2-m3</metric>
    <metric>output-mr-Vlaardingen-h2-m3</metric>
    <metric>output-mr-Vondelingenplaat-h2-m3</metric>
    <metric>output-mr-Voorburg-h2-m3</metric>
    <metric>output-mr-Weesp-h2-m3</metric>
    <metric>output-mr-Westerbork-h2-m3</metric>
    <metric>output-mr-Wezep-h2-m3</metric>
    <metric>output-mr-Wijngaarden-h2-m3</metric>
    <metric>output-mr-Zaltbommel-h2-m3</metric>
    <metric>output-mr-Zegge-h2-m3</metric>
    <metric>output-mr-Zoeterwoude-h2-m3</metric>
    <metric>output-mr-Zuid-Kraayert-h2-m3</metric>
    <metric>output-mr-Zuideropgaande-h2-m3</metric>
    <metric>output-mr-Vlaardingen-ng-kw</metric>
    <metric>output-mr-Vlaardingen-gg-kw</metric>
    <metric>output-mr-Vlaardingen-h2-kw</metric>
    <metric>output-mr-Vlaardingen-e-kw</metric>
    <metric>output-mr-Vlaardingen-h-kw</metric>
    <metric>output-mr-Haren-ng-kw</metric>
    <metric>output-mr-Haren-gg-kw</metric>
    <metric>output-mr-Haren-h2-kw</metric>
    <metric>output-mr-Haren-e-kw</metric>
    <metric>output-mr-Haren-h-kw</metric>
    <metric>output-mr-Westerbork-ng-kw</metric>
    <metric>output-mr-Westerbork-gg-kw</metric>
    <metric>output-mr-Westerbork-h2-kw</metric>
    <metric>output-mr-Westerbork-e-kw</metric>
    <metric>output-mr-Westerbork-h-kw</metric>
    <metric>output-mr-Vlaardingen-tpp</metric>
    <metric>output-mr-Haren-tpp</metric>
    <metric>output-mr-Westerbork-tpp</metric>
    <metric>output-mp-Rotterdam-ng-m3</metric>
    <metric>output-mp-Rotterdam-gg-m3</metric>
    <metric>output-mp-Rotterdam-h2-m3</metric>
    <metric>output-mp-Rotterdam-ng-kw</metric>
    <metric>output-mp-Rotterdam-gg-kw</metric>
    <metric>output-mp-Rotterdam-h2-kw</metric>
    <metric>output-mp-Rotterdam-e-kw</metric>
    <metric>output-mp-Rotterdam-h-kw</metric>
    <metric>output-mp-Rotterdam-tpp</metric>
    <metric>output-mp-Vlaardingen-ng-m3</metric>
    <metric>output-mp-Vlaardingen-gg-m3</metric>
    <metric>output-mp-Vlaardingen-h2-m3</metric>
    <metric>output-mp-Vlaardingen-ng-kw</metric>
    <metric>output-mp-Vlaardingen-gg-kw</metric>
    <metric>output-mp-Vlaardingen-h2-kw</metric>
    <metric>output-mp-Vlaardingen-e-kw</metric>
    <metric>output-mp-Vlaardingen-h-kw</metric>
    <metric>output-mp-Vlaardingen-tpp</metric>
    <metric>output-mp-Maassluis-ng-m3</metric>
    <metric>output-mp-Maassluis-gg-m3</metric>
    <metric>output-mp-Maassluis-h2-m3</metric>
    <metric>output-mp-Maassluis-ng-kw</metric>
    <metric>output-mp-Maassluis-gg-kw</metric>
    <metric>output-mp-Maassluis-h2-kw</metric>
    <metric>output-mp-Maassluis-e-kw</metric>
    <metric>output-mp-Maassluis-h-kw</metric>
    <metric>output-mp-Maassluis-tpp</metric>
    <metric>output-mp-Schiedam-ng-m3</metric>
    <metric>output-mp-Schiedam-gg-m3</metric>
    <metric>output-mp-Schiedam-h2-m3</metric>
    <metric>output-mp-Schiedam-ng-kw</metric>
    <metric>output-mp-Schiedam-gg-kw</metric>
    <metric>output-mp-Schiedam-h2-kw</metric>
    <metric>output-mp-Schiedam-e-kw</metric>
    <metric>output-mp-Schiedam-h-kw</metric>
    <metric>output-mp-Schiedam-tpp</metric>
    <metric>output-mp-Groningen-ng-m3</metric>
    <metric>output-mp-Groningen-gg-m3</metric>
    <metric>output-mp-Groningen-h2-m3</metric>
    <metric>output-mp-Groningen-ng-kw</metric>
    <metric>output-mp-Groningen-gg-kw</metric>
    <metric>output-mp-Groningen-h2-kw</metric>
    <metric>output-mp-Groningen-e-kw</metric>
    <metric>output-mp-Groningen-h-kw</metric>
    <metric>output-mp-Groningen-tpp</metric>
    <metric>output-mp-Leek-ng-m3</metric>
    <metric>output-mp-Leek-gg-m3</metric>
    <metric>output-mp-Leek-h2-m3</metric>
    <metric>output-mp-Leek-ng-kw</metric>
    <metric>output-mp-Leek-gg-kw</metric>
    <metric>output-mp-Leek-h2-kw</metric>
    <metric>output-mp-Leek-e-kw</metric>
    <metric>output-mp-Leek-h-kw</metric>
    <metric>output-mp-Leek-tpp</metric>
    <metric>output-mp-Marum-ng-m3</metric>
    <metric>output-mp-Marum-gg-m3</metric>
    <metric>output-mp-Marum-h2-m3</metric>
    <metric>output-mp-Marum-ng-kw</metric>
    <metric>output-mp-Marum-gg-kw</metric>
    <metric>output-mp-Marum-h2-kw</metric>
    <metric>output-mp-Marum-e-kw</metric>
    <metric>output-mp-Marum-h-kw</metric>
    <metric>output-mp-Marum-tpp</metric>
    <metric>output-mp-Noordenveld-ng-m3</metric>
    <metric>output-mp-Noordenveld-gg-m3</metric>
    <metric>output-mp-Noordenveld-h2-m3</metric>
    <metric>output-mp-Noordenveld-ng-kw</metric>
    <metric>output-mp-Noordenveld-gg-kw</metric>
    <metric>output-mp-Noordenveld-h2-kw</metric>
    <metric>output-mp-Noordenveld-e-kw</metric>
    <metric>output-mp-Noordenveld-h-kw</metric>
    <metric>output-mp-Noordenveld-tpp</metric>
    <metric>output-mp-Haren-ng-m3</metric>
    <metric>output-mp-Haren-gg-m3</metric>
    <metric>output-mp-Haren-h2-m3</metric>
    <metric>output-mp-Haren-ng-kw</metric>
    <metric>output-mp-Haren-gg-kw</metric>
    <metric>output-mp-Haren-h2-kw</metric>
    <metric>output-mp-Haren-e-kw</metric>
    <metric>output-mp-Haren-h-kw</metric>
    <metric>output-mp-Haren-tpp</metric>
    <metric>output-mp-Emmen-ng-m3</metric>
    <metric>output-mp-Emmen-gg-m3</metric>
    <metric>output-mp-Emmen-h2-m3</metric>
    <metric>output-mp-Emmen-ng-kw</metric>
    <metric>output-mp-Emmen-gg-kw</metric>
    <metric>output-mp-Emmen-h2-kw</metric>
    <metric>output-mp-Emmen-e-kw</metric>
    <metric>output-mp-Emmen-h-kw</metric>
    <metric>output-mp-Emmen-tpp</metric>
    <metric>output-mp-Westerveld-ng-m3</metric>
    <metric>output-mp-Westerveld-gg-m3</metric>
    <metric>output-mp-Westerveld-h2-m3</metric>
    <metric>output-mp-Westerveld-ng-kw</metric>
    <metric>output-mp-Westerveld-gg-kw</metric>
    <metric>output-mp-Westerveld-h2-kw</metric>
    <metric>output-mp-Westerveld-e-kw</metric>
    <metric>output-mp-Westerveld-h-kw</metric>
    <metric>output-mp-Westerveld-tpp</metric>
    <metric>output-mp-Midden-Drenthe-ng-m3</metric>
    <metric>output-mp-Midden-Drenthe-gg-m3</metric>
    <metric>output-mp-Midden-Drenthe-h2-m3</metric>
    <metric>output-mp-Midden-Drenthe-ng-kw</metric>
    <metric>output-mp-Midden-Drenthe-gg-kw</metric>
    <metric>output-mp-Midden-Drenthe-h2-kw</metric>
    <metric>output-mp-Midden-Drenthe-e-kw</metric>
    <metric>output-mp-Midden-Drenthe-h-kw</metric>
    <metric>output-mp-Midden-Drenthe-tpp</metric>
    <metric>output-mp-ng-m3</metric>
    <metric>output-mp-gg-m3</metric>
    <metric>output-mp-h2-m3</metric>
    <metric>output-mp-ng-kw</metric>
    <metric>output-mp-gg-kw</metric>
    <metric>output-mp-h2-kw</metric>
    <metric>output-mp-e-kw</metric>
    <metric>output-mp-h-kw</metric>
    <metric>output-mp-Rotterdam-nh-ts</metric>
    <metric>output-mp-Groningen-nh-ts</metric>
    <metric>output-mp-Westerveld-nh-ts</metric>
    <metric>output-nh-thermal-system</metric>
    <metric>output-nl-ng</metric>
    <metric>output-nl-ae</metric>
    <metric>output-nl-gg</metric>
    <metric>output-nl-ht/mt</metric>
    <metric>output-nl-lt</metric>
    <metric>output-nl-h2</metric>
    <metric>output-nl-ins</metric>
    <enumeratedValueSet variable="mp-icons">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-low-ins-transition?">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="national-h2-availability-ticks">
      <value value="15"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-nieuw-treshold-high">
      <value value="50"/>
    </enumeratedValueSet>
    <steppedValueSet variable="national-gg-potential-PJ" first="0" step="10" last="120"/>
    <enumeratedValueSet variable="nh-woz-treshold-high">
      <value value="500"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="national-h2-availability">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-cost-par">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-corp-treshold-med">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mp-top-n">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mp-transition-strategy">
      <value value="&quot;2&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-transition-duration">
      <value value="2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-woz-treshold-med">
      <value value="250"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="hs-labels">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-nieuw-treshold-med">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-dhc-treshold-med">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="hs-limited?">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="max-distance-heatsource">
      <value value="15"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mp-resource-percentage">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-ins-strategy1">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="national-transition-goal">
      <value value="250000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-corp-treshold-high">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-dhc-treshold-high">
      <value value="50"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="A_max_hs_10" repetitions="10" runMetricsEveryStep="true">
    <setup>bs-setup</setup>
    <go>go</go>
    <metric>output-nl-tpp</metric>
    <metric>output-nl-ts</metric>
    <metric>output-nl-nh-tst</metric>
    <metric>output-nl-nh-it</metric>
    <metric>output-nl-nh-tf</metric>
    <metric>output-nl-kw</metric>
    <metric>output-nl-ng-kw</metric>
    <metric>output-nl-e-kw</metric>
    <metric>output-nl-h-kw</metric>
    <metric>output-nl-gg-kw</metric>
    <metric>output-nl-h2-kw</metric>
    <metric>output-nl-ng-m3</metric>
    <metric>output-nl-gg-m3</metric>
    <metric>output-nl-h2-m3</metric>
    <metric>output-mr-Abbenbroek-ng-m3</metric>
    <metric>output-mr-achterdrempt-ng-m3</metric>
    <metric>output-mr-alkmaar-ng-m3</metric>
    <metric>output-mr-angerlo-ng-m3</metric>
    <metric>output-mr-Apeldoorn-ng-m3</metric>
    <metric>output-mr-Assumburg-ng-m3</metric>
    <metric>output-mr-Axel-ng-m3</metric>
    <metric>output-mr-Baal-ng-m3</metric>
    <metric>output-mr-Belfeld-ng-m3</metric>
    <metric>output-mr-Bemelen-ng-m3</metric>
    <metric>output-mr-Best-ng-m3</metric>
    <metric>output-mr-Beverwijk-ng-m3</metric>
    <metric>output-mr-Birstum-ng-m3</metric>
    <metric>output-mr-Bleiswijk-ng-m3</metric>
    <metric>output-mr-Bornerbroek-ng-m3</metric>
    <metric>output-mr-Boxtel-ng-m3</metric>
    <metric>output-mr-DenKaat-ng-m3</metric>
    <metric>output-mr-Driehuis-ng-m3</metric>
    <metric>output-mr-Eext-ng-m3</metric>
    <metric>output-mr-Emmeloord-ng-m3</metric>
    <metric>output-mr-Enschede-ng-m3</metric>
    <metric>output-mr-Esveld-ng-m3</metric>
    <metric>output-mr-Ewijk-ng-m3</metric>
    <metric>output-mr-Gilze-ng-m3</metric>
    <metric>output-mr-Gravenpolder-ng-m3</metric>
    <metric>output-mr-Groenlo-ng-m3</metric>
    <metric>output-mr-Gronsveld-ng-m3</metric>
    <metric>output-mr-Haren-ng-m3</metric>
    <metric>output-mr-Heerhugowaard-ng-m3</metric>
    <metric>output-mr-Hengelo-ng-m3</metric>
    <metric>output-mr-Hilversum-ng-m3</metric>
    <metric>output-mr-Hoofddorp-ng-m3</metric>
    <metric>output-mr-Hoogezand-ng-m3</metric>
    <metric>output-mr-Ijsselmonde-ng-m3</metric>
    <metric>output-mr-Krimpenerwaard-ng-m3</metric>
    <metric>output-mr-Lambertschaag-ng-m3</metric>
    <metric>output-mr-Leusden-Zuid-ng-m3</metric>
    <metric>output-mr-Lingewaal-ng-m3</metric>
    <metric>output-mr-Lurkeers-ng-m3</metric>
    <metric>output-mr-Melick-ng-m3</metric>
    <metric>output-mr-Middelrode-ng-m3</metric>
    <metric>output-mr-Mierlo-ng-m3</metric>
    <metric>output-mr-Mill-ng-m3</metric>
    <metric>output-mr-Moergestel-ng-m3</metric>
    <metric>output-mr-Nederweert-ng-m3</metric>
    <metric>output-mr-Nijkerk-ng-m3</metric>
    <metric>output-mr-Nijland-ng-m3</metric>
    <metric>output-mr-Odijk-ng-m3</metric>
    <metric>output-mr-Ommeloop-ng-m3</metric>
    <metric>output-mr-Oosteind-ng-m3</metric>
    <metric>output-mr-Oostum-ng-m3</metric>
    <metric>output-mr-Opsterland-ng-m3</metric>
    <metric>output-mr-Oss-ng-m3</metric>
    <metric>output-mr-Ossendrecht-ng-m3</metric>
    <metric>output-mr-Oudverlaat-ng-m3</metric>
    <metric>output-mr-Reek-ng-m3</metric>
    <metric>output-mr-Reijerscop-ng-m3</metric>
    <metric>output-mr-Rijnsburg-ng-m3</metric>
    <metric>output-mr-Rijsbergen-ng-m3</metric>
    <metric>output-mr-Rijswijk-ng-m3</metric>
    <metric>output-mr-Sanderbout-ng-m3</metric>
    <metric>output-mr-Scheemda-ng-m3</metric>
    <metric>output-mr-Schinnen-ng-m3</metric>
    <metric>output-mr-Schuilenburg-ng-m3</metric>
    <metric>output-mr-Simpelveld-ng-m3</metric>
    <metric>output-mr-Sloten-ng-m3</metric>
    <metric>output-mr-tWoudt-ng-m3</metric>
    <metric>output-mr-Tiel-ng-m3</metric>
    <metric>output-mr-Valburg-ng-m3</metric>
    <metric>output-mr-Venray-ng-m3</metric>
    <metric>output-mr-Visvliet-ng-m3</metric>
    <metric>output-mr-Vlaardingen-ng-m3</metric>
    <metric>output-mr-Vondelingenplaat-ng-m3</metric>
    <metric>output-mr-Voorburg-ng-m3</metric>
    <metric>output-mr-Weesp-ng-m3</metric>
    <metric>output-mr-Westerbork-ng-m3</metric>
    <metric>output-mr-Wezep-ng-m3</metric>
    <metric>output-mr-Wijngaarden-ng-m3</metric>
    <metric>output-mr-Zaltbommel-ng-m3</metric>
    <metric>output-mr-Zegge-ng-m3</metric>
    <metric>output-mr-Zoeterwoude-ng-m3</metric>
    <metric>output-mr-Zuid-Kraayert-ng-m3</metric>
    <metric>output-mr-Zuideropgaande-ng-m3</metric>
    <metric>output-mr-Abbenbroek-gg-m3</metric>
    <metric>output-mr-Achterdrempt-gg-m3</metric>
    <metric>output-mr-Alkmaar-gg-m3</metric>
    <metric>output-mr-Angerlo-gg-m3</metric>
    <metric>output-mr-Apeldoorn-gg-m3</metric>
    <metric>output-mr-Assumburg-gg-m3</metric>
    <metric>output-mr-Axel-gg-m3</metric>
    <metric>output-mr-Baal-gg-m3</metric>
    <metric>output-mr-Belfeld-gg-m3</metric>
    <metric>output-mr-Bemelen-gg-m3</metric>
    <metric>output-mr-Best-gg-m3</metric>
    <metric>output-mr-Beverwijk-gg-m3</metric>
    <metric>output-mr-Birstum-gg-m3</metric>
    <metric>output-mr-Bleiswijk-gg-m3</metric>
    <metric>output-mr-Bornerbroek-gg-m3</metric>
    <metric>output-mr-Boxtel-gg-m3</metric>
    <metric>output-mr-DenKaat-gg-m3</metric>
    <metric>output-mr-Driehuis-gg-m3</metric>
    <metric>output-mr-Eext-gg-m3</metric>
    <metric>output-mr-Emmeloord-gg-m3</metric>
    <metric>output-mr-Enschede-gg-m3</metric>
    <metric>output-mr-Esveld-gg-m3</metric>
    <metric>output-mr-Ewijk-gg-m3</metric>
    <metric>output-mr-Gilze-gg-m3</metric>
    <metric>output-mr-Gravenpolder-gg-m3</metric>
    <metric>output-mr-Groenlo-gg-m3</metric>
    <metric>output-mr-Gronsveld-gg-m3</metric>
    <metric>output-mr-Haren-gg-m3</metric>
    <metric>output-mr-Heerhugowaard-gg-m3</metric>
    <metric>output-mr-Hengelo-gg-m3</metric>
    <metric>output-mr-Hilversum-gg-m3</metric>
    <metric>output-mr-Hoofddorp-gg-m3</metric>
    <metric>output-mr-Hoogezand-gg-m3</metric>
    <metric>output-mr-Ijsselmonde-gg-m3</metric>
    <metric>output-mr-Krimpenerwaard-gg-m3</metric>
    <metric>output-mr-Lambertschaag-gg-m3</metric>
    <metric>output-mr-Leusden-Zuid-gg-m3</metric>
    <metric>output-mr-Lingewaal-gg-m3</metric>
    <metric>output-mr-Lurkeers-gg-m3</metric>
    <metric>output-mr-Melick-gg-m3</metric>
    <metric>output-mr-Middelrode-gg-m3</metric>
    <metric>output-mr-Mierlo-gg-m3</metric>
    <metric>output-mr-Mill-gg-m3</metric>
    <metric>output-mr-Moergestel-gg-m3</metric>
    <metric>output-mr-Nederweert-gg-m3</metric>
    <metric>output-mr-Nijkerk-gg-m3</metric>
    <metric>output-mr-Nijland-gg-m3</metric>
    <metric>output-mr-Odijk-gg-m3</metric>
    <metric>output-mr-Ommeloop-gg-m3</metric>
    <metric>output-mr-Oosteind-gg-m3</metric>
    <metric>output-mr-Oostum-gg-m3</metric>
    <metric>output-mr-Opsterland-gg-m3</metric>
    <metric>output-mr-Oss-gg-m3</metric>
    <metric>output-mr-Ossendrecht-gg-m3</metric>
    <metric>output-mr-Oudverlaat-gg-m3</metric>
    <metric>output-mr-Reek-gg-m3</metric>
    <metric>output-mr-Reijerscop-gg-m3</metric>
    <metric>output-mr-Rijnsburg-gg-m3</metric>
    <metric>output-mr-Rijsbergen-gg-m3</metric>
    <metric>output-mr-Rijswijk-gg-m3</metric>
    <metric>output-mr-Sanderbout-gg-m3</metric>
    <metric>output-mr-Scheemda-gg-m3</metric>
    <metric>output-mr-Schinnen-gg-m3</metric>
    <metric>output-mr-Schuilenburg-gg-m3</metric>
    <metric>output-mr-Simpelveld-gg-m3</metric>
    <metric>output-mr-Sloten-gg-m3</metric>
    <metric>output-mr-tWoudt-gg-m3</metric>
    <metric>output-mr-Tiel-gg-m3</metric>
    <metric>output-mr-Valburg-gg-m3</metric>
    <metric>output-mr-Venray-gg-m3</metric>
    <metric>output-mr-Visvliet-gg-m3</metric>
    <metric>output-mr-Vlaardingen-gg-m3</metric>
    <metric>output-mr-Vondelingenplaat-gg-m3</metric>
    <metric>output-mr-Voorburg-gg-m3</metric>
    <metric>output-mr-Weesp-gg-m3</metric>
    <metric>output-mr-Westerbork-gg-m3</metric>
    <metric>output-mr-Wezep-gg-m3</metric>
    <metric>output-mr-Wijngaarden-gg-m3</metric>
    <metric>output-mr-Zaltbommel-gg-m3</metric>
    <metric>output-mr-Zegge-gg-m3</metric>
    <metric>output-mr-Zoeterwoude-gg-m3</metric>
    <metric>output-mr-Zuid-Kraayert-gg-m3</metric>
    <metric>output-mr-Zuideropgaande-gg-m3</metric>
    <metric>output-mr-Abbenbroek-h2-m3</metric>
    <metric>output-mr-Achterdrempt-h2-m3</metric>
    <metric>output-mr-Alkmaar-h2-m3</metric>
    <metric>output-mr-Angerlo-h2-m3</metric>
    <metric>output-mr-Apeldoorn-h2-m3</metric>
    <metric>output-mr-Assumburg-h2-m3</metric>
    <metric>output-mr-Axel-h2-m3</metric>
    <metric>output-mr-Baal-h2-m3</metric>
    <metric>output-mr-Belfeld-h2-m3</metric>
    <metric>output-mr-Bemelen-h2-m3</metric>
    <metric>output-mr-Best-h2-m3</metric>
    <metric>output-mr-Beverwijk-h2-m3</metric>
    <metric>output-mr-Birstum-h2-m3</metric>
    <metric>output-mr-Bleiswijk-h2-m3</metric>
    <metric>output-mr-Bornerbroek-h2-m3</metric>
    <metric>output-mr-Boxtel-h2-m3</metric>
    <metric>output-mr-DenKaat-h2-m3</metric>
    <metric>output-mr-Driehuis-h2-m3</metric>
    <metric>output-mr-Eext-h2-m3</metric>
    <metric>output-mr-Emmeloord-h2-m3</metric>
    <metric>output-mr-Enschede-h2-m3</metric>
    <metric>output-mr-Esveld-h2-m3</metric>
    <metric>output-mr-Ewijk-h2-m3</metric>
    <metric>output-mr-Gilze-h2-m3</metric>
    <metric>output-mr-Gravenpolder-h2-m3</metric>
    <metric>output-mr-Groenlo-h2-m3</metric>
    <metric>output-mr-Gronsveld-h2-m3</metric>
    <metric>output-mr-Haren-h2-m3</metric>
    <metric>output-mr-Heerhugowaard-h2-m3</metric>
    <metric>output-mr-Hengelo-h2-m3</metric>
    <metric>output-mr-Hilversum-h2-m3</metric>
    <metric>output-mr-Hoofddorp-h2-m3</metric>
    <metric>output-mr-Hoogezand-h2-m3</metric>
    <metric>output-mr-Ijsselmonde-h2-m3</metric>
    <metric>output-mr-Krimpenerwaard-h2-m3</metric>
    <metric>output-mr-Lambertschaag-h2-m3</metric>
    <metric>output-mr-Leusden-Zuid-h2-m3</metric>
    <metric>output-mr-Lingewaal-h2-m3</metric>
    <metric>output-mr-Lurkeers-h2-m3</metric>
    <metric>output-mr-Melick-h2-m3</metric>
    <metric>output-mr-Middelrode-h2-m3</metric>
    <metric>output-mr-Mierlo-h2-m3</metric>
    <metric>output-mr-Mill-h2-m3</metric>
    <metric>output-mr-Moergestel-h2-m3</metric>
    <metric>output-mr-Nederweert-h2-m3</metric>
    <metric>output-mr-Nijkerk-h2-m3</metric>
    <metric>output-mr-Nijland-h2-m3</metric>
    <metric>output-mr-Odijk-h2-m3</metric>
    <metric>output-mr-Ommeloop-h2-m3</metric>
    <metric>output-mr-Oosteind-h2-m3</metric>
    <metric>output-mr-Oostum-h2-m3</metric>
    <metric>output-mr-Opsterland-h2-m3</metric>
    <metric>output-mr-Oss-h2-m3</metric>
    <metric>output-mr-Ossendrecht-h2-m3</metric>
    <metric>output-mr-Oudverlaat-h2-m3</metric>
    <metric>output-mr-Reek-h2-m3</metric>
    <metric>output-mr-Reijerscop-h2-m3</metric>
    <metric>output-mr-Rijnsburg-h2-m3</metric>
    <metric>output-mr-Rijsbergen-h2-m3</metric>
    <metric>output-mr-Rijswijk-h2-m3</metric>
    <metric>output-mr-Sanderbout-h2-m3</metric>
    <metric>output-mr-Scheemda-h2-m3</metric>
    <metric>output-mr-Schinnen-h2-m3</metric>
    <metric>output-mr-Schuilenburg-h2-m3</metric>
    <metric>output-mr-Simpelveld-h2-m3</metric>
    <metric>output-mr-Sloten-h2-m3</metric>
    <metric>output-mr-tWoudt-h2-m3</metric>
    <metric>output-mr-Tiel-h2-m3</metric>
    <metric>output-mr-Valburg-h2-m3</metric>
    <metric>output-mr-Venray-h2-m3</metric>
    <metric>output-mr-Visvliet-h2-m3</metric>
    <metric>output-mr-Vlaardingen-h2-m3</metric>
    <metric>output-mr-Vondelingenplaat-h2-m3</metric>
    <metric>output-mr-Voorburg-h2-m3</metric>
    <metric>output-mr-Weesp-h2-m3</metric>
    <metric>output-mr-Westerbork-h2-m3</metric>
    <metric>output-mr-Wezep-h2-m3</metric>
    <metric>output-mr-Wijngaarden-h2-m3</metric>
    <metric>output-mr-Zaltbommel-h2-m3</metric>
    <metric>output-mr-Zegge-h2-m3</metric>
    <metric>output-mr-Zoeterwoude-h2-m3</metric>
    <metric>output-mr-Zuid-Kraayert-h2-m3</metric>
    <metric>output-mr-Zuideropgaande-h2-m3</metric>
    <metric>output-mr-Vlaardingen-ng-kw</metric>
    <metric>output-mr-Vlaardingen-gg-kw</metric>
    <metric>output-mr-Vlaardingen-h2-kw</metric>
    <metric>output-mr-Vlaardingen-e-kw</metric>
    <metric>output-mr-Vlaardingen-h-kw</metric>
    <metric>output-mr-Haren-ng-kw</metric>
    <metric>output-mr-Haren-gg-kw</metric>
    <metric>output-mr-Haren-h2-kw</metric>
    <metric>output-mr-Haren-e-kw</metric>
    <metric>output-mr-Haren-h-kw</metric>
    <metric>output-mr-Westerbork-ng-kw</metric>
    <metric>output-mr-Westerbork-gg-kw</metric>
    <metric>output-mr-Westerbork-h2-kw</metric>
    <metric>output-mr-Westerbork-e-kw</metric>
    <metric>output-mr-Westerbork-h-kw</metric>
    <metric>output-mr-Vlaardingen-tpp</metric>
    <metric>output-mr-Haren-tpp</metric>
    <metric>output-mr-Westerbork-tpp</metric>
    <metric>output-mp-Rotterdam-ng-m3</metric>
    <metric>output-mp-Rotterdam-gg-m3</metric>
    <metric>output-mp-Rotterdam-h2-m3</metric>
    <metric>output-mp-Rotterdam-ng-kw</metric>
    <metric>output-mp-Rotterdam-gg-kw</metric>
    <metric>output-mp-Rotterdam-h2-kw</metric>
    <metric>output-mp-Rotterdam-e-kw</metric>
    <metric>output-mp-Rotterdam-h-kw</metric>
    <metric>output-mp-Rotterdam-tpp</metric>
    <metric>output-mp-Vlaardingen-ng-m3</metric>
    <metric>output-mp-Vlaardingen-gg-m3</metric>
    <metric>output-mp-Vlaardingen-h2-m3</metric>
    <metric>output-mp-Vlaardingen-ng-kw</metric>
    <metric>output-mp-Vlaardingen-gg-kw</metric>
    <metric>output-mp-Vlaardingen-h2-kw</metric>
    <metric>output-mp-Vlaardingen-e-kw</metric>
    <metric>output-mp-Vlaardingen-h-kw</metric>
    <metric>output-mp-Vlaardingen-tpp</metric>
    <metric>output-mp-Maassluis-ng-m3</metric>
    <metric>output-mp-Maassluis-gg-m3</metric>
    <metric>output-mp-Maassluis-h2-m3</metric>
    <metric>output-mp-Maassluis-ng-kw</metric>
    <metric>output-mp-Maassluis-gg-kw</metric>
    <metric>output-mp-Maassluis-h2-kw</metric>
    <metric>output-mp-Maassluis-e-kw</metric>
    <metric>output-mp-Maassluis-h-kw</metric>
    <metric>output-mp-Maassluis-tpp</metric>
    <metric>output-mp-Schiedam-ng-m3</metric>
    <metric>output-mp-Schiedam-gg-m3</metric>
    <metric>output-mp-Schiedam-h2-m3</metric>
    <metric>output-mp-Schiedam-ng-kw</metric>
    <metric>output-mp-Schiedam-gg-kw</metric>
    <metric>output-mp-Schiedam-h2-kw</metric>
    <metric>output-mp-Schiedam-e-kw</metric>
    <metric>output-mp-Schiedam-h-kw</metric>
    <metric>output-mp-Schiedam-tpp</metric>
    <metric>output-mp-Groningen-ng-m3</metric>
    <metric>output-mp-Groningen-gg-m3</metric>
    <metric>output-mp-Groningen-h2-m3</metric>
    <metric>output-mp-Groningen-ng-kw</metric>
    <metric>output-mp-Groningen-gg-kw</metric>
    <metric>output-mp-Groningen-h2-kw</metric>
    <metric>output-mp-Groningen-e-kw</metric>
    <metric>output-mp-Groningen-h-kw</metric>
    <metric>output-mp-Groningen-tpp</metric>
    <metric>output-mp-Leek-ng-m3</metric>
    <metric>output-mp-Leek-gg-m3</metric>
    <metric>output-mp-Leek-h2-m3</metric>
    <metric>output-mp-Leek-ng-kw</metric>
    <metric>output-mp-Leek-gg-kw</metric>
    <metric>output-mp-Leek-h2-kw</metric>
    <metric>output-mp-Leek-e-kw</metric>
    <metric>output-mp-Leek-h-kw</metric>
    <metric>output-mp-Leek-tpp</metric>
    <metric>output-mp-Marum-ng-m3</metric>
    <metric>output-mp-Marum-gg-m3</metric>
    <metric>output-mp-Marum-h2-m3</metric>
    <metric>output-mp-Marum-ng-kw</metric>
    <metric>output-mp-Marum-gg-kw</metric>
    <metric>output-mp-Marum-h2-kw</metric>
    <metric>output-mp-Marum-e-kw</metric>
    <metric>output-mp-Marum-h-kw</metric>
    <metric>output-mp-Marum-tpp</metric>
    <metric>output-mp-Noordenveld-ng-m3</metric>
    <metric>output-mp-Noordenveld-gg-m3</metric>
    <metric>output-mp-Noordenveld-h2-m3</metric>
    <metric>output-mp-Noordenveld-ng-kw</metric>
    <metric>output-mp-Noordenveld-gg-kw</metric>
    <metric>output-mp-Noordenveld-h2-kw</metric>
    <metric>output-mp-Noordenveld-e-kw</metric>
    <metric>output-mp-Noordenveld-h-kw</metric>
    <metric>output-mp-Noordenveld-tpp</metric>
    <metric>output-mp-Haren-ng-m3</metric>
    <metric>output-mp-Haren-gg-m3</metric>
    <metric>output-mp-Haren-h2-m3</metric>
    <metric>output-mp-Haren-ng-kw</metric>
    <metric>output-mp-Haren-gg-kw</metric>
    <metric>output-mp-Haren-h2-kw</metric>
    <metric>output-mp-Haren-e-kw</metric>
    <metric>output-mp-Haren-h-kw</metric>
    <metric>output-mp-Haren-tpp</metric>
    <metric>output-mp-Emmen-ng-m3</metric>
    <metric>output-mp-Emmen-gg-m3</metric>
    <metric>output-mp-Emmen-h2-m3</metric>
    <metric>output-mp-Emmen-ng-kw</metric>
    <metric>output-mp-Emmen-gg-kw</metric>
    <metric>output-mp-Emmen-h2-kw</metric>
    <metric>output-mp-Emmen-e-kw</metric>
    <metric>output-mp-Emmen-h-kw</metric>
    <metric>output-mp-Emmen-tpp</metric>
    <metric>output-mp-Westerveld-ng-m3</metric>
    <metric>output-mp-Westerveld-gg-m3</metric>
    <metric>output-mp-Westerveld-h2-m3</metric>
    <metric>output-mp-Westerveld-ng-kw</metric>
    <metric>output-mp-Westerveld-gg-kw</metric>
    <metric>output-mp-Westerveld-h2-kw</metric>
    <metric>output-mp-Westerveld-e-kw</metric>
    <metric>output-mp-Westerveld-h-kw</metric>
    <metric>output-mp-Westerveld-tpp</metric>
    <metric>output-mp-Midden-Drenthe-ng-m3</metric>
    <metric>output-mp-Midden-Drenthe-gg-m3</metric>
    <metric>output-mp-Midden-Drenthe-h2-m3</metric>
    <metric>output-mp-Midden-Drenthe-ng-kw</metric>
    <metric>output-mp-Midden-Drenthe-gg-kw</metric>
    <metric>output-mp-Midden-Drenthe-h2-kw</metric>
    <metric>output-mp-Midden-Drenthe-e-kw</metric>
    <metric>output-mp-Midden-Drenthe-h-kw</metric>
    <metric>output-mp-Midden-Drenthe-tpp</metric>
    <metric>output-mp-ng-m3</metric>
    <metric>output-mp-gg-m3</metric>
    <metric>output-mp-h2-m3</metric>
    <metric>output-mp-ng-kw</metric>
    <metric>output-mp-gg-kw</metric>
    <metric>output-mp-h2-kw</metric>
    <metric>output-mp-e-kw</metric>
    <metric>output-mp-h-kw</metric>
    <metric>output-mp-Rotterdam-nh-ts</metric>
    <metric>output-mp-Groningen-nh-ts</metric>
    <metric>output-mp-Westerveld-nh-ts</metric>
    <metric>output-nh-thermal-system</metric>
    <metric>output-nl-ng</metric>
    <metric>output-nl-ae</metric>
    <metric>output-nl-gg</metric>
    <metric>output-nl-ht/mt</metric>
    <metric>output-nl-lt</metric>
    <metric>output-nl-h2</metric>
    <metric>output-nl-ins</metric>
    <enumeratedValueSet variable="mp-icons">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-low-ins-transition?">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="national-h2-availability-ticks">
      <value value="15"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-nieuw-treshold-high">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="national-gg-potential-PJ">
      <value value="60"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-woz-treshold-high">
      <value value="500"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="national-h2-availability">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-cost-par">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-corp-treshold-med">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mp-top-n">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mp-transition-strategy">
      <value value="&quot;2&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-transition-duration">
      <value value="2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-woz-treshold-med">
      <value value="250"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="hs-labels">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-nieuw-treshold-med">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-dhc-treshold-med">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="hs-limited?">
      <value value="true"/>
    </enumeratedValueSet>
    <steppedValueSet variable="max-distance-heatsource" first="1" step="1" last="30"/>
    <enumeratedValueSet variable="mp-resource-percentage">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-ins-strategy1">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="national-transition-goal">
      <value value="250000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-corp-treshold-high">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-dhc-treshold-high">
      <value value="50"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="A_h2_y" repetitions="10" runMetricsEveryStep="true">
    <setup>bs-setup</setup>
    <go>go</go>
    <metric>output-nl-tpp</metric>
    <metric>output-nl-ts</metric>
    <metric>output-nl-nh-tst</metric>
    <metric>output-nl-nh-it</metric>
    <metric>output-nl-nh-tf</metric>
    <metric>output-nl-kw</metric>
    <metric>output-nl-ng-kw</metric>
    <metric>output-nl-e-kw</metric>
    <metric>output-nl-h-kw</metric>
    <metric>output-nl-gg-kw</metric>
    <metric>output-nl-h2-kw</metric>
    <metric>output-nl-ng-m3</metric>
    <metric>output-nl-gg-m3</metric>
    <metric>output-nl-h2-m3</metric>
    <metric>output-mr-Abbenbroek-ng-m3</metric>
    <metric>output-mr-achterdrempt-ng-m3</metric>
    <metric>output-mr-alkmaar-ng-m3</metric>
    <metric>output-mr-angerlo-ng-m3</metric>
    <metric>output-mr-Apeldoorn-ng-m3</metric>
    <metric>output-mr-Assumburg-ng-m3</metric>
    <metric>output-mr-Axel-ng-m3</metric>
    <metric>output-mr-Baal-ng-m3</metric>
    <metric>output-mr-Belfeld-ng-m3</metric>
    <metric>output-mr-Bemelen-ng-m3</metric>
    <metric>output-mr-Best-ng-m3</metric>
    <metric>output-mr-Beverwijk-ng-m3</metric>
    <metric>output-mr-Birstum-ng-m3</metric>
    <metric>output-mr-Bleiswijk-ng-m3</metric>
    <metric>output-mr-Bornerbroek-ng-m3</metric>
    <metric>output-mr-Boxtel-ng-m3</metric>
    <metric>output-mr-DenKaat-ng-m3</metric>
    <metric>output-mr-Driehuis-ng-m3</metric>
    <metric>output-mr-Eext-ng-m3</metric>
    <metric>output-mr-Emmeloord-ng-m3</metric>
    <metric>output-mr-Enschede-ng-m3</metric>
    <metric>output-mr-Esveld-ng-m3</metric>
    <metric>output-mr-Ewijk-ng-m3</metric>
    <metric>output-mr-Gilze-ng-m3</metric>
    <metric>output-mr-Gravenpolder-ng-m3</metric>
    <metric>output-mr-Groenlo-ng-m3</metric>
    <metric>output-mr-Gronsveld-ng-m3</metric>
    <metric>output-mr-Haren-ng-m3</metric>
    <metric>output-mr-Heerhugowaard-ng-m3</metric>
    <metric>output-mr-Hengelo-ng-m3</metric>
    <metric>output-mr-Hilversum-ng-m3</metric>
    <metric>output-mr-Hoofddorp-ng-m3</metric>
    <metric>output-mr-Hoogezand-ng-m3</metric>
    <metric>output-mr-Ijsselmonde-ng-m3</metric>
    <metric>output-mr-Krimpenerwaard-ng-m3</metric>
    <metric>output-mr-Lambertschaag-ng-m3</metric>
    <metric>output-mr-Leusden-Zuid-ng-m3</metric>
    <metric>output-mr-Lingewaal-ng-m3</metric>
    <metric>output-mr-Lurkeers-ng-m3</metric>
    <metric>output-mr-Melick-ng-m3</metric>
    <metric>output-mr-Middelrode-ng-m3</metric>
    <metric>output-mr-Mierlo-ng-m3</metric>
    <metric>output-mr-Mill-ng-m3</metric>
    <metric>output-mr-Moergestel-ng-m3</metric>
    <metric>output-mr-Nederweert-ng-m3</metric>
    <metric>output-mr-Nijkerk-ng-m3</metric>
    <metric>output-mr-Nijland-ng-m3</metric>
    <metric>output-mr-Odijk-ng-m3</metric>
    <metric>output-mr-Ommeloop-ng-m3</metric>
    <metric>output-mr-Oosteind-ng-m3</metric>
    <metric>output-mr-Oostum-ng-m3</metric>
    <metric>output-mr-Opsterland-ng-m3</metric>
    <metric>output-mr-Oss-ng-m3</metric>
    <metric>output-mr-Ossendrecht-ng-m3</metric>
    <metric>output-mr-Oudverlaat-ng-m3</metric>
    <metric>output-mr-Reek-ng-m3</metric>
    <metric>output-mr-Reijerscop-ng-m3</metric>
    <metric>output-mr-Rijnsburg-ng-m3</metric>
    <metric>output-mr-Rijsbergen-ng-m3</metric>
    <metric>output-mr-Rijswijk-ng-m3</metric>
    <metric>output-mr-Sanderbout-ng-m3</metric>
    <metric>output-mr-Scheemda-ng-m3</metric>
    <metric>output-mr-Schinnen-ng-m3</metric>
    <metric>output-mr-Schuilenburg-ng-m3</metric>
    <metric>output-mr-Simpelveld-ng-m3</metric>
    <metric>output-mr-Sloten-ng-m3</metric>
    <metric>output-mr-tWoudt-ng-m3</metric>
    <metric>output-mr-Tiel-ng-m3</metric>
    <metric>output-mr-Valburg-ng-m3</metric>
    <metric>output-mr-Venray-ng-m3</metric>
    <metric>output-mr-Visvliet-ng-m3</metric>
    <metric>output-mr-Vlaardingen-ng-m3</metric>
    <metric>output-mr-Vondelingenplaat-ng-m3</metric>
    <metric>output-mr-Voorburg-ng-m3</metric>
    <metric>output-mr-Weesp-ng-m3</metric>
    <metric>output-mr-Westerbork-ng-m3</metric>
    <metric>output-mr-Wezep-ng-m3</metric>
    <metric>output-mr-Wijngaarden-ng-m3</metric>
    <metric>output-mr-Zaltbommel-ng-m3</metric>
    <metric>output-mr-Zegge-ng-m3</metric>
    <metric>output-mr-Zoeterwoude-ng-m3</metric>
    <metric>output-mr-Zuid-Kraayert-ng-m3</metric>
    <metric>output-mr-Zuideropgaande-ng-m3</metric>
    <metric>output-mr-Abbenbroek-gg-m3</metric>
    <metric>output-mr-Achterdrempt-gg-m3</metric>
    <metric>output-mr-Alkmaar-gg-m3</metric>
    <metric>output-mr-Angerlo-gg-m3</metric>
    <metric>output-mr-Apeldoorn-gg-m3</metric>
    <metric>output-mr-Assumburg-gg-m3</metric>
    <metric>output-mr-Axel-gg-m3</metric>
    <metric>output-mr-Baal-gg-m3</metric>
    <metric>output-mr-Belfeld-gg-m3</metric>
    <metric>output-mr-Bemelen-gg-m3</metric>
    <metric>output-mr-Best-gg-m3</metric>
    <metric>output-mr-Beverwijk-gg-m3</metric>
    <metric>output-mr-Birstum-gg-m3</metric>
    <metric>output-mr-Bleiswijk-gg-m3</metric>
    <metric>output-mr-Bornerbroek-gg-m3</metric>
    <metric>output-mr-Boxtel-gg-m3</metric>
    <metric>output-mr-DenKaat-gg-m3</metric>
    <metric>output-mr-Driehuis-gg-m3</metric>
    <metric>output-mr-Eext-gg-m3</metric>
    <metric>output-mr-Emmeloord-gg-m3</metric>
    <metric>output-mr-Enschede-gg-m3</metric>
    <metric>output-mr-Esveld-gg-m3</metric>
    <metric>output-mr-Ewijk-gg-m3</metric>
    <metric>output-mr-Gilze-gg-m3</metric>
    <metric>output-mr-Gravenpolder-gg-m3</metric>
    <metric>output-mr-Groenlo-gg-m3</metric>
    <metric>output-mr-Gronsveld-gg-m3</metric>
    <metric>output-mr-Haren-gg-m3</metric>
    <metric>output-mr-Heerhugowaard-gg-m3</metric>
    <metric>output-mr-Hengelo-gg-m3</metric>
    <metric>output-mr-Hilversum-gg-m3</metric>
    <metric>output-mr-Hoofddorp-gg-m3</metric>
    <metric>output-mr-Hoogezand-gg-m3</metric>
    <metric>output-mr-Ijsselmonde-gg-m3</metric>
    <metric>output-mr-Krimpenerwaard-gg-m3</metric>
    <metric>output-mr-Lambertschaag-gg-m3</metric>
    <metric>output-mr-Leusden-Zuid-gg-m3</metric>
    <metric>output-mr-Lingewaal-gg-m3</metric>
    <metric>output-mr-Lurkeers-gg-m3</metric>
    <metric>output-mr-Melick-gg-m3</metric>
    <metric>output-mr-Middelrode-gg-m3</metric>
    <metric>output-mr-Mierlo-gg-m3</metric>
    <metric>output-mr-Mill-gg-m3</metric>
    <metric>output-mr-Moergestel-gg-m3</metric>
    <metric>output-mr-Nederweert-gg-m3</metric>
    <metric>output-mr-Nijkerk-gg-m3</metric>
    <metric>output-mr-Nijland-gg-m3</metric>
    <metric>output-mr-Odijk-gg-m3</metric>
    <metric>output-mr-Ommeloop-gg-m3</metric>
    <metric>output-mr-Oosteind-gg-m3</metric>
    <metric>output-mr-Oostum-gg-m3</metric>
    <metric>output-mr-Opsterland-gg-m3</metric>
    <metric>output-mr-Oss-gg-m3</metric>
    <metric>output-mr-Ossendrecht-gg-m3</metric>
    <metric>output-mr-Oudverlaat-gg-m3</metric>
    <metric>output-mr-Reek-gg-m3</metric>
    <metric>output-mr-Reijerscop-gg-m3</metric>
    <metric>output-mr-Rijnsburg-gg-m3</metric>
    <metric>output-mr-Rijsbergen-gg-m3</metric>
    <metric>output-mr-Rijswijk-gg-m3</metric>
    <metric>output-mr-Sanderbout-gg-m3</metric>
    <metric>output-mr-Scheemda-gg-m3</metric>
    <metric>output-mr-Schinnen-gg-m3</metric>
    <metric>output-mr-Schuilenburg-gg-m3</metric>
    <metric>output-mr-Simpelveld-gg-m3</metric>
    <metric>output-mr-Sloten-gg-m3</metric>
    <metric>output-mr-tWoudt-gg-m3</metric>
    <metric>output-mr-Tiel-gg-m3</metric>
    <metric>output-mr-Valburg-gg-m3</metric>
    <metric>output-mr-Venray-gg-m3</metric>
    <metric>output-mr-Visvliet-gg-m3</metric>
    <metric>output-mr-Vlaardingen-gg-m3</metric>
    <metric>output-mr-Vondelingenplaat-gg-m3</metric>
    <metric>output-mr-Voorburg-gg-m3</metric>
    <metric>output-mr-Weesp-gg-m3</metric>
    <metric>output-mr-Westerbork-gg-m3</metric>
    <metric>output-mr-Wezep-gg-m3</metric>
    <metric>output-mr-Wijngaarden-gg-m3</metric>
    <metric>output-mr-Zaltbommel-gg-m3</metric>
    <metric>output-mr-Zegge-gg-m3</metric>
    <metric>output-mr-Zoeterwoude-gg-m3</metric>
    <metric>output-mr-Zuid-Kraayert-gg-m3</metric>
    <metric>output-mr-Zuideropgaande-gg-m3</metric>
    <metric>output-mr-Abbenbroek-h2-m3</metric>
    <metric>output-mr-Achterdrempt-h2-m3</metric>
    <metric>output-mr-Alkmaar-h2-m3</metric>
    <metric>output-mr-Angerlo-h2-m3</metric>
    <metric>output-mr-Apeldoorn-h2-m3</metric>
    <metric>output-mr-Assumburg-h2-m3</metric>
    <metric>output-mr-Axel-h2-m3</metric>
    <metric>output-mr-Baal-h2-m3</metric>
    <metric>output-mr-Belfeld-h2-m3</metric>
    <metric>output-mr-Bemelen-h2-m3</metric>
    <metric>output-mr-Best-h2-m3</metric>
    <metric>output-mr-Beverwijk-h2-m3</metric>
    <metric>output-mr-Birstum-h2-m3</metric>
    <metric>output-mr-Bleiswijk-h2-m3</metric>
    <metric>output-mr-Bornerbroek-h2-m3</metric>
    <metric>output-mr-Boxtel-h2-m3</metric>
    <metric>output-mr-DenKaat-h2-m3</metric>
    <metric>output-mr-Driehuis-h2-m3</metric>
    <metric>output-mr-Eext-h2-m3</metric>
    <metric>output-mr-Emmeloord-h2-m3</metric>
    <metric>output-mr-Enschede-h2-m3</metric>
    <metric>output-mr-Esveld-h2-m3</metric>
    <metric>output-mr-Ewijk-h2-m3</metric>
    <metric>output-mr-Gilze-h2-m3</metric>
    <metric>output-mr-Gravenpolder-h2-m3</metric>
    <metric>output-mr-Groenlo-h2-m3</metric>
    <metric>output-mr-Gronsveld-h2-m3</metric>
    <metric>output-mr-Haren-h2-m3</metric>
    <metric>output-mr-Heerhugowaard-h2-m3</metric>
    <metric>output-mr-Hengelo-h2-m3</metric>
    <metric>output-mr-Hilversum-h2-m3</metric>
    <metric>output-mr-Hoofddorp-h2-m3</metric>
    <metric>output-mr-Hoogezand-h2-m3</metric>
    <metric>output-mr-Ijsselmonde-h2-m3</metric>
    <metric>output-mr-Krimpenerwaard-h2-m3</metric>
    <metric>output-mr-Lambertschaag-h2-m3</metric>
    <metric>output-mr-Leusden-Zuid-h2-m3</metric>
    <metric>output-mr-Lingewaal-h2-m3</metric>
    <metric>output-mr-Lurkeers-h2-m3</metric>
    <metric>output-mr-Melick-h2-m3</metric>
    <metric>output-mr-Middelrode-h2-m3</metric>
    <metric>output-mr-Mierlo-h2-m3</metric>
    <metric>output-mr-Mill-h2-m3</metric>
    <metric>output-mr-Moergestel-h2-m3</metric>
    <metric>output-mr-Nederweert-h2-m3</metric>
    <metric>output-mr-Nijkerk-h2-m3</metric>
    <metric>output-mr-Nijland-h2-m3</metric>
    <metric>output-mr-Odijk-h2-m3</metric>
    <metric>output-mr-Ommeloop-h2-m3</metric>
    <metric>output-mr-Oosteind-h2-m3</metric>
    <metric>output-mr-Oostum-h2-m3</metric>
    <metric>output-mr-Opsterland-h2-m3</metric>
    <metric>output-mr-Oss-h2-m3</metric>
    <metric>output-mr-Ossendrecht-h2-m3</metric>
    <metric>output-mr-Oudverlaat-h2-m3</metric>
    <metric>output-mr-Reek-h2-m3</metric>
    <metric>output-mr-Reijerscop-h2-m3</metric>
    <metric>output-mr-Rijnsburg-h2-m3</metric>
    <metric>output-mr-Rijsbergen-h2-m3</metric>
    <metric>output-mr-Rijswijk-h2-m3</metric>
    <metric>output-mr-Sanderbout-h2-m3</metric>
    <metric>output-mr-Scheemda-h2-m3</metric>
    <metric>output-mr-Schinnen-h2-m3</metric>
    <metric>output-mr-Schuilenburg-h2-m3</metric>
    <metric>output-mr-Simpelveld-h2-m3</metric>
    <metric>output-mr-Sloten-h2-m3</metric>
    <metric>output-mr-tWoudt-h2-m3</metric>
    <metric>output-mr-Tiel-h2-m3</metric>
    <metric>output-mr-Valburg-h2-m3</metric>
    <metric>output-mr-Venray-h2-m3</metric>
    <metric>output-mr-Visvliet-h2-m3</metric>
    <metric>output-mr-Vlaardingen-h2-m3</metric>
    <metric>output-mr-Vondelingenplaat-h2-m3</metric>
    <metric>output-mr-Voorburg-h2-m3</metric>
    <metric>output-mr-Weesp-h2-m3</metric>
    <metric>output-mr-Westerbork-h2-m3</metric>
    <metric>output-mr-Wezep-h2-m3</metric>
    <metric>output-mr-Wijngaarden-h2-m3</metric>
    <metric>output-mr-Zaltbommel-h2-m3</metric>
    <metric>output-mr-Zegge-h2-m3</metric>
    <metric>output-mr-Zoeterwoude-h2-m3</metric>
    <metric>output-mr-Zuid-Kraayert-h2-m3</metric>
    <metric>output-mr-Zuideropgaande-h2-m3</metric>
    <metric>output-mr-Vlaardingen-ng-kw</metric>
    <metric>output-mr-Vlaardingen-gg-kw</metric>
    <metric>output-mr-Vlaardingen-h2-kw</metric>
    <metric>output-mr-Vlaardingen-e-kw</metric>
    <metric>output-mr-Vlaardingen-h-kw</metric>
    <metric>output-mr-Haren-ng-kw</metric>
    <metric>output-mr-Haren-gg-kw</metric>
    <metric>output-mr-Haren-h2-kw</metric>
    <metric>output-mr-Haren-e-kw</metric>
    <metric>output-mr-Haren-h-kw</metric>
    <metric>output-mr-Westerbork-ng-kw</metric>
    <metric>output-mr-Westerbork-gg-kw</metric>
    <metric>output-mr-Westerbork-h2-kw</metric>
    <metric>output-mr-Westerbork-e-kw</metric>
    <metric>output-mr-Westerbork-h-kw</metric>
    <metric>output-mr-Vlaardingen-tpp</metric>
    <metric>output-mr-Haren-tpp</metric>
    <metric>output-mr-Westerbork-tpp</metric>
    <metric>output-mp-Rotterdam-ng-m3</metric>
    <metric>output-mp-Rotterdam-gg-m3</metric>
    <metric>output-mp-Rotterdam-h2-m3</metric>
    <metric>output-mp-Rotterdam-ng-kw</metric>
    <metric>output-mp-Rotterdam-gg-kw</metric>
    <metric>output-mp-Rotterdam-h2-kw</metric>
    <metric>output-mp-Rotterdam-e-kw</metric>
    <metric>output-mp-Rotterdam-h-kw</metric>
    <metric>output-mp-Rotterdam-tpp</metric>
    <metric>output-mp-Vlaardingen-ng-m3</metric>
    <metric>output-mp-Vlaardingen-gg-m3</metric>
    <metric>output-mp-Vlaardingen-h2-m3</metric>
    <metric>output-mp-Vlaardingen-ng-kw</metric>
    <metric>output-mp-Vlaardingen-gg-kw</metric>
    <metric>output-mp-Vlaardingen-h2-kw</metric>
    <metric>output-mp-Vlaardingen-e-kw</metric>
    <metric>output-mp-Vlaardingen-h-kw</metric>
    <metric>output-mp-Vlaardingen-tpp</metric>
    <metric>output-mp-Maassluis-ng-m3</metric>
    <metric>output-mp-Maassluis-gg-m3</metric>
    <metric>output-mp-Maassluis-h2-m3</metric>
    <metric>output-mp-Maassluis-ng-kw</metric>
    <metric>output-mp-Maassluis-gg-kw</metric>
    <metric>output-mp-Maassluis-h2-kw</metric>
    <metric>output-mp-Maassluis-e-kw</metric>
    <metric>output-mp-Maassluis-h-kw</metric>
    <metric>output-mp-Maassluis-tpp</metric>
    <metric>output-mp-Schiedam-ng-m3</metric>
    <metric>output-mp-Schiedam-gg-m3</metric>
    <metric>output-mp-Schiedam-h2-m3</metric>
    <metric>output-mp-Schiedam-ng-kw</metric>
    <metric>output-mp-Schiedam-gg-kw</metric>
    <metric>output-mp-Schiedam-h2-kw</metric>
    <metric>output-mp-Schiedam-e-kw</metric>
    <metric>output-mp-Schiedam-h-kw</metric>
    <metric>output-mp-Schiedam-tpp</metric>
    <metric>output-mp-Groningen-ng-m3</metric>
    <metric>output-mp-Groningen-gg-m3</metric>
    <metric>output-mp-Groningen-h2-m3</metric>
    <metric>output-mp-Groningen-ng-kw</metric>
    <metric>output-mp-Groningen-gg-kw</metric>
    <metric>output-mp-Groningen-h2-kw</metric>
    <metric>output-mp-Groningen-e-kw</metric>
    <metric>output-mp-Groningen-h-kw</metric>
    <metric>output-mp-Groningen-tpp</metric>
    <metric>output-mp-Leek-ng-m3</metric>
    <metric>output-mp-Leek-gg-m3</metric>
    <metric>output-mp-Leek-h2-m3</metric>
    <metric>output-mp-Leek-ng-kw</metric>
    <metric>output-mp-Leek-gg-kw</metric>
    <metric>output-mp-Leek-h2-kw</metric>
    <metric>output-mp-Leek-e-kw</metric>
    <metric>output-mp-Leek-h-kw</metric>
    <metric>output-mp-Leek-tpp</metric>
    <metric>output-mp-Marum-ng-m3</metric>
    <metric>output-mp-Marum-gg-m3</metric>
    <metric>output-mp-Marum-h2-m3</metric>
    <metric>output-mp-Marum-ng-kw</metric>
    <metric>output-mp-Marum-gg-kw</metric>
    <metric>output-mp-Marum-h2-kw</metric>
    <metric>output-mp-Marum-e-kw</metric>
    <metric>output-mp-Marum-h-kw</metric>
    <metric>output-mp-Marum-tpp</metric>
    <metric>output-mp-Noordenveld-ng-m3</metric>
    <metric>output-mp-Noordenveld-gg-m3</metric>
    <metric>output-mp-Noordenveld-h2-m3</metric>
    <metric>output-mp-Noordenveld-ng-kw</metric>
    <metric>output-mp-Noordenveld-gg-kw</metric>
    <metric>output-mp-Noordenveld-h2-kw</metric>
    <metric>output-mp-Noordenveld-e-kw</metric>
    <metric>output-mp-Noordenveld-h-kw</metric>
    <metric>output-mp-Noordenveld-tpp</metric>
    <metric>output-mp-Haren-ng-m3</metric>
    <metric>output-mp-Haren-gg-m3</metric>
    <metric>output-mp-Haren-h2-m3</metric>
    <metric>output-mp-Haren-ng-kw</metric>
    <metric>output-mp-Haren-gg-kw</metric>
    <metric>output-mp-Haren-h2-kw</metric>
    <metric>output-mp-Haren-e-kw</metric>
    <metric>output-mp-Haren-h-kw</metric>
    <metric>output-mp-Haren-tpp</metric>
    <metric>output-mp-Emmen-ng-m3</metric>
    <metric>output-mp-Emmen-gg-m3</metric>
    <metric>output-mp-Emmen-h2-m3</metric>
    <metric>output-mp-Emmen-ng-kw</metric>
    <metric>output-mp-Emmen-gg-kw</metric>
    <metric>output-mp-Emmen-h2-kw</metric>
    <metric>output-mp-Emmen-e-kw</metric>
    <metric>output-mp-Emmen-h-kw</metric>
    <metric>output-mp-Emmen-tpp</metric>
    <metric>output-mp-Westerveld-ng-m3</metric>
    <metric>output-mp-Westerveld-gg-m3</metric>
    <metric>output-mp-Westerveld-h2-m3</metric>
    <metric>output-mp-Westerveld-ng-kw</metric>
    <metric>output-mp-Westerveld-gg-kw</metric>
    <metric>output-mp-Westerveld-h2-kw</metric>
    <metric>output-mp-Westerveld-e-kw</metric>
    <metric>output-mp-Westerveld-h-kw</metric>
    <metric>output-mp-Westerveld-tpp</metric>
    <metric>output-mp-Midden-Drenthe-ng-m3</metric>
    <metric>output-mp-Midden-Drenthe-gg-m3</metric>
    <metric>output-mp-Midden-Drenthe-h2-m3</metric>
    <metric>output-mp-Midden-Drenthe-ng-kw</metric>
    <metric>output-mp-Midden-Drenthe-gg-kw</metric>
    <metric>output-mp-Midden-Drenthe-h2-kw</metric>
    <metric>output-mp-Midden-Drenthe-e-kw</metric>
    <metric>output-mp-Midden-Drenthe-h-kw</metric>
    <metric>output-mp-Midden-Drenthe-tpp</metric>
    <metric>output-mp-ng-m3</metric>
    <metric>output-mp-gg-m3</metric>
    <metric>output-mp-h2-m3</metric>
    <metric>output-mp-ng-kw</metric>
    <metric>output-mp-gg-kw</metric>
    <metric>output-mp-h2-kw</metric>
    <metric>output-mp-e-kw</metric>
    <metric>output-mp-h-kw</metric>
    <metric>output-mp-Rotterdam-nh-ts</metric>
    <metric>output-mp-Groningen-nh-ts</metric>
    <metric>output-mp-Westerveld-nh-ts</metric>
    <metric>output-nh-thermal-system</metric>
    <metric>output-nl-ng</metric>
    <metric>output-nl-ae</metric>
    <metric>output-nl-gg</metric>
    <metric>output-nl-ht/mt</metric>
    <metric>output-nl-lt</metric>
    <metric>output-nl-h2</metric>
    <metric>output-nl-ins</metric>
    <enumeratedValueSet variable="mp-icons">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-low-ins-transition?">
      <value value="true"/>
    </enumeratedValueSet>
    <steppedValueSet variable="national-h2-availability-ticks" first="0" step="1" last="30"/>
    <enumeratedValueSet variable="nh-nieuw-treshold-high">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="national-gg-potential-PJ">
      <value value="60"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-woz-treshold-high">
      <value value="500"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="national-h2-availability">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-cost-par">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-corp-treshold-med">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mp-top-n">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mp-transition-strategy">
      <value value="&quot;2&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-transition-duration">
      <value value="2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-woz-treshold-med">
      <value value="250"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="hs-labels">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-nieuw-treshold-med">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-dhc-treshold-med">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="hs-limited?">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="max-distance-heatsource">
      <value value="15"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mp-resource-percentage">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-ins-strategy1">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="national-transition-goal">
      <value value="250000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-corp-treshold-high">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-dhc-treshold-high">
      <value value="50"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="REFERENCE_EXP_test_output" repetitions="1" runMetricsEveryStep="true">
    <setup>bs-setup</setup>
    <go>go</go>
    <metric>output-nl-tpp</metric>
    <metric>output-nl-ts</metric>
    <metric>output-nl-nh-tst</metric>
    <metric>output-nl-nh-it</metric>
    <metric>output-nl-nh-tf</metric>
    <metric>output-nl-kw</metric>
    <metric>output-nl-ng-kw</metric>
    <metric>output-nl-e-kw</metric>
    <metric>output-nl-h-kw</metric>
    <metric>output-nl-gg-kw</metric>
    <metric>output-nl-h2-kw</metric>
    <metric>output-nl-ng-m3</metric>
    <metric>output-nl-gg-m3</metric>
    <metric>output-nl-h2-m3</metric>
    <metric>output-mr-Abbenbroek-ng-m3</metric>
    <metric>output-mr-achterdrempt-ng-m3</metric>
    <metric>output-mr-alkmaar-ng-m3</metric>
    <metric>output-mr-angerlo-ng-m3</metric>
    <metric>output-mr-Apeldoorn-ng-m3</metric>
    <metric>output-mr-Assumburg-ng-m3</metric>
    <metric>output-mr-Axel-ng-m3</metric>
    <metric>output-mr-Baal-ng-m3</metric>
    <metric>output-mr-Belfeld-ng-m3</metric>
    <metric>output-mr-Bemelen-ng-m3</metric>
    <metric>output-mr-Best-ng-m3</metric>
    <metric>output-mr-Beverwijk-ng-m3</metric>
    <metric>output-mr-Birstum-ng-m3</metric>
    <metric>output-mr-Bleiswijk-ng-m3</metric>
    <metric>output-mr-Bornerbroek-ng-m3</metric>
    <metric>output-mr-Boxtel-ng-m3</metric>
    <metric>output-mr-DenKaat-ng-m3</metric>
    <metric>output-mr-Driehuis-ng-m3</metric>
    <metric>output-mr-Eext-ng-m3</metric>
    <metric>output-mr-Emmeloord-ng-m3</metric>
    <metric>output-mr-Enschede-ng-m3</metric>
    <metric>output-mr-Esveld-ng-m3</metric>
    <metric>output-mr-Ewijk-ng-m3</metric>
    <metric>output-mr-Gilze-ng-m3</metric>
    <metric>output-mr-Gravenpolder-ng-m3</metric>
    <metric>output-mr-Groenlo-ng-m3</metric>
    <metric>output-mr-Gronsveld-ng-m3</metric>
    <metric>output-mr-Haren-ng-m3</metric>
    <metric>output-mr-Heerhugowaard-ng-m3</metric>
    <metric>output-mr-Hengelo-ng-m3</metric>
    <metric>output-mr-Hilversum-ng-m3</metric>
    <metric>output-mr-Hoofddorp-ng-m3</metric>
    <metric>output-mr-Hoogezand-ng-m3</metric>
    <metric>output-mr-Ijsselmonde-ng-m3</metric>
    <metric>output-mr-Krimpenerwaard-ng-m3</metric>
    <metric>output-mr-Lambertschaag-ng-m3</metric>
    <metric>output-mr-Leusden-Zuid-ng-m3</metric>
    <metric>output-mr-Lingewaal-ng-m3</metric>
    <metric>output-mr-Lurkeers-ng-m3</metric>
    <metric>output-mr-Melick-ng-m3</metric>
    <metric>output-mr-Middelrode-ng-m3</metric>
    <metric>output-mr-Mierlo-ng-m3</metric>
    <metric>output-mr-Mill-ng-m3</metric>
    <metric>output-mr-Moergestel-ng-m3</metric>
    <metric>output-mr-Nederweert-ng-m3</metric>
    <metric>output-mr-Nijkerk-ng-m3</metric>
    <metric>output-mr-Nijland-ng-m3</metric>
    <metric>output-mr-Odijk-ng-m3</metric>
    <metric>output-mr-Ommeloop-ng-m3</metric>
    <metric>output-mr-Oosteind-ng-m3</metric>
    <metric>output-mr-Oostum-ng-m3</metric>
    <metric>output-mr-Opsterland-ng-m3</metric>
    <metric>output-mr-Oss-ng-m3</metric>
    <metric>output-mr-Ossendrecht-ng-m3</metric>
    <metric>output-mr-Oudverlaat-ng-m3</metric>
    <metric>output-mr-Reek-ng-m3</metric>
    <metric>output-mr-Reijerscop-ng-m3</metric>
    <metric>output-mr-Rijnsburg-ng-m3</metric>
    <metric>output-mr-Rijsbergen-ng-m3</metric>
    <metric>output-mr-Rijswijk-ng-m3</metric>
    <metric>output-mr-Sanderbout-ng-m3</metric>
    <metric>output-mr-Scheemda-ng-m3</metric>
    <metric>output-mr-Schinnen-ng-m3</metric>
    <metric>output-mr-Schuilenburg-ng-m3</metric>
    <metric>output-mr-Simpelveld-ng-m3</metric>
    <metric>output-mr-Sloten-ng-m3</metric>
    <metric>output-mr-tWoudt-ng-m3</metric>
    <metric>output-mr-Tiel-ng-m3</metric>
    <metric>output-mr-Valburg-ng-m3</metric>
    <metric>output-mr-Venray-ng-m3</metric>
    <metric>output-mr-Visvliet-ng-m3</metric>
    <metric>output-mr-Vlaardingen-ng-m3</metric>
    <metric>output-mr-Vondelingenplaat-ng-m3</metric>
    <metric>output-mr-Voorburg-ng-m3</metric>
    <metric>output-mr-Weesp-ng-m3</metric>
    <metric>output-mr-Westerbork-ng-m3</metric>
    <metric>output-mr-Wezep-ng-m3</metric>
    <metric>output-mr-Wijngaarden-ng-m3</metric>
    <metric>output-mr-Zaltbommel-ng-m3</metric>
    <metric>output-mr-Zegge-ng-m3</metric>
    <metric>output-mr-Zoeterwoude-ng-m3</metric>
    <metric>output-mr-Zuid-Kraayert-ng-m3</metric>
    <metric>output-mr-Zuideropgaande-ng-m3</metric>
    <metric>output-mr-Abbenbroek-gg-m3</metric>
    <metric>output-mr-Achterdrempt-gg-m3</metric>
    <metric>output-mr-Alkmaar-gg-m3</metric>
    <metric>output-mr-Angerlo-gg-m3</metric>
    <metric>output-mr-Apeldoorn-gg-m3</metric>
    <metric>output-mr-Assumburg-gg-m3</metric>
    <metric>output-mr-Axel-gg-m3</metric>
    <metric>output-mr-Baal-gg-m3</metric>
    <metric>output-mr-Belfeld-gg-m3</metric>
    <metric>output-mr-Bemelen-gg-m3</metric>
    <metric>output-mr-Best-gg-m3</metric>
    <metric>output-mr-Beverwijk-gg-m3</metric>
    <metric>output-mr-Birstum-gg-m3</metric>
    <metric>output-mr-Bleiswijk-gg-m3</metric>
    <metric>output-mr-Bornerbroek-gg-m3</metric>
    <metric>output-mr-Boxtel-gg-m3</metric>
    <metric>output-mr-DenKaat-gg-m3</metric>
    <metric>output-mr-Driehuis-gg-m3</metric>
    <metric>output-mr-Eext-gg-m3</metric>
    <metric>output-mr-Emmeloord-gg-m3</metric>
    <metric>output-mr-Enschede-gg-m3</metric>
    <metric>output-mr-Esveld-gg-m3</metric>
    <metric>output-mr-Ewijk-gg-m3</metric>
    <metric>output-mr-Gilze-gg-m3</metric>
    <metric>output-mr-Gravenpolder-gg-m3</metric>
    <metric>output-mr-Groenlo-gg-m3</metric>
    <metric>output-mr-Gronsveld-gg-m3</metric>
    <metric>output-mr-Haren-gg-m3</metric>
    <metric>output-mr-Heerhugowaard-gg-m3</metric>
    <metric>output-mr-Hengelo-gg-m3</metric>
    <metric>output-mr-Hilversum-gg-m3</metric>
    <metric>output-mr-Hoofddorp-gg-m3</metric>
    <metric>output-mr-Hoogezand-gg-m3</metric>
    <metric>output-mr-Ijsselmonde-gg-m3</metric>
    <metric>output-mr-Krimpenerwaard-gg-m3</metric>
    <metric>output-mr-Lambertschaag-gg-m3</metric>
    <metric>output-mr-Leusden-Zuid-gg-m3</metric>
    <metric>output-mr-Lingewaal-gg-m3</metric>
    <metric>output-mr-Lurkeers-gg-m3</metric>
    <metric>output-mr-Melick-gg-m3</metric>
    <metric>output-mr-Middelrode-gg-m3</metric>
    <metric>output-mr-Mierlo-gg-m3</metric>
    <metric>output-mr-Mill-gg-m3</metric>
    <metric>output-mr-Moergestel-gg-m3</metric>
    <metric>output-mr-Nederweert-gg-m3</metric>
    <metric>output-mr-Nijkerk-gg-m3</metric>
    <metric>output-mr-Nijland-gg-m3</metric>
    <metric>output-mr-Odijk-gg-m3</metric>
    <metric>output-mr-Ommeloop-gg-m3</metric>
    <metric>output-mr-Oosteind-gg-m3</metric>
    <metric>output-mr-Oostum-gg-m3</metric>
    <metric>output-mr-Opsterland-gg-m3</metric>
    <metric>output-mr-Oss-gg-m3</metric>
    <metric>output-mr-Ossendrecht-gg-m3</metric>
    <metric>output-mr-Oudverlaat-gg-m3</metric>
    <metric>output-mr-Reek-gg-m3</metric>
    <metric>output-mr-Reijerscop-gg-m3</metric>
    <metric>output-mr-Rijnsburg-gg-m3</metric>
    <metric>output-mr-Rijsbergen-gg-m3</metric>
    <metric>output-mr-Rijswijk-gg-m3</metric>
    <metric>output-mr-Sanderbout-gg-m3</metric>
    <metric>output-mr-Scheemda-gg-m3</metric>
    <metric>output-mr-Schinnen-gg-m3</metric>
    <metric>output-mr-Schuilenburg-gg-m3</metric>
    <metric>output-mr-Simpelveld-gg-m3</metric>
    <metric>output-mr-Sloten-gg-m3</metric>
    <metric>output-mr-tWoudt-gg-m3</metric>
    <metric>output-mr-Tiel-gg-m3</metric>
    <metric>output-mr-Valburg-gg-m3</metric>
    <metric>output-mr-Venray-gg-m3</metric>
    <metric>output-mr-Visvliet-gg-m3</metric>
    <metric>output-mr-Vlaardingen-gg-m3</metric>
    <metric>output-mr-Vondelingenplaat-gg-m3</metric>
    <metric>output-mr-Voorburg-gg-m3</metric>
    <metric>output-mr-Weesp-gg-m3</metric>
    <metric>output-mr-Westerbork-gg-m3</metric>
    <metric>output-mr-Wezep-gg-m3</metric>
    <metric>output-mr-Wijngaarden-gg-m3</metric>
    <metric>output-mr-Zaltbommel-gg-m3</metric>
    <metric>output-mr-Zegge-gg-m3</metric>
    <metric>output-mr-Zoeterwoude-gg-m3</metric>
    <metric>output-mr-Zuid-Kraayert-gg-m3</metric>
    <metric>output-mr-Zuideropgaande-gg-m3</metric>
    <metric>output-mr-Abbenbroek-h2-m3</metric>
    <metric>output-mr-Achterdrempt-h2-m3</metric>
    <metric>output-mr-Alkmaar-h2-m3</metric>
    <metric>output-mr-Angerlo-h2-m3</metric>
    <metric>output-mr-Apeldoorn-h2-m3</metric>
    <metric>output-mr-Assumburg-h2-m3</metric>
    <metric>output-mr-Axel-h2-m3</metric>
    <metric>output-mr-Baal-h2-m3</metric>
    <metric>output-mr-Belfeld-h2-m3</metric>
    <metric>output-mr-Bemelen-h2-m3</metric>
    <metric>output-mr-Best-h2-m3</metric>
    <metric>output-mr-Beverwijk-h2-m3</metric>
    <metric>output-mr-Birstum-h2-m3</metric>
    <metric>output-mr-Bleiswijk-h2-m3</metric>
    <metric>output-mr-Bornerbroek-h2-m3</metric>
    <metric>output-mr-Boxtel-h2-m3</metric>
    <metric>output-mr-DenKaat-h2-m3</metric>
    <metric>output-mr-Driehuis-h2-m3</metric>
    <metric>output-mr-Eext-h2-m3</metric>
    <metric>output-mr-Emmeloord-h2-m3</metric>
    <metric>output-mr-Enschede-h2-m3</metric>
    <metric>output-mr-Esveld-h2-m3</metric>
    <metric>output-mr-Ewijk-h2-m3</metric>
    <metric>output-mr-Gilze-h2-m3</metric>
    <metric>output-mr-Gravenpolder-h2-m3</metric>
    <metric>output-mr-Groenlo-h2-m3</metric>
    <metric>output-mr-Gronsveld-h2-m3</metric>
    <metric>output-mr-Haren-h2-m3</metric>
    <metric>output-mr-Heerhugowaard-h2-m3</metric>
    <metric>output-mr-Hengelo-h2-m3</metric>
    <metric>output-mr-Hilversum-h2-m3</metric>
    <metric>output-mr-Hoofddorp-h2-m3</metric>
    <metric>output-mr-Hoogezand-h2-m3</metric>
    <metric>output-mr-Ijsselmonde-h2-m3</metric>
    <metric>output-mr-Krimpenerwaard-h2-m3</metric>
    <metric>output-mr-Lambertschaag-h2-m3</metric>
    <metric>output-mr-Leusden-Zuid-h2-m3</metric>
    <metric>output-mr-Lingewaal-h2-m3</metric>
    <metric>output-mr-Lurkeers-h2-m3</metric>
    <metric>output-mr-Melick-h2-m3</metric>
    <metric>output-mr-Middelrode-h2-m3</metric>
    <metric>output-mr-Mierlo-h2-m3</metric>
    <metric>output-mr-Mill-h2-m3</metric>
    <metric>output-mr-Moergestel-h2-m3</metric>
    <metric>output-mr-Nederweert-h2-m3</metric>
    <metric>output-mr-Nijkerk-h2-m3</metric>
    <metric>output-mr-Nijland-h2-m3</metric>
    <metric>output-mr-Odijk-h2-m3</metric>
    <metric>output-mr-Ommeloop-h2-m3</metric>
    <metric>output-mr-Oosteind-h2-m3</metric>
    <metric>output-mr-Oostum-h2-m3</metric>
    <metric>output-mr-Opsterland-h2-m3</metric>
    <metric>output-mr-Oss-h2-m3</metric>
    <metric>output-mr-Ossendrecht-h2-m3</metric>
    <metric>output-mr-Oudverlaat-h2-m3</metric>
    <metric>output-mr-Reek-h2-m3</metric>
    <metric>output-mr-Reijerscop-h2-m3</metric>
    <metric>output-mr-Rijnsburg-h2-m3</metric>
    <metric>output-mr-Rijsbergen-h2-m3</metric>
    <metric>output-mr-Rijswijk-h2-m3</metric>
    <metric>output-mr-Sanderbout-h2-m3</metric>
    <metric>output-mr-Scheemda-h2-m3</metric>
    <metric>output-mr-Schinnen-h2-m3</metric>
    <metric>output-mr-Schuilenburg-h2-m3</metric>
    <metric>output-mr-Simpelveld-h2-m3</metric>
    <metric>output-mr-Sloten-h2-m3</metric>
    <metric>output-mr-tWoudt-h2-m3</metric>
    <metric>output-mr-Tiel-h2-m3</metric>
    <metric>output-mr-Valburg-h2-m3</metric>
    <metric>output-mr-Venray-h2-m3</metric>
    <metric>output-mr-Visvliet-h2-m3</metric>
    <metric>output-mr-Vlaardingen-h2-m3</metric>
    <metric>output-mr-Vondelingenplaat-h2-m3</metric>
    <metric>output-mr-Voorburg-h2-m3</metric>
    <metric>output-mr-Weesp-h2-m3</metric>
    <metric>output-mr-Westerbork-h2-m3</metric>
    <metric>output-mr-Wezep-h2-m3</metric>
    <metric>output-mr-Wijngaarden-h2-m3</metric>
    <metric>output-mr-Zaltbommel-h2-m3</metric>
    <metric>output-mr-Zegge-h2-m3</metric>
    <metric>output-mr-Zoeterwoude-h2-m3</metric>
    <metric>output-mr-Zuid-Kraayert-h2-m3</metric>
    <metric>output-mr-Zuideropgaande-h2-m3</metric>
    <metric>output-mr-Vlaardingen-e-kw</metric>
    <metric>output-mr-Vlaardingen-h-kw</metric>
    <metric>output-mr-Haren-e-kw</metric>
    <metric>output-mr-Haren-h-kw</metric>
    <metric>output-mr-Westerbork-e-kw</metric>
    <metric>output-mr-Westerbork-h-kw</metric>
    <metric>output-mp-Rotterdam-ng-m3</metric>
    <metric>output-mp-Rotterdam-gg-m3</metric>
    <metric>output-mp-Rotterdam-h2-m3</metric>
    <metric>output-mp-Rotterdam-e-kw</metric>
    <metric>output-mp-Rotterdam-h-kw</metric>
    <metric>output-mp-Groningen-ng-m3</metric>
    <metric>output-mp-Groningen-gg-m3</metric>
    <metric>output-mp-Groningen-h2-m3</metric>
    <metric>output-mp-Groningen-e-kw</metric>
    <metric>output-mp-Groningen-h-kw</metric>
    <metric>output-mp-Westerveld-ng-m3</metric>
    <metric>output-mp-Westerveld-gg-m3</metric>
    <metric>output-mp-Westerveld-h2-m3</metric>
    <metric>output-mp-Westerveld-e-kw</metric>
    <metric>output-mp-Westerveld-h-kw</metric>
    <metric>output-mp-ng-m3</metric>
    <metric>output-mp-gg-m3</metric>
    <metric>output-mp-h2-m3</metric>
    <metric>output-mp-ng-kw</metric>
    <metric>output-mp-gg-kw</metric>
    <metric>output-mp-h2-kw</metric>
    <metric>output-mp-e-kw</metric>
    <metric>output-mp-h-kw</metric>
    <metric>output-mp-Rotterdam-nh-ts</metric>
    <metric>output-mp-Groningen-nh-ts</metric>
    <metric>output-mp-Westerveld-nh-ts</metric>
    <metric>output-nh-thermal-system</metric>
    <metric>output-nl-ng</metric>
    <metric>output-nl-ae</metric>
    <metric>output-nl-gg</metric>
    <metric>output-nl-ht/mt</metric>
    <metric>output-nl-lt</metric>
    <metric>output-nl-h2</metric>
    <metric>output-nl-ins</metric>
    <enumeratedValueSet variable="mp-icons">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-low-ins-transition?">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="national-h2-availability-ticks">
      <value value="15"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-nieuw-treshold-high">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="national-gg-potential-PJ">
      <value value="60"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-woz-treshold-high">
      <value value="500"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="national-h2-availability">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-cost-par">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-corp-treshold-med">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mp-top-n">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mp-transition-strategy">
      <value value="&quot;2&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-transition-duration">
      <value value="2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-woz-treshold-med">
      <value value="250"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="hs-labels">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-nieuw-treshold-med">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-dhc-treshold-med">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="hs-limited?">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="max-distance-heatsource">
      <value value="15"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mp-resource-percentage">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-ins-strategy1">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="national-transition-goal">
      <value value="250000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-corp-treshold-high">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-dhc-treshold-high">
      <value value="50"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="E_2_ref" repetitions="10" runMetricsEveryStep="true">
    <setup>bs-setup</setup>
    <go>go</go>
    <metric>output-nl-tpp</metric>
    <metric>; NL mp transition starts per year</metric>
    <metric>output-nl-ts</metric>
    <metric>; NL nh transition states per year</metric>
    <metric>output-nl-nh-tst</metric>
    <metric>output-nl-nh-it</metric>
    <metric>output-nl-nh-tf</metric>
    <metric>; National peak energy output kw</metric>
    <metric>output-nl-kw</metric>
    <metric>output-nl-ng-kw</metric>
    <metric>output-nl-e-kw</metric>
    <metric>output-nl-h-kw</metric>
    <metric>output-nl-gg-kw</metric>
    <metric>output-nl-h2-kw</metric>
    <metric>; National peak energy output m3</metric>
    <metric>output-nl-ng-m3</metric>
    <metric>output-nl-gg-m3</metric>
    <metric>output-nl-h2-m3</metric>
    <metric>; MR peak NG energy output m3</metric>
    <metric>output-mr-Abbenbroek-ng-m3</metric>
    <metric>output-mr-achterdrempt-ng-m3</metric>
    <metric>output-mr-alkmaar-ng-m3</metric>
    <metric>output-mr-angerlo-ng-m3</metric>
    <metric>output-mr-Apeldoorn-ng-m3</metric>
    <metric>output-mr-Assumburg-ng-m3</metric>
    <metric>output-mr-Axel-ng-m3</metric>
    <metric>output-mr-Baal-ng-m3</metric>
    <metric>output-mr-Belfeld-ng-m3</metric>
    <metric>output-mr-Bemelen-ng-m3</metric>
    <metric>output-mr-Best-ng-m3</metric>
    <metric>output-mr-Beverwijk-ng-m3</metric>
    <metric>output-mr-Birstum-ng-m3</metric>
    <metric>output-mr-Bleiswijk-ng-m3</metric>
    <metric>output-mr-Bornerbroek-ng-m3</metric>
    <metric>output-mr-Boxtel-ng-m3</metric>
    <metric>output-mr-DenKaat-ng-m3</metric>
    <metric>output-mr-Driehuis-ng-m3</metric>
    <metric>output-mr-Eext-ng-m3</metric>
    <metric>output-mr-Emmeloord-ng-m3</metric>
    <metric>output-mr-Enschede-ng-m3</metric>
    <metric>output-mr-Esveld-ng-m3</metric>
    <metric>output-mr-Ewijk-ng-m3</metric>
    <metric>output-mr-Gilze-ng-m3</metric>
    <metric>output-mr-Gravenpolder-ng-m3</metric>
    <metric>output-mr-Groenlo-ng-m3</metric>
    <metric>output-mr-Gronsveld-ng-m3</metric>
    <metric>output-mr-Haren-ng-m3</metric>
    <metric>output-mr-Heerhugowaard-ng-m3</metric>
    <metric>output-mr-Hengelo-ng-m3</metric>
    <metric>output-mr-Hilversum-ng-m3</metric>
    <metric>output-mr-Hoofddorp-ng-m3</metric>
    <metric>output-mr-Hoogezand-ng-m3</metric>
    <metric>output-mr-Ijsselmonde-ng-m3</metric>
    <metric>output-mr-Krimpenerwaard-ng-m3</metric>
    <metric>output-mr-Lambertschaag-ng-m3</metric>
    <metric>output-mr-Leusden-Zuid-ng-m3</metric>
    <metric>output-mr-Lingewaal-ng-m3</metric>
    <metric>output-mr-Lurkeers-ng-m3</metric>
    <metric>output-mr-Melick-ng-m3</metric>
    <metric>output-mr-Middelrode-ng-m3</metric>
    <metric>output-mr-Mierlo-ng-m3</metric>
    <metric>output-mr-Mill-ng-m3</metric>
    <metric>output-mr-Moergestel-ng-m3</metric>
    <metric>output-mr-Nederweert-ng-m3</metric>
    <metric>output-mr-Nijkerk-ng-m3</metric>
    <metric>output-mr-Nijland-ng-m3</metric>
    <metric>output-mr-Odijk-ng-m3</metric>
    <metric>output-mr-Ommeloop-ng-m3</metric>
    <metric>output-mr-Oosteind-ng-m3</metric>
    <metric>output-mr-Oostum-ng-m3</metric>
    <metric>output-mr-Opsterland-ng-m3</metric>
    <metric>output-mr-Oss-ng-m3</metric>
    <metric>output-mr-Ossendrecht-ng-m3</metric>
    <metric>output-mr-Oudverlaat-ng-m3</metric>
    <metric>output-mr-Reek-ng-m3</metric>
    <metric>output-mr-Reijerscop-ng-m3</metric>
    <metric>output-mr-Rijnsburg-ng-m3</metric>
    <metric>output-mr-Rijsbergen-ng-m3</metric>
    <metric>output-mr-Rijswijk-ng-m3</metric>
    <metric>output-mr-Sanderbout-ng-m3</metric>
    <metric>output-mr-Scheemda-ng-m3</metric>
    <metric>output-mr-Schinnen-ng-m3</metric>
    <metric>output-mr-Schuilenburg-ng-m3</metric>
    <metric>output-mr-Simpelveld-ng-m3</metric>
    <metric>output-mr-Sloten-ng-m3</metric>
    <metric>output-mr-tWoudt-ng-m3</metric>
    <metric>output-mr-Tiel-ng-m3</metric>
    <metric>output-mr-Valburg-ng-m3</metric>
    <metric>output-mr-Venray-ng-m3</metric>
    <metric>output-mr-Visvliet-ng-m3</metric>
    <metric>output-mr-Vlaardingen-ng-m3</metric>
    <metric>output-mr-Vondelingenplaat-ng-m3</metric>
    <metric>output-mr-Voorburg-ng-m3</metric>
    <metric>output-mr-Weesp-ng-m3</metric>
    <metric>output-mr-Westerbork-ng-m3</metric>
    <metric>output-mr-Wezep-ng-m3</metric>
    <metric>output-mr-Wijngaarden-ng-m3</metric>
    <metric>output-mr-Zaltbommel-ng-m3</metric>
    <metric>output-mr-Zegge-ng-m3</metric>
    <metric>output-mr-Zoeterwoude-ng-m3</metric>
    <metric>output-mr-Zuid-Kraayert-ng-m3</metric>
    <metric>output-mr-Zuideropgaande-ng-m3</metric>
    <metric>; MR peak GG energy output m3</metric>
    <metric>output-mr-Abbenbroek-gg-m3</metric>
    <metric>output-mr-Achterdrempt-gg-m3</metric>
    <metric>output-mr-Alkmaar-gg-m3</metric>
    <metric>output-mr-Angerlo-gg-m3</metric>
    <metric>output-mr-Apeldoorn-gg-m3</metric>
    <metric>output-mr-Assumburg-gg-m3</metric>
    <metric>output-mr-Axel-gg-m3</metric>
    <metric>output-mr-Baal-gg-m3</metric>
    <metric>output-mr-Belfeld-gg-m3</metric>
    <metric>output-mr-Bemelen-gg-m3</metric>
    <metric>output-mr-Best-gg-m3</metric>
    <metric>output-mr-Beverwijk-gg-m3</metric>
    <metric>output-mr-Birstum-gg-m3</metric>
    <metric>output-mr-Bleiswijk-gg-m3</metric>
    <metric>output-mr-Bornerbroek-gg-m3</metric>
    <metric>output-mr-Boxtel-gg-m3</metric>
    <metric>output-mr-DenKaat-gg-m3</metric>
    <metric>output-mr-Driehuis-gg-m3</metric>
    <metric>output-mr-Eext-gg-m3</metric>
    <metric>output-mr-Emmeloord-gg-m3</metric>
    <metric>output-mr-Enschede-gg-m3</metric>
    <metric>output-mr-Esveld-gg-m3</metric>
    <metric>output-mr-Ewijk-gg-m3</metric>
    <metric>output-mr-Gilze-gg-m3</metric>
    <metric>output-mr-Gravenpolder-gg-m3</metric>
    <metric>output-mr-Groenlo-gg-m3</metric>
    <metric>output-mr-Gronsveld-gg-m3</metric>
    <metric>output-mr-Haren-gg-m3</metric>
    <metric>output-mr-Heerhugowaard-gg-m3</metric>
    <metric>output-mr-Hengelo-gg-m3</metric>
    <metric>output-mr-Hilversum-gg-m3</metric>
    <metric>output-mr-Hoofddorp-gg-m3</metric>
    <metric>output-mr-Hoogezand-gg-m3</metric>
    <metric>output-mr-Ijsselmonde-gg-m3</metric>
    <metric>output-mr-Krimpenerwaard-gg-m3</metric>
    <metric>output-mr-Lambertschaag-gg-m3</metric>
    <metric>output-mr-Leusden-Zuid-gg-m3</metric>
    <metric>output-mr-Lingewaal-gg-m3</metric>
    <metric>output-mr-Lurkeers-gg-m3</metric>
    <metric>output-mr-Melick-gg-m3</metric>
    <metric>output-mr-Middelrode-gg-m3</metric>
    <metric>output-mr-Mierlo-gg-m3</metric>
    <metric>output-mr-Mill-gg-m3</metric>
    <metric>output-mr-Moergestel-gg-m3</metric>
    <metric>output-mr-Nederweert-gg-m3</metric>
    <metric>output-mr-Nijkerk-gg-m3</metric>
    <metric>output-mr-Nijland-gg-m3</metric>
    <metric>output-mr-Odijk-gg-m3</metric>
    <metric>output-mr-Ommeloop-gg-m3</metric>
    <metric>output-mr-Oosteind-gg-m3</metric>
    <metric>output-mr-Oostum-gg-m3</metric>
    <metric>output-mr-Opsterland-gg-m3</metric>
    <metric>output-mr-Oss-gg-m3</metric>
    <metric>output-mr-Ossendrecht-gg-m3</metric>
    <metric>output-mr-Oudverlaat-gg-m3</metric>
    <metric>output-mr-Reek-gg-m3</metric>
    <metric>output-mr-Reijerscop-gg-m3</metric>
    <metric>output-mr-Rijnsburg-gg-m3</metric>
    <metric>output-mr-Rijsbergen-gg-m3</metric>
    <metric>output-mr-Rijswijk-gg-m3</metric>
    <metric>output-mr-Sanderbout-gg-m3</metric>
    <metric>output-mr-Scheemda-gg-m3</metric>
    <metric>output-mr-Schinnen-gg-m3</metric>
    <metric>output-mr-Schuilenburg-gg-m3</metric>
    <metric>output-mr-Simpelveld-gg-m3</metric>
    <metric>output-mr-Sloten-gg-m3</metric>
    <metric>output-mr-tWoudt-gg-m3</metric>
    <metric>output-mr-Tiel-gg-m3</metric>
    <metric>output-mr-Valburg-gg-m3</metric>
    <metric>output-mr-Venray-gg-m3</metric>
    <metric>output-mr-Visvliet-gg-m3</metric>
    <metric>output-mr-Vlaardingen-gg-m3</metric>
    <metric>output-mr-Vondelingenplaat-gg-m3</metric>
    <metric>output-mr-Voorburg-gg-m3</metric>
    <metric>output-mr-Weesp-gg-m3</metric>
    <metric>output-mr-Westerbork-gg-m3</metric>
    <metric>output-mr-Wezep-gg-m3</metric>
    <metric>output-mr-Wijngaarden-gg-m3</metric>
    <metric>output-mr-Zaltbommel-gg-m3</metric>
    <metric>output-mr-Zegge-gg-m3</metric>
    <metric>output-mr-Zoeterwoude-gg-m3</metric>
    <metric>output-mr-Zuid-Kraayert-gg-m3</metric>
    <metric>output-mr-Zuideropgaande-gg-m3</metric>
    <metric>; MR peak H2 energy output m3</metric>
    <metric>output-mr-Abbenbroek-h2-m3</metric>
    <metric>output-mr-Achterdrempt-h2-m3</metric>
    <metric>output-mr-Alkmaar-h2-m3</metric>
    <metric>output-mr-Angerlo-h2-m3</metric>
    <metric>output-mr-Apeldoorn-h2-m3</metric>
    <metric>output-mr-Assumburg-h2-m3</metric>
    <metric>output-mr-Axel-h2-m3</metric>
    <metric>output-mr-Baal-h2-m3</metric>
    <metric>output-mr-Belfeld-h2-m3</metric>
    <metric>output-mr-Bemelen-h2-m3</metric>
    <metric>output-mr-Best-h2-m3</metric>
    <metric>output-mr-Beverwijk-h2-m3</metric>
    <metric>output-mr-Birstum-h2-m3</metric>
    <metric>output-mr-Bleiswijk-h2-m3</metric>
    <metric>output-mr-Bornerbroek-h2-m3</metric>
    <metric>output-mr-Boxtel-h2-m3</metric>
    <metric>output-mr-DenKaat-h2-m3</metric>
    <metric>output-mr-Driehuis-h2-m3</metric>
    <metric>output-mr-Eext-h2-m3</metric>
    <metric>output-mr-Emmeloord-h2-m3</metric>
    <metric>output-mr-Enschede-h2-m3</metric>
    <metric>output-mr-Esveld-h2-m3</metric>
    <metric>output-mr-Ewijk-h2-m3</metric>
    <metric>output-mr-Gilze-h2-m3</metric>
    <metric>output-mr-Gravenpolder-h2-m3</metric>
    <metric>output-mr-Groenlo-h2-m3</metric>
    <metric>output-mr-Gronsveld-h2-m3</metric>
    <metric>output-mr-Haren-h2-m3</metric>
    <metric>output-mr-Heerhugowaard-h2-m3</metric>
    <metric>output-mr-Hengelo-h2-m3</metric>
    <metric>output-mr-Hilversum-h2-m3</metric>
    <metric>output-mr-Hoofddorp-h2-m3</metric>
    <metric>output-mr-Hoogezand-h2-m3</metric>
    <metric>output-mr-Ijsselmonde-h2-m3</metric>
    <metric>output-mr-Krimpenerwaard-h2-m3</metric>
    <metric>output-mr-Lambertschaag-h2-m3</metric>
    <metric>output-mr-Leusden-Zuid-h2-m3</metric>
    <metric>output-mr-Lingewaal-h2-m3</metric>
    <metric>output-mr-Lurkeers-h2-m3</metric>
    <metric>output-mr-Melick-h2-m3</metric>
    <metric>output-mr-Middelrode-h2-m3</metric>
    <metric>output-mr-Mierlo-h2-m3</metric>
    <metric>output-mr-Mill-h2-m3</metric>
    <metric>output-mr-Moergestel-h2-m3</metric>
    <metric>output-mr-Nederweert-h2-m3</metric>
    <metric>output-mr-Nijkerk-h2-m3</metric>
    <metric>output-mr-Nijland-h2-m3</metric>
    <metric>output-mr-Odijk-h2-m3</metric>
    <metric>output-mr-Ommeloop-h2-m3</metric>
    <metric>output-mr-Oosteind-h2-m3</metric>
    <metric>output-mr-Oostum-h2-m3</metric>
    <metric>output-mr-Opsterland-h2-m3</metric>
    <metric>output-mr-Oss-h2-m3</metric>
    <metric>output-mr-Ossendrecht-h2-m3</metric>
    <metric>output-mr-Oudverlaat-h2-m3</metric>
    <metric>output-mr-Reek-h2-m3</metric>
    <metric>output-mr-Reijerscop-h2-m3</metric>
    <metric>output-mr-Rijnsburg-h2-m3</metric>
    <metric>output-mr-Rijsbergen-h2-m3</metric>
    <metric>output-mr-Rijswijk-h2-m3</metric>
    <metric>output-mr-Sanderbout-h2-m3</metric>
    <metric>output-mr-Scheemda-h2-m3</metric>
    <metric>output-mr-Schinnen-h2-m3</metric>
    <metric>output-mr-Schuilenburg-h2-m3</metric>
    <metric>output-mr-Simpelveld-h2-m3</metric>
    <metric>output-mr-Sloten-h2-m3</metric>
    <metric>output-mr-tWoudt-h2-m3</metric>
    <metric>output-mr-Tiel-h2-m3</metric>
    <metric>output-mr-Valburg-h2-m3</metric>
    <metric>output-mr-Venray-h2-m3</metric>
    <metric>output-mr-Visvliet-h2-m3</metric>
    <metric>output-mr-Vlaardingen-h2-m3</metric>
    <metric>output-mr-Vondelingenplaat-h2-m3</metric>
    <metric>output-mr-Voorburg-h2-m3</metric>
    <metric>output-mr-Weesp-h2-m3</metric>
    <metric>output-mr-Westerbork-h2-m3</metric>
    <metric>output-mr-Wezep-h2-m3</metric>
    <metric>output-mr-Wijngaarden-h2-m3</metric>
    <metric>output-mr-Zaltbommel-h2-m3</metric>
    <metric>output-mr-Zegge-h2-m3</metric>
    <metric>output-mr-Zoeterwoude-h2-m3</metric>
    <metric>output-mr-Zuid-Kraayert-h2-m3</metric>
    <metric>output-mr-Zuideropgaande-h2-m3</metric>
    <metric>; energy output of 3 specific MR stations</metric>
    <metric>output-mr-Vlaardingen-e-kw</metric>
    <metric>output-mr-Vlaardingen-h-kw</metric>
    <metric>output-mr-Haren-e-kw</metric>
    <metric>output-mr-Haren-h-kw</metric>
    <metric>output-mr-Westerbork-e-kw</metric>
    <metric>output-mr-Westerbork-h-kw</metric>
    <metric>output-mr-Vlaardingen-tpp</metric>
    <metric>output-mr-Haren-tpp</metric>
    <metric>output-mr-Westerbork-tpp</metric>
    <metric>; energy output of 3 specific mp's</metric>
    <metric>; energy output MR Vlaardingen MP's</metric>
    <metric>output-mp-Rotterdam-ng-m3</metric>
    <metric>output-mp-Rotterdam-gg-m3</metric>
    <metric>output-mp-Rotterdam-h2-m3</metric>
    <metric>output-mp-Rotterdam-ng-kw</metric>
    <metric>output-mp-Rotterdam-gg-kw</metric>
    <metric>output-mp-Rotterdam-h2-kw</metric>
    <metric>output-mp-Rotterdam-e-kw</metric>
    <metric>output-mp-Rotterdam-h-kw</metric>
    <metric>output-mp-Rotterdam-tpp</metric>
    <metric>output-mp-Vlaardingen-ng-m3</metric>
    <metric>output-mp-Vlaardingen-gg-m3</metric>
    <metric>output-mp-Vlaardingen-h2-m3</metric>
    <metric>output-mp-Vlaardingen-ng-kw</metric>
    <metric>output-mp-Vlaardingen-gg-kw</metric>
    <metric>output-mp-Vlaardingen-h2-kw</metric>
    <metric>output-mp-Vlaardingen-e-kw</metric>
    <metric>output-mp-Vlaardingen-h-kw</metric>
    <metric>output-mp-Vlaardingen-tpp</metric>
    <metric>output-mp-Maassluis-ng-m3</metric>
    <metric>output-mp-Maassluis-gg-m3</metric>
    <metric>output-mp-Maassluis-h2-m3</metric>
    <metric>output-mp-Maassluis-ng-kw</metric>
    <metric>output-mp-Maassluis-gg-kw</metric>
    <metric>output-mp-Maassluis-h2-kw</metric>
    <metric>output-mp-Maassluis-e-kw</metric>
    <metric>output-mp-Maassluis-h-kw</metric>
    <metric>output-mp-Maassluis-tpp</metric>
    <metric>output-mp-Schiedam-ng-m3</metric>
    <metric>output-mp-Schiedam-gg-m3</metric>
    <metric>output-mp-Schiedam-h2-m3</metric>
    <metric>output-mp-Schiedam-ng-kw</metric>
    <metric>output-mp-Schiedam-gg-kw</metric>
    <metric>output-mp-Schiedam-h2-kw</metric>
    <metric>output-mp-Schiedam-e-kw</metric>
    <metric>output-mp-Schiedam-h-kw</metric>
    <metric>output-mp-Schiedam-tpp</metric>
    <metric>; energy output MR Haren</metric>
    <metric>output-mp-Groningen-ng-m3</metric>
    <metric>output-mp-Groningen-gg-m3</metric>
    <metric>output-mp-Groningen-h2-m3</metric>
    <metric>output-mp-Groningen-ng-kw</metric>
    <metric>output-mp-Groningen-gg-kw</metric>
    <metric>output-mp-Groningen-h2-kw</metric>
    <metric>output-mp-Groningen-e-kw</metric>
    <metric>output-mp-Groningen-h-kw</metric>
    <metric>output-mp-Groningen-tpp</metric>
    <metric>output-mp-Leek-ng-m3</metric>
    <metric>output-mp-Leek-gg-m3</metric>
    <metric>output-mp-Leek-h2-m3</metric>
    <metric>output-mp-Leek-ng-kw</metric>
    <metric>output-mp-Leek-gg-kw</metric>
    <metric>output-mp-Leek-h2-kw</metric>
    <metric>output-mp-Leek-e-kw</metric>
    <metric>output-mp-Leek-h-kw</metric>
    <metric>output-mp-Leek-tpp</metric>
    <metric>output-mp-Marum-ng-m3</metric>
    <metric>output-mp-Marum-gg-m3</metric>
    <metric>output-mp-Marum-h2-m3</metric>
    <metric>output-mp-Marum-ng-kw</metric>
    <metric>output-mp-Marum-gg-kw</metric>
    <metric>output-mp-Marum-h2-kw</metric>
    <metric>output-mp-Marum-e-kw</metric>
    <metric>output-mp-Marum-h-kw</metric>
    <metric>output-mp-Marum-tpp</metric>
    <metric>output-mp-Noordenveld-ng-m3</metric>
    <metric>output-mp-Noordenveld-gg-m3</metric>
    <metric>output-mp-Noordenveld-h2-m3</metric>
    <metric>output-mp-Noordenveld-ng-kw</metric>
    <metric>output-mp-Noordenveld-gg-kw</metric>
    <metric>output-mp-Noordenveld-h2-kw</metric>
    <metric>output-mp-Noordenveld-e-kw</metric>
    <metric>output-mp-Noordenveld-h-kw</metric>
    <metric>output-mp-Noordenveld-tpp</metric>
    <metric>output-mp-Haren-ng-m3</metric>
    <metric>output-mp-Haren-gg-m3</metric>
    <metric>output-mp-Haren-h2-m3</metric>
    <metric>output-mp-Haren-ng-kw</metric>
    <metric>output-mp-Haren-gg-kw</metric>
    <metric>output-mp-Haren-h2-kw</metric>
    <metric>output-mp-Haren-e-kw</metric>
    <metric>output-mp-Haren-h-kw</metric>
    <metric>output-mp-Haren-tpp</metric>
    <metric>; energy output MR Westerbork</metric>
    <metric>output-mp-Emmen-ng-m3</metric>
    <metric>output-mp-Emmen-gg-m3</metric>
    <metric>output-mp-Emmen-h2-m3</metric>
    <metric>output-mp-Emmen-ng-kw</metric>
    <metric>output-mp-Emmen-gg-kw</metric>
    <metric>output-mp-Emmen-h2-kw</metric>
    <metric>output-mp-Emmen-e-kw</metric>
    <metric>output-mp-Emmen-h-kw</metric>
    <metric>output-mp-Emmen-tpp</metric>
    <metric>output-mp-Westerveld-ng-m3</metric>
    <metric>output-mp-Westerveld-gg-m3</metric>
    <metric>output-mp-Westerveld-h2-m3</metric>
    <metric>output-mp-Westerveld-ng-kw</metric>
    <metric>output-mp-Westerveld-gg-kw</metric>
    <metric>output-mp-Westerveld-h2-kw</metric>
    <metric>output-mp-Westerveld-e-kw</metric>
    <metric>output-mp-Westerveld-h-kw</metric>
    <metric>output-mp-Westerveld-tpp</metric>
    <metric>output-mp-Midden-Drenthe-ng-m3</metric>
    <metric>output-mp-Midden-Drenthe-gg-m3</metric>
    <metric>output-mp-Midden-Drenthe-h2-m3</metric>
    <metric>output-mp-Midden-Drenthe-ng-kw</metric>
    <metric>output-mp-Midden-Drenthe-gg-kw</metric>
    <metric>output-mp-Midden-Drenthe-h2-kw</metric>
    <metric>output-mp-Midden-Drenthe-e-kw</metric>
    <metric>output-mp-Midden-Drenthe-h-kw</metric>
    <metric>output-mp-Midden-Drenthe-tpp</metric>
    <metric>; output all mp's in list format</metric>
    <metric>output-mp-ng-m3</metric>
    <metric>output-mp-gg-m3</metric>
    <metric>output-mp-h2-m3</metric>
    <metric>output-mp-ng-kw</metric>
    <metric>output-mp-gg-kw</metric>
    <metric>output-mp-h2-kw</metric>
    <metric>output-mp-e-kw</metric>
    <metric>output-mp-h-kw</metric>
    <metric>; nh transition start per tick output</metric>
    <metric>output-mp-Rotterdam-nh-ts</metric>
    <metric>output-mp-Groningen-nh-ts</metric>
    <metric>output-mp-Westerveld-nh-ts</metric>
    <metric>; thermal systems of neighborhoods</metric>
    <metric>output-nh-thermal-system</metric>
    <metric>; thermal systems output on nl level</metric>
    <metric>output-nl-ng</metric>
    <metric>output-nl-ae</metric>
    <metric>output-nl-gg</metric>
    <metric>output-nl-ht/mt</metric>
    <metric>output-nl-lt</metric>
    <metric>output-nl-h2</metric>
    <metric>; insulation level output on nl level</metric>
    <metric>output-nl-ins</metric>
    <enumeratedValueSet variable="mp-icons">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-low-ins-transition?">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="national-h2-availability-ticks">
      <value value="15"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-nieuw-treshold-high">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="national-gg-potential-PJ">
      <value value="60"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-woz-treshold-high">
      <value value="500"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="national-h2-availability">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-cost-par">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-corp-treshold-med">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mp-top-n">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mp-transition-strategy">
      <value value="&quot;2&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-transition-duration">
      <value value="2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-woz-treshold-med">
      <value value="250"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="hs-labels">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-nieuw-treshold-med">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-dhc-treshold-med">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="hs-limited?">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="max-distance-heatsource">
      <value value="15"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mp-resource-percentage">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-ins-strategy1">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="national-transition-goal">
      <value value="250000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-corp-treshold-high">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-dhc-treshold-high">
      <value value="50"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="E_all_inverse" repetitions="100" runMetricsEveryStep="true">
    <setup>bs-setup</setup>
    <go>go</go>
    <metric>output-nl-tpp</metric>
    <metric>; NL mp transition starts per year</metric>
    <metric>output-nl-ts</metric>
    <metric>; NL nh transition states per year</metric>
    <metric>output-nl-nh-tst</metric>
    <metric>output-nl-nh-it</metric>
    <metric>output-nl-nh-tf</metric>
    <metric>; National peak energy output kw</metric>
    <metric>output-nl-kw</metric>
    <metric>output-nl-ng-kw</metric>
    <metric>output-nl-e-kw</metric>
    <metric>output-nl-h-kw</metric>
    <metric>output-nl-gg-kw</metric>
    <metric>output-nl-h2-kw</metric>
    <metric>; National peak energy output m3</metric>
    <metric>output-nl-ng-m3</metric>
    <metric>output-nl-gg-m3</metric>
    <metric>output-nl-h2-m3</metric>
    <metric>; MR peak NG energy output m3</metric>
    <metric>output-mr-Abbenbroek-ng-m3</metric>
    <metric>output-mr-achterdrempt-ng-m3</metric>
    <metric>output-mr-alkmaar-ng-m3</metric>
    <metric>output-mr-angerlo-ng-m3</metric>
    <metric>output-mr-Apeldoorn-ng-m3</metric>
    <metric>output-mr-Assumburg-ng-m3</metric>
    <metric>output-mr-Axel-ng-m3</metric>
    <metric>output-mr-Baal-ng-m3</metric>
    <metric>output-mr-Belfeld-ng-m3</metric>
    <metric>output-mr-Bemelen-ng-m3</metric>
    <metric>output-mr-Best-ng-m3</metric>
    <metric>output-mr-Beverwijk-ng-m3</metric>
    <metric>output-mr-Birstum-ng-m3</metric>
    <metric>output-mr-Bleiswijk-ng-m3</metric>
    <metric>output-mr-Bornerbroek-ng-m3</metric>
    <metric>output-mr-Boxtel-ng-m3</metric>
    <metric>output-mr-DenKaat-ng-m3</metric>
    <metric>output-mr-Driehuis-ng-m3</metric>
    <metric>output-mr-Eext-ng-m3</metric>
    <metric>output-mr-Emmeloord-ng-m3</metric>
    <metric>output-mr-Enschede-ng-m3</metric>
    <metric>output-mr-Esveld-ng-m3</metric>
    <metric>output-mr-Ewijk-ng-m3</metric>
    <metric>output-mr-Gilze-ng-m3</metric>
    <metric>output-mr-Gravenpolder-ng-m3</metric>
    <metric>output-mr-Groenlo-ng-m3</metric>
    <metric>output-mr-Gronsveld-ng-m3</metric>
    <metric>output-mr-Haren-ng-m3</metric>
    <metric>output-mr-Heerhugowaard-ng-m3</metric>
    <metric>output-mr-Hengelo-ng-m3</metric>
    <metric>output-mr-Hilversum-ng-m3</metric>
    <metric>output-mr-Hoofddorp-ng-m3</metric>
    <metric>output-mr-Hoogezand-ng-m3</metric>
    <metric>output-mr-Ijsselmonde-ng-m3</metric>
    <metric>output-mr-Krimpenerwaard-ng-m3</metric>
    <metric>output-mr-Lambertschaag-ng-m3</metric>
    <metric>output-mr-Leusden-Zuid-ng-m3</metric>
    <metric>output-mr-Lingewaal-ng-m3</metric>
    <metric>output-mr-Lurkeers-ng-m3</metric>
    <metric>output-mr-Melick-ng-m3</metric>
    <metric>output-mr-Middelrode-ng-m3</metric>
    <metric>output-mr-Mierlo-ng-m3</metric>
    <metric>output-mr-Mill-ng-m3</metric>
    <metric>output-mr-Moergestel-ng-m3</metric>
    <metric>output-mr-Nederweert-ng-m3</metric>
    <metric>output-mr-Nijkerk-ng-m3</metric>
    <metric>output-mr-Nijland-ng-m3</metric>
    <metric>output-mr-Odijk-ng-m3</metric>
    <metric>output-mr-Ommeloop-ng-m3</metric>
    <metric>output-mr-Oosteind-ng-m3</metric>
    <metric>output-mr-Oostum-ng-m3</metric>
    <metric>output-mr-Opsterland-ng-m3</metric>
    <metric>output-mr-Oss-ng-m3</metric>
    <metric>output-mr-Ossendrecht-ng-m3</metric>
    <metric>output-mr-Oudverlaat-ng-m3</metric>
    <metric>output-mr-Reek-ng-m3</metric>
    <metric>output-mr-Reijerscop-ng-m3</metric>
    <metric>output-mr-Rijnsburg-ng-m3</metric>
    <metric>output-mr-Rijsbergen-ng-m3</metric>
    <metric>output-mr-Rijswijk-ng-m3</metric>
    <metric>output-mr-Sanderbout-ng-m3</metric>
    <metric>output-mr-Scheemda-ng-m3</metric>
    <metric>output-mr-Schinnen-ng-m3</metric>
    <metric>output-mr-Schuilenburg-ng-m3</metric>
    <metric>output-mr-Simpelveld-ng-m3</metric>
    <metric>output-mr-Sloten-ng-m3</metric>
    <metric>output-mr-tWoudt-ng-m3</metric>
    <metric>output-mr-Tiel-ng-m3</metric>
    <metric>output-mr-Valburg-ng-m3</metric>
    <metric>output-mr-Venray-ng-m3</metric>
    <metric>output-mr-Visvliet-ng-m3</metric>
    <metric>output-mr-Vlaardingen-ng-m3</metric>
    <metric>output-mr-Vondelingenplaat-ng-m3</metric>
    <metric>output-mr-Voorburg-ng-m3</metric>
    <metric>output-mr-Weesp-ng-m3</metric>
    <metric>output-mr-Westerbork-ng-m3</metric>
    <metric>output-mr-Wezep-ng-m3</metric>
    <metric>output-mr-Wijngaarden-ng-m3</metric>
    <metric>output-mr-Zaltbommel-ng-m3</metric>
    <metric>output-mr-Zegge-ng-m3</metric>
    <metric>output-mr-Zoeterwoude-ng-m3</metric>
    <metric>output-mr-Zuid-Kraayert-ng-m3</metric>
    <metric>output-mr-Zuideropgaande-ng-m3</metric>
    <metric>; MR peak GG energy output m3</metric>
    <metric>output-mr-Abbenbroek-gg-m3</metric>
    <metric>output-mr-Achterdrempt-gg-m3</metric>
    <metric>output-mr-Alkmaar-gg-m3</metric>
    <metric>output-mr-Angerlo-gg-m3</metric>
    <metric>output-mr-Apeldoorn-gg-m3</metric>
    <metric>output-mr-Assumburg-gg-m3</metric>
    <metric>output-mr-Axel-gg-m3</metric>
    <metric>output-mr-Baal-gg-m3</metric>
    <metric>output-mr-Belfeld-gg-m3</metric>
    <metric>output-mr-Bemelen-gg-m3</metric>
    <metric>output-mr-Best-gg-m3</metric>
    <metric>output-mr-Beverwijk-gg-m3</metric>
    <metric>output-mr-Birstum-gg-m3</metric>
    <metric>output-mr-Bleiswijk-gg-m3</metric>
    <metric>output-mr-Bornerbroek-gg-m3</metric>
    <metric>output-mr-Boxtel-gg-m3</metric>
    <metric>output-mr-DenKaat-gg-m3</metric>
    <metric>output-mr-Driehuis-gg-m3</metric>
    <metric>output-mr-Eext-gg-m3</metric>
    <metric>output-mr-Emmeloord-gg-m3</metric>
    <metric>output-mr-Enschede-gg-m3</metric>
    <metric>output-mr-Esveld-gg-m3</metric>
    <metric>output-mr-Ewijk-gg-m3</metric>
    <metric>output-mr-Gilze-gg-m3</metric>
    <metric>output-mr-Gravenpolder-gg-m3</metric>
    <metric>output-mr-Groenlo-gg-m3</metric>
    <metric>output-mr-Gronsveld-gg-m3</metric>
    <metric>output-mr-Haren-gg-m3</metric>
    <metric>output-mr-Heerhugowaard-gg-m3</metric>
    <metric>output-mr-Hengelo-gg-m3</metric>
    <metric>output-mr-Hilversum-gg-m3</metric>
    <metric>output-mr-Hoofddorp-gg-m3</metric>
    <metric>output-mr-Hoogezand-gg-m3</metric>
    <metric>output-mr-Ijsselmonde-gg-m3</metric>
    <metric>output-mr-Krimpenerwaard-gg-m3</metric>
    <metric>output-mr-Lambertschaag-gg-m3</metric>
    <metric>output-mr-Leusden-Zuid-gg-m3</metric>
    <metric>output-mr-Lingewaal-gg-m3</metric>
    <metric>output-mr-Lurkeers-gg-m3</metric>
    <metric>output-mr-Melick-gg-m3</metric>
    <metric>output-mr-Middelrode-gg-m3</metric>
    <metric>output-mr-Mierlo-gg-m3</metric>
    <metric>output-mr-Mill-gg-m3</metric>
    <metric>output-mr-Moergestel-gg-m3</metric>
    <metric>output-mr-Nederweert-gg-m3</metric>
    <metric>output-mr-Nijkerk-gg-m3</metric>
    <metric>output-mr-Nijland-gg-m3</metric>
    <metric>output-mr-Odijk-gg-m3</metric>
    <metric>output-mr-Ommeloop-gg-m3</metric>
    <metric>output-mr-Oosteind-gg-m3</metric>
    <metric>output-mr-Oostum-gg-m3</metric>
    <metric>output-mr-Opsterland-gg-m3</metric>
    <metric>output-mr-Oss-gg-m3</metric>
    <metric>output-mr-Ossendrecht-gg-m3</metric>
    <metric>output-mr-Oudverlaat-gg-m3</metric>
    <metric>output-mr-Reek-gg-m3</metric>
    <metric>output-mr-Reijerscop-gg-m3</metric>
    <metric>output-mr-Rijnsburg-gg-m3</metric>
    <metric>output-mr-Rijsbergen-gg-m3</metric>
    <metric>output-mr-Rijswijk-gg-m3</metric>
    <metric>output-mr-Sanderbout-gg-m3</metric>
    <metric>output-mr-Scheemda-gg-m3</metric>
    <metric>output-mr-Schinnen-gg-m3</metric>
    <metric>output-mr-Schuilenburg-gg-m3</metric>
    <metric>output-mr-Simpelveld-gg-m3</metric>
    <metric>output-mr-Sloten-gg-m3</metric>
    <metric>output-mr-tWoudt-gg-m3</metric>
    <metric>output-mr-Tiel-gg-m3</metric>
    <metric>output-mr-Valburg-gg-m3</metric>
    <metric>output-mr-Venray-gg-m3</metric>
    <metric>output-mr-Visvliet-gg-m3</metric>
    <metric>output-mr-Vlaardingen-gg-m3</metric>
    <metric>output-mr-Vondelingenplaat-gg-m3</metric>
    <metric>output-mr-Voorburg-gg-m3</metric>
    <metric>output-mr-Weesp-gg-m3</metric>
    <metric>output-mr-Westerbork-gg-m3</metric>
    <metric>output-mr-Wezep-gg-m3</metric>
    <metric>output-mr-Wijngaarden-gg-m3</metric>
    <metric>output-mr-Zaltbommel-gg-m3</metric>
    <metric>output-mr-Zegge-gg-m3</metric>
    <metric>output-mr-Zoeterwoude-gg-m3</metric>
    <metric>output-mr-Zuid-Kraayert-gg-m3</metric>
    <metric>output-mr-Zuideropgaande-gg-m3</metric>
    <metric>; MR peak H2 energy output m3</metric>
    <metric>output-mr-Abbenbroek-h2-m3</metric>
    <metric>output-mr-Achterdrempt-h2-m3</metric>
    <metric>output-mr-Alkmaar-h2-m3</metric>
    <metric>output-mr-Angerlo-h2-m3</metric>
    <metric>output-mr-Apeldoorn-h2-m3</metric>
    <metric>output-mr-Assumburg-h2-m3</metric>
    <metric>output-mr-Axel-h2-m3</metric>
    <metric>output-mr-Baal-h2-m3</metric>
    <metric>output-mr-Belfeld-h2-m3</metric>
    <metric>output-mr-Bemelen-h2-m3</metric>
    <metric>output-mr-Best-h2-m3</metric>
    <metric>output-mr-Beverwijk-h2-m3</metric>
    <metric>output-mr-Birstum-h2-m3</metric>
    <metric>output-mr-Bleiswijk-h2-m3</metric>
    <metric>output-mr-Bornerbroek-h2-m3</metric>
    <metric>output-mr-Boxtel-h2-m3</metric>
    <metric>output-mr-DenKaat-h2-m3</metric>
    <metric>output-mr-Driehuis-h2-m3</metric>
    <metric>output-mr-Eext-h2-m3</metric>
    <metric>output-mr-Emmeloord-h2-m3</metric>
    <metric>output-mr-Enschede-h2-m3</metric>
    <metric>output-mr-Esveld-h2-m3</metric>
    <metric>output-mr-Ewijk-h2-m3</metric>
    <metric>output-mr-Gilze-h2-m3</metric>
    <metric>output-mr-Gravenpolder-h2-m3</metric>
    <metric>output-mr-Groenlo-h2-m3</metric>
    <metric>output-mr-Gronsveld-h2-m3</metric>
    <metric>output-mr-Haren-h2-m3</metric>
    <metric>output-mr-Heerhugowaard-h2-m3</metric>
    <metric>output-mr-Hengelo-h2-m3</metric>
    <metric>output-mr-Hilversum-h2-m3</metric>
    <metric>output-mr-Hoofddorp-h2-m3</metric>
    <metric>output-mr-Hoogezand-h2-m3</metric>
    <metric>output-mr-Ijsselmonde-h2-m3</metric>
    <metric>output-mr-Krimpenerwaard-h2-m3</metric>
    <metric>output-mr-Lambertschaag-h2-m3</metric>
    <metric>output-mr-Leusden-Zuid-h2-m3</metric>
    <metric>output-mr-Lingewaal-h2-m3</metric>
    <metric>output-mr-Lurkeers-h2-m3</metric>
    <metric>output-mr-Melick-h2-m3</metric>
    <metric>output-mr-Middelrode-h2-m3</metric>
    <metric>output-mr-Mierlo-h2-m3</metric>
    <metric>output-mr-Mill-h2-m3</metric>
    <metric>output-mr-Moergestel-h2-m3</metric>
    <metric>output-mr-Nederweert-h2-m3</metric>
    <metric>output-mr-Nijkerk-h2-m3</metric>
    <metric>output-mr-Nijland-h2-m3</metric>
    <metric>output-mr-Odijk-h2-m3</metric>
    <metric>output-mr-Ommeloop-h2-m3</metric>
    <metric>output-mr-Oosteind-h2-m3</metric>
    <metric>output-mr-Oostum-h2-m3</metric>
    <metric>output-mr-Opsterland-h2-m3</metric>
    <metric>output-mr-Oss-h2-m3</metric>
    <metric>output-mr-Ossendrecht-h2-m3</metric>
    <metric>output-mr-Oudverlaat-h2-m3</metric>
    <metric>output-mr-Reek-h2-m3</metric>
    <metric>output-mr-Reijerscop-h2-m3</metric>
    <metric>output-mr-Rijnsburg-h2-m3</metric>
    <metric>output-mr-Rijsbergen-h2-m3</metric>
    <metric>output-mr-Rijswijk-h2-m3</metric>
    <metric>output-mr-Sanderbout-h2-m3</metric>
    <metric>output-mr-Scheemda-h2-m3</metric>
    <metric>output-mr-Schinnen-h2-m3</metric>
    <metric>output-mr-Schuilenburg-h2-m3</metric>
    <metric>output-mr-Simpelveld-h2-m3</metric>
    <metric>output-mr-Sloten-h2-m3</metric>
    <metric>output-mr-tWoudt-h2-m3</metric>
    <metric>output-mr-Tiel-h2-m3</metric>
    <metric>output-mr-Valburg-h2-m3</metric>
    <metric>output-mr-Venray-h2-m3</metric>
    <metric>output-mr-Visvliet-h2-m3</metric>
    <metric>output-mr-Vlaardingen-h2-m3</metric>
    <metric>output-mr-Vondelingenplaat-h2-m3</metric>
    <metric>output-mr-Voorburg-h2-m3</metric>
    <metric>output-mr-Weesp-h2-m3</metric>
    <metric>output-mr-Westerbork-h2-m3</metric>
    <metric>output-mr-Wezep-h2-m3</metric>
    <metric>output-mr-Wijngaarden-h2-m3</metric>
    <metric>output-mr-Zaltbommel-h2-m3</metric>
    <metric>output-mr-Zegge-h2-m3</metric>
    <metric>output-mr-Zoeterwoude-h2-m3</metric>
    <metric>output-mr-Zuid-Kraayert-h2-m3</metric>
    <metric>output-mr-Zuideropgaande-h2-m3</metric>
    <metric>; energy output of 3 specific MR stations</metric>
    <metric>output-mr-Vlaardingen-e-kw</metric>
    <metric>output-mr-Vlaardingen-h-kw</metric>
    <metric>output-mr-Haren-e-kw</metric>
    <metric>output-mr-Haren-h-kw</metric>
    <metric>output-mr-Westerbork-e-kw</metric>
    <metric>output-mr-Westerbork-h-kw</metric>
    <metric>output-mr-Vlaardingen-tpp</metric>
    <metric>output-mr-Haren-tpp</metric>
    <metric>output-mr-Westerbork-tpp</metric>
    <metric>; energy output of 3 specific mp's</metric>
    <metric>; energy output MR Vlaardingen MP's</metric>
    <metric>output-mp-Rotterdam-ng-m3</metric>
    <metric>output-mp-Rotterdam-gg-m3</metric>
    <metric>output-mp-Rotterdam-h2-m3</metric>
    <metric>output-mp-Rotterdam-ng-kw</metric>
    <metric>output-mp-Rotterdam-gg-kw</metric>
    <metric>output-mp-Rotterdam-h2-kw</metric>
    <metric>output-mp-Rotterdam-e-kw</metric>
    <metric>output-mp-Rotterdam-h-kw</metric>
    <metric>output-mp-Rotterdam-tpp</metric>
    <metric>output-mp-Vlaardingen-ng-m3</metric>
    <metric>output-mp-Vlaardingen-gg-m3</metric>
    <metric>output-mp-Vlaardingen-h2-m3</metric>
    <metric>output-mp-Vlaardingen-ng-kw</metric>
    <metric>output-mp-Vlaardingen-gg-kw</metric>
    <metric>output-mp-Vlaardingen-h2-kw</metric>
    <metric>output-mp-Vlaardingen-e-kw</metric>
    <metric>output-mp-Vlaardingen-h-kw</metric>
    <metric>output-mp-Vlaardingen-tpp</metric>
    <metric>output-mp-Maassluis-ng-m3</metric>
    <metric>output-mp-Maassluis-gg-m3</metric>
    <metric>output-mp-Maassluis-h2-m3</metric>
    <metric>output-mp-Maassluis-ng-kw</metric>
    <metric>output-mp-Maassluis-gg-kw</metric>
    <metric>output-mp-Maassluis-h2-kw</metric>
    <metric>output-mp-Maassluis-e-kw</metric>
    <metric>output-mp-Maassluis-h-kw</metric>
    <metric>output-mp-Maassluis-tpp</metric>
    <metric>output-mp-Schiedam-ng-m3</metric>
    <metric>output-mp-Schiedam-gg-m3</metric>
    <metric>output-mp-Schiedam-h2-m3</metric>
    <metric>output-mp-Schiedam-ng-kw</metric>
    <metric>output-mp-Schiedam-gg-kw</metric>
    <metric>output-mp-Schiedam-h2-kw</metric>
    <metric>output-mp-Schiedam-e-kw</metric>
    <metric>output-mp-Schiedam-h-kw</metric>
    <metric>output-mp-Schiedam-tpp</metric>
    <metric>; energy output MR Haren</metric>
    <metric>output-mp-Groningen-ng-m3</metric>
    <metric>output-mp-Groningen-gg-m3</metric>
    <metric>output-mp-Groningen-h2-m3</metric>
    <metric>output-mp-Groningen-ng-kw</metric>
    <metric>output-mp-Groningen-gg-kw</metric>
    <metric>output-mp-Groningen-h2-kw</metric>
    <metric>output-mp-Groningen-e-kw</metric>
    <metric>output-mp-Groningen-h-kw</metric>
    <metric>output-mp-Groningen-tpp</metric>
    <metric>output-mp-Leek-ng-m3</metric>
    <metric>output-mp-Leek-gg-m3</metric>
    <metric>output-mp-Leek-h2-m3</metric>
    <metric>output-mp-Leek-ng-kw</metric>
    <metric>output-mp-Leek-gg-kw</metric>
    <metric>output-mp-Leek-h2-kw</metric>
    <metric>output-mp-Leek-e-kw</metric>
    <metric>output-mp-Leek-h-kw</metric>
    <metric>output-mp-Leek-tpp</metric>
    <metric>output-mp-Marum-ng-m3</metric>
    <metric>output-mp-Marum-gg-m3</metric>
    <metric>output-mp-Marum-h2-m3</metric>
    <metric>output-mp-Marum-ng-kw</metric>
    <metric>output-mp-Marum-gg-kw</metric>
    <metric>output-mp-Marum-h2-kw</metric>
    <metric>output-mp-Marum-e-kw</metric>
    <metric>output-mp-Marum-h-kw</metric>
    <metric>output-mp-Marum-tpp</metric>
    <metric>output-mp-Noordenveld-ng-m3</metric>
    <metric>output-mp-Noordenveld-gg-m3</metric>
    <metric>output-mp-Noordenveld-h2-m3</metric>
    <metric>output-mp-Noordenveld-ng-kw</metric>
    <metric>output-mp-Noordenveld-gg-kw</metric>
    <metric>output-mp-Noordenveld-h2-kw</metric>
    <metric>output-mp-Noordenveld-e-kw</metric>
    <metric>output-mp-Noordenveld-h-kw</metric>
    <metric>output-mp-Noordenveld-tpp</metric>
    <metric>output-mp-Haren-ng-m3</metric>
    <metric>output-mp-Haren-gg-m3</metric>
    <metric>output-mp-Haren-h2-m3</metric>
    <metric>output-mp-Haren-ng-kw</metric>
    <metric>output-mp-Haren-gg-kw</metric>
    <metric>output-mp-Haren-h2-kw</metric>
    <metric>output-mp-Haren-e-kw</metric>
    <metric>output-mp-Haren-h-kw</metric>
    <metric>output-mp-Haren-tpp</metric>
    <metric>; energy output MR Westerbork</metric>
    <metric>output-mp-Emmen-ng-m3</metric>
    <metric>output-mp-Emmen-gg-m3</metric>
    <metric>output-mp-Emmen-h2-m3</metric>
    <metric>output-mp-Emmen-ng-kw</metric>
    <metric>output-mp-Emmen-gg-kw</metric>
    <metric>output-mp-Emmen-h2-kw</metric>
    <metric>output-mp-Emmen-e-kw</metric>
    <metric>output-mp-Emmen-h-kw</metric>
    <metric>output-mp-Emmen-tpp</metric>
    <metric>output-mp-Westerveld-ng-m3</metric>
    <metric>output-mp-Westerveld-gg-m3</metric>
    <metric>output-mp-Westerveld-h2-m3</metric>
    <metric>output-mp-Westerveld-ng-kw</metric>
    <metric>output-mp-Westerveld-gg-kw</metric>
    <metric>output-mp-Westerveld-h2-kw</metric>
    <metric>output-mp-Westerveld-e-kw</metric>
    <metric>output-mp-Westerveld-h-kw</metric>
    <metric>output-mp-Westerveld-tpp</metric>
    <metric>output-mp-Midden-Drenthe-ng-m3</metric>
    <metric>output-mp-Midden-Drenthe-gg-m3</metric>
    <metric>output-mp-Midden-Drenthe-h2-m3</metric>
    <metric>output-mp-Midden-Drenthe-ng-kw</metric>
    <metric>output-mp-Midden-Drenthe-gg-kw</metric>
    <metric>output-mp-Midden-Drenthe-h2-kw</metric>
    <metric>output-mp-Midden-Drenthe-e-kw</metric>
    <metric>output-mp-Midden-Drenthe-h-kw</metric>
    <metric>output-mp-Midden-Drenthe-tpp</metric>
    <metric>; output all mp's in list format</metric>
    <metric>output-mp-ng-m3</metric>
    <metric>output-mp-gg-m3</metric>
    <metric>output-mp-h2-m3</metric>
    <metric>output-mp-ng-kw</metric>
    <metric>output-mp-gg-kw</metric>
    <metric>output-mp-h2-kw</metric>
    <metric>output-mp-e-kw</metric>
    <metric>output-mp-h-kw</metric>
    <metric>; nh transition start per tick output</metric>
    <metric>output-mp-Rotterdam-nh-ts</metric>
    <metric>output-mp-Groningen-nh-ts</metric>
    <metric>output-mp-Westerveld-nh-ts</metric>
    <metric>; thermal systems of neighborhoods</metric>
    <metric>output-nh-thermal-system</metric>
    <metric>; thermal systems output on nl level</metric>
    <metric>output-nl-ng</metric>
    <metric>output-nl-ae</metric>
    <metric>output-nl-gg</metric>
    <metric>output-nl-ht/mt</metric>
    <metric>output-nl-lt</metric>
    <metric>output-nl-h2</metric>
    <metric>; insulation level output on nl level</metric>
    <metric>output-nl-ins</metric>
    <enumeratedValueSet variable="mp-icons">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-low-ins-transition?">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="national-h2-availability-ticks">
      <value value="15"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-nieuw-treshold-high">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="national-gg-potential-PJ">
      <value value="60"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-woz-treshold-high">
      <value value="500"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="national-h2-availability">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-cost-par">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-corp-treshold-med">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mp-top-n">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mp-transition-strategy">
      <value value="&quot;0&quot;"/>
      <value value="&quot;1&quot;"/>
      <value value="&quot;2&quot;"/>
      <value value="&quot;2_inv_nh&quot;"/>
      <value value="&quot;2_inv_th&quot;"/>
      <value value="&quot;2_inv_nh_th&quot;"/>
      <value value="&quot;3&quot;"/>
      <value value="&quot;4&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-transition-duration">
      <value value="2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-woz-treshold-med">
      <value value="250"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="hs-labels">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-nieuw-treshold-med">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-dhc-treshold-med">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="hs-limited?">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="max-distance-heatsource">
      <value value="15"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="mp-resource-percentage">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-ins-strategy1">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="national-transition-goal">
      <value value="250000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-corp-treshold-high">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="nh-dhc-treshold-high">
      <value value="50"/>
    </enumeratedValueSet>
  </experiment>
</experiments>
@#$#@#$#@
@#$#@#$#@
default
0.0
-0.2 0 0.0 1.0
0.0 1 1.0 0.0
0.2 0 0.0 1.0
link direction
true
0
Line -7500403 true 150 150 90 180
Line -7500403 true 150 150 210 180
@#$#@#$#@
0
@#$#@#$#@
