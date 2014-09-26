.class public Lcom/android/mms/ui/UriImage;
.super Ljava/lang/Object;
.source "UriImage.java"


# instance fields
.field private mContentType:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mHeight:I

.field private mPath:Ljava/lang/String;

.field private mSrc:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x1

    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 71
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 72
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 75
    :cond_1
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "scheme":Ljava/lang/String;
    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/UriImage;->initFromContentUri(Landroid/content/Context;Landroid/net/Uri;)V

    .line 84
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 85
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 78
    :cond_2
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/UriImage;->initFromFile(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 82
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 88
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    .line 90
    iget-object v1, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_5

    .line 91
    iget-object v1, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    .line 98
    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    const/16 v2, 0x20

    const/16 v3, 0x5f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    .line 100
    iput-object p1, p0, Lcom/android/mms/ui/UriImage;->mContext:Landroid/content/Context;

    .line 101
    iput-object p2, p0, Lcom/android/mms/ui/UriImage;->mUri:Landroid/net/Uri;

    .line 103
    invoke-direct {p0}, Lcom/android/mms/ui/UriImage;->decodeBoundsInfo()V

    .line 109
    return-void
.end method

.method private buildSrcFromPath()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 131
    iget-object v0, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    const/16 v1, 0x20

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    .line 142
    return-void
.end method

.method private decodeBoundsInfo()V
    .locals 6

    .prologue
    .line 211
    const/4 v1, 0x0

    .line 213
    .local v1, "input":Ljava/io/InputStream;
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/UriImage;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 214
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 215
    .local v2, "opt":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 216
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 217
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v3, p0, Lcom/android/mms/ui/UriImage;->mWidth:I

    .line 218
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v3, p0, Lcom/android/mms/ui/UriImage;->mHeight:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    if-eqz v1, :cond_0

    .line 225
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 232
    .end local v2    # "opt":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v3, "Mms/image"

    const-string v4, "IOException caught while opening stream"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 223
    if-eqz v1, :cond_0

    .line 225
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 226
    :catch_1
    move-exception v0

    .line 228
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "Mms/image"

    const-string v4, "IOException caught while closing stream"

    :goto_1
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 223
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_1

    .line 225
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 223
    :cond_1
    :goto_2
    throw v3

    .line 226
    :catch_2
    move-exception v0

    .line 228
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v4, "Mms/image"

    const-string v5, "IOException caught while closing stream"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 226
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "opt":Landroid/graphics/BitmapFactory$Options;
    :catch_3
    move-exception v0

    .line 228
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v3, "Mms/image"

    const-string v4, "IOException caught while closing stream"

    goto :goto_1
.end method

.method private initFromContentUri(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .local v1, "resolver":Landroid/content/ContentResolver;
    move-object v0, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    .line 146
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 149
    .local v7, "c":Landroid/database/Cursor;
    iput-object v3, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    .line 150
    if-nez v7, :cond_0

    .line 151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Query on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " returns null result."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    .line 157
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Query on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " returns 0 or multiple rows."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :catch_0
    move-exception v8

    .line 204
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v0, "Mms/image"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initFromContentUri couldn\'t load image uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 208
    return-void

    .line 162
    :cond_3
    :try_start_2
    invoke-static {p2}, Lcom/android/mms/model/ImageModel;->isMmsUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 163
    const-string v0, "fn"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 164
    .local v10, "filePath":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 165
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 168
    :cond_4
    const-string v0, "ct"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    .line 199
    :cond_5
    :goto_1
    iput-object v10, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    .line 200
    iget-object v0, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 201
    invoke-direct {p0}, Lcom/android/mms/ui/UriImage;->buildSrcFromPath()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 206
    .end local v10    # "filePath":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 171
    :cond_6
    :try_start_3
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v10

    .line 173
    .restart local v10    # "filePath":Ljava/lang/String;
    :try_start_4
    const-string v0, "mime_type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 185
    :goto_2
    :try_start_5
    const-string v0, "_display_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 186
    .local v11, "nameIndex":I
    const/4 v0, -0x1

    if-eq v11, v0, :cond_5

    .line 187
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 193
    iget-object v0, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    const/16 v2, 0x20

    const/16 v3, 0x5f

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 175
    .end local v11    # "nameIndex":I
    :catch_1
    move-exception v8

    .line 177
    .restart local v8    # "e":Ljava/lang/IllegalArgumentException;
    :try_start_6
    const-string v0, "mimetype"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 178
    :catch_2
    move-exception v9

    .line 179
    .local v9, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_7
    invoke-virtual {v1, p2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    .line 180
    const-string v0, "Mms/image"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initFromContentUri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", getType => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 195
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    .end local v9    # "ex":Ljava/lang/IllegalArgumentException;
    .restart local v11    # "nameIndex":I
    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1
.end method

.method private initFromFile(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 112
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    .line 113
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    .line 114
    .local v2, "mimeTypeMap":Landroid/webkit/MimeTypeMap;
    iget-object v3, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    invoke-static {v3}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "extension":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 118
    iget-object v3, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 119
    .local v0, "dotPos":I
    if-ltz v0, :cond_0

    .line 120
    iget-object v3, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 123
    .end local v0    # "dotPos":I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    .line 127
    invoke-direct {p0}, Lcom/android/mms/ui/UriImage;->buildSrcFromPath()V

    .line 128
    return-void
.end method


# virtual methods
.method protected getAbsoluteImagePath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 289
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 290
    .local v2, "proj":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/UriImage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 296
    .local v7, "cursor":Landroid/database/Cursor;
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 297
    .local v6, "column_index":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 298
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 299
    .local v8, "path":Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 300
    return-object v8
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getExifRotation(I)I
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 468
    const/4 v0, 0x0

    .line 469
    .local v0, "degrees":I
    packed-switch p1, :pswitch_data_0

    .line 483
    :goto_0
    :pswitch_0
    return v0

    .line 471
    :pswitch_1
    const/4 v0, 0x0

    .line 472
    goto :goto_0

    .line 474
    :pswitch_2
    const/16 v0, 0x5a

    .line 475
    goto :goto_0

    .line 477
    :pswitch_3
    const/16 v0, 0xb4

    .line 478
    goto :goto_0

    .line 480
    :pswitch_4
    const/16 v0, 0x10e

    goto :goto_0

    .line 469
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lcom/android/mms/ui/UriImage;->mHeight:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getResizedImageAsPart(III)Lcom/google/android/mms/pdu/PduPart;
    .locals 10
    .param p1, "widthLimit"    # I
    .param p2, "heightLimit"    # I
    .param p3, "byteLimit"    # I

    .prologue
    .line 265
    new-instance v9, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v9}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 267
    .local v9, "part":Lcom/google/android/mms/pdu/PduPart;
    iget v1, p0, Lcom/android/mms/ui/UriImage;->mWidth:I

    iget v2, p0, Lcom/android/mms/ui/UriImage;->mHeight:I

    iget-object v6, p0, Lcom/android/mms/ui/UriImage;->mUri:Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/mms/ui/UriImage;->mContext:Landroid/content/Context;

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/UriImage;->getResizedImageData(IIIIILandroid/net/Uri;Landroid/content/Context;)[B

    move-result-object v8

    .line 269
    .local v8, "data":[B
    if-nez v8, :cond_0

    .line 273
    const/4 v9, 0x0

    .line 280
    .end local v9    # "part":Lcom/google/android/mms/pdu/PduPart;
    :goto_0
    return-object v9

    .line 276
    .restart local v9    # "part":Lcom/google/android/mms/pdu/PduPart;
    :cond_0
    invoke-virtual {v9, v8}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 278
    const-string v0, "image/jpeg"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    goto :goto_0
.end method

.method public getResizedImageData(IIIIILandroid/net/Uri;Landroid/content/Context;)[B
    .locals 26
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "widthLimit"    # I
    .param p4, "heightLimit"    # I
    .param p5, "byteLimit"    # I
    .param p6, "uri"    # Landroid/net/Uri;
    .param p7, "context"    # Landroid/content/Context;

    .prologue
    .line 313
    move/from16 v15, p1

    .line 314
    .local v15, "outWidth":I
    move/from16 v14, p2

    .line 316
    .local v14, "outHeight":I
    const/16 v20, 0x1

    .line 317
    .local v20, "scaleFactor":I
    :goto_0
    div-int v23, v15, v20

    move/from16 v0, v23

    move/from16 v1, p3

    if-gt v0, v1, :cond_0

    div-int v23, v14, v20

    move/from16 v0, v23

    move/from16 v1, p4

    if-le v0, v1, :cond_1

    .line 318
    :cond_0
    mul-int/lit8 v20, v20, 0x2

    goto :goto_0

    .line 321
    :cond_1
    const-string v23, "Mms:app"

    const/16 v24, 0x2

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 322
    const-string v23, "Mms/image"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "getResizedImageData: wlimit="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", hlimit="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", sizeLimit="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", mWidth="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", mHeight="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", initialScaleFactor="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_2
    const/4 v8, 0x0

    .line 329
    .local v8, "input":Ljava/io/InputStream;
    const/4 v12, 0x0

    .line 332
    .local v12, "os":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x1

    .line 333
    .local v3, "attempts":I
    :try_start_0
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    .local v10, "options":Landroid/graphics/BitmapFactory$Options;
    const/16 v17, 0x5f

    .line 335
    .local v17, "quality":I
    const/16 v19, 0x1

    .local v19, "resultTooBig":Z
    move-object v13, v12

    .line 337
    .end local v12    # "os":Ljava/io/ByteArrayOutputStream;
    .local v13, "os":Ljava/io/ByteArrayOutputStream;
    :goto_1
    :try_start_1
    move/from16 v0, v20

    iput v0, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 338
    invoke-virtual/range {p7 .. p7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_11
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    .line 341
    const/4 v11, 0x0

    .line 342
    .local v11, "orientation":I
    const/4 v5, 0x0

    .line 344
    .local v5, "degree":I
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/UriImage;->getAbsoluteImagePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v16

    .line 345
    .local v16, "path":Ljava/lang/String;
    if-eqz v16, :cond_3

    .line 346
    new-instance v7, Landroid/media/ExifInterface;

    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 347
    .local v7, "exif":Landroid/media/ExifInterface;
    if-eqz v7, :cond_3

    .line 348
    const-string v23, "Orientation"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v7, v0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v11

    .line 349
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/mms/ui/UriImage;->getExifRotation(I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_11
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v5

    .line 356
    .end local v7    # "exif":Landroid/media/ExifInterface;
    .end local v16    # "path":Ljava/lang/String;
    :cond_3
    :goto_2
    :try_start_3
    const-string v23, "Mms/image"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "image rotation is"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " degree"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_11
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 358
    const/16 v23, 0x0

    :try_start_4
    move-object/from16 v0, v23

    invoke-static {v8, v0, v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 359
    .local v4, "b":Landroid/graphics/Bitmap;
    if-nez v4, :cond_9

    .line 360
    const-string v23, "Mms:app"

    const/16 v24, 0x2

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v23

    if-eqz v23, :cond_4

    const/16 v23, 0x4

    move/from16 v0, v23

    if-lt v3, v0, :cond_4

    .line 362
    const-string v23, "Mms/image"

    const-string v24, "getResizedImageData: gave up after too many attempts to resize"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 364
    :cond_4
    const/16 v23, 0x0

    .line 447
    if-eqz v8, :cond_5

    .line 449
    :try_start_5
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_d

    .line 454
    :cond_5
    :goto_3
    if-eqz v13, :cond_6

    .line 456
    :try_start_6
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_e

    :cond_6
    :goto_4
    move-object v12, v13

    .line 445
    .end local v4    # "b":Landroid/graphics/Bitmap;
    .end local v5    # "degree":I
    .end local v10    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v11    # "orientation":I
    .end local v13    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v17    # "quality":I
    .end local v19    # "resultTooBig":Z
    .restart local v12    # "os":Ljava/io/ByteArrayOutputStream;
    :cond_7
    :goto_5
    return-object v23

    .line 352
    .end local v12    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "degree":I
    .restart local v10    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v11    # "orientation":I
    .restart local v13    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v17    # "quality":I
    .restart local v19    # "resultTooBig":Z
    :catch_0
    move-exception v6

    .line 353
    .local v6, "e":Ljava/lang/Exception;
    :try_start_7
    const-string v23, "Mms/image"

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_11
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    .line 440
    .end local v5    # "degree":I
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v11    # "orientation":I
    :catch_1
    move-exception v6

    move-object v12, v13

    .line 441
    .end local v10    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v13    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v17    # "quality":I
    .end local v19    # "resultTooBig":Z
    .local v6, "e":Ljava/io/FileNotFoundException;
    .restart local v12    # "os":Ljava/io/ByteArrayOutputStream;
    :goto_6
    :try_start_8
    const-string v23, "Mms/image"

    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 442
    const/16 v23, 0x0

    .line 447
    if-eqz v8, :cond_8

    .line 449
    :try_start_9
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a

    .line 454
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    :cond_8
    :goto_7
    if-eqz v12, :cond_7

    .line 456
    :try_start_a
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_5

    .line 457
    :catch_2
    move-exception v6

    .line 458
    .local v6, "e":Ljava/io/IOException;
    const-string v24, "Mms/image"

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v25

    :goto_8
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 367
    .end local v6    # "e":Ljava/io/IOException;
    .end local v12    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "b":Landroid/graphics/Bitmap;
    .restart local v5    # "degree":I
    .restart local v10    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v11    # "orientation":I
    .restart local v13    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v17    # "quality":I
    .restart local v19    # "resultTooBig":Z
    :cond_9
    :try_start_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/mms/ui/UriImage;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 369
    iget v0, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, p3

    if-gt v0, v1, :cond_a

    iget v0, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, p4

    if-le v0, v1, :cond_f

    .line 372
    :cond_a
    div-int v22, v15, v20

    .line 373
    .local v22, "scaledWidth":I
    div-int v21, v14, v20

    .line 375
    .local v21, "scaledHeight":I
    const-string v23, "Mms:app"

    const/16 v24, 0x2

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v23

    if-eqz v23, :cond_b

    .line 376
    const-string v23, "Mms/image"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "getResizedImageData: retry scaling using Bitmap.createScaledBitmap: w="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", h="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_b
    div-int v23, v15, v20

    div-int v24, v14, v20

    const/16 v25, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v4, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 383
    if-nez v4, :cond_f

    .line 384
    const-string v23, "Mms:app"

    const/16 v24, 0x2

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v23

    if-eqz v23, :cond_c

    .line 385
    const-string v23, "Mms/image"

    const-string v24, "Bitmap.createScaledBitmap returned NULL!"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 387
    :cond_c
    const/16 v23, 0x0

    .line 447
    if-eqz v8, :cond_d

    .line 449
    :try_start_c
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_f

    .line 454
    :cond_d
    :goto_9
    if-eqz v13, :cond_e

    .line 456
    :try_start_d
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_10

    :cond_e
    :goto_a
    move-object v12, v13

    .line 387
    .end local v13    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v12    # "os":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_5

    .line 397
    .end local v12    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v21    # "scaledHeight":I
    .end local v22    # "scaledWidth":I
    .restart local v13    # "os":Ljava/io/ByteArrayOutputStream;
    :cond_f
    :try_start_e
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 399
    .end local v13    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v12    # "os":Ljava/io/ByteArrayOutputStream;
    :try_start_f
    sget-object v23, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v4, v0, v1, v12}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 400
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    .line 401
    .local v9, "jpgFileSize":I
    move/from16 v0, p5

    if-le v9, v0, :cond_11

    .line 402
    mul-int v23, v17, p5

    div-int v18, v23, v9

    .line 403
    .local v18, "reducedQuality":I
    const/16 v23, 0x32

    move/from16 v0, v18

    move/from16 v1, v23

    if-lt v0, v1, :cond_11

    .line 404
    move/from16 v17, v18

    .line 406
    const-string v23, "Mms:app"

    const/16 v24, 0x2

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v23

    if-eqz v23, :cond_10

    .line 407
    const-string v23, "Mms/image"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "getResizedImageData: compress(2) w/ quality="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_10
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_f} :catch_12
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 411
    .end local v12    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v13    # "os":Ljava/io/ByteArrayOutputStream;
    :try_start_10
    sget-object v23, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v4, v0, v1, v13}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_10
    .catch Ljava/lang/OutOfMemoryError; {:try_start_10 .. :try_end_10} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    move-object v12, v13

    .line 415
    .end local v13    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v18    # "reducedQuality":I
    .restart local v12    # "os":Ljava/io/ByteArrayOutputStream;
    :cond_11
    :try_start_11
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_11
    .catch Ljava/lang/OutOfMemoryError; {:try_start_11 .. :try_end_11} :catch_12
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 421
    .end local v4    # "b":Landroid/graphics/Bitmap;
    .end local v9    # "jpgFileSize":I
    :goto_b
    :try_start_12
    const-string v23, "Mms:app"

    const/16 v24, 0x2

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v23

    if-eqz v23, :cond_12

    .line 422
    const-string v24, "Mms/image"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "attempt="

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v25, " size="

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    if-nez v12, :cond_17

    const/16 v23, 0x0

    :goto_c
    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v25, " width="

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    div-int v25, v15, v20

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v25, " height="

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    div-int v25, v14, v20

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v25, " scaleFactor="

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v25, " quality="

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_12
    mul-int/lit8 v20, v20, 0x2

    .line 430
    add-int/lit8 v3, v3, 0x1

    .line 431
    if-eqz v12, :cond_13

    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v23

    move/from16 v0, v23

    move/from16 v1, p5

    if-le v0, v1, :cond_18

    :cond_13
    const/16 v19, 0x1

    .line 432
    :goto_d
    if-eqz v19, :cond_14

    const/16 v23, 0x4

    move/from16 v0, v23

    if-lt v3, v0, :cond_1d

    .line 434
    :cond_14
    const-string v23, "Mms:app"

    const/16 v24, 0x2

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v23

    if-eqz v23, :cond_15

    if-eqz v19, :cond_15

    .line 435
    const-string v23, "Mms/image"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "getResizedImageData returning NULL because the result is too big:  requested max: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " actual: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_12 .. :try_end_12} :catch_6
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 439
    :cond_15
    if-eqz v19, :cond_19

    const/16 v23, 0x0

    .line 447
    :goto_e
    if-eqz v8, :cond_16

    .line 449
    :try_start_13
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_c

    .line 454
    :cond_16
    :goto_f
    if-eqz v12, :cond_7

    .line 456
    :try_start_14
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_3

    goto/16 :goto_5

    .line 457
    :catch_3
    move-exception v6

    .line 458
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v24, "Mms/image"

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_8

    .line 416
    .end local v6    # "e":Ljava/io/IOException;
    .end local v12    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v13    # "os":Ljava/io/ByteArrayOutputStream;
    :catch_4
    move-exception v6

    move-object v12, v13

    .line 417
    .end local v13    # "os":Ljava/io/ByteArrayOutputStream;
    .local v6, "e":Ljava/lang/OutOfMemoryError;
    .restart local v12    # "os":Ljava/io/ByteArrayOutputStream;
    :goto_10
    :try_start_15
    const-string v23, "Mms/image"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "getResizedImageData - image too big (OutOfMemoryError), will try  with smaller scale factor, cur scale factor: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 440
    .end local v5    # "degree":I
    .end local v6    # "e":Ljava/lang/OutOfMemoryError;
    .end local v10    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v11    # "orientation":I
    .end local v17    # "quality":I
    .end local v19    # "resultTooBig":Z
    :catch_5
    move-exception v6

    goto/16 :goto_6

    .line 422
    .restart local v5    # "degree":I
    .restart local v10    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v11    # "orientation":I
    .restart local v17    # "quality":I
    .restart local v19    # "resultTooBig":Z
    :cond_17
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v23

    goto/16 :goto_c

    .line 431
    :cond_18
    const/16 v19, 0x0

    goto/16 :goto_d

    .line 439
    :cond_19
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_15} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_15 .. :try_end_15} :catch_6
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    move-result-object v23

    goto :goto_e

    .line 443
    .end local v5    # "degree":I
    .end local v10    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v11    # "orientation":I
    .end local v17    # "quality":I
    .end local v19    # "resultTooBig":Z
    :catch_6
    move-exception v6

    .line 444
    .restart local v6    # "e":Ljava/lang/OutOfMemoryError;
    :goto_11
    :try_start_16
    const-string v23, "Mms/image"

    invoke-virtual {v6}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 445
    const/16 v23, 0x0

    .line 447
    if-eqz v8, :cond_1a

    .line 449
    :try_start_17
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_b

    .line 454
    .end local v6    # "e":Ljava/lang/OutOfMemoryError;
    :cond_1a
    :goto_12
    if-eqz v12, :cond_7

    .line 456
    :try_start_18
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_7

    goto/16 :goto_5

    .line 457
    :catch_7
    move-exception v6

    .line 458
    .local v6, "e":Ljava/io/IOException;
    const-string v24, "Mms/image"

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_8

    .line 447
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v23

    :goto_13
    if-eqz v8, :cond_1b

    .line 449
    :try_start_19
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_8

    .line 454
    :cond_1b
    :goto_14
    if-eqz v12, :cond_1c

    .line 456
    :try_start_1a
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_9

    .line 447
    :cond_1c
    :goto_15
    throw v23

    .line 450
    :catch_8
    move-exception v6

    .line 451
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v24, "Mms/image"

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    .line 457
    .end local v6    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v6

    .line 458
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v24, "Mms/image"

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    .line 450
    .local v6, "e":Ljava/io/FileNotFoundException;
    :catch_a
    move-exception v6

    .line 451
    .local v6, "e":Ljava/io/IOException;
    const-string v24, "Mms/image"

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 450
    .local v6, "e":Ljava/lang/OutOfMemoryError;
    :catch_b
    move-exception v6

    .line 451
    .local v6, "e":Ljava/io/IOException;
    const-string v24, "Mms/image"

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12

    .line 450
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v5    # "degree":I
    .restart local v10    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v11    # "orientation":I
    .restart local v17    # "quality":I
    .restart local v19    # "resultTooBig":Z
    :catch_c
    move-exception v6

    .line 451
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v24, "Mms/image"

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_f

    .line 450
    .end local v6    # "e":Ljava/io/IOException;
    .end local v12    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "b":Landroid/graphics/Bitmap;
    .restart local v13    # "os":Ljava/io/ByteArrayOutputStream;
    :catch_d
    move-exception v6

    .line 451
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v24, "Mms/image"

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 457
    .end local v6    # "e":Ljava/io/IOException;
    :catch_e
    move-exception v6

    .line 458
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v24, "Mms/image"

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 450
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v21    # "scaledHeight":I
    .restart local v22    # "scaledWidth":I
    :catch_f
    move-exception v6

    .line 451
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v24, "Mms/image"

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .line 457
    .end local v6    # "e":Ljava/io/IOException;
    :catch_10
    move-exception v6

    .line 458
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v24, "Mms/image"

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a

    .line 447
    .end local v4    # "b":Landroid/graphics/Bitmap;
    .end local v5    # "degree":I
    .end local v6    # "e":Ljava/io/IOException;
    .end local v11    # "orientation":I
    .end local v21    # "scaledHeight":I
    .end local v22    # "scaledWidth":I
    :catchall_1
    move-exception v23

    move-object v12, v13

    .end local v13    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v12    # "os":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_13

    .line 443
    .end local v12    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v13    # "os":Ljava/io/ByteArrayOutputStream;
    :catch_11
    move-exception v6

    move-object v12, v13

    .end local v13    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v12    # "os":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_11

    .line 416
    .restart local v4    # "b":Landroid/graphics/Bitmap;
    .restart local v5    # "degree":I
    .restart local v11    # "orientation":I
    :catch_12
    move-exception v6

    goto/16 :goto_10

    .end local v4    # "b":Landroid/graphics/Bitmap;
    :cond_1d
    move-object v13, v12

    .end local v12    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v13    # "os":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_1
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/android/mms/ui/UriImage;->mWidth:I

    return v0
.end method

.method public rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "degrees"    # I

    .prologue
    const/high16 v3, 0x40000000

    .line 490
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 491
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 492
    .local v5, "m":Landroid/graphics/Matrix;
    int-to-float v0, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 495
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 496
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 498
    .local v7, "b2":Landroid/graphics/Bitmap;
    if-eq p1, v7, :cond_0

    .line 499
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    move-object p1, v7

    .line 507
    .end local v5    # "m":Landroid/graphics/Matrix;
    .end local v7    # "b2":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p1

    .line 502
    .restart local v5    # "m":Landroid/graphics/Matrix;
    :catch_0
    move-exception v8

    .line 504
    .local v8, "ex":Ljava/lang/OutOfMemoryError;
    const-string v0, "Mms/image"

    const-string v1, "We have no memory to rotate."

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
