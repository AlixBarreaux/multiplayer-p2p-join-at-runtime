GDPC                                                                            *   <   res://.import/dirt.png-8c5b227429526d5bfbd2de73a05daece.stex��             I�"��E�����hh��/@   res://.import/grass.png-266dd18a232dac9996f823f16148f96c.stex    �      �       /s)&+d����I��vA<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex �      U      -��`�0��x�5�[@   res://.import/spray.png-8ca5361458d68b632d67d82db8a65538.stex   ��      �       \c�r�1o�v} �@   res://.import/stone.png-4217af1e732f6f530c41a71d2a0f651b.stex   ��      �       ������>�h�*҆   res://Core/Game.gd.remap �      $       �6V� -Źĳ�.K|5   res://Core/Game.gdc �      �      �E�v��bIqҘ�&uH   res://Core/Game.tscnP      �      ��`}J����@�X   res://Core/Terrain.gd.remap 0�      '       �ac3��<�H��$�x   res://Core/Terrain.gdc  �      �      ��F1=�b��]%�;Z=,   res://Core/World Elements/Players.gd.remap  `�      6       511��s��m�Ȭ�(   res://Core/World Elements/Players.gdc   �      ~      ,��Qc5���-H   res://Creatures/Player/Player Systems/PlayerActionsManagement.gd.remap  ��      R       PJ�J���C)e1�p��D   res://Creatures/Player/Player Systems/PlayerActionsManagement.gdc   @*      �
      ߬���/L�f<��D   res://Creatures/Player/Player Systems/PlayerActionsManagement.tscn  �4      {      ��:�}<d��4F7@   res://Creatures/Player/Player Systems/PlayerMovementManager.tscnP6      �       C�xӵN-H�Z�(   res://Creatures/Player/Player.gd.remap   �      2       �'F�ޅ ��P���ֹ$   res://Creatures/Player/Player.gdc    7      �      ��:'l��K�B��$   res://Creatures/Player/Player.tscn   9      �      S�J�B+pe���m"�8   res://Creatures/Player/PlayerMovementManager.gd.remap   @�      A       ��?�@$}�y�0   res://Creatures/Player/PlayerMovementManager.gdc�<            6l�E+���Ն<�b(   res://GUI/Main_Menu/MainMenu.gd.remap   ��      1       �h���QS��N(�6�B    res://GUI/Main_Menu/MainMenu.gdc�A      4
      £LDK��D7њ߽3�$   res://GUI/Main_Menu/MainMenu.tscn   �K      ,      cC���tGS3�����[�   res://Greeny.tscn    b      �       c'!(���3P� �Z4�/$   res://Singletons/GameState.gd.remap ��      /       �����/��W �M5�*�    res://Singletons/GameState.gdc   c            �A�y��t�
�M��y$   res://Singletons/Network.gd.remap    �      -       �2�=�4?��w���QR   res://Singletons/Network.gdc k      �!      T�b�q$|4�eg��!�   res://Sprays/Spray.gd.remap 0�      '       !~IG���$��k�dU   res://Sprays/Spray.gdc   �              G���󥟪�m5A5�-   res://Sprays/Spray.tscn  �      �      �v��%naLSG�`	��    res://Sprays/spray.png.import   ��      �      �zB۩�z�DO��0F   res://TileMaps/Terrain.tscn  �      Y       "9Bw��#�s�ܕ(   res://TileMaps/Textures/dirt.png.import ��      �      O��j�]�V�(   res://TileMaps/Textures/grass.png.import �      �      $�Vr�Z������HG(   res://TileMaps/Textures/stone.png.import��      �      �Zj��+��e���$   res://TileMaps/terrain_tileset.tres `�            ��m;���W�\=�   res://default_env.tres  p�      �       um�`�N��<*ỳ�8   res://icon.png  `�      �      G1?��z�c��vN��   res://icon.png.import   ��      �      �����%��(#AB�   res://project.binaryP�      *      �'�OǢ�!�*�"���            GDSC            X      ���ӄ�   �����϶�    ����������������������������Ķ��   �����Ҷ�   �����������������������¶���   ���¶���   ��������Ӷ��   ���Ӷ���   �������Ӷ���   �������¶���   ��������Ҷ��            send_all_nodes_to_client      WTF IS THAT EVEN???!!!                                                      	      
                                              '      (      )      2      ;      D      Q      R      S      T      U      V      3YYYYYYY0�  PQX=VYYY�  -YYYY0�  PQX=V�  �  PR�  QYYYD0�  PQX=V�  ;�  T�  PQ�  �?  P�  R�  T�  Q�  �  PQT�	  PQT�
  P�  QYYYYYY`    [gd_scene load_steps=5 format=2]

[ext_resource path="res://Core/World Elements/Players.gd" type="Script" id=1]
[ext_resource path="res://TileMaps/Terrain.tscn" type="PackedScene" id=2]
[ext_resource path="res://Greeny.tscn" type="PackedScene" id=3]
[ext_resource path="res://Core/Game.gd" type="Script" id=4]

[node name="Game" type="Node2D"]
script = ExtResource( 4 )

[node name="Terrain" parent="." instance=ExtResource( 2 )]

[node name="Sprays" type="Node2D" parent="."]

[node name="PlayerSpawnPoints" type="Node2D" parent="."]

[node name="PlayerSpawnPoint1" type="Position2D" parent="PlayerSpawnPoints"]
position = Vector2( 60.8112, 253.144 )

[node name="PlayerSpawnPoint2" type="Position2D" parent="PlayerSpawnPoints"]
position = Vector2( 538.815, 59.397 )

[node name="PlayerSpawnPoint3" type="Position2D" parent="PlayerSpawnPoints"]
position = Vector2( 964.494, 253.144 )

[node name="PlayerSpawnPoint4" type="Position2D" parent="PlayerSpawnPoints"]
position = Vector2( 538.815, 533.159 )

[node name="Players" type="Node2D" parent="."]
script = ExtResource( 1 )

[node name="SuperSpriteOfLife" parent="." instance=ExtResource( 3 )]
position = Vector2( 37, 12.3702 )
    GDSC         B        ������ƶ   ���������嶶   ����ﶶ�   ���ⶶ��   ����嶶�   ����󶶶   ����������Ŷ   ���������������������Ŷ�   �����϶�   �������Ӷ���   ����������������Ķ��   �����������������������Ҷ���   �����Ҷ�   ��������������������Ҷ��   ������������������Ŷ   ���¶���   ����������������Ҷ��   ������������������������Ķ��   ������������������Ŷ   ������Ҷ   �����Ŷ�   �����Ҷ�   �������������������Ҷ���   ����Ķ��   ����ζ��   ������Ҷ   ���Ӷ���   ������������            send_used_cells_by_id         replicated_saved_cells        receive_cells_from_server      %   [CLIENT] Receiving cells from server!         [CLIENT] Loading all cells!                                                     	      
                     "      +      ,      -      .      6      A      E      F      G      H      I      Q      X      Y      Z      c      m      q       r   !   y   "   z   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   �   5   �   6   �   7   �   8   �   9   �   :   �   ;   �   <   �   =   �   >   �   ?   �   @   �   A     B   3YYYYY>�  N�  Y�  RY�  RY�  YOYYY;�  V�  LMYH;�  V�  LMYYYY0�  PQX=V�  &�	  PQT�
  PQV�  �  PQYYYYY0�  PQX=V�  �  PR�  QYYYD0�  PQX=V�  &�	  PQT�
  PQV�  �  PQY�  �  P�  R�  Q�  �  �  P�	  PQT�  PQR�  QYYYD0�  PQX=V�  �?  P�  Q�  �  PQYYY0�  PQX=V�  �  �  LM�  )�  �  T�  PQV�  �  &�  V�  ,�  �  T�  PT�  P�  QQYYY0�  PQX=V�  T�  PQ�  �?  P�  QY�  ;�  Y�  �  )�  �  V�  �  Y�  )�  �  VY�  T�  P�  R�  QY`             GDSC   &      k   �     ���ӄ�    ����������������������������޶��   ������������������Ŷ   �������Ӷ���   �������¶���   �������Ӷ���   ��������������������   �����϶�   ������ݶ   ������¶   ����������������Ķ��   �����������Ķ���    ������������������������������ض   ��������������������Ҷ��   �������������������ض���   ������Ҷ   �����Ҷ�    ���������������������������ض���   ��������������¶   ���������������Ķ���   �����������ض���   ���Ӷ���   ����������������ض��   ��ն   ���������������Ӷ���   ���Ӷ���   �������Ӷ���   �����������������Ķ�   ��������������ض   ��������Ҷ��   ��������Ҷ��   �������������������Ҷ���   ������������������ض   ����������������ض��   �������޶���   �������������Ķ�   ���������������������޶�   �����������Ҷ���   J  
