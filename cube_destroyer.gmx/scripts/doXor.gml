 var _klucz,i,_znaki,_len;
argument0 = string( argument0 );
_znaki = '';
_len = string_length( argument0 );
_klucz = 6546;


for ( i = 1; i <= _len; i += 1 )
{
_znaki += chr( ord( string_char_at( argument0, i ) ) ^ _klucz );
}

return _znaki;
