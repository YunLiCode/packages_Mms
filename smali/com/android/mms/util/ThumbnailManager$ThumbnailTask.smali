.class public Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;
.super Ljava/lang/Object;
.source "ThumbnailManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/ThumbnailManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThumbnailTask"
.end annotation


# instance fields
.field private final mIsVideo:Z

.field private final mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/mms/util/ThumbnailManager;


# direct methods
.method public constructor <init>(Lcom/android/mms/util/ThumbnailManager;Landroid/net/Uri;Z)V
    .locals 1
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "isVideo"    # Z

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->this$0:Lcom/android/mms/util/ThumbnailManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 232
    if-nez p2, :cond_0

    .line 233
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 235
    :cond_0
    iput-object p2, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->mUri:Landroid/net/Uri;

    .line 236
    iput-boolean p3, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->mIsVideo:Z

    .line 237
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->mIsVideo:Z

    return v0
.end method

.method private closeSilently(Ljava/io/Closeable;)V
    .locals 3
    .param p1, "c"    # Ljava/io/Closeable;

    .prologue
    .line 447
    if-nez p1, :cond_0

    .line 453
    :goto_0
    return-void

    .line 449
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 450
    :catch_0
    move-exception v0

    .line 451
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "ThumbnailManager"

    const-string v2, "close fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private compressBitmap(Landroid/graphics/Bitmap;)[B
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 381
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 382
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 384
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method private computeSampleSizeLarger(III)I
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "minSideLength"    # I

    .prologue
    const/4 v1, 0x1

    .line 499
    div-int v2, p1, p3

    div-int v3, p2, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 500
    .local v0, "initialSize":I
    if-gt v0, v1, :cond_0

    .line 502
    :goto_0
    return v1

    :cond_0
    const/16 v1, 0x8

    if-gt v0, v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->prevPowerOf2(I)I

    move-result v1

    goto :goto_0

    :cond_1
    div-int/lit8 v1, v0, 0x8

    mul-int/lit8 v1, v1, 0x8

    goto :goto_0
.end method