Script responsible of the player spawning system within the network.
Anyone who joins loads this script which is attached to the Node2D 'Players'.
If we are the SERVER, it spawns its own player.
If we are the CLIENT, it first requests the server to spawn all the other players.
Then, the CLIENT requests to spawn its own player.
        Game/PlayerSpawnPoints     "   res://Creatures/Player/Player.tscn        peer_unregistered         on_peer_unregistered         =   [CLIENT] Telling the server to spawn the joined client (me) !         [CLIENT] Client (me)       )    is requesting all other players spawn...         send_all_other_players_spawn   6   How many players are instanced on the server already:         spawn_player   &   Requesting player spawn with peer_id:         send_player_spawn      #   Sending player spawn with peer_id:         [SELF] Spawning player with ID:           H   [SERVER] Telling clients to despawn the player who just leaved with ID:       Searching in the players...    "   [SERVER] Player to despawn found:      !   [SERVER] Player to despawn path:          despawn_player     8   [SELF] Despawning the player who just leaved with path:                       	      
                           "      #      *      +      ,      -      5      6      7      B      C      D      N      S      V      a      b      c       d   !   i   "   t   #   u   $   v   %   w   &   x   '   y   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   �   5   �   6   �   7   �   8   �   9   �   :   �   ;   �   <   �   =   �   >   �   ?   �   @   	  A     B     C   !  D   "  E   #  F   $  G   0  H   :  I   ;  J   I  K   J  L   K  M   T  N   U  O   V  P   ]  Q   ^  R   k  S   r  T   s  U   t  V   u  W   v  X   �  Y   �  Z   �  [   �  \   �  ]   �  ^   �  _   �  `   �  a   �  b   �  c   �  d   �  e   �  f   �  g   �  h   �  i   �  j   �  k   �  l   �  m   �  n   �  o   �  p   3YYYYYY;�  V�  �  Y5;�  V�  PQT�  PQT�  P�  QYY:�  V�  �  YYYY0�  PQX=V�  �  �  �  T�	  P�  RR�  Q�  �  �  &�  PQT�
  PQV�  �  P�  Q�  (V�  �  P�  PQT�  PQQYY�  �  �?  P�  Q�  �  P�  PQT�  PQQYYYYYY0�  P�  V�  QX=V�  �?  P�  R�  R�  Q�  �  P�  R�	  R�  QYYYYD0�  P�  V�  QX=V�  &�  PQT�
  PQV�  �?  P�
  RT�  PQQ�  �  �  �  )�  T�  PQV�  �?  P�  T�  Q�  �  P�  R�  R�  P�  T�  QQYYYY0�  P�  V�  QX=V�  �?  P�  R�  Q�  �  P�  R�  R�  QYYYYD0�  P�  V�  QX=V�  &�  PQT�
  PQV�  �?  P�  R�  Q�  �  P�  R�  QYYYYI0�  P�  V�  QX=V�  �?  P�  �>  P�  QQY�  ;�  V�  ?P�  QT�  PQY�  �  �  T�  �>  P�  QY�  �  �  T�  P�  Q�  �  �  T�  �  T�  P�  QT�  �  T�  P�  QYYYYY0�  P�  V�  QX=V�  �   P�  QYYYY0�   P�  V�  QX=V�  �?  P�  R�  Q�  )�!  T�  PQV�  �?  P�  Q�  &�!  T�  �>  P�  QV�  �?  P�  R�!  T�  Q�  �?  P�  R�!  T�"  PQQ�  �  P�  R�!  T�"  PQQY�  �  �  +YYYYI0�#  P�$  QX=V�  �?  P�  R�$  Q�  ;�!  �  P�$  Q�  T�%  P�!  QY`  GDSC   ,      S   �     ���Ӷ���   �����Ŷ�   ���ӄ�   �������Ӷ���   �������¶���   �������Ӷ���   �����Ķ�   ���������¶�   �������������������Ķ���   ����Ķ��   ������������ض��   ��������������������   ������������Ҷ��   ������������϶��   �����϶�   ���������������Ŷ���   �����׶�   ����������������Ķ��   ���������������¶���   ��������������ƶ   ������ƶ   ����¶��   ���������������������Ҷ�   ���Ӷ���   ��������������Ӷ   �������Ӷ���   �������Ӷ���   ��������������������Ҷ��   ��������������ض   ��������Ҷ��   ����¶��   ����������������Ķ��   ������������������������ض��   ������������������������ض��    ���������������������������ض���    ���������������������������ض���   �����Ҷ�   �������������ƶ�   ��ն   ������������   �����������ƶ���   ���������嶶   ���ⶶ��   ������������������������¶��      Game/Sprays       res://Sprays/Spray.tscn             Game/Terrain      spray          Spray key pressed!    	   TESTSPRAY                primary_action        Primary action button pressed!              send_tilemap_modification         modify_tilemap        Modifying tilemap:     $    at position global mouse position:                                                  $   	   %   
   &      /      0      1      8      @      A      H      I      J      K      S      U      V      W      b      j      n      o      p      q      r       s   !   t   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   �   5   �   6   �   7   �   8     9     :     ;     <     =     >   $  ?   %  @   &  A   '  B   3  C   =  D   B  E   I  F   J  G   K  H   L  I   X  J   i  K   {  L   |  M   }  N   ~  O   �  P   �  Q   �  R   �  S   3YYYYY5;�  V�  �  PQT�  PQT�  PQYY5;�  T�  PQYYY5;�  V�	  W�
  YYY:�  V�  �  Y;�  ?P�  QYY;�  V�  �  YYYY0�  PQX=V�  -YYY0�  P�  V�  QX=V�  &T�  PQV�  �  PQYYYYYYY5;�  V�  �  PQT�  PQT�  P�  QYY0�  PQX=V�  �  &�  T�  P�  QV�  �?  P�  T�  R�  Q�  &�  V�  �  ;�  �  T�  PQ�  �  �  T�  P�  �>  P�  PQT�  PQQQ�  �  T�  �  T�  �  �  T�  P�  QY�  �  �  �  �  T�  PQYY�  �  &�  T�  P�  QV�  �?  P�	  Q�  &�  PQT�  PQV�  �   P�  T�!  PQQ�  (V�  �"  P�  T�!  PQQYYY0�"  P�#  V�  QX=V�  �$  P�
  R�  R�#  QYYYYD0�   P�#  V�  QX=V�  &�  PQT�  PQV�  �%  P�#  Q�  �&  P�  R�#  QYYYYD0�%  P�#  V�  QX=V�  �?  P�  R�  T�  R�  R�  T�!  PQQ�  �  T�'  P�  T�(  P�#  QR�  T�)  T�*  QYYYY0�+  PQV�  �  �  YYY`       [gd_scene load_steps=2 format=2]

[ext_resource path="res://Creatures/Player/Player Systems/PlayerActionsManagement.gd" type="Script" id=1]

[node name="PlayerActionsManagement" type="Node"]
script = ExtResource( 1 )

[node name="SprayCoolDown" type="Timer" parent="."]
wait_time = 3.0
[connection signal="timeout" from="SprayCoolDown" to="." method="_on_SprayCoolDown_timeout"]
     [gd_scene load_steps=2 format=2]

[ext_resource path="res://Creatures/Player/PlayerMovementManager.gd" type="Script" id=1]

[node name="PlayerMovementManager" type="Node"]
script = ExtResource( 1 )
          GDSC            <      ������������τ�   �����Ķ�   �������������������׶���   �����ׄ򶶶�   �����϶�   ����������������Ķ��   ���Ӷ���   �����������¶���      YOU ARE THE MASTER OF:                                             	               	      
                                  (      1      8      9      :      3YY2�  YYYY5;�  V�  W�  YYYY0�  PQX=V�  �  �  �  &T�  PQV�  �?  PRT�  Q�  �  T�  P�  QYYY` [gd_scene load_steps=6 format=2]

[ext_resource path="res://icon.png" type="Texture" id=1]
[ext_resource path="res://Creatures/Player/Player Systems/PlayerMovementManager.tscn" type="PackedScene" id=2]
[ext_resource path="res://Creatures/Player/Player Systems/PlayerActionsManagement.tscn" type="PackedScene" id=3]
[ext_resource path="res://Creatures/Player/Player.gd" type="Script" id=4]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 32, 32 )

[node name="Player" type="KinematicBody2D"]
script = ExtResource( 4 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 1 )

[node name="Camera2D" type="Camera2D" parent="."]

[node name="PlayerMovementManager" parent="." instance=ExtResource( 2 )]

[node name="PlayerActionsManagement" parent="." instance=ExtResource( 3 )]
            GDSC         +   �      ���Ӷ���   ��������������������Ķ��   �����Ķ�   ���������¶�   �������϶���   ������������������϶   ������������Ҷ��   �����϶�   �����Ķ�   ���������������Ŷ���   �����׶�   �����������������¶�   ����������������Ķ��   �������������Ӷ�   ���¶���   �������ض���   ����¶��   ����������������Ҷ��   ζ��   ϶��   ���������Ҷ�          �         replicated_velocity    	   move_left            
   move_right        move_up    	   move_down                                        	               	   !   
   .      /      6      7      8      9      A      H      I      J      U      Y      Z      b      k      t      w      }      ~            �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   3YY2�  YYYY5;�  T�  PQYYF;�  V�  �  PRQYH;�  V�  �  PRQYY;�  V�  �  YYYY0�  PQX=V�  @P�  4�  QYYY0�	  P�
  V�  QX=V�  �  PQ�  �  &T�  PQV�  �  �  T�  P�  Q�  �  P�  R�  T�  Q�  (V�  �  T�  �  YYYY0�  PQX=V�  �  �  PRQ�  &�  T�  P�  QV�  �  T�  �  �  &�  T�  P�  QV�  �  T�  �  �  &�  T�  P�  QV�  �  T�  �  �  &�  T�  P�  QV�  �  T�  �  �  �  �  �  T�  PQ�  Y`   GDSC   '      [   �     ����������Ķ   �����������������������¶���   �������¶���   ������ڶ   ������������Ķ��   ������������������Ķ   �������������������¶���   ������������������¶   ���������������������¶�   �������������������������¶�   ���������������������¶�   �������������������ض���   �����ض�   �����������������ض�   �����������������������¶���   ������������Ķ��   ������������������Ķ   �������������������¶���   ������������������¶   ���������������������¶�   �����������������ض�   ���������������ض���   �����϶�   ����������������������Ŷ    ���������������������������Ŷ���    ���������������������������Ŷ���   ���¶���   ������ݶ   ����������Ӷ   ���������������Ŷ���   ����������¶    �����������������������������Ҷ�   ����������������Ҷ��   ������������Ķ��   �������Ҷ���   �����������������������ٶ���    ���������������������������Ҷ���   ������������¶��   �����������������������ٶ���                                                       %   	   4   
   5      D      E      F      U      d      e      t      u      v      w            �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3      4     5     6     7     8     9     :      ;   !  <   "  =   #  >   $  ?   ,  @   -  A   .  B   5  C   9  D   ?  E   E  F   H  G   N  H   T  I   U  J   V  K   ^  L   b  M   h  N   i  O   j  P   k  Q   s  R   {  S   �  T   �  U   �  V   �  W   �  X   �  Y   �  Z   �  [   3YYYYYY5;�  V�  W�  �  �  �  Y5;�  V�  W�  �  �  �  Y5;�	  V�  W�  �  �  �
  YY5;�  V�  W�  �  �  �  YYY5;�  V�  W�  �  �  �  Y5;�  V�  W�  �  �  �  YY5;�  V�  W�  �  �  �  YYYY0�  PQX=V�  �  PQYYYYY0�  PQX=V�  �  PQ�  �  PQYYY0�  PQX=V�  �	  T�  �  T�  �  �  T�  �  T�  �  �  T�  �>  P�  T�  QYYY0�  PQX=V�  �  T�  �  T�  �  �  T�  �>  P�  T�  QYYYY0�  PQX=V�  �  �  &�  T�   V�  �!  PQ�  �  T�"  �  �  T�"  �  (V�  �  T�"  �  �  T�"  YYY0�!  PQX=V�  �#  PQ�  �  T�!  PQYYYYY0�$  PQX=V�  �  �  &�  T�   V�  �%  PQ�  �  T�"  �  �  T�"  �  (V�  �  T�"  �  �  T�"  YYY0�%  PQX=V�  �&  PQ�  �  T�%  PQYYYY0�#  PQX=V�  �  T�  �	  T�  �  �  T�  �  T�  �  �  T�  �  P�  T�  QYYYY0�&  PQX=V�  �  T�  �  T�  �  �  T�  �  P�  T�  QY`            [gd_scene load_steps=2 format=2]

[ext_resource path="res://GUI/Main_Menu/MainMenu.gd" type="Script" id=1]

[node name="MainMenu" type="CanvasLayer"]
script = ExtResource( 1 )

[node name="Control" type="Panel" parent="."]
anchor_right = 1.0
anchor_bottom = 1.0
__meta__ = {
"_edit_lock_": true,
"_edit_use_anchors_": false
}

[node name="HostContainer" type="Control" parent="Control"]
anchor_top = 0.05
anchor_right = 0.4
anchor_bottom = 1.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="HostAnchorContainer" type="VBoxContainer" parent="Control/HostContainer"]
anchor_right = 1.0
anchor_bottom = 1.0
custom_constants/separation = 50
__meta__ = {
"_edit_use_anchors_": false
}

[node name="CreateServerLabel" type="Label" parent="Control/HostContainer/HostAnchorContainer"]
margin_right = 409.0
margin_bottom = 14.0
text = "CREATE SERVER"
align = 1
valign = 1
__meta__ = {
"_edit_use_anchors_": false
}

[node name="HostServerNameLabel" type="Label" parent="Control/HostContainer/HostAnchorContainer"]
margin_top = 64.0
margin_right = 409.0
margin_bottom = 78.0
text = "Server Name"
align = 1
valign = 1

[node name="HostServerNameLineEdit" type="LineEdit" parent="Control/HostContainer/HostAnchorContainer"]
margin_top = 128.0
margin_right = 409.0
margin_bottom = 152.0
text = "Default Server Name"
align = 1

[node name="HostServerIPLabel" type="Label" parent="Control/HostContainer/HostAnchorContainer"]
margin_top = 202.0
margin_right = 409.0
margin_bottom = 216.0
text = "Server IP Adress"
align = 1
valign = 1
__meta__ = {
"_edit_use_anchors_": false
}

[node name="HostServerIPLineEdit" type="LineEdit" parent="Control/HostContainer/HostAnchorContainer"]
margin_top = 266.0
margin_right = 409.0
margin_bottom = 290.0
text = "127.0.0.1"
align = 1
__meta__ = {
"_edit_use_anchors_": false
}

[node name="HostServerPortLabel" type="Label" parent="Control/HostContainer/HostAnchorContainer"]
margin_top = 340.0
margin_right = 409.0
margin_bottom = 354.0
text = "Server Port"
align = 1

[node name="HostServerPortLineEdit" type="LineEdit" parent="Control/HostContainer/HostAnchorContainer"]
margin_top = 404.0
margin_right = 409.0
margin_bottom = 428.0
text = "17017"
align = 1
__meta__ = {
"_edit_use_anchors_": false
}

[node name="CreateServerButton" type="Button" parent="Control/HostContainer/HostAnchorContainer"]
margin_top = 478.0
margin_right = 409.0
margin_bottom = 498.0
text = "Create Server"

[node name="JoinContainer" type="Control" parent="Control"]
anchor_left = 0.6
anchor_top = 0.05
anchor_right = 1.0
anchor_bottom = 1.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="JoinAnchorContainer" type="VBoxContainer" parent="Control/JoinContainer"]
anchor_right = 1.0
anchor_bottom = 1.0
custom_constants/separation = 50
__meta__ = {
"_edit_use_anchors_": false
}

[node name="JoinServerLabel" type="Label" parent="Control/JoinContainer/JoinAnchorContainer"]
margin_right = 409.0
margin_bottom = 14.0
text = "JOIN SERVER"
align = 1
valign = 1

[node name="JoinServerIPLabel" type="Label" parent="Control/JoinContainer/JoinAnchorContainer"]
margin_top = 64.0
margin_right = 409.0
margin_bottom = 78.0
text = "Server IP Adress"
align = 1
valign = 1

[node name="JoinServerIPLineEdit" type="LineEdit" parent="Control/JoinContainer/JoinAnchorContainer"]
margin_top = 128.0
margin_right = 409.0
margin_bottom = 152.0
text = "127.0.0.1"
align = 1

[node name="JoinServerPortLabel" type="Label" parent="Control/JoinContainer/JoinAnchorContainer"]
margin_top = 202.0
margin_right = 409.0
margin_bottom = 216.0
text = "Server Port"
align = 1
valign = 1

[node name="JoinServerPortLineEdit" type="LineEdit" parent="Control/JoinContainer/JoinAnchorContainer"]
margin_top = 266.0
margin_right = 409.0
margin_bottom = 290.0
text = "17017"
align = 1

[node name="JoinServerButton" type="Button" parent="Control/JoinContainer/JoinAnchorContainer"]
margin_top = 340.0
margin_right = 409.0
margin_bottom = 360.0
text = "Join Server"

[node name="Label" type="Label" parent="Control/JoinContainer/JoinAnchorContainer"]
margin_top = 410.0
margin_right = 409.0
margin_bottom = 424.0
text = "Default Server Name 192.168.0.1 17017"

[node name="ServerList" type="HBoxContainer" parent="Control/JoinContainer/JoinAnchorContainer"]
margin_top = 474.0
margin_right = 409.0
margin_bottom = 488.0

[node name="ServerNamesContainer" type="VBoxContainer" parent="Control/JoinContainer/JoinAnchorContainer/ServerList"]
margin_right = 164.0
margin_bottom = 14.0

[node name="ServerNames" type="Label" parent="Control/JoinContainer/JoinAnchorContainer/ServerList/ServerNamesContainer"]
margin_right = 164.0
margin_bottom = 14.0
text = "TEST Default Server Name"

[node name="ServersIPsContainer" type="VBoxContainer" parent="Control/JoinContainer/JoinAnchorContainer/ServerList"]
margin_left = 168.0
margin_right = 244.0
margin_bottom = 14.0

[node name="ServerIps" type="Label" parent="Control/JoinContainer/JoinAnchorContainer/ServerList/ServersIPsContainer"]
margin_right = 76.0
margin_bottom = 14.0
text = "192.168.0.2"

[node name="ServersPortsContainer" type="VBoxContainer" parent="Control/JoinContainer/JoinAnchorContainer/ServerList"]
margin_left = 248.0
margin_right = 288.0
margin_bottom = 14.0

[node name="ServerPorts" type="Label" parent="Control/JoinContainer/JoinAnchorContainer/ServerList/ServersPortsContainer"]
margin_right = 40.0
margin_bottom = 14.0
text = "17050"
[connection signal="pressed" from="Control/HostContainer/HostAnchorContainer/CreateServerButton" to="." method="_on_CreateServerButton_pressed"]
[connection signal="pressed" from="Control/JoinContainer/JoinAnchorContainer/JoinServerButton" to="." method="_on_JoinServerButton_pressed"]
    [gd_scene load_steps=2 format=2]

[ext_resource path="res://icon.png" type="Texture" id=1]

[node name="SuperSpriteOfLife" type="Sprite"]
self_modulate = Color( 0, 0.368627, 0.0235294, 1 )
texture = ExtResource( 1 )
        GDSC         1   &     ���Ӷ���   ������������������Ӷ   ��������޶��   �������Ӷ���   ����������������Ķ��   �����Ҷ�   ����������������Ҷ��   ���������������Ӷ���   ������Ҷ   �������Ӷ���   ���Ӷ���   �����������ض���   ��������������¶   ���Ӷ���   �������Ӷ���   ��������������޶   ���������Ӷ�   �����Ķ�   ������������������Ӷ   �������������Ӷ�   �������������޶�   �������������������޶���   �����������������������Ӷ���   �������Ӷ���   ��������Ҷ��   ����������ڶ            send_node_update   '   Requesting node update with node path:        Name of the requested node:       Type of the children nodes:           !   [SERVER] This is a node to send:          File name:     	   Peer ID:          FINAL NODE NAME:          receive_node_update    *   No child node to send in send_node_update!     2   [CLIENT] The received nodes we have to update is:         [CLIENT] The node name is:         [CLIENT] The node file path is:       node_updated                                                 	   	   
   
                1      2      3      A      K      W      e      r            �      �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *     +   
  ,     -     .     /     0   $  1   3YYYYYYYYY0�  P�  V�  QX=V�  &�  PQT�  PQV�  �  PR�  R�  R�  PQT�  PQQYYYD0�  P�  R�  V�  QX=V�  �?  P�  R�>  P�  QQ�  �?  P�  R�	  P�  QT�
  Q�  �?  P�  R�	  P�  QT�  PQQ�  &�	  P�  QT�  PQ�  V�  )�  �	  P�  QT�  PQV�  �?  P�  R�  T�
  Q�  �?  P�  R�  T�  Q�  ;�  �  T�  Y�  ;�  V�  �>  P�  T�
  Q�  �  &�  4�  V�  �  �?  P�  R�  Q�  �  �>  P�  Q�  �?  P�	  R�  QY�  �  P�  R�
  R�  R�  R�  Q�  (V�  �?  P�  QYYYD0�  P�  R�  R�  V�  QX=V�  �?  P�  R�  Q�  �?  P�  R�  QY�  ;�  V�  �>  P�  Q�  �?  P�  R�  Q�  ;�  �L  P�  QT�  PQY�  T�  P�  QY�  �  P�  QY`          GDSC   =   ;   8  Y     ���Ӷ���   ����������������   ���Ķ���   ���������������Ŷ���   ����������¶   ����������Ӷ   ��������������¶   ����������������Ҷ��   ����������������Ҷ��   �����������Ҷ���   �������������¶�   ������������������������¶��   ������������������Ѷ    ���������������������������¶���   ��������������Ҷ   ����������������Ҷ��   ������������Ķ��   �����������������������¶���   ����   ������������������Ķ   �������Ӷ���   ���������������Ķ���   ���������������������Ŷ�   �����������������Ķ�   �����������������Ӷ�   ��������������Ķ   ���������������ض���   ���¶���   ����Ӷ��   �����������Ӷ���   ������¶   ��������������������������Ķ   �Ҷ�,   ���������������������������������������¶���8   ���������������������������������������������������¶���$   �������������������������������Ķ���   ��������������Ķ   ������������¶��   ���������������������Ŷ�   ��������������������Ҷ��   �����������¶���    �����������������������������Ҷ�$   ��������������������������������Ҷ��   ���������������������Ҷ�   �����Ҷ�0   ��������������������������������������������¶��   �����Ӷ�    �����������������������������Ŷ�   ������������Ķ��   �����������������Ҷ�   ����������������Ķ��   ��������������������������Ŷ   ����������ڶ   �����Ҷ�   ������Ҷ   �������������������������ζ�   ���Ҷ���    ���������������������������Ķ���   ���¶���   ��ն    ����������������������������Ŷ��   d   
Script responsible of managing the network between all the peers, be it the
SERVER or the CLIENTS.
      res://Core/Game.tscn   	   127.0.0.1      yB        Default Server Name                       	   192.168.0      B   Your are using a LAN adress, it will appear in the LAN games list!     +   (!) ERROR CREATING THE SERVER! ERROR CODE:              Created server with name:          IP:           Port:        You created the server already!       peer_connected        on_peer_connected_to_server       peer_disconnected          on_peer_disconnected_from_server      peer_registered       on_peer_registered     (   A peer connected to the server with ID:    -   A peer disconnected from the server with ID:          Created client with ID:       connection_failed         on_connection_to_server_failed        connection_succeeded   !   on_connection_to_server_succeeded         server_disconnected       on_server_disconnected     (   (!) The connection to the server failed!   +   Connection to server established! Your ID:     *   You connected to the server which has IP:          and Port:     $   The server shut down the connection!   ,   Adding peer to registration queue list! ID:    >   Removing peer from registration queue list! ID to be deleted:             O   Peer removed from 'peer_registration_queue_list'! Peers remaining in the list:     A   No more player to register from the peer_registration_queue_list!      -   The slot for registration is free! Taking it!      2   A peer is being registered right now, please wait!        ON PEER REGISTERED     8   [SERVER] Player ID list after your (self) registration:    4   [SERVER] Registering peer! Network connected peers:    (   Player ID list after peer registration:       preload_game_scene     %   [SERVER] Unregistering peer with ID:       N   (!) ERROR: Could not unregister_peer that doesn't exist in the player_id_list!        Player with ID:    *    has been removed from the player_id_list!        peer_unregistered      1   [SERVER] Sending the player list to the clients:          replicated_player_id_list         update_player_list_on_clients         [SERVER] Player_id_list:       $   [SERVER] Replicated player_id_list:    E   [CLIENT] Replicated player_id_list in update_player_list_on_clients:                                            	      
   	                                    #      *      1      2      9      @      A      B      J      R      [      \      ]      d      l      m       n   !   q   "   t   #   u   $   v   %   w   &   x   '   y   (   z   )   {   *   |   +   }   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   �   5   �   6   �   7   �   8   �   9   �   :   �   ;   �   <   �   =   �   >   �   ?   �   @   �   A   �   B   �   C   �   D   �   E   �   F   �   G   �   H   �   I   �   J   �   K   �   L   �   M     N     O     P     Q     R     S     T     U     V   '  W   0  X   1  Y   2  Z   3  [   ;  \   F  ]   Q  ^   R  _   ]  `   ^  a   _  b   `  c   k  d   u  e   z  f   ~  g     h   �  i   �  j   �  k   �  l   �  m   �  n   �  o   �  p   �  q   �  r   �  s   �  t   �  u   �  v   �  w   �  x   �  y   �  z   �  {   �  |   �  }   �  ~   �     �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �     �     �     �   $  �   %  �   &  �   '  �   /  �   4  �   5  �   6  �   7  �   8  �   @  �   P  �   a  �   b  �   c  �   d  �   e  �   m  �   r  �   x  �   y  �   z  �   {  �   |  �   }  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �      �     �   	  �     �     �     �     �     �   "  �   ,  �   3  �   :  �   ;  �   <  �   =  �   H  �   U  �   V  �   W  �   ^  �   e  �   f  �   j  �   o  �   p  �   y  �   z  �   {  �   |  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �     �     �     �     �                            #    $    %    &  	  '  
  (    )    *    +    ,    -    .    /    0    1    2    3    4    5    6    7    8    9    :    ;    <    =     >  !  ?  "  @  #  A  $  B  %  C  &  D  '  E  (  F  )  G  *  H  +  I  ,  J  -  K  .  L  /  M  0  N  1  O  2  P  3  Q  4  R  5  S  6  T  7  U  8  V  9  W  :  3YYYYYYY:�  V�  �  YYY;�  Y;�  V�  �  Y;�  V�  �  Y;�  V�  �  Y;�  V�  �  YY;�  V�  �  Y;�  V�  �  YYY;�	  V�  �  Y;�
  V�  LMYH;�  V�  LMYYY;�  V�  �  Y;�  V�  LMYYYB�  YB�  YYYYYYYYYY0�  PQX=V�  �  �  T�  PQ�  �  &�  V�  &�  �  V�  �?  P�	  QY�  ;�  �  T�  P�  R�  QY�  �  &�  V�  �?  P�
  R�  T�  P�  R�  QQ�  .Y�  �  PQT�  P�  QY�  �  �  PQY�  �  �  �  �?  P�  R�  R�  R�  R�  R�  QY�  �  PQY�  �  P�  QYY�  (V�  �?  P�  Q�  .YYYY0�  PQX=V�  �  �  T�  PQ�  �  �  PQT�  PQYYYYYD0�  P�  V�  QX=V�  �  PQT�  P�  QYYYY0�  PQX=V�  �  T�  P�  RR�  Q�  �  T�  P�  RR�  QY�  T�  P�  RR�  QYYYY0�  P�   V�  QX=V�  �?  P�  R�>  P�   QQ�  �!  P�   Q�  �"  PQYYYYYY0�#  P�   V�  QX=V�  �?  P�  R�>  P�   QQ�  �$  P�   QYYYYYYYYYY0�%  PQX=V�  �  �  T�  PQ�  �  T�%  P�  R�  Q�  �  PQT�  P�  Q�  �&  PQ�  �  �  �  �?  P�  R�  PQT�'  PQQYYYY0�(  PQX=V�  �  �  T�  PQ�  �  �  PQT�  PQYYYY0�&  PQX=V�  �  T�  P�  RR�  Q�  �  T�  P�  RR�  Q�  �  T�  P�  RR�  QYYYY0�)  PQX=V�  �B  P�  QYYYYY0�*  PQX=V�  �?  P�   R�>  P�  PQT�'  PQQQ�  �?  P�!  R�>  P�  QR�"  R�>  P�  QQYYYYY0�+  PQX=V�  �?  P�#  Q�  T�(  PQYYYYYY0�!  P�   V�  QX=V�  �?  P�$  R�   Q�  �  T�,  P�   QYYYY0�-  PQX=V�  �?  P�%  R�  L�&  MQ�  �  T�.  P�&  Q�  �?  P�'  R�  QYYYY0�"  PQX=V�  &�  V�  �?  P�(  Q�  �/  PQ�  .�  &�  V�  �  �  �  �?  P�)  Q�  �  �0  P�  L�&  MQ�  (V�  �?  P�*  QYYYYYY0�1  PQX=V�  �?  P�+  Q�  �-  PQ�  �"  PQYYYY0�  PQX=V�  �	  �  PQT�'  PQ�  &�  PQT�2  PQV�  �
  T�,  P�	  Q�  �?  P�,  R�
  QYYYY0�0  P�   V�  QX=V�  �?  P�-  R�  PQT�3  PQQ�  �  �  �
  T�,  P�   Q�  �?  P�.  R�
  QY�  �  �  �  �4  P�  Q�  �  �5  P�   R�/  R�  QYYYY0�$  P�6  V�  QX=V�  �?  P�0  R�6  Q�  &�6  �
  V�  ;�7  �
  T�8  P�6  Q�  �
  T�.  P�7  Q�  (V�  �B  P�1  Q�  �?  P�2  R�6  R�3  Q�  �  �/  PQ�  �4  P�4  R�6  QYYYY0�/  PQX=V�  &�  PQT�2  PQV�  �9  PQ�  �?  P�5  R�
  QYY�  �  �  �:  P�6  R�
  Q�  �;  P�7  QY�  �?  P�8  R�
  Q�  �?  P�9  R�  QYYYY0�9  PQX=V�  �  �  �
  YYYD0�<  PQX=V�  �?  P�:  R�  QYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY`        GDSC             %      �����Ӷ�   �����϶�    ����������������������������¶��   ���������Ӷ�                                                    	      
                                       #      3YYYYYYY0�  PQX=V�  -YYYYYY0�  PQV�  T�  PQY`[gd_scene load_steps=3 format=2]

[ext_resource path="res://Sprays/spray.png" type="Texture" id=1]
[ext_resource path="res://Sprays/Spray.gd" type="Script" id=2]

[node name="Spray" type="Sprite"]
texture = ExtResource( 1 )
script = ExtResource( 2 )

[node name="SelfDeletionTimer" type="Timer" parent="."]
wait_time = 3.0
autostart = true
[connection signal="timeout" from="SelfDeletionTimer" to="." method="_on_SelfDeletionTimer_timeout"]
       GDST              �   PNG �PNG

   IHDR         ��a   sRGB ���   @IDAT8�cl0f�π�HL�)�0�OC�Ƴ�
