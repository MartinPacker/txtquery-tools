JsOsaDAS1.001.00bplist00�Vscriptot f u n c t i o n   r u n ( )   { 
 	 / * j s h i n t   m u l t i s t r : t r u e   * / 
 	 v a r   d c t O p t   =   { 
 	 	 t i t l e :   " V i e w / h i d e   t a g g e d   n o d e s   i n   F T " , 
 	 	 v e r :   " 1 . 2 " , 
 	 	 / / d e s c r i p t i o n :   " M e n u   f o r   h i d i n g   o r   f o c u s i n g   o n   p a r t i c u l a r   t a g s . \ 
 	 	 / / 	 	 	 (   a n d   o p t i o n a l l y   a n y   d e s c e n d a n t s ,   s e e   o p t i o n s \ 
 	 	 / / 	 	 	 6   l i n e s   b e l o w   t h i s   f o r   i n i t i a l s   d e f a u l t s ,   w h i c h \ 
 	 	 / / 	 	 	 c a n   b e   t o g g l e d   i n   t h e   s c r i p t   m e n u   ) \ 
 	 	 / / 	 	 	 s h o w i n g   a c t i v e   n o d e   p a t h s   w i t h   c o u n t s   o f   h i d d e n \ 
 	 	 / / 	 	 	 a n d   v i s i b l e   t a g s   o f   e a c h   k i n d . " , 
 	 	 a u t h o r :   " R o b T r e w " , 
 	 	 l i c e n s e :   " M I T " , 
 	 	 s i t e :   " h t t p s : / / g i t h u b . c o m / R o b T r e w / t x t q u e r y - t o o l s " , 
 	 	 h i d e d e s c e n d a n t s :   t r u e , 
 	 	 f o c u s d e s c e n d a n t s :   f a l s e , 
 	 	 f o c u s a n c e s t o r s :   t r u e 
 	 } ; 
 	 
 	 / /   M E N U   O F   T A G S ,   T H E I R   V I S I B I L I T Y   C O U N T S 
 	 / /   A N D   H I D E / F O C U S   A C T I O N S : 
 	 / /   F O C U S   I F   V I E W   U N F I L T E R E D ,   O R   I F   A N Y   T A G S   H I D D E N , 
 	 / /   O T H E R W I S E ,   H I D E 
 	 f u n c t i o n   v i s i b l e T a g s ( e d ,   o p t )   { 
 	 	 v a r   o T r e e   =   e d . t r e e ( ) , 
 	 	 	 l s t T a g s   =   o T r e e . t a g s ( ) . s o r t ( ) , 
 	 	 	 l s t N o d e s ,   l s t V i s i b l e   =   [ ] , 
 	 	 	 s t r T a g ,   j ,   l n g N o d e s , 
 	 	 	 l n g H i d d e n   =   0 , 
 	 	 	 l n g S h o w n   =   0 , 
 	 	 	 b l n F i l t e r e d   =   o p t . f i l t e r e d ; 
 	 	 f o r   ( v a r   l n g   =   l s t T a g s . l e n g t h ,   i   =   0 ;   i   <   l n g ;   i + + )   { 
 	 	 	 s t r T a g   =   l s t T a g s [ i ] ; 
 	 	 	 l s t N o d e s   =   o T r e e . e v a l u a t e N o d e P a t h ( ' / / @ '   +   s t r T a g ) ; 
 	 	 	 l n g N o d e s   =   l s t N o d e s . l e n g t h ; 
 	 	 	 l n g H i d d e n   =   0 ; 
 	 	 	 f o r   ( j   =   l n g N o d e s ;   j - - ; )   { 
 	 	 	 	 i f   ( e d . n o d e I s H i d d e n I n F o l d ( l s t N o d e s [ j ] ) )   l n g H i d d e n   + =   1 ; 
 	 	 	 } 
 	 	 	 l n g S h o w n   =   l n g N o d e s   -   l n g H i d d e n ; 
 	 	 	 i f   ( b l n F i l t e r e d )   { 
 	 	 	 	 l s t V i s i b l e . p u s h ( 
 	 	 	 	 	 l n g H i d d e n   ? 
 	 	 	 	 	 ( ' @ '   +   s t r T a g   +   ' \ t '   +   l n g S h o w n   +   ' / '   +   l n g N o d e s )   +   '  !�   f o c u s '   : 
 	 	 	 	 	 ( ' @ '   +   s t r T a g   +   ' \ t '   +   l n g N o d e s )   +   '  !�   h i d e ' 
 	 	 	 	 ) ; 
 	 	 	 }   e l s e   { 
 	 	 	 	 l s t V i s i b l e . p u s h ( 
 	 	 	 	 	 ( ' @ '   +   s t r T a g   +   ' \ t '   +   l n g S h o w n   +   ' / '   +   l n g N o d e s )   +   '  !�   f o c u s ' 
 	 	 	 	 ) ; 
 	 	 	 } 
 	 	 } 
 	 	 r e t u r n   l s t V i s i b l e ; 
 	 } 
 	 
 	 / /   A P P L Y   A N Y   N O D E P A T H   C H A N G E S   S E L E C T E D   I N   M E N U 
 	 f u n c t i o n   u p d a t e V i e w ( e d ,   o p t )   { 
 	 	 f u n c t i o n   u p d a t e d P a t h ( d c t V i e w ,   l s t C h o i c e )   { 
 	 	 	 v a r   l s t P a r t s ,   l s t S c o r e ,   l s t S h o w   =   [ ] , 
 	 	 	 	 l s t H i d e   =   [ ] , 
 	 	 	 	 s t r O l d P a t h   =   d c t V i e w . p a t h , 
 	 	 	 	 s t r P a t h   =   ' ' , 
 	 	 	 	 s t r C h o i c e , 
 	 	 	 	 s t r S h o w ,   s t r H i d e , 
 	 	 	 	 l n g V i s i b l e ,   l n g T o t a l , 
 	 	 	 	 l n g   =   l s t C h o i c e . l e n g t h , 
 	 	 	 	 l n g S h o w   =   0 , 
 	 	 	 	 l n g H i d e   =   0 , 
 	 	 	 	 i ,   b l n A n y H i d d e n   =   f a l s e ; 
 	 	 	 / /   P a r t i a l   | |   N o n e   - -   >   F o c u s 
 	 	 	 / /   A l l   - -   >   H i d e 
 	 	 	 f o r   ( i   =   l n g ;   i - - ; )   { 
 	 	 	 	 s t r C h o i c e   =   l s t C h o i c e [ i ] ; 
 	 	 	 	 i f   ( s t r C h o i c e . i n d e x O f ( ' \ t ' )   ! = =   - 1 )   { 
 	 	 	 	 	 l s t P a r t s   =   l s t C h o i c e [ i ] . s p l i t ( ' \ t ' ) ; 
 	 	 	 	 	 l s t S c o r e   =   l s t P a r t s [ 1 ] . s p l i t ( ' / ' ) ; 
 	 	 	 	 	 l n g V i s i b l e   =   l s t S c o r e [ 0 ] ; 
 	 	 	 	 	 l n g T o t a l   =   l s t S c o r e [ 1 ] ; 
 	 	 	 	 	 i f   ( l n g V i s i b l e   <   l n g T o t a l ) 
 	 	 	 	 	 	 l s t S h o w . p u s h ( l s t P a r t s [ 0 ] ) ; 
 	 	 	 	 	 e l s e   l s t H i d e . p u s h ( l s t P a r t s [ 0 ] ) ; 
 	 	 	 	 }   e l s e   i f   ( ' S H O W   A L L '   = = =   s t r C h o i c e )   { 
 	 	 	 	 	 r e t u r n   { 
 	 	 	 	 	 	 p a t h :   ' / / / * ' , 
 	 	 	 	 	 	 h i d d e n :   l s t H i d e , 
 	 	 	 	 	 	 f o c u s e d :   l s t S h o w 
 	 	 	 	 	 } ; 
 	 	 	 	 } 
 	 	 	 } 
 	 	 	 l n g S h o w   =   l s t S h o w . l e n g t h ; 
 	 	 	 l n g H i d e   =   l s t H i d e . l e n g t h ; 
 	 	 	 / /   i f   n o   n e w   t a g   c h o i c e ,   t r y   a n y   e x i s t i n g   c h o i c e 
 	 	 	 i f   ( ! ( l n g S h o w   | |   l n g H i d e ) )   { 
 	 	 	 	 l s t S h o w   =   o p t . v i e w . f o c u s e d ; 
 	 	 	 	 l s t H i d e   =   o p t . v i e w . h i d d e n ; 
 	 	 	 	 l n g S h o w   =   l s t S h o w   ?   l s t S h o w . l e n g t h   :   0 ; 
 	 	 	 	 l n g H i d e   =   l s t H i d e   ?   l s t H i d e . l e n g t h   :   0 ; 
 	 	 	 	 i f   ( ! ( l n g S h o w   | |   l n g H i d e ) ) 
 	 	 	 	 	 s t r P a t h   =   s t r O l d P a t h ; 
 	 	 	 } 
 	 	 	 / /   S H O W I N G   . . . 
 	 	 	 i f   ( l n g S h o w )   { 
 	 	 	 	 s t r S h o w   =   l n g S h o w   >   1   ? 
 	 	 	 	 	 ' ( '   +   l s t S h o w . j o i n ( '   o r   ' )   +   ' ) '   : 
 	 	 	 	 	 l s t S h o w [ 0 ] ; 
 	 	 	 	 s t r P a t h   =   ' / / '   +   s t r S h o w ; 
 	 	 	 	 i f   ( o p t . s u b t r e e f o c u s   & &   o p t . p a t h f o c u s ) 
 	 	 	 	 	 s t r P a t h   =   ' / '   +   s t r P a t h   +   '   u n i o n   / / '   +   s t r S h o w   +   ' / d e s c e n d a n t : : * ' ; 
 	 	 	 	 e l s e   { 
 	 	 	 	 	 i f   ( o p t . s u b t r e e f o c u s ) 
 	 	 	 	 	 	 s t r P a t h   + =   ' / d e s c e n d a n t - o r - s e l f : : * ' ; 
 	 	 	 	 	 i f   ( o p t . p a t h f o c u s ) 
 	 	 	 	 	 	 s t r P a t h   + =   ' / a n c e s t o r - o r - s e l f : : * ' ; 
 	 	 	 	 } 
 	 	 	 } 
 	 	 	 / /   A N D   H I D I N G 
 	 	 	 i f   ( l n g H i d e )   { 
 	 	 	 	 s t r H i d e   = 
 	 	 	 	 	 l n g H i d e   >   1   ?   ' ( '   +   l s t H i d e . j o i n ( '   o r   ' )   +   ' ) '   : 
 	 	 	 	 	 l s t H i d e [ 0 ] ; 
 	 	 	 	 i f   ( s t r P a t h )   s t r P a t h   + =   '   e x c e p t   / / '   +   s t r H i d e ; 
 	 	 	 	 e l s e   s t r P a t h   =   ' / / *   e x c e p t   / / '   +   s t r H i d e ; 
 	 	 	 	 i f   ( o p t . s u b t r e e h i d e ) 
 	 	 	 	 	 s t r P a t h   + =   ' / d e s c e n d a n t - o r - s e l f : : * ' ; 
 	 	 	 } 
 	 	 	 r e t u r n   { 
 	 	 	 	 p a t h :   s t r P a t h , 
 	 	 	 	 h i d d e n :   l s t H i d e , 
 	 	 	 	 f o c u s e d :   l s t S h o w 
 	 	 	 } ; 
 	 	 } 
 	 	 v a r   d c t N e w V i e w   =   u p d a t e d P a t h ( o p t . v i e w ,   o p t . c h o i c e ) ; 
 	 	 e d . s e t N o d e P a t h ( d c t N e w V i e w . p a t h ) ; 
 	 	 r e t u r n   d c t N e w V i e w ; 
 	 } 
 	 
 	 / /   W H A T   F I L T E R   I S   A C T I V E   ? 
 	 f u n c t i o n   d o c P a t h ( e d )   { 
 	 	 r e t u r n   e d . n o d e P a t h ( ) . t o S t r i n g ( ) ; 
 	 } 
 
 	 / /   M A I N 
 	 v a r   a p p F T   =   A p p l i c a t i o n ( " F o l d i n g T e x t " ) , 
 	 	 d o c s F T   =   a p p F T . d o c u m e n t s ( ) , 
 	 	 d c t V i e w   =   { } , 
 	 	 l n g D o c s   =   d o c s F T . l e n g t h , 
 	 	 o D o c   =   l n g D o c s   ?   d o c s F T [ 0 ]   :   n u l l , 
 	 	 s t r P a t h ,   s t r O l d P a t h ,   s t r N e w P a t h   =   ' / / / * ' , 
 	 	 s t r C h o i c e , 
 	 	 s t r O p t   =   ' ' , 
 	 	 l s t H i d e   =   [ ] , 
 	 	 l s t F o c u s   =   [ ] , 
 	 	 l s t S e l e c t e d   =   [ ] , 
 	 	 l s t T a g S e t   =   [ ] , 
 	 	 v a r C h o i c e   =   t r u e , 
 	 	 l n g T a g S e t , 
 	 	 v a r I n d e x ,   i ; 
 	 i f   ( l n g D o c s )   { 
 	 	 s t r P a t h   =   o D o c . e v a l u a t e ( { 
 	 	 	 s c r i p t :   d o c P a t h . t o S t r i n g ( ) 
 	 	 } ) ; 
 	 	 l s t T a g S e t   =   o D o c . e v a l u a t e ( { 
 	 	 	 s c r i p t :   v i s i b l e T a g s . t o S t r i n g ( ) , 
 	 	 	 w i t h O p t i o n s :   { 
 	 	 	 	 f i l t e r e d :   s t r P a t h   ! = =   ' / / / * ' 
 	 	 	 } 
 	 	 } ) ; 
 	 	 a p p F T . i n c l u d e S t a n d a r d A d d i t i o n s   =   t r u e ; 
 	 	 l n g T a g S e t   =   l s t T a g S e t . l e n g t h ; 
 	 	 i f   ( l n g T a g S e t )   { 
 	 	 	 l s t S e l e c t e d   =   l s t T a g S e t [ l n g T a g S e t   -   1 ] ; 
 	 	 	 w h i l e   ( v a r C h o i c e )   { 
 	 	 	 	 l s t T a g S e t . p u s h ( ' ' ) ; 
 	 	 	 	 l s t T a g S e t . p u s h ( 
 	 	 	 	 	 d c t O p t . f o c u s d e s c e n d a n t s   ? 
 	 	 	 	 	 ' [ + ]   i n c l u d e   d e s c e n d a n t s   i n   f o c u s '   : 
 	 	 	 	 	 ' [     ]   i n c l u d e   d e s c e n d a n t s   i n   f o c u s ' � 
 	 	 	 	 ) ; 
 	 	 	 	 l s t T a g S e t . p u s h ( 
 	 	 	 	 	 d c t O p t . f o c u s a n c e s t o r s   ? 
 	 	 	 	 	 ' [ + ]   i n c l u d e   a n c e s t o r s   i n   f o c u s '   : 
 	 	 	 	 	 ' [     ]   i n c l u d e   a n c e s t o r s   i n   f o c u s ' � 
 	 	 	 	 ) ; 
 	 	 	 	 l s t T a g S e t . p u s h ( 
 	 	 	 	 	 d c t O p t . h i d e d e s c e n d a n t s   ? 
 	 	 	 	 	 ' [ + ]   h i d e   d e s c e n d a n t s   t o o '   : 
 	 	 	 	 	 ' [     ]   h i d e   d e s c e n d a n t s   t o o ' � 
 	 	 	 	 ) ; 
 	 	 	 	 l s t T a g S e t . p u s h ( ' ' ) ; 
 	 	 	 	 l s t T a g S e t . p u s h ( ' S H O W   A L L ' ) ; 
 	 	 	 	 a p p F T . a c t i v a t e ( ) ; 
 	 	 	 	 / /   R E S T O R E   P R E V I O U S   S E L E C T I O N S 
 	 	 	 	 / /   G E T T I N G   T H E   ( C H A N G E A B L E )   M E N U   S T R I N G S   B Y   T H E   L E S S   F I C K L E   I N D E X 
 	 	 	 	 f o r   ( i   =   l s t S e l e c t e d . l e n g t h ;   i - - ; )   { 
 	 	 	 	 	 v a r I n d e x   =   l s t S e l e c t e d [ i ] ; 
 	 	 	 	 	 i f   ( ! i s N a N ( v a r I n d e x ) ) 
 	 	 	 	 	 	 l s t S e l e c t e d [ i ]   =   l s t T a g S e t [ v a r I n d e x ] ; 
 	 	 	 	 } 
 	 	 	 	 v a r C h o i c e   =   a p p F T . c h o o s e F r o m L i s t ( l s t T a g S e t ,   { 
 	 	 	 	 	 w i t h T i t l e :   d c t O p t . t i t l e   +   '   '   +   d c t O p t . v e r , 
 	 	 	 	 	 w i t h P r o m p t :   ' a c t i v e   n o d e   p a t h : \ n \ n '   +   s t r P a t h   + 
 	 	 	 	 	 	 ' \ n \ n '   +   ' (   v i s i b l e   /   t o t a l   )  !�   a c t i o n \ n \ n '   + 
 	 	 	 	 	 	 '# - c l i c k   f o r   m u l t i p l e   t a g ( s ) : ' , 
 	 	 	 	 	 d e f a u l t I t e m s :   l s t S e l e c t e d , 
 	 	 	 	 	 m u l t i p l e S e l e c t i o n s A l l o w e d :   t r u e 
 	 	 	 	 } ) ; 
 	 	 	 	 i f   ( v a r C h o i c e )   { 
 	 	 	 	 	 / /   R E C O R D   * I N D I C E S *   O F   C H O I C E S 
 	 	 	 	 	 / /   ( l e g e n d   t e x t   d e t a i l s   a r e   c o n t i n g e n t ) 
 	 	 	 	 	 l s t S e l e c t e d   =   [ ] ; 
 	 	 	 	 	 f o r   ( i   =   v a r C h o i c e . l e n g t h ;   i - - ; )   { 
 	 	 	 	 	 	 s t r C h o i c e   =   v a r C h o i c e [ i ] ; 
 	 	 	 	 	 	 l s t S e l e c t e d . p u s h ( l s t T a g S e t . i n d e x O f ( s t r C h o i c e ) ) ; 
 	 	 	 	 	 	 / /   a n d   u p d a t e   o p t i o n s   f o r   a n c e s t o r s   a n d   d e s c e n d a n t s 
 	 	 	 	 	 	 i f   ( s t r C h o i c e . i n d e x O f ( ' d e s c e n d a n t s ' )   ! = =   - 1 )   { 
 	 	 	 	 	 	 	 i f   ( s t r C h o i c e . i n d e x O f ( ' f o c u s ' )   ! = =   - 1 ) 
 	 	 	 	 	 	 	 	 d c t O p t . f o c u s d e s c e n d a n t s   =   ! d c t O p t . f o c u s d e s c e n d a n t s ; 
 	 	 	 	 	 	 	 e l s e   d c t O p t . h i d e d e s c e n d a n t s   =   ! d c t O p t . h i d e d e s c e n d a n t s ; 
 	 	 	 	 	 	 }   e l s e   i f   ( s t r C h o i c e . i n d e x O f ( ' a n c e s t o r s ' )   ! = =   - 1 )   { 
 	 	 	 	 	 	 	 d c t O p t . f o c u s a n c e s t o r s   =   ! d c t O p t . f o c u s a n c e s t o r s ; 
 	 	 	 	 	 	 } 
 	 	 	 	 	 } 
 	 	 	 	 	 / /   M A K E   R E Q U E S T E D   C H A N G E S   T O   T H E   F I L T E R I N G   O F   T H E   V I E W 
 	 	 	 	 	 d c t V i e w   =   o D o c . e v a l u a t e ( { 
 	 	 	 	 	 	 s c r i p t :   u p d a t e V i e w . t o S t r i n g ( ) , 
 	 	 	 	 	 	 w i t h O p t i o n s :   { 
 	 	 	 	 	 	 	 v i e w :   d c t V i e w , 
 	 	 	 	 	 	 	 c h o i c e :   v a r C h o i c e , 
 	 	 	 	 	 	 	 s u b t r e e h i d e :   d c t O p t . h i d e d e s c e n d a n t s , 
 	 	 	 	 	 	 	 s u b t r e e f o c u s :   d c t O p t . f o c u s d e s c e n d a n t s , 
 	 	 	 	 	 	 	 p a t h f o c u s :   d c t O p t . f o c u s a n c e s t o r s 
 	 	 	 	 	 	 } 
 	 	 	 	 	 } ) ; 
 	 	 	 	 	 s t r N e w P a t h   =   d c t V i e w . p a t h ; 
 	 	 	 	 	 s t r O l d P a t h   =   s t r P a t h ; 
 	 	 	 	 	 s t r P a t h   =   s t r N e w P a t h ; 
 	 	 	 	 	 / /   G E T   T H E   U P D A T E D   V I S I B I L I T Y   C O U N T S   A N D   A C T I O N S 
 	 	 	 	 	 / /   F O R   E A C H   T A G 
 	 	 	 	 	 l s t T a g S e t   =   o D o c . e v a l u a t e ( { 
 	 	 	 	 	 	 s c r i p t :   v i s i b l e T a g s . t o S t r i n g ( ) , 
 	 	 	 	 	 	 w i t h O p t i o n s :   { 
 	 	 	 	 	 	 	 f i l t e r e d :   s t r P a t h   ! = =   ' / / / * ' 
 	 	 	 	 	 	 } 
 	 	 	 	 	 } ) ; 
 	 	 	 	 } 
 	 	 	 } 
 	 	 } 
 	 } 
 	 r e t u r n   s t r N e w P a t h ; 
 }                              6�jscr  ��ޭ