.method private ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 433
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    move-object v0, p1

    .line 436
    :goto_0
    return-object v0

    .line 434
    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 435
    .local v0, "newBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method private getBitmap(Z)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "isVideo"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x1

    .line 313
    iget-object v9, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->this$0:Lcom/android/mms/util/ThumbnailManager;

    # invokes: Lcom/android/mms/util/ThumbnailManager;->getImageCacheService()Lcom/android/mms/util/ImageCacheService;
    invoke-static {v9}, Lcom/android/mms/util/ThumbnailManager;->access$500(Lcom/android/mms/util/ThumbnailManager;)Lcom/android/mms/util/ImageCacheService;

    move-result-object v2

    .line 315
    .local v2, "cacheService":Lcom/android/mms/util/ImageCacheService;
    new-instance v7, Lcom/android/mms/ui/UriImage;

    iget-object v9, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->this$0:Lcom/android/mms/util/ThumbnailManager;

    # getter for: Lcom/android/mms/util/ThumbnailManager;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/mms/util/ThumbnailManager;->access$600(Lcom/android/mms/util/ThumbnailManager;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->mUri:Landroid/net/Uri;

    invoke-direct {v7, v9, v10}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 316
    .local v7, "uriImage":Lcom/android/mms/ui/UriImage;
    invoke-virtual {v7}, Lcom/android/mms/ui/UriImage;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 318
    .local v6, "path":Ljava/lang/String;
    if-nez v6, :cond_1

    move-object v1, v8

    .line 359
    :cond_0
    :goto_0
    return-object v1

    .line 325
    :cond_1
    invoke-static {v6}, Lcom/android/mms/TempFileProvider;->isTempFile(Ljava/lang/String;)Z

    move-result v4

    .line 327
    .local v4, "isTempFile":Z
    const/4 v3, 0x0

    .line 328
    .local v3, "data":Lcom/android/mms/util/ImageCacheService$ImageData;
    if-nez v4, :cond_2

    .line 329
    invoke-virtual {v2, v6, v11}, Lcom/android/mms/util/ImageCacheService;->getImageData(Ljava/lang/String;I)Lcom/android/mms/util/ImageCacheService$ImageData;

    move-result-object v3

    .line 332
    :cond_2
    if-eqz v3, :cond_3

    .line 333
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 334
    .local v5, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v8, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 335
    iget-object v8, v3, Lcom/android/mms/util/ImageCacheService$ImageData;->mData:[B

    iget v9, v3, Lcom/android/mms/util/ImageCacheService$ImageData;->mOffset:I

    iget-object v10, v3, Lcom/android/mms/util/ImageCacheService$ImageData;->mData:[B

    array-length v10, v10

    iget v11, v3, Lcom/android/mms/util/ImageCacheService$ImageData;->mOffset:I

    sub-int/2addr v10, v11

    invoke-direct {p0, v8, v9, v10, v5}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->requestDecode([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 337
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 338
    const-string v8, "ThumbnailManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "decode cached failed "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 343
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_3
    if-eqz p1, :cond_4

    .line 344
    invoke-direct {p0}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->getVideoBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 348
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    if-nez v1, :cond_5

    .line 349
    const-string v9, "ThumbnailManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "decode orig failed "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v8

    .line 350
    goto :goto_0

    .line 346
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_4
    iget-object v9, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v9, v11}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->onDecodeOriginal(Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 353
    :cond_5
    const/16 v8, 0x280

    invoke-direct {p0, v1, v8, v11}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 355
    if-nez v4, :cond_0

    .line 356
    invoke-direct {p0, v1}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->compressBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 357
    .local v0, "array":[B
    invoke-virtual {v2, v6, v11, v0}, Lcom/android/mms/util/ImageCacheService;->putImageData(Ljava/lang/String;I[B)V

    goto :goto_0
.end method

.method private getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 422
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 423
    .local v0, "config":Landroid/graphics/Bitmap$Config;
    if-nez v0, :cond_0

    .line 424
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 426
    :cond_0
    return-object v0
.end method

.method private getVideoBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 364
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 366
    .local v0, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->this$0:Lcom/android/mms/util/ThumbnailManager;

    # getter for: Lcom/android/mms/util/ThumbnailManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/util/ThumbnailManager;->access$600(Lcom/android/mms/util/ThumbnailManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 367
    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 372
    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    .line 377
    :goto_0
    return-object v1

    .line 371
    :catchall_0
    move-exception v1

    .line 372
    :try_start_2
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 371
    :goto_1
    throw v1

    .line 368
    :catch_0
    move-exception v1

    .line 372
    :try_start_3
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 377
    :goto_2
    const/4 v1, 0x0

    goto :goto_0

    .line 373
    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v2

    goto :goto_1

    :catch_3
    move-exception v2

    goto :goto_0
.end method

.method private onDecodeOriginal(Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # I

    .prologue
    .line 440
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 441
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 443
    const/16 v1, 0x280

    invoke-direct {p0, p1, v0, v1}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->requestDecode(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private prevPowerOf2(I)I
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 511
    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 512
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    return v0
.end method

.method private requestDecode(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p3, "targetSize"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 456
    if-nez p2, :cond_0

    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    .end local p2    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 460
    .restart local p2    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->this$0:Lcom/android/mms/util/ThumbnailManager;

    # getter for: Lcom/android/mms/util/ThumbnailManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/mms/util/ThumbnailManager;->access$600(Lcom/android/mms/util/ThumbnailManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 466
    .local v1, "inputStream":Ljava/io/InputStream;
    iput-boolean v6, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 467
    invoke-static {v1, v3, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 468
    invoke-direct {p0, v1}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->closeSilently(Ljava/io/Closeable;)V

    .line 472
    :try_start_1
    iget-object v4, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->this$0:Lcom/android/mms/util/ThumbnailManager;

    # getter for: Lcom/android/mms/util/ThumbnailManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/mms/util/ThumbnailManager;->access$600(Lcom/android/mms/util/ThumbnailManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 478
    iget v4, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {p0, v4, v5, p3}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->computeSampleSizeLarger(III)I

    move-result v4

    iput v4, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 480
    const/4 v4, 0x0

    iput-boolean v4, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 482
    invoke-static {v1, v3, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 483
    .local v2, "result":Landroid/graphics/Bitmap;
    invoke-direct {p0, v1}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->closeSilently(Ljava/io/Closeable;)V

    .line 485
    if-nez v2, :cond_1

    .line 492
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "result":Landroid/graphics/Bitmap;
    :goto_0
    return-object v3

    .line 461
    :catch_0
    move-exception v0

    .line 462
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v4, "ThumbnailManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t open uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 473
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    :catch_1
    move-exception v0

    .line 474
    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    const-string v4, "ThumbnailManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t open uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 491
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "result":Landroid/graphics/Bitmap;
    :cond_1
    invoke-direct {p0, v2, p3, v6}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->resizeDownIfTooBig(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 492
    invoke-direct {p0, v2}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0
.end method

.method private requestDecode([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 389
    if-nez p4, :cond_0

    .line 390
    new-instance p4, Landroid/graphics/BitmapFactory$Options;

    .end local p4    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {p4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 392
    .restart local p4    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scale"    # F
    .param p3, "recycle"    # Z

    .prologue
    const/4 v6, 0x0

    .line 408
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 409
    .local v4, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 410
    .local v1, "height":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-ne v1, v5, :cond_0

    .line 418
    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object p1

    .line 412
    .restart local p1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v4, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 413
    .local v3, "target":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 414
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v0, p2, p2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 415
    new-instance v2, Landroid/graphics/Paint;

    const/4 v5, 0x6

    invoke-direct {v2, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 416
    .local v2, "paint":Landroid/graphics/Paint;
    invoke-virtual {v0, p1, v6, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 417
    if-eqz p3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    move-object p1, v3

    .line 418
    goto :goto_0
.end method

.method private resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "maxLength"    # I
    .param p3, "recycle"    # Z

    .prologue
    .line 398
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 399
    .local v2, "srcWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 400
    .local v1, "srcHeight":I
    int-to-float v3, p2

    int-to-float v4, v2

    div-float/2addr v3, v4

    int-to-float v4, p2

    int-to-float v5, v1

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 402
    .local v0, "scale":F
    const/high16 v3, 0x3f800000

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_0

    .line 403
    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object p1

    .restart local p1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-direct {p0, p1, v0, p3}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0
.end method

.method private resizeDownIfTooBig(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "targetSize"    # I
    .param p3, "recycle"    # Z

    .prologue
    .line 518
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 519
    .local v2, "srcWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 520
    .local v1, "srcHeight":I
    int-to-float v3, p2

    int-to-float v4, v2

    div-float/2addr v3, v4

    int-to-float v4, p2

    int-to-float v5, v1

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 522
    .local v0, "scale":F
    const/high16 v3, 0x3f000000

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    .line 523
    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object p1

    .restart local p1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-direct {p0, p1, v0, p3}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 252
    const/4 v0, 0x0

    .line 254
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    iget-boolean v3, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->mIsVideo:Z

    invoke-direct {p0, v3}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->getBitmap(Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 260
    :goto_0
    move-object v2, v0

    .line 262
    .local v2, "resultBitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->this$0:Lcom/android/mms/util/ThumbnailManager;

    iget-object v3, v3, Lcom/android/mms/util/BackgroundLoaderManager;->mCallbackHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask$1;

    invoke-direct {v4, p0, v2}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask$1;-><init>(Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 310
    return-void

    .line 255
    .end local v2    # "resultBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 256
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "ThumbnailManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t load bitmap for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 257
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 258
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    const-string v3, "ThumbnailManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t load bitmap for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