���{��a����{��a���d�@� $���\*    IEND�B`�          [remap]

importer="texture"
type="StreamTexture"
path="res://.import/spray.png-8ca5361458d68b632d67d82db8a65538.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprays/spray.png"
dest_files=[ "res://.import/spray.png-8ca5361458d68b632d67d82db8a65538.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
      [gd_scene load_steps=3 format=2]

[ext_resource path="res://TileMaps/terrain_tileset.tres" type="TileSet" id=1]
[ext_resource path="res://Core/Terrain.gd" type="Script" id=2]

[node name="Terrain" type="TileMap"]
tile_set = ExtResource( 1 )
format = 1
tile_data = PoolIntArray( -131074, 0, 0, -131073, 0, 0, -196608, 0, 0, -196607, 0, 0, -196606, 0, 0, -196605, 0, 0, -196604, 0, 0, -196603, 0, 0, -196602, 0, 0, -196601, 0, 0, -196600, 0, 0, -196599, 0, 0, -196598, 0, 0, -196597, 0, 0, -196596, 0, 0, -196595, 0, 0, -196594, 0, 0, -196593, 0, 0, -196592, 0, 0, -196591, 0, 0, -196590, 0, 0, -65538, 0, 0, -65537, 2, 0, -131072, 2, 0, -131071, 2, 0, -131070, 2, 0, -131069, 2, 0, -131068, 2, 0, -131067, 2, 0, -131066, 2, 0, -131065, 2, 0, -131064, 2, 0, -131063, 2, 0, -131062, 2, 0, -131061, 2, 0, -131060, 2, 0, -131059, 2, 0, -131058, 2, 0, -131057, 2, 0, -131056, 2, 0, -131055, 2, 0, -131054, 0, 0, -2, 0, 0, -1, 2, 0, -65536, 1, 0, -65535, 1, 0, -65534, 1, 0, -65533, 1, 0, -65532, 1, 0, -65531, 1, 0, -65530, 1, 0, -65529, 0, 0, -65528, 0, 0, -65527, 0, 0, -65526, 1, 0, -65525, 1, 0, -65524, 1, 0, -65523, 1, 0, -65522, 1, 0, -65521, 1, 0, -65520, 1, 0, -65519, 2, 0, -65518, 0, 0, 65534, 0, 0, 65535, 2, 0, 0, 1, 0, 1, 1, 0, 2, 1, 0, 3, 1, 0, 4, 1, 0, 5, 1, 0, 6, 1, 0, 7, 0, 0, 8, 0, 0, 9, 0, 0, 10, 1, 0, 11, 1, 0, 12, 1, 0, 13, 1, 0, 14, 1, 0, 15, 1, 0, 16, 1, 0, 17, 2, 0, 18, 0, 0, 131070, 0, 0, 131071, 2, 0, 65536, 1, 0, 65537, 1, 0, 65538, 1, 0, 65539, 1, 0, 65540, 1, 0, 65541, 1, 0, 65542, 1, 0, 65543, 0, 0, 65544, 0, 0, 65545, 0, 0, 65546, 1, 0, 65547, 1, 0, 65548, 1, 0, 65549, 1, 0, 65550, 1, 0, 65551, 1, 0, 65552, 1, 0, 65553, 2, 0, 65554, 0, 0, 196606, 0, 0, 196607, 2, 0, 131072, 1, 0, 131073, 1, 0, 131074, 1, 0, 131075, 1, 0, 131076, 1, 0, 131077, 1, 0, 131078, 1, 0, 131079, 0, 0, 131080, 0, 0, 131081, 0, 0, 131082, 1, 0, 131083, 1, 0, 131084, 1, 0, 131085, 1, 0, 131086, 1, 0, 131087, 1, 0, 131088, 1, 0, 131089, 2, 0, 131090, 0, 0, 262142, 0, 0, 262143, 2, 0, 196608, 0, 0, 196609, 0, 0, 196610, 0, 0, 196611, 0, 0, 196612, 0, 0, 196613, 0, 0, 196614, 0, 0, 196615, 0, 0, 196616, 0, 0, 196617, 0, 0, 196618, 0, 0, 196619, 0, 0, 196620, 0, 0, 196621, 0, 0, 196622, 0, 0, 196623, 0, 0, 196624, 0, 0, 196625, 2, 0, 196626, 0, 0, 327678, 0, 0, 327679, 2, 0, 262144, 0, 0, 262145, 0, 0, 262146, 0, 0, 262147, 0, 0, 262148, 0, 0, 262149, 0, 0, 262150, 0, 0, 262151, 0, 0, 262152, 0, 0, 262153, 0, 0, 262154, 0, 0, 262155, 0, 0, 262156, 0, 0, 262157, 0, 0, 262158, 0, 0, 262159, 0, 0, 262160, 0, 0, 262161, 2, 0, 262162, 0, 0, 393214, 0, 0, 393215, 2, 0, 327680, 1, 0, 327681, 1, 0, 327682, 1, 0, 327683, 1, 0, 327684, 1, 0, 327685, 1, 0, 327686, 1, 0, 327687, 0, 0, 327688, 0, 0, 327689, 0, 0, 327690, 1, 0, 327691, 1, 0, 327692, 1, 0, 327693, 1, 0, 327694, 1, 0, 327695, 1, 0, 327696, 1, 0, 327697, 2, 0, 327698, 0, 0, 458750, 0, 0, 458751, 2, 0, 393216, 1, 0, 393217, 1, 0, 393218, 1, 0, 393219, 1, 0, 393220, 1, 0, 393221, 1, 0, 393222, 1, 0, 393223, 0, 0, 393224, 0, 0, 393225, 0, 0, 393226, 1, 0, 393227, 1, 0, 393228, 1, 0, 393229, 1, 0, 393230, 1, 0, 393231, 1, 0, 393232, 1, 0, 393233, 2, 0, 393234, 0, 0, 524286, 0, 0, 524287, 2, 0, 458752, 1, 0, 458753, 1, 0, 458754, 1, 0, 458755, 1, 0, 458756, 1, 0, 458757, 1, 0, 458758, 1, 0, 458759, 0, 0, 458760, 0, 0, 458761, 0, 0, 458762, 1, 0, 458763, 1, 0, 458764, 1, 0, 458765, 1, 0, 458766, 1, 0, 458767, 1, 0, 458768, 1, 0, 458769, 2, 0, 458770, 0, 0, 589822, 0, 0, 589823, 2, 0, 524288, 1, 0, 524289, 1, 0, 524290, 1, 0, 524291, 1, 0, 524292, 1, 0, 524293, 1, 0, 524294, 1, 0, 524295, 0, 0, 524296, 0, 0, 524297, 0, 0, 524298, 1, 0, 524299, 1, 0, 524300, 1, 0, 524301, 1, 0, 524302, 1, 0, 524303, 1, 0, 524304, 1, 0, 524305, 2, 0, 524306, 0, 0, 655358, 0, 0, 655359, 2, 0, 589824, 1, 0, 589825, 1, 0, 589826, 1, 0, 589827, 1, 0, 589828, 1, 0, 589829, 1, 0, 589830, 1, 0, 589831, 0, 0, 589832, 0, 0, 589833, 0, 0, 589834, 1, 0, 589835, 1, 0, 589836, 1, 0, 589837, 1, 0, 589838, 1, 0, 589839, 1, 0, 589840, 1, 0, 589841, 2, 0, 589842, 0, 0, 720894, 0, 0, 720895, 2, 0, 655360, 2, 0, 655361, 2, 0, 655362, 2, 0, 655363, 2, 0, 655364, 2, 0, 655365, 2, 0, 655366, 2, 0, 655367, 2, 0, 655368, 2, 0, 655369, 2, 0, 655370, 2, 0, 655371, 2, 0, 655372, 2, 0, 655373, 2, 0, 655374, 2, 0, 655375, 2, 0, 655376, 2, 0, 655377, 2, 0, 655378, 0, 0, 786430, 0, 0, 786431, 0, 0, 720896, 0, 0, 720897, 0, 0, 720898, 0, 0, 720899, 0, 0, 720900, 0, 0, 720901, 0, 0, 720902, 0, 0, 720903, 0, 0, 720904, 0, 0, 720905, 0, 0, 720906, 0, 0, 720907, 0, 0, 720908, 0, 0, 720909, 0, 0, 720910, 0, 0, 720911, 0, 0, 720912, 0, 0, 720913, 0, 0, 720914, 0, 0 )
script = ExtResource( 2 )
__meta__ = {
"_edit_group_": true,
"_edit_lock_": true
}
       GDST@   @           �   PNG �PNG

   IHDR   @   @   �iq�   sRGB ���   �IDATx���A�  �0@.��3CFk�:�������� �:@k����� �:@k����� �:@k����� �:@k����� �:@k����� �:@k����� �:@k����� �:@k��6�&Su    IEND�B`�[remap]

importer="texture"
type="StreamTexture"
path="res://.import/dirt.png-8c5b227429526d5bfbd2de73a05daece.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://TileMaps/Textures/dirt.png"
dest_files=[ "res://.import/dirt.png-8c5b227429526d5bfbd2de73a05daece.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              GDST@   @           �   PNG �PNG

   IHDR   @   @   �iq�   sRGB ���   �IDATx���A  ���H�;y�(�u͙;�:@k����� �:@k����� �:@k����� �:@k����� �:@k����� �:@k����� �:@k����� �:@k����� ����r    IEND�B`�   [remap]

importer="texture"
type="StreamTexture"
path="res://.import/grass.png-266dd18a232dac9996f823f16148f96c.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://TileMaps/Textures/grass.png"
dest_files=[ "res://.import/grass.png-266dd18a232dac9996f823f16148f96c.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
           GDST@   @           �   PNG �PNG

   IHDR   @   @   �iq�   sRGB ���   �IDATx���A  �0����y�(�u��];:@k����� �:@k����� �:@k����� �:@k����� �:@k����� �:@k����� �:@k����� �:@k����� �Lf��B�    IEND�B`�   [remap]

importer="texture"
type="StreamTexture"
path="res://.import/stone.png-4217af1e732f6f530c41a71d2a0f651b.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://TileMaps/Textures/stone.png"
dest_files=[ "res://.import/stone.png-4217af1e732f6f530c41a71d2a0f651b.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
           [gd_resource type="TileSet" load_steps=5 format=2]

[ext_resource path="res://TileMaps/Textures/stone.png" type="Texture" id=1]
[ext_resource path="res://TileMaps/Textures/dirt.png" type="Texture" id=2]
[ext_resource path="res://TileMaps/Textures/grass.png" type="Texture" id=3]

[sub_resource type="ConvexPolygonShape2D" id=1]
points = PoolVector2Array( 64, 64, 0, 64, 0, 0, 64, 0 )

[resource]
0/name = "dirt"
0/texture = ExtResource( 2 )
0/tex_offset = Vector2( 0, 0 )
0/modulate = Color( 1, 1, 1, 1 )
0/region = Rect2( 0, 0, 64, 64 )
0/tile_mode = 0
0/occluder_offset = Vector2( 0, 0 )
0/navigation_offset = Vector2( 0, 0 )
0/shape_offset = Vector2( 0, 0 )
0/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
0/shape_one_way = false
0/shape_one_way_margin = 0.0
0/shapes = [  ]
0/z_index = 0
1/name = "grass"
1/texture = ExtResource( 3 )
1/tex_offset = Vector2( 0, 0 )
1/modulate = Color( 1, 1, 1, 1 )
1/region = Rect2( 0, 0, 64, 64 )
1/tile_mode = 0
1/occluder_offset = Vector2( 0, 0 )
1/navigation_offset = Vector2( 0, 0 )
1/shape_offset = Vector2( 0, 0 )
1/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
1/shape_one_way = false
1/shape_one_way_margin = 0.0
1/shapes = [  ]
1/z_index = 0
2/name = "stone"
2/texture = ExtResource( 1 )
2/tex_offset = Vector2( 0, 0 )
2/modulate = Color( 0.701961, 0.701961, 0.701961, 1 )
2/region = Rect2( 0, 0, 64, 64 )
2/tile_mode = 0
2/occluder_offset = Vector2( 0, 0 )
2/navigation_offset = Vector2( 0, 0 )
2/shape_offset = Vector2( 0, 0 )
2/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
2/shape = SubResource( 1 )
2/shape_one_way = false
2/shape_one_way_margin = 1.0
2/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 1 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
2/z_index = 0
     [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @           9  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx�ݜytTU��?��WK*�=���%�  F����0N��݂:���Q�v��{�[�����E�ӋH���:���B�� YHB*d_*�jyo�(*M�JR!h��S�T��w�߻���ro���� N�\���D�*]��c����z��D�R�[�
5Jg��9E�|JxF׵'�a���Q���BH�~���!����w�A�b
C1�dB�.-�#��ihn�����u��B��1YSB<%�������dA�����C�$+(�����]�BR���Qsu][`
�DV����у�1�G���j�G͕IY! L1�]��� +FS�IY!IP ��|�}��*A��H��R�tQq����D`TW���p\3���M���,�fQ����d��h�m7r�U��f������.��ik�>O�;��xm��'j�u�(o}�����Q�S�-��cBc��d��rI�Ϛ�$I|]�ơ�vJkZ�9>��f����@EuC�~�2�ym�ش��U�\�KAZ4��b�4������;�X婐����@Hg@���o��W�b�x�)����3]j_��V;K����7�u����;o�������;=|��Ŗ}5��0q�$�!?��9�|�5tv�C�sHPTX@t����w�nw��۝�8�=s�p��I}�DZ-̝�ǆ�'�;=����R�PR�ۥu���u��ǻC�sH`��>�p�P ���O3R�������۝�SZ7 �p��o�P!�
��� �l��ހmT�Ƴێ�gA��gm�j����iG���B� ܦ(��cX�}4ۻB��ao��"����� ����G�7���H���æ;,NW?��[��`�r~��w�kl�d4�������YT7�P��5lF�BEc��=<�����?�:]�������G�Μ�{������n�v��%���7�eoݪ��
�QX¬)�JKb����W�[�G ��P$��k�Y:;�����{���a��&�eפ�����O�5,;����yx�b>=fc�* �z��{�fr��7��p���Ôִ�P����t^�]͑�~zs.�3����4��<IG�w�e��e��ih�/ˆ�9�H��f�?����O��.O��;!��]���x�-$E�a1ɜ�u�+7Ȃ�w�md��5���C.��\��X��1?�Nغ/�� ��~��<:k?8��X���!���[���꩓��g��:��E����>��꩓�u��A���	iI4���^v:�^l/;MC��	iI��TM-$�X�;iLH���;iI1�Zm7����P~��G�&g�|BfqV#�M������%��TM��mB�/�)����f����~3m`��������m�Ȉ�Ƽq!cr�pc�8fd���Mۨkl�}P�Л�汻��3p�̤H�>+���1D��i�aۡz�
������Z�Lz|8��.ִQ��v@�1%&���͏�������m���KH�� �p8H�4�9����/*)�aa��g�r�w��F36���(���7�fw����P��&�c����{﹏E7-f�M�).���9��$F�f r �9'1��s2).��G��{���?,�
�G��p�µ�QU�UO�����>��/�g���,�M��5�ʖ�e˃�d����/�M`�=�y=�����f�ӫQU�k'��E�F�+ =΂���
l�&���%%�������F#KY����O7>��;w���l6***B�g)�#W�/�k2�������TJ�'����=!Q@mKYYYdg��$Ib��E�j6�U�,Z�鼌Uvv6YYYԶ��}( ���ߠ#x~�s,X0�����rY��yz�	|r�6l����cN��5ϑ��KBB���5ϡ#xq�7�`=4A�o�xds)�~wO�z�^��m���n�Ds�������e|�0�u��k�ٱ:��RN��w�/!�^�<�ͣ�K1d�F����:�������ˣ����%U�Ą������l{�y����)<�G�y�`}�t��y!��O@� A� Y��sv:K�J��ՎۣQ�܃��T6y�ǯ�Zi
��<�F��1>�	c#�Ǉ��i�L��D�� �u�awe1�e&')�_�Ǝ^V�i߀4�$G�:��r��>h�hݝ������t;)�� &�@zl�Ұր��V6�T�+����0q��L���[t���N&e��Z��ˆ/����(�i啝'i�R�����?:
P].L��S��E�݅�Á�.a6�WjY$F�9P�«����V^7���1Ȓ� �b6�(����0"�k�;�@MC���N�]7 �)Q|s����QfdI���5 ��.f��#1���G���z���>)�N�>�L0T�ۘ5}��Y[�W뿼mj���n���S?�v��ْ|.FE"=�ߑ��q����������p����3�¬8�T�GZ���4ݪ�0�L�Y��jRH��.X�&�v����#�t��7y_#�[�o��V�O����^�����paV�&J�V+V��QY����f+m��(�?/������{�X��:�!:5�G�x���I����HG�%�/�LZ\8/����yLf�Æ>�X�Єǣq���$E������E�Ǣ�����gێ��s�rxO��x孏Q]n���LH����98�i�0==���O$5��o^����>6�a� �*�)?^Ca��yv&���%�5>�n�bŜL:��y�w���/��o�褨A���y,[|=1�VZ�U>,?͑���w��u5d�#�K�b�D�&�:�����l~�S\���[CrTV�$����y��;#�������6�y��3ݸ5��.�V��K���{�,-ւ� k1aB���x���	LL� ����ңl۱������!U��0L�ϴ��O\t$Yi�D�Dm��]|�m���M�3���bT�
�N_����~uiIc��M�DZI���Wgkn����C��!xSv�Pt�F��kڨ��������OKh��L����Z&ip��
ޅ���U�C�[�6��p���;uW8<n'n��nͽQ�
�gԞ�+Z	���{���G�Ĭ� �t�]�p;躆 ��.�ۣ�������^��n�ut�L �W��+ ���hO��^�w�\i� ��:9>3�=��So�2v���U1z��.�^�ߋěN���,���� �f��V�    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
[remap]

path="res://Core/Game.gdc"
            [remap]

path="res://Core/Terrain.gdc"
         [remap]

path="res://Core/World Elements/Players.gdc"
          [remap]

path="res://Creatures/Player/Player Systems/PlayerActionsManagement.gdc"
              [remap]

path="res://Creatures/Player/Player.gdc"
              [remap]

path="res://Creatures/Player/PlayerMovementManager.gdc"
               [remap]

path="res://GUI/Main_Menu/MainMenu.gdc"
               [remap]

path="res://Singletons/GameState.gdc"
 [remap]

path="res://Singletons/Network.gdc"
   [remap]

path="res://Sprays/Spray.gdc"
         �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      _global_script_classes\                    class         Player        language      GDScript      path       res://Creatures/Player/Player.gd      base      KinematicBody2D             class         PlayerMovementManager         language      GDScript      path   /   res://Creatures/Player/PlayerMovementManager.gd       base      Node   _global_script_class_iconsH               PlayerMovementManager                Player            application/config/name,      !   Multiplayer P2P - Join at Runtime      application/run/main_scene,      !   res://GUI/Main_Menu/MainMenu.tscn      application/config/icon         res://icon.png     autoload/Network$         *res://Singletons/Network.gd   autoload/GameState(         *res://Singletons/GameState.gd     input/ui_left8               deadzone      ?      events            input/ui_right8               deadzone      ?      events            input/ui_up8               deadzone      ?      events            input/ui_down8               deadzone      ?      events            input/move_left�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   Q      unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script         input/move_right�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   D      unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script         input/move_up�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   Z      unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script         input/move_down�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   S      unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script         input/spray`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          unicode           echo          script         input/primary_action�              deadzone      ?      events              InputEventMouseButton         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           button_mask           position              global_position               factor       �?   button_index         pressed           doubleclick           script         input/secondary_action�              deadzone      ?      events              InputEventMouseButton         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           button_mask           position              global_position               factor       �?   button_index         pressed           doubleclick           script      *   rendering/quality/driver/fallback_to_gles2         %   rendering/vram_compression/import_etc         )   rendering/environment/default_environment          res://default_env.tres  =   rendering/quality/2d/gles2_use_nvidia_rect_flicker_workaround               