FasdUAS 1.101.10   ��   ��    k             j     �� �� 0 ptitle pTitle  m        � 	 	 Z C u r r e n t   l i n e   a s   t i m e d   D u e . a p p   s p r i n t   @ m i n s ( N )   
  
 j    �� �� 0 pver pVer  m       �    0 . 2      j    �� �� 0 pauthor pAuthor  m       �    R o b   T r e w      l     ��������  ��  ��        j   	 �� �� "0 plngdefaultmins plngDefaultMins  m   	 
���� 7      j    �� �� "0 pstrdurationtag pstrDurationTag  m       �    m i n s      l     ��������  ��  ��       !   j    �� "�� 0 pdescription pDescription " m     # # � $ $ 
 
 	 1 .   S e l e c t   o n e   o r   m o r e   l i n e s   w i t h   o r   w i t h o u t   @ m i n s ( N )   t a g s 
 	 2 .   R u n   t h e   s c r i p t   a n d   c o n f i r m   t h e   f i r s t   r e m i n d e r 
 	 3 .   W h e n e v e r   a   r e m i n d e r   t e r m i n a t e s ,   t a p   t h e   * * r i g h t   a r r o w   k e y * *   i n   D u e . a p p   t o   l a u n c h   t h e   n e x t   x - c a l l b a c k 
 	 4 .   T h e   n e x t   t i m e d   r e m i n d e r   w i l l   s t a r t   . . . 
 !  % & % l     ��������  ��  ��   &  ' ( ' j    �� )�� 0 pstrjs pstrJS ) m     * * � + +	� 
 	 f u n c t i o n ( e d i t o r ,   o p t i o n s )   { 
 	 
 	 	 / /   T A I L   R E C U R S I O N   T O   N E S T   S U B S E Q U E N T   R E M I N D E R   T E X T S   A N D   T I M E S 
 	 	 / /   I N   F U R T H E R   E N C O D E D   X - C A L L B A C K   U R L S 
 	 	 f u n c t i o n   n e s t U R L ( l s t T e x t M i n s )   { 
 	 	 	 v a r   l s t H e a d = l s t T e x t M i n s [ 0 ] , 
 	 	 	 	 l s t T a i l = l s t T e x t M i n s . s l i c e ( 1 ) , 
 	 	 	 	 s t r T e x t = l s t H e a d [ 0 ] ,   l n g M i n s = l s t H e a d [ 1 ] , 
 	 	 	 	 s t r U R L ,   s t r E n c o d e d ,   s t r S p a c e r   =   '                 ' ; 
 	 	 
 	 	 	 s t r E n c o d e d   =   e n c o d e U R I C o m p o n e n t ( s t r T e x t   +   s t r S p a c e r ) ; 
 	 	 
 	 	 	 i f   ( l s t T a i l . l e n g t h )   { 
 	 	 	 	 s t r E n c o d e d   + =   e n c o d e U R I C o m p o n e n t ( n e s t U R L ( l s t T a i l ) ) ; 
 	 	 	 } 
 	 	 
 	 	 	 s t r U R L   =   [ ' d u e : / / x - c a l l b a c k - u r l / a d d ? t i t l e = ' ,   s t r E n c o d e d , 
 	 	 	 	 	 ' & m i n s l a t e r = ' ,   l n g M i n s . t o S t r i n g ( ) ] . j o i n ( ' ' ) ; 
 	 	 	 r e t u r n   s t r U R L ; 
 	 	 } 
 
 	 	 v a r   l s t S e l n s = e d i t o r . s e l e c t e d R a n g e s ( ) , 
 	 	 	 l s t N o d e s ,   o N o d e ,   l n g N o d e s ,   l s t S t a g e s = [ ] , 
 	 	 	 l n g M i n s = o p t i o n s . d e f a u l t m i n s , 
 	 	 	 s t r T a g   =   o p t i o n s . t i m e t a g , 
 	 	 	 s t r T e x t ,   s t r U R L ,   i , j ; 
 	 
 	 	 / /   I T E R A T E   T H R O U G H   M U L T I P L E   S E L E C T I O N S   O F   O N E   O R   M O R E   L I N E S   E A C H 
 	 	 l s t S e l n s . f o r E a c h ( f u n c t i o n ( r n g S e l n )   { 
 	 	 	 l s t N o d e s = r n g S e l n . n o d e s I n R a n g e ( ) ; 
 	 	 	 l n g N o d e s = l s t N o d e s . l e n g t h ; 
 	 	 	 f o r   ( i = 0 ;   i < l n g N o d e s ;   i + + )   { 
 	 	 	 	 o N o d e = l s t N o d e s [ i ] ; 
 	 	 	 	 i f   ( o N o d e . h a s T a g ( s t r T a g ) )   { 
 	 	 	 	 	 l n g M i n s   =   p a r s e I n t ( o N o d e . t a g ( s t r T a g ) ,   1 0 ) ; 
 	 	 	 	 }   e l s e   { 
 	 	 	 	 	 l n g M i n s   =   p l n g D e f a u l t M i n s ; 
 	 	 	 	 } 
 	 	 	 	 l s t S t a g e s . p u s h ( [ o N o d e . t e x t ( ) ,   l n g M i n s ] ) ; 
 	 	 	 } 
 	 	 } ) ; 
 	 
 	 	 s t r U R L   =   n e s t U R L ( l s t S t a g e s ) ; 
 	 	 e d i t o r . o p e n L i n k ( s t r U R L ) ; 
 	 	 r e t u r n   s t r U R L ; 
 	 } 
 (  , - , i     . / . I     ������
�� .aevtoappnull  �   � ****��  ��   / k     R 0 0  1 2 1 r      3 4 3 m      5 5 � 6 6   4 o      ���� 0 strurl strURL 2  7 8 7 O    > 9 : 9 k    = ; ;  < = < r     > ? > 2   ��
�� 
docu ? o      ���� 0 lstdocs lstDocs =  @�� @ Z   = A B���� A >     C D C o    ���� 0 lstdocs lstDocs D J    ����   B O   9 E F E r    8 G H G l   6 I���� I I   6���� J
�� .FTsuevjSnull���     docu��   J �� K L
�� 
FTjs K o    #���� 0 pstrjs pstrJS L �� M��
�� 
FTop M K   $ 2 N N �� O P�� 0 timetag   O o   % *���� "0 pstrdurationtag pstrDurationTag P �� Q���� 0 defaultmins   Q o   + 0���� "0 plngdefaultmins plngDefaultMins��  ��  ��  ��   H o      ���� 0 strurl strURL F n     R S R 4    �� T
�� 
cobj T m    ����  S o    ���� 0 lstdocs lstDocs��  ��  ��   : m     U U�                                                                                      @ alis    `  Macintosh HD               �9�SH+  P0FoldingText.app                                                ��m��>�        ����  	                Applications    �9�S      ��0�    P0  *Macintosh HD:Applications: FoldingText.app     F o l d i n g T e x t . a p p    M a c i n t o s h   H D  Applications/FoldingText.app  / ��   8  V W V O  ? I X Y X I  C H������
�� .miscactvnull��� ��� null��  ��   Y m   ? @ Z Z�                                                                                      @ alis    @  Macintosh HD               �9�SH+  P0Due.app                                                        b�U�$�i        ����  	                Applications    �9�S      �$�i    P0  "Macintosh HD:Applications: Due.app    D u e . a p p    M a c i n t o s h   H D  Applications/Due.app  / ��   W  [ \ [ I  J O�� ]��
�� .JonspClpnull���     **** ] o   J K���� 0 strurl strURL��   \  ^�� ^ L   P R _ _ o   P Q���� 0 strurl strURL��   -  `�� ` l     ��������  ��  ��  ��       
�� a   ��  # * b��   a ������������������ 0 ptitle pTitle�� 0 pver pVer�� 0 pauthor pAuthor�� "0 plngdefaultmins plngDefaultMins�� "0 pstrdurationtag pstrDurationTag�� 0 pdescription pDescription�� 0 pstrjs pstrJS
�� .aevtoappnull  �   � ****�� 7 b �� /���� c d��
�� .aevtoappnull  �   � ****��  ��   c   d  5�� U������������������ Z������ 0 strurl strURL
�� 
docu�� 0 lstdocs lstDocs
�� 
cobj
�� 
FTjs
�� 
FTop�� 0 timetag  �� 0 defaultmins  �� 
�� .FTsuevjSnull���     docu
�� .miscactvnull��� ��� null
�� .JonspClpnull���     ****�� S�E�O� 7*�-E�O�jv )��k/ *�b  ��b  �b  �� E�UY hUO� *j UO�j O�ascr  ��ޭ