#!/bin/bash

# Verificar que ffmpeg y ffprobe estén instalados
if ! command -v ffmpeg &> /dev/null || ! command -v ffprobe &> /dev/null; then
    echo "Error: ffmpeg o ffprobe no están instalados."
    echo "Por favor, instálalos antes de ejecutar este script."
    exit 1
fi

echo "Iniciando optimización de archivos m4a en el directorio actual..."
echo "---------------------------------------------------------"

# Buscar y procesar los archivos de forma reentrante
find . -type f -name "*.m4a" -exec sh -c '
  for file do
    # Obtener el bitrate actual en bits por segundo usando ffprobe
    bitrate=$(ffprobe -v error -show_entries stream=bit_rate -of default=noprint_wrappers=1:nokey=1 "$file")
    
    # Comprobar si el bitrate ya es menor o igual a 32.5 kbps (JMA: pongo 32.6 por errores de redondeo y ajuste)
    if [ -n "$bitrate" ] && [ "$bitrate" -ne 0 ] 2>/dev/null && [ "$bitrate" -le 32600 ]; then
      echo "🟢 Ya optimizado (saltando): $file"
      continue
    fi

    echo "⚡ Procesando: $file"
    temp="${file%.m4a}_tmp.m4a"
    
    # Compresión a mono, 22050Hz y 32kbps
    if ffmpeg -v error -y -i "$file" -c:a aac -b:a 32k -ac 1 -ar 22050 "$temp"; then
        mv "$temp" "$file"
    else
        echo "🔴 Error al procesar: $file"
        [ -f "$temp" ] && rm "$temp"
    fi
  done
' _ {} +

echo "---------------------------------------------------------"
echo "¡Proceso finalizado!"
