FasdUAS 1.101.10   ��   ��    k             j     �� �� 0 ptitle pTitle  m        � 	 	 F M a k e   r a n d o m   t a g g e d   a n d   n e s t e d   t a s k s   
  
 j    �� �� 0 pdescription pDescription  m       �   f f o r   t e s t i n g   n e w   p l a i n   t e x t   q u e r i e s   w i t h   t x t Q u e r y . s h      j    �� �� 0 pver pVer  m       �    0 . 0 1      j   	 �� �� 0 pauthor pAuthor  m   	 
   �    R o b   T r e w      l     ��������  ��  ��        l     ��������  ��  ��        j    �� �� 0 	pblndebug 	pblnDebug  m    ��
�� boovfals     !   l     ��������  ��  ��   !  " # " l     �� $ %��   $ b \ Generates a new foldingtext document populated with a random set of tagged and nested tasks    % � & & �   G e n e r a t e s   a   n e w   f o l d i n g t e x t   d o c u m e n t   p o p u l a t e d   w i t h   a   r a n d o m   s e t   o f   t a g g e d   a n d   n e s t e d   t a s k s #  ' ( ' l     ��������  ��  ��   (  ) * ) l     �� + ,��   + Q K define subset of tags to use by setting true|false in the following record    , � - - �   d e f i n e   s u b s e t   o f   t a g s   t o   u s e   b y   s e t t i n g   t r u e | f a l s e   i n   t h e   f o l l o w i n g   r e c o r d *  . / . l     �� 0 1��   0 ] W NB if you create any additional tags, you will need to define value lists or functions    1 � 2 2 �   N B   i f   y o u   c r e a t e   a n y   a d d i t i o n a l   t a g s ,   y o u   w i l l   n e e d   t o   d e f i n e   v a l u e   l i s t s   o r   f u n c t i o n s /  3 4 3 l     �� 5 6��   5 . ( for them in dctTagVals below either as:    6 � 7 7 P   f o r   t h e m   i n   d c t T a g V a l s   b e l o w   e i t h e r   a s : 4  8 9 8 l     �� : ;��   : m g 1. An array of possible values e.g. ['alpha', 'beta', 'gamma'] from which a random choice will be made    ; � < < �   1 .   A n   a r r a y   o f   p o s s i b l e   v a l u e s   e . g .   [ ' a l p h a ' ,   ' b e t a ' ,   ' g a m m a ' ]   f r o m   w h i c h   a   r a n d o m   c h o i c e   w i l l   b e   m a d e 9  = > = l     �� ? @��   ? v p 2. A lambda (anonymous function) which returns a value e.g. function() {return (randomInt(1,19)*5).toString();}    @ � A A �   2 .   A   l a m b d a   ( a n o n y m o u s   f u n c t i o n )   w h i c h   r e t u r n s   a   v a l u e   e . g .   f u n c t i o n ( )   { r e t u r n   ( r a n d o m I n t ( 1 , 1 9 ) * 5 ) . t o S t r i n g ( ) ; } >  B C B l     �� D E��   D D > 3. The string 'day' for which a random date will be generated    E � F F |   3 .   T h e   s t r i n g   ' d a y '   f o r   w h i c h   a   r a n d o m   d a t e   w i l l   b e   g e n e r a t e d C  G H G l     �� I J��   I N H 4. The string 'time' for which a random date and time will be generated    J � K K �   4 .   T h e   s t r i n g   ' t i m e '   f o r   w h i c h   a   r a n d o m   d a t e   a n d   t i m e   w i l l   b e   g e n e r a t e d H  L M L j    �� N�� 0 precoptions precOptions N K     O O �� P���� 0 
activetags   P K     Q Q �� R S�� 0 priority   R m    ��
�� boovtrue S �� T U�� 	0 start   T m    ��
�� boovtrue U �� V W�� 0 due   V m    ��
�� boovtrue W �� X Y�� 0 mins   X m    ��
�� boovtrue Y �� Z���� 	0 alert   Z m    ��
�� boovtrue��  ��   M  [ \ [ l     ��������  ��  ��   \  ] ^ ] j     $�� _�� 0 pstrjs pstrJS _ m     # ` ` � a a/d 
 f u n c t i o n ( e d i t o r ,   o p t i o n s )   { 
 	 	 v a r   t r e e = e d i t o r . t r e e ( ) ,   o P a r e n t = t r e e . r o o t , 
 	 	 	 l s t S y n t a x   =   [ ' p r o c e s s ' , ' a f f e c t e d ' , ' i n s t r u m e n t ' , ' c i r c u m s t a n c e ' , ' t i m e ' ] , 
 	 	 	 d c t T a g s   =   o p t i o n s . a c t i v e t a g s , 
 	 	 l s t T a g S e t   =   O b j e c t . k e y s ( d c t T a g s ) , 
 	 	 l s t A c t i v e T a g s = l s t T a g S e t . f i l t e r ( 
 	 	 	 f u n c t i o n   ( o T a g )   { r e t u r n   d c t T a g s [ o T a g ] ; } ) , 
 	 	 l n g A c t i v e T a g s = l s t A c t i v e T a g s . l e n g t h , 
 	 	 i L a s t T a g = l n g A c t i v e T a g s - 1 , 
 	 	 d c t L e x = { 
 	 	 	 ' p r o c e s s ' : [ ' b u i l d ' , ' m a k e ' ,   ' t h i n k ' ,   ' w o r k ' ,   ' d r i n k ' , ' g i v e ' , ' c a l l ' ,   ' t r y ' ,   ' w i n n o w ' ,   ' a g g r e g a t e ' ,   ' l i n k ' ,   ' d e r i v e ' ,   ' s u m m a r i s e ' ] , 
 	 	 	 ' a f f e c t e d ' : [ ' s c h o o l ' , ' s y s t e m ' , ' p r o g r a m ' , ' q u e s t i o n ' , ' w a t e r ' , ' b o o k ' , ' e a r t h ' , ' u m b r e l l a ' , ' t i m e ' , ' t h i n g ' , ' w o r l d ' , ' l i f e ' , ' f o o t s o l d i e r ' , ' c o m p a n y ' , ' p r o b l e m ' ,   ' g r o u p ' ,   ' n u m b e r ' , ' w e a v e r ' , ' t o o t h b r u s h ' , ' d e r i v a t i o n ' , ' m e t h o d ' ,   ' m o u n t a i n ' ,   ' t e r m i t e   m o u n d ' ] , 
 	 	 	 ' i n s t r u m e n t ' : [ ' s c h o o l ' , ' s y s t e m ' , ' p r o g r a m ' , ' q u e s t i o n ' , ' w a t e r ' , ' b o o k ' , ' e a r t h ' , ' u m b r e l l a ' , ' t i m e ' , ' t h i n g ' , ' w o r l d ' , ' l i f e ' , ' f o o t s o l d i e r ' , ' c o m p a n y ' , ' p r o b l e m ' ,   ' g r o u p ' ,   ' n u m b e r ' , ' w e a v e r ' , ' s a n d w i c h ' ,   ' t h e o r e m ' ,   ' h y p o t h e s i s ' ,   ' a s s u m p t i o n ' ,   ' c o n t r a d i c t i o n ' ,   ' f u n c t i o n ' ,   ' d e r i v a t i o n ' ] , 
 	 	 	 ' c i r c u m s t a n c e ' : [ ' a t   t h e   o f f i c e ' ,   ' i n   t h e   l i b r a r y ' ,   ' a t   h o m e ' ,   ' i n   t h e   f o r e s t ' ,   ' o n   t h e   m o u n t a i n ' ,   ' w h i l e   c o m m u t i n g ' ,   ' a t   l u n c h ' ,   ' a f t e r   b r e a k f a s t ' ,   ' b e f o r e   s u p p e r ' ,   ' t o m o r r o w   m o r n i n g ' ,   ' i n   a   b o a t ' ,   ' o n   t h e   s e a ' ,   ' b y   a   b r i d g e ' ,   ' a l o n g   t h e   r i v e r ' ,   ' u n d e r   t h e   m a p l e s ' ,   ' w i t h   l a m b d a ' ,   ' w i t h   l e m m a ' ] , 
 	 	 	 ' t i m e ' : [ ' e a r l y ' , ' o n   F r i d a y s ' ,   ' n e x t   w e e k ' ,   ' i n   t w o   d a y s ' ,   ' a t   t h e   e n d   o f   t h e   m o n t h ' ,   ' b e f o r e   2 0 1 5 ' ,   ' a f t e r   2 0 1 7 ' , ' a f t e r   t h e   h a r v e s t ' , ' d u r i n g   t h e   s p r i n g   s o w i n g ' , ' a f t e r   M i c h a e l m a s ' , ' i n   T r i n i t y ' ,   ' t o m o r r o w ' ,   ' t h i s   e v e n i n g ' ,   ' a t   7 p m   o n   M o n d a y ' ,   ' b y   A u g u s t ' ,   ' f i r s t   t h i n g ' ,   ' b e f o r e   r e t i r i n g ' ] 
 	 	 } , 
 	 	 d t e N o w = n e w   D a t e ( ) ,   d t e H o r i z o n = n e w   D a t e ( 2 0 1 5 ,   1 1 ,   3 0 ) ,   d t e S t a r t = d t e N o w , 
 
 	 	 d c t T a g V a l s = { 
 	 	 	 ' p r i o r i t y ' : [ 1 ,   2 ,   3 ] , 
 	 	 	 ' s t a r t ' : ' d a y ' , 
 	 	 	 ' a l e r t ' : ' t i m e ' , 
 	 	 	 ' d u e ' : ' t i m e ' , 
 	 	 	 ' m i n s ' : f u n c t i o n ( )   { r e t u r n   ( r a n d o m I n t ( 1 , 1 9 ) * 5 ) . t o S t r i n g ( ) ; } 
 	 	 } , 
 
 	 	 l n g C o u n t ,   l n g P h r a s e = 6 0 ,   s t r P h r a s e = ' ' ,   l s t P a r t s = [ ] ,   l s t P h r a s e s = [ ] , l n g S y n t a x = l s t S y n t a x . l e n g t h , b l n T a g , 
 	 	 l s t W o r d s ,   l n g W o r d s ,   s t r K e y ,   i W o r d ,   s t r W o r d ; 
 
 	 	 f u n c t i o n   r a n d o m I n t ( m i n ,   m a x )   { 
 	 	 	 r e t u r n   M a t h . f l o o r ( M a t h . r a n d o m ( )   *   ( m a x   -   m i n   +   1 ) )   +   m i n ; 
 	 	 } 
 
 	 	 f u n c t i o n   s i m p l e P h r a s e ( l n g L e v e l ,   d t e L o c a l S t a r t ,   d t e L o c a l D u e )   { 
 	 	 	 v a r   s t r P r e f i x ,   s t r P h r a s e ,   l n g P h r a s e , 
 	 	 	 	 d t e F r o m = d t e L o c a l S t a r t ,   d t e T o = d t e L o c a l D u e ,   v a r T a g V a l , 
 	 	 	 	 s t r T y p e ,   v a r V a l u e ,   s t r V a l u e ,   l n g R a n g e , 
 	 	 	 	 l s t P a r t s   =   [ ] ,   l s t S e e n = [ ] ,   i T a g ,   d t e M o m e n t ,   l n g T a g s ; 
 
 
 	 	 	 / /   C R E A T E   A   R A N D O M   P H R A S E 
 	 	 	 / /   u s i n g   o n l y   a   n u m b e r   o f   w o r d s   t h a t   m a t c h e s   t h e   n e s t i n g   l e v e l , 
 	 	 	 l n g P h r a s e = M a t h . m i n ( l n g S y n t a x ,   l n g L e v e l ) ; 
 	 	 	 f o r   ( v a r   j = 0 ; j < l n g P h r a s e ; j + + )   { 
 
 	 	 	 	 / /   g e t   a   p a r a d i g m a t i c   s e t   o f   l e x e m e s   f o r   t h e   n t h   p o s i t i o n   i n   l s t S y n t a x 
 	 	 	 	 s t r K e y = l s t S y n t a x [ j ] ; 
 	 	 	 	 l s t W o r d s = d c t L e x [ s t r K e y ] ; 
 	 	 	 	 l n g W o r d s   =   l s t W o r d s . l e n g t h ; 
 	 	 	 	 i W o r d = r a n d o m I n t ( 0 , l s t W o r d s . l e n g t h - 1 ) ; 
 	 	 	 	 s t r W o r d = l s t W o r d s [ i W o r d ] ; 
 	 	 	 	 l s t P a r t s . p u s h ( s t r W o r d ) ; 
 	 	 	 } 
 
 	 	 	 / /   A N D   A D D   A   S U B S E T   O F   T H E   A C T I V E   T A G S ,   W I T H   R A N D O M   V A L U E S 
 	 	 	 / /   H o w   m a n y   a c t i v e   t a g s   d o   w e   h a v e   ?   l n g A c t i v e T a g s 
 
 	 	 	 / /   H o w   m a n y   t a g s   s h a l l   w e   u s e   ? 
 	 	 	 l n g T a g s   =   r a n d o m I n t ( 0 , l n g A c t i v e T a g s - 1 ) ; 
 	 	 	 i f   ( l n g T a g s   <   0 )   l n g T a g s   =   0 ; 
 
 	 	 	 / /   W h i c h   o n e   s h a l l   w e   u s e   n e x t   ? 
 
 	 	 	 f o r   ( j = l n g T a g s ;   j - - ; )   { 
 	 	 	 	 / /   c h o o s e   a   t a g   w e   h a v e n ' t   u s e d 
 	 	 	 	 i T a g = r a n d o m I n t ( 0 ,   i L a s t T a g ) ; 
 	 	 	 	 w h i l e   ( l s t S e e n . i n d e x O f ( i T a g )   ! = =   - 1 )   { 
 	 	 	 	 	 i T a g = r a n d o m I n t ( 0 ,   i L a s t T a g ) ; 
 	 	 	 	 } 
 	 	 	 	 l s t S e e n . p u s h ( i T a g ) ; 
 	 	 	 	 / /   g e t   t h e   k e y 
 	 	 	 	 s t r K e y   =   l s t A c t i v e T a g s [ i T a g ] ; 
 
 
 	 	 	 	 v a r T a g V a l = d c t T a g V a l s [ s t r K e y ] ; 
 	 	 	 	 / /   g e n e r a t e   a   v a l u e 
 	 	 	 	 i f   ( v a r T a g V a l   i n s t a n c e o f   A r r a y )   { 
 	 	 	 	 	 l n g R a n g e = v a r T a g V a l . l e n g t h ; 
 	 	 	 	 	 v a r V a l u e   =   v a r T a g V a l [ r a n d o m I n t ( 0 ,   l n g R a n g e - 1 ) ] ; 
 	 	 	 	 }   e l s e   { 
 	 	 	 	 	 s w i t c h   ( t y p e o f   v a r T a g V a l )   { 
 	 	 	 	 	 	 c a s e   ' s t r i n g ' : 
 	 	 	 	 	 	 	 i f   ( v a r T a g V a l = = ' t i m e ' )   { 
 	 	 	 	 	 	 	 	 d t e M o m e n t   =   r a n d o m D a t e ( d t e F r o m ,   d t e T o ,   t r u e ) ; 
 	 	 	 	 	 	 	 	 v a r V a l u e   =   f m t T P ( d t e M o m e n t ) ; 
 	 	 	 	 	 	 	 }   e l s e   i f   ( v a r T a g V a l = = ' d a y ' )   { 
 	 	 	 	 	 	 	 	 d t e M o m e n t   =   r a n d o m D a t e ( d t e F r o m ,   d t e T o ,   f a l s e ) ; 
 	 	 	 	 	 	 	 	 v a r V a l u e   =   f m t T P ( d t e M o m e n t ) ; 
 	 	 	 	 	 	 	 }   e l s e   { 
 	 	 	 	 	 	 	 	 v a r V a l u e   =   v a r T a g V a l   +   ' ? ? ' ; 
 	 	 	 	 	 	 	 } 
 	 	 	 	 	 	 	 b r e a k ; 
 	 	 	 	 	 	 c a s e   ' f u n c t i o n ' : 
 	 	 	 	 	 	 	 v a r V a l u e   =   v a r T a g V a l ( ) ; 
 	 	 	 	 	 	 	 b r e a k ; 
 	 	 	 	 	 	 d e f a u l t : 
 	 	 	 	 	 	 	 v a r V a l u e   =   ' ' ; 
 	 	 	 	 	 } 
 	 	 	 	 	 i f   ( s t r K e y = = ' @ s t a r t ' )   d t e F r o m = d t e M o m e n t ; 
 	 	 	 	 	 e l s e   i f   ( s t r K e y = = ' @ d u e ' )   d t e T o = d t e M o m e n t ; 
 	 	 	 	 } 
 
 	 	 	 	 / /   a n d   a p p e n d   t h e   @ k e y ( v a l u e )   t o   t h e   p h r a s e 
 	 	 	 	 l s t P a r t s . p u s h ( [ ' @ ' , s t r K e y , ' ( ' , v a r V a l u e . t o S t r i n g ( ) , ' ) ' ] . j o i n ( ' ' ) ) ; 
 	 	 	 } 
 
 
 	 	 	 i f   ( l n g L e v e l   <   3 )   { 
 	 	 	 	 s t r P r e f i x   =   ( A r r a y ( l n g L e v e l + 1 ) . j o i n ( ' # ' ) )   +   '   ' ; 
 	 	 	 }   e l s e   { 
 	 	 	 	 s t r P r e f i x   =   ' -   ' ; 
 	 	 	 } 
 
 	 	 	 s t r P h r a s e   =   s t r P r e f i x   +   l s t P a r t s . j o i n ( '   ' ) . t r i m ( ) ; 
 	 	 	 r e t u r n   { ' p h r a s e ' : s t r P h r a s e ,   ' b e g i n s ' : d t e F r o m ,   ' e n d s ' : d t e T o } ; 
 	 	 } 
 
 	 	 f u n c t i o n   f m t T P ( d t e )   { 
 	 	 	 i f   ( d t e )   { 
 	 	 	 	 v a r   s t r D a t e   =   [ d t e . g e t F u l l Y e a r ( ) , 
 	 	 	 	 	 	 ( ' 0 '   +   ( d t e . g e t M o n t h ( ) + 1 ) ) . s l i c e ( - 2 ) , 
 	 	 	 	 	 	 ( ' 0 ' +   d t e . g e t D a t e ( ) ) . s l i c e ( - 2 ) ] . j o i n ( ' - ' ) , 
 	 	 	 	 	 s t r T i m e   =   [ ( ' 0 0 ' + d t e . g e t H o u r s ( ) ) . s l i c e ( - 2 ) , 
 	 	 	 	 	 	 ( ' 0 0 ' + d t e . g e t M i n u t e s ( ) ) . s l i c e ( - 2 ) ] . j o i n ( ' : ' ) ; 
 	 	 	 	 i f   ( s t r T i m e   ! = =   ' 0 0 : 0 0 ' )   { 
 	 	 	 	 	 r e t u r n   [ s t r D a t e ,   s t r T i m e ] . j o i n ( '   ' ) ; 
 	 	 	 	 }   e l s e   { 
 	 	 	 	 	 r e t u r n   s t r D a t e ; 
 	 	 	 	 } 
 	 	 	 }   e l s e   { 
 	 	 	 	 r e t u r n   ' ' ; 
 	 	 	 } 
 	 	 } 
 
 	 	 f u n c t i o n   r a n d o m D a t e ( s t a r t ,   e n d ,   b l n T i m e )   { 
 	 	 	 v a r   l n g D e l t a   =   M a t h . f l o o r ( ( M a t h . r a n d o m ( )   *   ( 
 	 	 	 	 	 e n d . g e t T i m e ( ) -   s t a r t . g e t T i m e ( ) ) ) ) , 
 	 	 	 d t e R a n d o m   =   n e w   D a t e ( s t a r t . g e t T i m e ( )   +   l n g D e l t a ) ; 
 	 	 	 i f   ( b l n T i m e )   { 
 	 	 	 	 d t e R a n d o m . s e t M i n u t e s ( r a n d o m I n t ( 0 , 2 )   *   3 0 ) ; 
 	 	 	 }   e l s e   { 
 	 	 	 	 d t e R a n d o m . s e t H o u r s ( 0 ) ; 
 	 	 	 	 d t e R a n d o m . s e t M i n u t e s ( 0 ) ; 
 	 	 	 } 
 	 	 	 r e t u r n   d t e R a n d o m ; 
 	 	 } 
 
 	 	 f u n c t i o n   p h r a s e T r e e ( t r e e ,   o P a r e n t ,   l n g D e p t h ,   l n g W i d t h ,   l n g L e v e l ,   d t e E a r l i e s t ,   d t e L a t e s t )   { 
 	 	 	 v a r   o N o d e ,   l n g L e s s D e p t h = l n g D e p t h - 1 ,   d c t ,   s t r P h r a s e ; 
 	 	 	 i f   ( l n g D e p t h )   { 
 	 	 	 	 f o r   ( v a r   i = l n g W i d t h ; i - - ; )   { 
 	 	 	 	 	 d c t   =   s i m p l e P h r a s e ( l n g L e v e l ,   d t e E a r l i e s t ,   d t e L a t e s t ) ; 
 	 	 	 	 	 s t r P h r a s e   =   d c t [ ' p h r a s e ' ] ; 
 
 	 	 	 	 	 / /   A d d   a   b l a n k   l i n e   b e f o r e   a n y   L e v e l   1   h e a d i n g 
 	 	 	 	 	 i f   ( s t r P h r a s e . c h a r A t ( 0 )   = =   ' # ' )   { 
 	 	 	 	 	 	 o P a r e n t . a p p e n d C h i l d ( t r e e . c r e a t e N o d e ( ) ) ; 
 	 	 	 	 	 } 
 	 	 	 	 	 o N o d e = t r e e . c r e a t e N o d e ( s t r P h r a s e ) ; 
 	 	 	 	 	 o P a r e n t . a p p e n d C h i l d ( o N o d e ) ; 
 	 	 	 	 	 i f   ( l n g L e s s D e p t h )   { 
 	 	 	 	 	 	 p h r a s e T r e e ( t r e e ,   o N o d e ,   l n g L e s s D e p t h ,   l n g W i d t h ,   l n g L e v e l + 1 ,   d c t [ ' b e g i n s ' ] ,   d c t [ ' e n d s ' ] ) ; 
 	 	 	 	 	 } 
 	 	 	 	 } 
 	 	 	 } 
 	 	 } 
 
 	 	 t r e e . b e g i n U p d a t e s ( ) ; 
 	 	 p h r a s e T r e e ( t r e e ,   o P a r e n t ,   4 , 3 ,   1 ,   d t e N o w ,   d t e H o r i z o n ) ; 
 	 	 t r e e . e n d U p d a t e s ( ) ; 
 
 	 	 t r e e . e n s u r e C l a s s i f i e d ( ) ; 
 	 	 r e t u r n   t r e e . t o S t r i n g ( ) ; 
 } 
 ^  b c b l     ��������  ��  ��   c  d�� d i   % ( e f e I     ������
�� .aevtoappnull  �   � ****��  ��   f k     S g g  h i h r      j k j m     ��
�� 
msng k o      ���� 0 	varresult 	varResult i  l m l O    P n o n Z    O p q�� r p H     s s o    ���� 0 	pblndebug 	pblnDebug q k    9 t t  u v u r     w x w I   ���� y
�� .corecrel****      � null��   y �� z��
�� 
kocl z m    ��
�� 
docu��   x o      ���� 0 odoc oDoc v  { | { l   �� } ~��   } ! do shell script "sleep 0.5"    ~ �   6 d o   s h e l l   s c r i p t   " s l e e p   0 . 5 " |  ��� � O    9 � � � k    8 � �  � � � r    2 � � � l   0 ����� � I   0���� �
�� .FTsuevjSnull���     docu��   � �� � �
�� 
FTjs � o   ! &���� 0 pstrjs pstrJS � �� ���
�� 
FTop � o   ' ,���� 0 precoptions precOptions��  ��  ��   � o      ���� 0 	varresult 	varResult �  ��� � I  3 8������
�� .miscactvnull��� ��� null��  ��  ��   � o    ���� 0 odoc oDoc��  ��   r k   < O � �  � � � l  < <�� � ���   � I C debug script automatically refers to the SDK version of the editor    � � � � �   d e b u g   s c r i p t   a u t o m a t i c a l l y   r e f e r s   t o   t h e   S D K   v e r s i o n   o f   t h e   e d i t o r �  � � � l  < <�� � ���   � @ : which must be open: FoldingText > Help > SDK > Run Editor    � � � � t   w h i c h   m u s t   b e   o p e n :   F o l d i n g T e x t   >   H e l p   >   S D K   >   R u n   E d i t o r �  ��� � r   < O � � � l  < M ����� � I  < M���� �
�� .FTsudbjSnull��� ��� null��   � �� � �
�� 
FTjs � o   > C���� 0 pstrjs pstrJS � �� ���
�� 
FTop � o   D I���� 0 precoptions precOptions��  ��  ��   � o      ���� 0 	varresult 	varResult��   o m     � ��                                                                                      @ alis    `  Macintosh HD               �9�SH+  P0FoldingText.app                                                ��m��>�        ����  	                Applications    �9�S      ��0�    P0  *Macintosh HD:Applications: FoldingText.app     F o l d i n g T e x t . a p p    M a c i n t o s h   H D  Applications/FoldingText.app  / ��   m  ��� � L   Q S � � o   Q R���� 0 	varresult 	varResult��  ��       �� �    �� � ` � � ���������������   � ���������������������������������� 0 ptitle pTitle�� 0 pdescription pDescription�� 0 pver pVer�� 0 pauthor pAuthor�� 0 	pblndebug 	pblnDebug�� 0 precoptions precOptions�� 0 pstrjs pstrJS
�� .aevtoappnull  �   � ****�� 0 	varresult 	varResult�� 0 odoc oDoc��  ��  ��  ��  ��  ��  
�� boovfals � �� ����� 0 
activetags   � ���� ��� 0 priority  
�� boovtrue � ���� ��� 	0 start  
�� boovtrue � ���� ��� 0 due  
�� boovtrue � ���� ��� 0 mins  
�� boovtrue � ��~�}� 	0 alert  
�~ boovtrue�}  ��   � �| f�{�z � ��y
�| .aevtoappnull  �   � ****�{  �z   �   � �x�w ��v�u�t�s�r�q�p�o�n�m
�x 
msng�w 0 	varresult 	varResult
�v 
kocl
�u 
docu
�t .corecrel****      � null�s 0 odoc oDoc
�r 
FTjs
�q 
FTop�p 
�o .FTsuevjSnull���     docu
�n .miscactvnull��� ��� null
�m .FTsudbjSnull��� ��� null�y T�E�O� Ib   -*��l E�O� *�b  �b  � 
E�O*j UY *�b  �b  � E�UO� � � � �S� 
%   T r e e 
% %0"   [ 0 ,   r o o t ] 
%%   "   [ 1 ,   e m p t y ] 
%%   "   [ 2 ,   e m p t y ] 
%% %0 #   a g g r e g a t e   @ p r i o r i t y ( 1 )   @ d u e ( 2 0 1 5 - 0 8 - 0 9   0 7 : 3 0 )   @ s t a r t ( 2 0 1 5 - 0 3 - 0 5 )   @ a l e r t ( 2 0 1 4 - 1 0 - 3 1   0 1 : 0 0 )   [ 3 ,   h e a d i n g ] 
%%%   "   [ 4 ,   e m p t y ] 
%%% %0 # #   d e r i v e   p r o b l e m   @ m i n s ( 9 5 )   [ 5 ,   h e a d i n g ] 
%%%% %0 -   d r i n k   f o o t s o l d i e r   t i m e   [ 6 ,   u n o r d e r e d ] 
%%%%%   %� -   w i n n o w   s y s t e m   l i f e   b e f o r e   s u p p e r   [ 7 ,   u n o r d e r e d ] 
%%%%%   %� -   s u m m a r i s e   p r o g r a m   c o n t r a d i c t i o n   a t   l u n c h   @ s t a r t ( 2 0 1 5 - 0 8 - 0 3 )   @ d u e ( 2 0 1 5 - 1 2 - 0 9   0 4 : 0 0 )   @ a l e r t ( 2 0 1 5 - 0 2 - 2 6   0 7 : 0 0 )   [ 8 ,   u n o r d e r e d ] 
%%%%%   %� -   t r y   q u e s t i o n   l i f e   o n   t h e   m o u n t a i n   @ m i n s ( 5 5 )   @ a l e r t ( 2 0 1 5 - 0 3 - 0 5   1 4 : 3 0 )   @ s t a r t ( 2 0 1 5 - 0 8 - 2 1 )   @ d u e ( 2 0 1 5 - 0 4 - 0 6   2 2 : 3 0 )   [ 9 ,   u n o r d e r e d ] 
%%%% %0 -   w o r k   n u m b e r   w a t e r   @ s t a r t ( 2 0 1 5 - 1 2 - 1 3 )   @ p r i o r i t y ( 3 )   @ d u e ( 2 0 1 5 - 0 1 - 1 0   0 4 : 3 0 )   [ 1 0 ,   u n o r d e r e d ] 
%%%%%   %� -   w o r k   q u e s t i o n   c o n t r a d i c t i o n   w h i l e   c o m m u t i n g   @ d u e ( 2 0 1 5 - 0 5 - 3 1   0 1 : 0 0 )   @ a l e r t ( 2 0 1 4 - 0 9 - 0 2   1 1 : 0 0 )   [ 1 1 ,   u n o r d e r e d ] 
%%%%%   %� -   c a l l   m o u n t a i n   s a n d w i c h   a l o n g   t h e   r i v e r   @ s t a r t ( 2 0 1 5 - 1 0 - 0 7 )   @ p r i o r i t y ( 1 )   @ a l e r t ( 2 0 1 5 - 1 0 - 2 4   2 2 : 0 0 )   [ 1 2 ,   u n o r d e r e d ] 
%%%%%   %� -   m a k e   c o m p a n y   h y p o t h e s i s   a f t e r   b r e a k f a s t   [ 1 3 ,   u n o r d e r e d ] 
%%%% %0 -   s u m m a r i s e   p r o b l e m   s c h o o l   [ 1 4 ,   u n o r d e r e d ] 
%%%%%   %� -   g i v e   n u m b e r   e a r t h   w h i l e   c o m m u t i n g   @ s t a r t ( 2 0 1 5 - 1 2 - 1 2 )   @ p r i o r i t y ( 1 )   [ 1 5 ,   u n o r d e r e d ] 
%%%%%   %� -   m a k e   e a r t h   f u n c t i o n   a t   h o m e   [ 1 6 ,   u n o r d e r e d ] 
%%%%%   %� -   w i n n o w   n u m b e r   s a n d w i c h   u n d e r   t h e   m a p l e s   @ s t a r t ( 2 0 1 5 - 0 7 - 2 0 )   [ 1 7 ,   u n o r d e r e d ] 
%%%   "   [ 1 8 ,   e m p t y ] 
%%% %0 # #   d r i n k   s c h o o l   @ s t a r t ( 2 0 1 5 - 0 3 - 2 7 )   @ m i n s ( 4 5 )   [ 1 9 ,   h e a d i n g ] 
%%%% %0 -   w o r k   w o r l d   q u e s t i o n   [ 2 0 ,   u n o r d e r e d ] 
%%%%%   %� -   c a l l   d e r i v a t i o n   n u m b e r   a t   h o m e   @ m i n s ( 2 5 )   @ p r i o r i t y ( 2 )   [ 2 1 ,   u n o r d e r e d ] 
%%%%%   %� -   m a k e   w a t e r   t i m e   u n d e r   t h e   m a p l e s   [ 2 2 ,   u n o r d e r e d ] 
%%%%%   %� -   g i v e   t e r m i t e   m o u n d   t h i n g   a l o n g   t h e   r i v e r   @ m i n s ( 6 5 )   @ p r i o r i t y ( 1 )   [ 2 3 ,   u n o r d e r e d ] 
%%%% %0 -   w o r k   m o u n t a i n   e a r t h   @ s t a r t ( 2 0 1 5 - 0 5 - 2 0 )   @ m i n s ( 1 5 )   @ p r i o r i t y ( 2 )   @ d u e ( 2 0 1 5 - 0 9 - 2 0   0 6 : 3 0 )   [ 2 4 ,   u n o r d e r e d ] 
%%%%%   %� -   a g g r e g a t e   p r o b l e m   c o m p a n y   i n   t h e   f o r e s t   @ a l e r t ( 2 0 1 5 - 0 5 - 0 5   1 0 : 3 0 )   @ m i n s ( 4 5 )   [ 2 5 ,   u n o r d e r e d ] 
%%%%%   %� -   m a k e   u m b r e l l a   w a t e r   u n d e r   t h e   m a p l e s   @ p r i o r i t y ( 2 )   [ 2 6 ,   u n o r d e r e d ] 
%%%%%   %� -   b u i l d   w o r l d   t h i n g   i n   a   b o a t   @ d u e ( 2 0 1 5 - 0 1 - 1 4   1 5 : 0 0 )   @ a l e r t ( 2 0 1 4 - 1 0 - 0 3   2 1 : 0 0 )   [ 2 7 ,   u n o r d e r e d ] 
%%%% %0 -   t h i n k   m e t h o d   c o m p a n y   @ s t a r t ( 2 0 1 5 - 1 2 - 0 9 )   @ a l e r t ( 2 0 1 5 - 0 7 - 2 6   2 3 : 3 0 )   @ p r i o r i t y ( 1 )   [ 2 8 ,   u n o r d e r e d ] 
%%%%%   %� -   b u i l d   e a r t h   s y s t e m   b e f o r e   s u p p e r   @ d u e ( 2 0 1 5 - 0 4 - 0 6   2 1 : 0 0 )   @ a l e r t ( 2 0 1 5 - 0 9 - 2 1   1 7 : 0 0 )   [ 2 9 ,   u n o r d e r e d ] 
%%%%%   %� -   s u m m a r i s e   s y s t e m   p r o g r a m   w h i l e   c o m m u t i n g   @ s t a r t ( 2 0 1 5 - 1 0 - 1 2 )   @ p r i o r i t y ( 1 )   @ a l e r t ( 2 0 1 5 - 1 2 - 0 5   1 3 : 0 0 )   [ 3 0 ,   u n o r d e r e d ] 
%%%%%   %� -   d r i n k   e a r t h   w o r l d   a t   l u n c h   [ 3 1 ,   u n o r d e r e d ] 
%%%   "   [ 3 2 ,   e m p t y ] 
%%% %0 # #   g i v e   b o o k   [ 3 3 ,   h e a d i n g ] 
%%%% %0 -   s u m m a r i s e   f o o t s o l d i e r   b o o k   @ d u e ( 2 0 1 5 - 1 2 - 1 0   0 4 : 0 0 )   [ 3 4 ,   u n o r d e r e d ] 
%%%%%   %� -   t r y   s c h o o l   h y p o t h e s i s   a t   l u n c h   @ d u e ( 2 0 1 4 - 1 0 - 0 2   2 0 : 3 0 )   @ m i n s ( 6 0 )   [ 3 5 ,   u n o r d e r e d ] 
%%%%%   %� -   b u i l d   l i f e   a s s u m p t i o n   a t   l u n c h   [ 3 6 ,   u n o r d e r e d ] 
%%%%%   %� -   m a k e   s y s t e m   s y s t e m   i n   t h e   l i b r a r y   [ 3 7 ,   u n o r d e r e d ] 
%%%% %0 -   l i n k   s y s t e m   a s s u m p t i o n   @ s t a r t ( 2 0 1 5 - 0 9 - 0 7 )   @ m i n s ( 6 5 )   @ a l e r t ( 2 0 1 5 - 0 6 - 1 8   1 9 : 0 0 )   [ 3 8 ,   u n o r d e r e d ] 
%%%%%   %� -   a g g r e g a t e   w e a v e r   e a r t h   o n   t h e   m o u n t a i n   @ p r i o r i t y ( 3 )   @ d u e ( 2 0 1 5 - 0 4 - 2 7   1 8 : 3 0 )   [ 3 9 ,   u n o r d e r e d ] 
%%%%%   %� -   m a k e   c o m p a n y   n u m b e r   a t   t h e   o f f i c e   [ 4 0 ,   u n o r d e r e d ] 
%%%%%   %� -   w i n n o w   m o u n t a i n   f o o t s o l d i e r   a t   t h e   o f f i c e   @ d u e ( 2 0 1 5 - 0 3 - 0 8   1 4 : 0 0 )   @ p r i o r i t y ( 1 )   [ 4 1 ,   u n o r d e r e d ] 
%%%% %0 -   d r i n k   t i m e   a s s u m p t i o n   @ s t a r t ( 2 0 1 5 - 1 2 - 0 9 )   @ p r i o r i t y ( 1 )   @ m i n s ( 6 5 )   [ 4 2 ,   u n o r d e r e d ] 
%%%%%   %� -   a g g r e g a t e   t o o t h b r u s h   d e r i v a t i o n   t o m o r r o w   m o r n i n g   @ a l e r t ( 2 0 1 4 - 0 9 - 3 0   1 7 : 0 0 )   @ m i n s ( 5 5 )   [ 4 3 ,   u n o r d e r e d ] 
%%%%%   %� -   t h i n k   p r o g r a m   p r o g r a m   o n   t h e   m o u n t a i n   @ d u e ( 2 0 1 5 - 0 9 - 0 1   2 0 : 0 0 )   @ p r i o r i t y ( 1 )   [ 4 4 ,   u n o r d e r e d ] 
%%%%%   %� -   l i n k   f o o t s o l d i e r   d e r i v a t i o n   w i t h   l e m m a   @ s t a r t ( 2 0 1 5 - 1 0 - 1 1 )   @ p r i o r i t y ( 1 )   [ 4 5 ,   u n o r d e r e d ] 
%%   "   [ 4 6 ,   e m p t y ] 
%% %0 #   s u m m a r i s e   @ d u e ( 2 0 1 5 - 0 7 - 2 3   2 3 : 0 0 )   @ a l e r t ( 2 0 1 5 - 0 4 - 2 6   1 2 : 0 0 )   [ 4 7 ,   h e a d i n g ] 
%%%   "   [ 4 8 ,   e m p t y ] 
%%% %0 # #   w o r k   t o o t h b r u s h   [ 4 9 ,   h e a d i n g ] 
%%%% %0 -   g i v e   t e r m i t e   m o u n d   e a r t h   @ a l e r t ( 2 0 1 5 - 0 3 - 1 1   0 7 : 0 0 )   [ 5 0 ,   u n o r d e r e d ] 
%%%%%   %� -   l i n k   d e r i v a t i o n   g r o u p   o n   t h e   s e a   @ a l e r t ( 2 0 1 5 - 1 1 - 2 3   1 5 : 0 0 )   @ d u e ( 2 0 1 5 - 1 2 - 0 4   0 3 : 3 0 )   @ s t a r t ( 2 0 1 5 - 0 2 - 0 6 )   @ p r i o r i t y ( 1 )   [ 5 1 ,   u n o r d e r e d ] 
%%%%%   %� -   s u m m a r i s e   g r o u p   s c h o o l   w h i l e   c o m m u t i n g   @ p r i o r i t y ( 1 )   @ s t a r t ( 2 0 1 5 - 0 6 - 2 4 )   @ d u e ( 2 0 1 5 - 0 7 - 0 2   0 3 : 3 0 )   [ 5 2 ,   u n o r d e r e d ] 
%%%%%   %� -   a g g r e g a t e   l i f e   c o m p a n y   b y   a   b r i d g e   @ s t a r t ( 2 0 1 4 - 0 9 - 2 9 )   @ d u e ( 2 0 1 5 - 0 8 - 3 0   0 1 : 0 0 )   @ a l e r t ( 2 0 1 5 - 0 7 - 2 8   1 6 : 0 0 )   @ m i n s ( 2 5 )   [ 5 3 ,   u n o r d e r e d ] 
%%%% %0 -   t r y   p r o g r a m   c o m p a n y   @ d u e ( 2 0 1 4 - 1 1 - 2 3   1 4 : 0 0 )   @ m i n s ( 7 0 )   @ s t a r t ( 2 0 1 5 - 0 9 - 2 7 )   @ p r i o r i t y ( 2 )   [ 5 4 ,   u n o r d e r e d ] 
%%%%%   %� -   b u i l d   u m b r e l l a   f o o t s o l d i e r   i n   a   b o a t   @ s t a r t ( 2 0 1 5 - 0 7 - 3 1 )   [ 5 5 ,   u n o r d e r e d ] 
%%%%%   %� -   m a k e   s c h o o l   b o o k   o n   t h e   m o u n t a i n   @ a l e r t ( 2 0 1 5 - 1 0 - 0 5   1 3 : 0 0 )   [ 5 6 ,   u n o r d e r e d ] 
%%%%%   %� -   d e r i v e   t h i n g   p r o g r a m   w h i l e   c o m m u t i n g   @ m i n s ( 1 0 )   @ a l e r t ( 2 0 1 5 - 1 2 - 1 5   1 4 : 0 0 )   @ d u e ( 2 0 1 4 - 1 1 - 0 6   1 7 : 3 0 )   @ s t a r t ( 2 0 1 5 - 0 7 - 3 1 )   [ 5 7 ,   u n o r d e r e d ] 
%%%% %0 -   w o r k   c o m p a n y   w a t e r   [ 5 8 ,   u n o r d e r e d ] 
%%%%%   %� -   m a k e   u m b r e l l a   s a n d w i c h   w i t h   l e m m a   [ 5 9 ,   u n o r d e r e d ] 
%%%%%   %� -   t h i n k   l i f e   w a t e r   u n d e r   t h e   m a p l e s   [ 6 0 ,   u n o r d e r e d ] 
%%%%%   %� -   d e r i v e   p r o b l e m   p r o b l e m   w i t h   l a m b d a   @ p r i o r i t y ( 3 )   @ m i n s ( 5 )   [ 6 1 ,   u n o r d e r e d ] 
%%%   "   [ 6 2 ,   e m p t y ] 
%%% %0 # #   t r y   n u m b e r   [ 6 3 ,   h e a d i n g ] 
%%%% %0 -   g i v e   w o r l d   c o n t r a d i c t i o n   @ p r i o r i t y ( 3 )   @ d u e ( 2 0 1 5 - 0 4 - 1 7   0 4 : 3 0 )   [ 6 4 ,   u n o r d e r e d ] 
%%%%%   %� -   m a k e   g r o u p   s y s t e m   a t   l u n c h   [ 6 5 ,   u n o r d e r e d ] 
%%%%%   %� -   t r y   p r o b l e m   s y s t e m   i n   t h e   l i b r a r y   @ a l e r t ( 2 0 1 5 - 0 3 - 1 6   0 6 : 0 0 )   @ m i n s ( 3 0 )   [ 6 6 ,   u n o r d e r e d ] 
%%%%%   %� -   w o r k   u m b r e l l a   a s s u m p t i o n   o n   t h e   m o u n t a i n   [ 6 7 ,   u n o r d e r e d ] 
%%%% %0 -   d e r i v e   m o u n t a i n   u m b r e l l a   @ a l e r t ( 2 0 1 5 - 1 1 - 2 1   0 4 : 0 0 )   @ m i n s ( 2 0 )   [ 6 8 ,   u n o r d e r e d ] 
%%%%%   %� -   m a k e   w o r l d   w o r l d   w h i l e   c o m m u t i n g   [ 6 9 ,   u n o r d e r e d ] 
%%%%%   %� -   l i n k   s y s t e m   s c h o o l   o n   t h e   m o u n t a i n   @ s t a r t ( 2 0 1 5 - 1 2 - 0 2 )   @ m i n s ( 8 0 )   @ p r i o r i t y ( 3 )   [ 7 0 ,   u n o r d e r e d ] 
%%%%%   %� -   d e r i v e   l i f e   w o r l d   w h i l e   c o m m u t i n g   @ m i n s ( 5 0 )   @ a l e r t ( 2 0 1 5 - 0 9 - 1 2   0 8 : 0 0 )   @ s t a r t ( 2 0 1 5 - 1 1 - 1 4 )   @ d u e ( 2 0 1 5 - 1 2 - 0 8   1 2 : 0 0 )   [ 7 1 ,   u n o r d e r e d ] 
%%%% %0 -   c a l l   q u e s t i o n   h y p o t h e s i s   [ 7 2 ,   u n o r d e r e d ] 
%%%%%   %� -   l i n k   c o m p a n y   w e a v e r   t o m o r r o w   m o r n i n g   @ m i n s ( 8 0 )   @ p r i o r i t y ( 2 )   @ a l e r t ( 2 0 1 5 - 1 0 - 1 5   0 2 : 3 0 )   [ 7 3 ,   u n o r d e r e d ] 
%%%%%   %� -   w i n n o w   s c h o o l   s y s t e m   i n   t h e   f o r e s t   @ a l e r t ( 2 0 1 5 - 0 1 - 2 5   1 7 : 0 0 )   [ 7 4 ,   u n o r d e r e d ] 
%%%%%   %� -   s u m m a r i s e   t e r m i t e   m o u n d   w e a v e r   a l o n g   t h e   r i v e r   @ m i n s ( 4 0 )   @ d u e ( 2 0 1 5 - 0 4 - 1 6   0 8 : 0 0 )   @ s t a r t ( 2 0 1 5 - 0 6 - 1 3 )   @ a l e r t ( 2 0 1 5 - 0 6 - 1 3   0 7 : 0 0 )   [ 7 5 ,   u n o r d e r e d ] 
%%%   "   [ 7 6 ,   e m p t y ] 
%%% %0 # #   m a k e   p r o g r a m   [ 7 7 ,   h e a d i n g ] 
%%%% %0 -   m a k e   t e r m i t e   m o u n d   c o m p a n y   [ 7 8 ,   u n o r d e r e d ] 
%%%%%   %� -   b u i l d   f o o t s o l d i e r   t h i n g   a t   t h e   o f f i c e   @ m i n s ( 2 0 )   @ s t a r t ( 2 0 1 5 - 0 3 - 1 8 )   @ a l e r t ( 2 0 1 5 - 0 5 - 1 8   1 9 : 0 0 )   @ p r i o r i t y ( 3 )   [ 7 9 ,   u n o r d e r e d ] 
%%%%%   %� -   b u i l d   g r o u p   n u m b e r   a t   l u n c h   [ 8 0 ,   u n o r d e r e d ] 
%%%%%   %� -   s u m m a r i s e   b o o k   w a t e r   i n   t h e   f o r e s t   @ d u e ( 2 0 1 4 - 1 1 - 1 5   1 3 : 0 0 )   @ s t a r t ( 2 0 1 4 - 0 8 - 1 3 )   @ p r i o r i t y ( 2 )   [ 8 1 ,   u n o r d e r e d ] 
%%%% %0 -   w i n n o w   m o u n t a i n   c o m p a n y   @ m i n s ( 8 5 )   @ p r i o r i t y ( 2 )   [ 8 2 ,   u n o r d e r e d ] 
%%%%%   %� -   a g g r e g a t e   e a r t h   d e r i v a t i o n   w i t h   l e m m a   [ 8 3 ,   u n o r d e r e d ] 
%%%%%   %� -   l i n k   m e t h o d   c o n t r a d i c t i o n   a t   l u n c h   @ a l e r t ( 2 0 1 4 - 0 8 - 1 9   1 1 : 3 0 )   @ s t a r t ( 2 0 1 5 - 0 4 - 2 6 )   @ d u e ( 2 0 1 5 - 0 5 - 2 6   1 8 : 0 0 )   @ p r i o r i t y ( 3 )   [ 8 4 ,   u n o r d e r e d ] 
%%%%%   %� -   c a l l   n u m b e r   t h i n g   o n   t h e   m o u n t a i n   @ p r i o r i t y ( 1 )   @ m i n s ( 9 5 )   @ s t a r t ( 2 0 1 5 - 0 7 - 2 8 )   @ a l e r t ( 2 0 1 5 - 0 2 - 1 6   1 7 : 0 0 )   [ 8 5 ,   u n o r d e r e d ] 
%%%% %0 -   w i n n o w   g r o u p   h y p o t h e s i s   [ 8 6 ,   u n o r d e r e d ] 
%%%%%   %� -   b u i l d   s y s t e m   c o n t r a d i c t i o n   b e f o r e   s u p p e r   [ 8 7 ,   u n o r d e r e d ] 
%%%%%   %� -   b u i l d   d e r i v a t i o n   s a n d w i c h   a t   l u n c h   @ m i n s ( 3 5 )   @ s t a r t ( 2 0 1 5 - 0 8 - 0 2 )   @ p r i o r i t y ( 2 )   [ 8 8 ,   u n o r d e r e d ] 
%%%%%   %� -   c a l l   w o r l d   f u n c t i o n   w i t h   l a m b d a   @ d u e ( 2 0 1 5 - 1 0 - 0 2   1 4 : 0 0 )   @ p r i o r i t y ( 3 )   [ 8 9 ,   u n o r d e r e d ] 
%%   "   [ 9 0 ,   e m p t y ] 
%% %0 #   t r y   @ s t a r t ( 2 0 1 4 - 1 1 - 1 2 )   @ a l e r t ( 2 0 1 4 - 1 1 - 1 2   0 8 : 0 0 )   @ m i n s ( 2 0 )   @ p r i o r i t y ( 3 )   [ 9 1 ,   h e a d i n g ] 
%%%   "   [ 9 2 ,   e m p t y ] 
%%% %0 # #   d r i n k   w a t e r   @ m i n s ( 2 5 )   @ s t a r t ( 2 0 1 5 - 0 3 - 1 2 )   @ d u e ( 2 0 1 4 - 1 2 - 1 0   1 5 : 3 0 )   [ 9 3 ,   h e a d i n g ] 
%%%% %0 -   t r y   d e r i v a t i o n   s c h o o l   @ d u e ( 2 0 1 5 - 1 2 - 2 2   1 7 : 3 0 )   @ a l e r t ( 2 0 1 5 - 1 1 - 1 2   1 2 : 3 0 )   @ s t a r t ( 2 0 1 5 - 1 1 - 2 5 )   @ p r i o r i t y ( 1 )   [ 9 4 ,   u n o r d e r e d ] 
%%%%%   %� -   c a l l   t e r m i t e   m o u n d   g r o u p   b y   a   b r i d g e   @ a l e r t ( 2 0 1 5 - 0 3 - 1 2   2 0 : 0 0 )   @ d u e ( 2 0 1 5 - 0 9 - 3 0   1 8 : 0 0 )   @ m i n s ( 7 0 )   [ 9 5 ,   u n o r d e r e d ] 
%%%%%   %� -   b u i l d   w a t e r   w a t e r   b y   a   b r i d g e   [ 9 6 ,   u n o r d e r e d ] 
%%%%%   %� -   t h i n k   s c h o o l   s c h o o l   o n   t h e   s e a   @ s t a r t ( 2 0 1 5 - 0 3 - 0 2 )   @ m i n s ( 7 0 )   @ a l e r t ( 2 0 1 4 - 1 2 - 2 4   1 2 : 3 0 )   [ 9 7 ,   u n o r d e r e d ] 
%%%% %0 -   m a k e   m e t h o d   w o r l d   @ s t a r t ( 2 0 1 5 - 0 2 - 1 0 )   [ 9 8 ,   u n o r d e r e d ] 
%%%%%   %� -   g i v e   d e r i v a t i o n   t h i n g   t o m o r r o w   m o r n i n g   @ a l e r t ( 2 0 1 4 - 1 2 - 0 8   1 0 : 0 0 )   @ p r i o r i t y ( 3 )   @ s t a r t ( 2 0 1 4 - 0 9 - 1 6 )   [ 9 9 ,   u n o r d e r e d ] 
%%%%%   %� -   l i n k   d e r i v a t i o n   g r o u p   a f t e r   b r e a k f a s t   [ 1 0 0 ,   u n o r d e r e d ] 
%%%%%   %� -   w i n n o w   s y s t e m   t i m e   a t   t h e   o f f i c e   @ p r i o r i t y ( 2 )   @ m i n s ( 7 5 )   @ d u e ( 2 0 1 5 - 0 3 - 2 0   1 3 : 0 0 )   [ 1 0 1 ,   u n o r d e r e d ] 
%%%% %0 -   s u m m a r i s e   w a t e r   s y s t e m   @ d u e ( 2 0 1 4 - 0 9 - 2 9   1 9 : 0 0 )   @ m i n s ( 5 )   @ a l e r t ( 2 0 1 5 - 0 6 - 0 4   0 0 : 3 0 )   [ 1 0 2 ,   u n o r d e r e d ] 
%%%%%   %� -   d r i n k   q u e s t i o n   u m b r e l l a   i n   a   b o a t   @ p r i o r i t y ( 2 )   @ d u e ( 2 0 1 5 - 0 1 - 0 9   2 0 : 0 0 )   [ 1 0 3 ,   u n o r d e r e d ] 
%%%%%   %� -   t r y   t e r m i t e   m o u n d   p r o g r a m   w i t h   l e m m a   @ m i n s ( 8 0 )   [ 1 0 4 ,   u n o r d e r e d ] 
%%%%%   %� -   s u m m a r i s e   t h i n g   t h i n g   a t   h o m e   @ a l e r t ( 2 0 1 5 - 0 7 - 2 5   0 9 : 0 0 )   @ p r i o r i t y ( 2 )   [ 1 0 5 ,   u n o r d e r e d ] 
%%%   "   [ 1 0 6 ,   e m p t y ] 
%%% %0 # #   c a l l   t o o t h b r u s h   @ p r i o r i t y ( 1 )   @ d u e ( 2 0 1 5 - 0 8 - 2 8   1 6 : 0 0 )   @ s t a r t ( 2 0 1 5 - 0 5 - 1 3 )   @ m i n s ( 2 0 )   [ 1 0 7 ,   h e a d i n g ] 
%%%% %0 -   w o r k   e a r t h   d e r i v a t i o n   @ a l e r t ( 2 0 1 5 - 0 7 - 0 4   2 3 : 3 0 )   @ m i n s ( 6 5 )   @ d u e ( 2 0 1 5 - 0 9 - 0 7   1 2 : 0 0 )   [ 1 0 8 ,   u n o r d e r e d ] 
%%%%%   %� -   w o r k   t e r m i t e   m o u n d   b o o k   w i t h   l a m b d a   @ p r i o r i t y ( 2 )   [ 1 0 9 ,   u n o r d e r e d ] 
%%%%%   %� -   w i n n o w   g r o u p   p r o g r a m   o n   t h e   s e a   @ p r i o r i t y ( 3 )   @ d u e ( 2 0 1 5 - 1 2 - 2 1   1 4 : 3 0 )   @ m i n s ( 4 5 )   @ s t a r t ( 2 0 1 5 - 0 2 - 0 8 )   [ 1 1 0 ,   u n o r d e r e d ] 
%%%%%   %� -   w o r k   p r o b l e m   c o n t r a d i c t i o n   i n   a   b o a t   @ a l e r t ( 2 0 1 4 - 1 0 - 1 4   0 5 : 3 0 )   @ d u e ( 2 0 1 5 - 0 2 - 2 3   0 1 : 3 0 )   @ p r i o r i t y ( 2 )   @ s t a r t ( 2 0 1 4 - 0 8 - 1 8 )   [ 1 1 1 ,   u n o r d e r e d ] 
%%%% %0 -   t r y   q u e s t i o n   w e a v e r   [ 1 1 2 ,   u n o r d e r e d ] 
%%%%%   %� -   s u m m a r i s e   s c h o o l   f o o t s o l d i e r   i n   t h e   f o r e s t   @ p r i o r i t y ( 3 )   [ 1 1 3 ,   u n o r d e r e d ] 
%%%%%   %� -   w o r k   d e r i v a t i o n   f o o t s o l d i e r   u n d e r   t h e   m a p l e s   @ a l e r t ( 2 0 1 4 - 1 2 - 1 1   1 0 : 0 0 )   @ d u e ( 2 0 1 5 - 0 2 - 2 7   0 4 : 0 0 )   [ 1 1 4 ,   u n o r d e r e d ] 
%%%%%   %� -   m a k e   s c h o o l   s a n d w i c h   a t   l u n c h   @ a l e r t ( 2 0 1 5 - 0 7 - 2 2   0 7 : 0 0 )   [ 1 1 5 ,   u n o r d e r e d ] 
%%%% %0 -   t h i n k   t o o t h b r u s h   c o n t r a d i c t i o n   @ p r i o r i t y ( 2 )   @ d u e ( 2 0 1 4 - 1 0 - 1 7   0 5 : 0 0 )   [ 1 1 6 ,   u n o r d e r e d ] 
%%%%%   %� -   t r y   c o m p a n y   t h i n g   o n   t h e   m o u n t a i n   @ p r i o r i t y ( 1 )   [ 1 1 7 ,   u n o r d e r e d ] 
%%%%%   %� -   d e r i v e   p r o b l e m   e a r t h   a f t e r   b r e a k f a s t   @ m i n s ( 1 0 )   @ d u e ( 2 0 1 5 - 1 1 - 0 8   0 9 : 0 0 )   [ 1 1 8 ,   u n o r d e r e d ] 
%%%%%   %� -   s u m m a r i s e   p r o g r a m   e a r t h   w i t h   l a m b d a   @ p r i o r i t y ( 3 )   @ d u e ( 2 0 1 5 - 0 4 - 3 0   2 2 : 3 0 )   @ m i n s ( 6 0 )   [ 1 1 9 ,   u n o r d e r e d ] 
%%%   "   [ 1 2 0 ,   e m p t y ] 
%%% %0 # #   a g g r e g a t e   w o r l d   @ a l e r t ( 2 0 1 4 - 1 1 - 2 9   1 7 : 0 0 )   @ m i n s ( 9 0 )   @ d u e ( 2 0 1 4 - 0 8 - 1 2   1 1 : 0 0 )   [ 1 2 1 ,   h e a d i n g ] 
%%%% %0 -   b u i l d   p r o b l e m   t i m e   @ p r i o r i t y ( 1 )   @ m i n s ( 9 0 )   [ 1 2 2 ,   u n o r d e r e d ] 
%%%%%   %� -   w i n n o w   t e r m i t e   m o u n d   p r o g r a m   w i t h   l e m m a   @ a l e r t ( 2 0 1 5 - 0 4 - 1 9   0 6 : 0 0 )   [ 1 2 3 ,   u n o r d e r e d ] 
%%%%%   %� -   w o r k   e a r t h   h y p o t h e s i s   w i t h   l e m m a   [ 1 2 4 ,   u n o r d e r e d ] 
%%%%%   %� -   w o r k   l i f e   s y s t e m   a t   l u n c h   @ a l e r t ( 2 0 1 5 - 1 1 - 2 1   0 3 : 0 0 )   @ p r i o r i t y ( 2 )   [ 1 2 5 ,   u n o r d e r e d ] 
%%%% %0 -   m a k e   c o m p a n y   f o o t s o l d i e r   @ a l e r t ( 2 0 1 5 - 0 8 - 3 0   0 7 : 0 0 )   @ s t a r t ( 2 0 1 4 - 0 9 - 1 4 )   @ d u e ( 2 0 1 4 - 1 2 - 3 0   2 1 : 0 0 )   [ 1 2 6 ,   u n o r d e r e d ] 
%%%%%   %� -   m a k e   c o m p a n y   s c h o o l   o n   t h e   m o u n t a i n   @ p r i o r i t y ( 1 )   @ d u e ( 2 0 1 4 - 1 2 - 1 5 )   @ m i n s ( 1 0 )   @ a l e r t ( 2 0 1 5 - 0 1 - 1 3   1 6 : 3 0 )   [ 1 2 7 ,   u n o r d e r e d ] 
%%%%%   %� -   a g g r e g a t e   p r o g r a m   t i m e   i n   t h e   l i b r a r y   @ p r i o r i t y ( 1 )   @ m i n s ( 2 5 )   @ a l e r t ( 2 0 1 5 - 0 5 - 0 6   1 7 : 0 0 )   @ d u e ( 2 0 1 5 - 0 7 - 0 1   0 2 : 0 0 )   [ 1 2 8 ,   u n o r d e r e d ] 
%%%%%   %� -   t r y   n u m b e r   s y s t e m   w i t h   l a m b d a   @ p r i o r i t y ( 3 )   @ d u e ( 2 0 1 5 - 1 1 - 1 0   0 2 : 0 0 )   [ 1 2 9 ,   u n o r d e r e d ] 
%%%% %0 -   m a k e   p r o b l e m   p r o b l e m   @ d u e ( 2 0 1 5 - 0 6 - 1 4   0 8 : 3 0 )   [ 1 3 0 ,   u n o r d e r e d ] 
%%%%%   %� -   d e r i v e   p r o g r a m   s c h o o l   o n   t h e   s e a   @ m i n s ( 5 5 )   [ 1 3 1 ,   u n o r d e r e d ] 
%%%%%   %� -   a g g r e g a t e   t i m e   w a t e r   i n   a   b o a t   [ 1 3 2 ,   u n o r d e r e d ] 
%%%%%   %� -   c a l l   n u m b e r   s a n d w i c h   a l o n g   t h e   r i v e r   [ 1 3 3 ,   u n o r d e r e d ] �  � �  ��l �
�l 
docu � � � �  U n t i t l e d   3��  ��  ��  ��  ��  ��   ascr  ��ޭ