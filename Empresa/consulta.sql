/*SELECT d.dnome, l.dlocal
FROM departamento d, localizacoes_dep l
WHERE d.dnumero = l.dnumero;*/
SELECT d.pnome AS supervisionado, s.pnome AS supervisor
FROM funcionario d, funcionario s
WHERE d.cpf_supervisor = s.cpf;