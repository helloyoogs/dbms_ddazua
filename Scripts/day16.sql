SELECT * FROM STADIUM;
SELECT * FROM TEAM;

SELECT T.TEAM_ID AS "�� ���̵�", S.ADDRESS "�ּ�", T.TEL FROM STADIUM S, TEAM T;

--CONCATENATION(����) : ||
--���������� ������ �Ӹ��̴�.
SELECT PLAYER_NAME||'�� ������'||NICKNAME||'�̴�.' AS �ڱ�Ұ� FROM PLAYER;
SELECT * FROM PLAYER;

--���������� �������� �Ӹ��̴�.
SELECT E_PLAYER_NAME||'�� ��������'||"POSITION"||'�̴�.' ����ȸ�� FROM PLAYER;

--LIKE : ���Ե� ���ڿ��� ���� ã��, ������ ������ ������ �� �� ����.
--% : ��� ��
--'%A' : A�� ������ ��� ��(FDSNJKA, EIWNF12A)
--'_A' : A�� �����鼭 �� �ڸ��� ��(AA, 2A, PA)

SELECT * FROM TEAM WHERE TEAM_NAME LIKE '%õ��';
SELECT * FROM PLAYER WHERE PLAYER_NAME LIKE '��%';
SELECT * FROM PLAYER WHERE PLAYER_NAME LIKE '��_';

--PALYER ���̺��� �̾� ã��
SELECT * FROM PLAYER WHERE PLAYER_NAME LIKE '��_';

--PALYER ���̺��� �达�� �̾� ã��
SELECT * FROM PLAYER
WHERE PLAYER_NAME LIKE '��%' OR
PLAYER_NAME LIKE '��%';

--PALYER ���̺��� �̾��� �ƴ� ��� ã��
--NOT
SELECT * FROM PLAYER WHERE NOT PLAYER_NAME LIKE '��%';
--PLAYER ���̺��� ���ڸ� �达�� �ƴ� ��� ã��
SELECT * FROM PLAYER WHERE NOT PLAYER_NAME LIKE '��__';
