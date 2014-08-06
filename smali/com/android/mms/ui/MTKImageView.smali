.class public Lcom/android/mms/ui/MTKImageView;
.super Landroid/widget/ImageView;
.source "MTKImageView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MTKImageView$GifFrameRunnable;,
        Lcom/android/mms/ui/MTKImageView$GifThread;,
        Lcom/android/mms/ui/MTKImageView$Bound;
    }
.end annotation


# instance fields
.field volatile mAbort:Z

.field private mAnimationThread:Ljava/lang/Thread;

.field private mContext:Landroid/content/Context;

.field private mCurrGifFrame:I

.field mCurrentRunnable:Lcom/android/mms/ui/MTKImageView$GifFrameRunnable;

.field protected mGifStream:Ljava/io/InputStream;

.field protected mHandler:Landroid/os/Handler;

.field protected mIGifDecoder:Landroid/graphics/GifDecoder;

.field private mResGif:Z

.field protected mResourceId:I

.field private mSetFromGif:Z

.field protected mUri:Landroid/net/Uri;

.field private mUriGif:Z

.field private self:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 254
    iput-boolean v0, p0, Lcom/android/mms/ui/MTKImageView;->mSetFromGif:Z

    .line 256
    iput-object v1, p0, Lcom/android/mms/ui/MTKImageView;->mUri:Landroid/net/Uri;

    .line 257
    iput-boolean v0, p0, Lcom/android/mms/ui/MTKImageView;->mResGif:Z

    .line 258
    iput-boolean v0, p0, Lcom/android/mms/ui/MTKImageView;->mUriGif:Z

    .line 259
    iput-object v1, p0, Lcom/android/mms/ui/MTKImageView;->mGifStream:Ljava/io/InputStream;

    .line 261
    iput v0, p0, Lcom/android/mms/ui/MTKImageView;->mCurrGifFrame:I

    .line 263
    iput-object v1, p0, Lcom/android/mms/ui/MTKImageView;->mIGifDecoder:Landroid/graphics/GifDecoder;

    .line 266
    iput-boolean v0, p0, Lcom/android/mms/ui/MTKImageView;->mAbort:Z

    .line 267
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MTKImageView;->mHandler:Landroid/os/Handler;

    .line 762
    iput-object v1, p0, Lcom/android/mms/ui/MTKImageView;->mCurrentRunnable:Lcom/android/mms/ui/MTKImageView$GifFrameRunnable;

    .line 90
    iput-object p1, p0, Lcom/android/mms/ui/MTKImageView;->mContext:Landroid/content/Context;

    .line 93
    invoke-virtual {p0}, Lcom/android/mms/ui/MTKImageView;->initForGif()V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 254
    iput-boolean v0, p0, Lcom/android/mms/ui/MTKImageView;->mSetFromGif:Z

    .line 256
    iput-object v1, p0, Lcom/android/mms/ui/MTKImageView;->mUri:Landroid/net/Uri;

    .line 257
    iput-boolean v0, p0, Lcom/android/mms/ui/MTKImageView;->mResGif:Z

    .line 258
    iput-boolean v0, p0, Lcom/android/mms/ui/MTKImageView;->mUriGif:Z

    .line 259
    iput-object v1, p0, Lcom/android/mms/ui/MTKImageView;->mGifStream:Ljava/io/InputStream;

    .line 261
    iput v0, p0, Lcom/android/mms/ui/MTKImageView;->mCurrGifFrame:I

    .line 263
    iput-object v1, p0, Lcom/android/mms/ui/MTKImageView;->mIGifDecoder:Landroid/graphics/GifDecoder;

    .line 266
    iput-boolean v0, p0, Lcom/android/mms/ui/MTKImageView;->mAbort:Z

    .line 267
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MTKImageView;->mHandler:Landroid/os/Handler;

    .line 762
    iput-object v1, p0, Lcom/android/mms/ui/MTKImageView;->mCurrentRunnable:Lcom/android/mms/ui/MTKImageView$GifFrameRunnable;

    .line 103
    iput-object p1, p0, Lcom/android/mms/ui/MTKImageView;->mContext:Landroid/content/Context;

    .line 106
    invoke-virtual {p0}, Lcom/android/mms/ui/MTKImageView;->initForGif()V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 116
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 254
    iput-boolean v0, p0, Lcom/android/mms/ui/MTKImageView;->mSetFromGif:Z

    .line 256
    iput-object v1, p0, Lcom/android/mms/ui/MTKImageView;->mUri:Landroid/net/Uri;

    .line 257
    iput-boolean v0, p0, Lcom/android/mms/ui/MTKImageView;->mResGif:Z

    .line 258
    iput-boolean v0, p0, Lcom/android/mms/ui/MTKImageView;->mUriGif:Z

    .line 259
    iput-object v1, p0, Lcom/android/mms/ui/MTKImageView;->mGifStream:Ljava/io/InputStream;

    .line 261
    iput v0, p0, Lcom/android/mms/ui/MTKImageView;->mCurrGifFrame:I

    .line 263
    iput-object v1, p0, Lcom/android/mms/ui/MTKImageView;->mIGifDecoder:Landroid/graphics/GifDecoder;

    .line 266
    iput-boolean v0, p0, Lcom/android/mms/ui/MTKImageView;->mAbort:Z

    .line 267
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MTKImageView;->mHandler:Landroid/os/Handler;

    .line 762
    iput-object v1, p0, Lcom/android/mms/ui/MTKImageView;->mCurrentRunnable:Lcom/android/mms/ui/MTKImageView$GifFrameRunnable;

    .line 117
    iput-object p1, p0, Lcom/android/mms/ui/MTKImageView;->mContext:Landroid/content/Context;

    .line 120
    invoke-virtual {p0}, Lcom/android/mms/ui/MTKImageView;->initForGif()V

    .line 121
    return-void
.end method

.method private abortAnimationThread()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 634
    const-string v1, "MTKImageView"

    const-string v2, "abortAnimationThread()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    iget-object v1, p0, Lcom/android/mms/ui/MTKImageView;->mAnimationThread:Ljava/lang/Thread;

    if-nez v1, :cond_1

    .line 636
    const-string v1, "MTKImageView"

    const-string v2, "abortAnimationThread:thread null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_0
    :goto_0
    return-void

    .line 640
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/mms/ui/MTKImageView;->mAbort:Z

    .line 643
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/MTKImageView;->mAnimationThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 646
    iget-object v1, p0, Lcom/android/mms/ui/MTKImageView;->mAnimationThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    :goto_1
    iput-object v4, p0, Lcom/android/mms/ui/MTKImageView;->mAnimationThread:Ljava/lang/Thread;

    .line 652
    iget-object v1, p0, Lcom/android/mms/ui/MTKImageView;->mCurrentRunnable:Lcom/android/mms/ui/MTKImageView$GifFrameRunnable;

    if-eqz v1, :cond_0

    .line 653
    const-string v1, "MTKImageView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "abortAnimationThread:remove "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MTKImageView;->mCurrentRunnable:Lcom/android/mms/ui/MTKImageView$GifFrameRunnable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object v1, p0, Lcom/android/mms/ui/MTKImageView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/mms/ui/MTKImageView;->mCurrentRunnable:Lcom/android/mms/ui/MTKImageView$GifFrameRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 656
    iput-object v4, p0, Lcom/android/mms/ui/MTKImageView;->mCurrentRunnable:Lcom/android/mms/ui/MTKImageView$GifFrameRunnable;

    goto :goto_0

    .line 647
    :catch_0
    move-exception v0

    .line 648
    .local v0, "ex":Ljava/lang/InterruptedException;
    const-string v1, "MTKImageView"

    const-string v2, "abortAnimationThread:join interrupted"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MTKImageView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/MTKImageView;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/mms/ui/MTKImageView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MTKImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/MTKImageView;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/mms/ui/MTKImageView;->gifAnimation()V

    return-void
.end method

.method static synthetic access$502(Lcom/android/mms/ui/MTKImageView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/MTKImageView;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/mms/ui/MTKImageView;->mSetFromGif:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/mms/ui/MTKImageView;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/MTKImageView;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/mms/ui/MTKImageView;->mAnimationThread:Ljava/lang/Thread;

    return-object v0
.end method

.method private closeGifStream()V
    .locals 4

    .prologue
    .line 276
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/MTKImageView;->mGifStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/android/mms/ui/MTKImageView;->mGifStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 278
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/MTKImageView;->mGifStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "MTKImageView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Close GIF InputStream failed, e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private decodeBoundsInfo(Landroid/net/Uri;)Lcom/android/mms/ui/MTKImageView$Bound;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 408
    const/4 v2, 0x0

    .line 409
    .local v2, "input":Ljava/io/InputStream;
    new-instance v0, Lcom/android/mms/ui/MTKImageView$Bound;

    invoke-direct {v0, p0, v4}, Lcom/android/mms/ui/MTKImageView$Bound;-><init>(Lcom/android/mms/ui/MTKImageView;Lcom/android/mms/ui/MTKImageView$1;)V

    .line 411
    .local v0, "bound":Lcom/android/mms/ui/MTKImageView$Bound;
    :try_start_0
    iget-object v4, p0, Lcom/android/mms/ui/MTKImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 412
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 413
    .local v3, "opt":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 414
    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 416
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    # setter for: Lcom/android/mms/ui/MTKImageView$Bound;->width:I
    invoke-static {v0, v4}, Lcom/android/mms/ui/MTKImageView$Bound;->access$202(Lcom/android/mms/ui/MTKImageView$Bound;I)I

    .line 417
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    # setter for: Lcom/android/mms/ui/MTKImageView$Bound;->height:I
    invoke-static {v0, v4}, Lcom/android/mms/ui/MTKImageView$Bound;->access$302(Lcom/android/mms/ui/MTKImageView$Bound;I)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    if-eqz v2, :cond_0

    .line 424
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 432
    .end local v3    # "opt":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_0
    return-object v0

    .line 418
    :catch_0
    move-exception v1

    .line 420
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v4, "MTKImageView"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 422
    if-eqz v2, :cond_0

    .line 424
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 425
    :catch_1
    move-exception v1

    .line 427
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "MTKImageView"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 422
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_1

    .line 424
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 422
    :cond_1
    :goto_2
    throw v4

    .line 425
    :catch_2
    move-exception v1

    .line 427
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v5, "MTKImageView"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 425
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "opt":Landroid/graphics/BitmapFactory$Options;
    :catch_3
    move-exception v1

    .line 427
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v4, "MTKImageView"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method private decodeDegreeInfo(Landroid/net/Uri;)I
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 436
    const/4 v3, 0x0

    .line 437
    .local v3, "orientation":I
    const/4 v0, 0x0

    .line 439
    .local v0, "degree":I
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MTKImageView;->getAbsoluteImagePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 440
    .local v4, "path":Ljava/lang/String;
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, v4}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 441
    .local v2, "exif":Landroid/media/ExifInterface;
    if-eqz v2, :cond_0

    .line 442
    const-string v5, "Orientation"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3

    .line 443
    invoke-direct {p0, v3}, Lcom/android/mms/ui/MTKImageView;->getExifRotation(I)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 450
    .end local v2    # "exif":Landroid/media/ExifInterface;
    .end local v4    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 445
    :catch_0
    move-exception v1

    .line 446
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v5, "MTKImageView"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 447
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 448
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "MTKImageView"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getExifRotation(I)I
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 367
    const/4 v0, 0x0

    .line 368
    .local v0, "degrees":I
    packed-switch p1, :pswitch_data_0

    .line 382
    :goto_0
    :pswitch_0
    return v0

    .line 370
    :pswitch_1
    const/4 v0, 0x0

    .line 371
    goto :goto_0

    .line 373
    :pswitch_2
    const/16 v0, 0x5a

    .line 374
    goto :goto_0

    .line 376
    :pswitch_3
    const/16 v0, 0xb4

    .line 377
    goto :goto_0

    .line 379
    :pswitch_4
    const/16 v0, 0x10e

    goto :goto_0

    .line 368
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

.method private gifAnimation()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 669
    :try_start_0
    const-string v5, "MTKImageView"

    const-string v6, "gifAnimation:call openGifStream()"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    invoke-direct {p0}, Lcom/android/mms/ui/MTKImageView;->openGifStream()V

    .line 671
    iget-object v5, p0, Lcom/android/mms/ui/MTKImageView;->mGifStream:Ljava/io/InputStream;

    if-nez v5, :cond_1

    .line 672
    const-string v5, "MTKImageView"

    const-string v6, "gifAnimation:got null mGifStream"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 753
    iget-object v5, p0, Lcom/android/mms/ui/MTKImageView;->mIGifDecoder:Landroid/graphics/GifDecoder;

    if-eqz v5, :cond_0

    .line 755
    iput-object v8, p0, Lcom/android/mms/ui/MTKImageView;->mIGifDecoder:Landroid/graphics/GifDecoder;

    .line 758
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/MTKImageView;->closeGifStream()V

    .line 760
    return-void

    .line 675
    :cond_1
    :try_start_1
    iget-boolean v5, p0, Lcom/android/mms/ui/MTKImageView;->mAbort:Z

    if-eqz v5, :cond_2

    .line 676
    const-string v5, "MTKImageView"

    const-string v6, "gifAnimation:after open stream:thread aborted"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 753
    iget-object v5, p0, Lcom/android/mms/ui/MTKImageView;->mIGifDecoder:Landroid/graphics/GifDecoder;

    if-eqz v5, :cond_0

    .line 755
    iput-object v8, p0, Lcom/android/mms/ui/MTKImageView;->mIGifDecoder:Landroid/graphics/GifDecoder;

    goto :goto_0

    .line 680
    :cond_2
    :try_start_2
    new-instance v5, Landroid/graphics/GifDecoder;

    iget-object v6, p0, Lcom/android/mms/ui/MTKImageView;->mGifStream:Ljava/io/InputStream;

    invoke-direct {v5, v6}, Landroid/graphics/GifDecoder;-><init>(Ljava/io/InputStream;)V

    iput-object v5, p0, Lcom/android/mms/ui/MTKImageView;->mIGifDecoder:Landroid/graphics/GifDecoder;

    .line 689
    iget-boolean v5, p0, Lcom/android/mms/ui/MTKImageView;->mAbort:Z

    if-eqz v5, :cond_3

    .line 690
    const-string v5, "MTKImageView"

    const-string v6, "gifAnimation:after new GifDecoder:thread aborted"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 753
    iget-object v5, p0, Lcom/android/mms/ui/MTKImageView;->mIGifDecoder:Landroid/graphics/GifDecoder;

    if-eqz v5, :cond_0

    .line 755
    iput-object v8, p0, Lcom/android/mms/ui/MTKImageView;->mIGifDecoder:Landroid/graphics/GifDecoder;

    goto :goto_0

    .line 694
    :cond_3
    :try_start_3
    iget-object v5, p0, Lcom/android/mms/ui/MTKImageView;->mIGifDecoder:Landroid/graphics/GifDecoder;

    if-nez v5, :cond_4

    .line 695
    const-string v5, "MTKImageView"

    const-string v6, "Decode GIF resource failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    invoke-direct {p0}, Lcom/android/mms/ui/MTKImageView;->showFirstGifFrame()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 753
    iget-object v5, p0, Lcom/android/mms/ui/MTKImageView;->mIGifDecoder:Landroid/graphics/GifDecoder;

    if-eqz v5, :cond_0

    .line 755
    iput-object v8, p0, Lcom/android/mms/ui/MTKImageView;->mIGifDecoder:Landroid/graphics/GifDecoder;

    goto :goto_0

    .line 701
    :cond_4
    :try_start_4
    iget-object v5, p0, Lcom/android/mms/ui/MTKImageView;->mIGifDecoder:Landroid/graphics/GifDecoder;

    invoke-virtual {v5}, Landroid/graphics/GifDecoder;->getTotalFrameCount()I

    move-result v5

    if-nez v5, :cond_5

    .line 702
    const-string v5, "MTKImageView"

    const-string v6, "gifAnimation:decode gif stream fails"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/mms/ui/MTKImageView;->mIGifDecoder:Landroid/graphics/GifDecoder;

    .line 707
    invoke-direct {p0}, Lcom/android/mms/ui/MTKImageView;->showFirstGifFrame()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 753
    iget-object v5, p0, Lcom/android/mms/ui/MTKImageView;->mIGifDecoder:Landroid/graphics/GifDecoder;

    if-eqz v5, :cond_0

    .line 755
    iput-object v8, p0, Lcom/android/mms/ui/MTKImageView;->mIGifDecoder:Landroid/graphics/GifDecoder;

    goto :goto_0

    .line 711
    :cond_5
    const-wide/16 v1, 0x0

    .line 712
    .local v1, "frameDuration":J
    :try_start_5
    iget-object v5, p0, Lcom/android/mms/ui/MTKImageView;->mIGifDecoder:Landroid/graphics/GifDecoder;

    invoke-virtual {v5}, Landroid/graphics/GifDecoder;->getTotalFrameCount()I

    move-result v4

    .line 713
    .local v4, "totalFrameCount":I
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/mms/ui/MTKImageView;->mCurrGifFrame:I

    .line 717
    :goto_1
    iget-object v5, p0, Lcom/android/mms/ui/MTKImageView;->mIGifDecoder:Landroid/graphics/GifDecoder;

    iget v6, p0, Lcom/android/mms/ui/MTKImageView;->mCurrGifFrame:I

    invoke-virtual {v5, v6}, Landroid/graphics/GifDecoder;->getFrameBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 719
    .local v3, "gifFrame":Landroid/graphics/Bitmap;
    iget-boolean v5, p0, Lcom/android/mms/ui/MTKImageView;->mAbort:Z

    if-eqz v5, :cond_6

    .line 720
    const-string v5, "MTKImageView"

    const-string v6, "gifAnimation:after decode:thread aborted"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 753
    :goto_2
    iget-object v5, p0, Lcom/android/mms/ui/MTKImageView;->mIGifDecoder:Landroid/graphics/GifDecoder;

    if-eqz v5, :cond_0

    .line 755
    iput-object v8, p0, Lcom/android/mms/ui/MTKImageView;->mIGifDecoder:Landroid/graphics/GifDecoder;

    goto/16 :goto_0

    .line 725
    :cond_6
    :try_start_6
    new-instance v5, Lcom/android/mms/ui/MTKImageView$GifFrameRunnable;

    invoke-direct {v5, p0, v3}, Lcom/android/mms/ui/MTKImageView$GifFrameRunnable;-><init>(Lcom/android/mms/ui/MTKImageView;Landroid/graphics/Bitmap;)V

    iput-object v5, p0, Lcom/android/mms/ui/MTKImageView;->mCurrentRunnable:Lcom/android/mms/ui/MTKImageView$GifFrameRunnable;

    .line 726
    iget-object v5, p0, Lcom/android/mms/ui/MTKImageView;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/mms/ui/MTKImageView;->mCurrentRunnable:Lcom/android/mms/ui/MTKImageView$GifFrameRunnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 729
    iget-object v5, p0, Lcom/android/mms/ui/MTKImageView;->mIGifDecoder:Landroid/graphics/GifDecoder;

    iget v6, p0, Lcom/android/mms/ui/MTKImageView;->mCurrGifFrame:I

    invoke-virtual {v5, v6}, Landroid/graphics/GifDecoder;->getFrameDuration(I)I

    move-result v5

    int-to-long v1, v5

    .line 730
    const-string v5, "MTKImageView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sleep for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms for frame "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/mms/ui/MTKImageView;->mCurrGifFrame:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " //this="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/MTKImageView;->self:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget-boolean v5, p0, Lcom/android/mms/ui/MTKImageView;->mAbort:Z

    if-eqz v5, :cond_8

    .line 734
    const-string v5, "MTKImageView"

    const-string v6, "gifAnimation:animating:thread aborted"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 753
    .end local v1    # "frameDuration":J
    .end local v3    # "gifFrame":Landroid/graphics/Bitmap;
    .end local v4    # "totalFrameCount":I
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/android/mms/ui/MTKImageView;->mIGifDecoder:Landroid/graphics/GifDecoder;

    if-eqz v6, :cond_7

    .line 755
    iput-object v8, p0, Lcom/android/mms/ui/MTKImageView;->mIGifDecoder:Landroid/graphics/GifDecoder;

    .line 758
    :cond_7
    invoke-direct {p0}, Lcom/android/mms/ui/MTKImageView;->closeGifStream()V

    .line 753
    throw v5

    .line 739
    .restart local v1    # "frameDuration":J
    .restart local v3    # "gifFrame":Landroid/graphics/Bitmap;
    .restart local v4    # "totalFrameCount":I
    :cond_8
    :try_start_7
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 745
    :goto_3
    const/4 v5, 0x1

    if-ne v5, v4, :cond_9

    .line 746
    :try_start_8
    const-string v5, "MTKImageView"

    const-string v6, "gifAnim:single frame, cancel"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 740
    :catch_0
    move-exception v0

    .line 741
    .local v0, "ex":Ljava/lang/InterruptedException;
    const-string v5, "MTKImageView"

    const-string v6, "gifAnimation:sleeping interrupted"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 749
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_9
    iget v5, p0, Lcom/android/mms/ui/MTKImageView;->mCurrGifFrame:I

    add-int/lit8 v5, v5, 0x1

    rem-int/2addr v5, v4

    iput v5, p0, Lcom/android/mms/ui/MTKImageView;->mCurrGifFrame:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1
.end method

.method private openGifStream()V
    .locals 4

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/android/mms/ui/MTKImageView;->closeGifStream()V

    .line 288
    iget-boolean v1, p0, Lcom/android/mms/ui/MTKImageView;->mUriGif:Z

    iget-boolean v2, p0, Lcom/android/mms/ui/MTKImageView;->mResGif:Z

    if-ne v1, v2, :cond_0

    .line 289
    const-string v1, "MTKImageView"

    const-string v2, "openGifStream:not correct status!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :goto_0
    return-void

    .line 292
    :cond_0
    iget-boolean v1, p0, Lcom/android/mms/ui/MTKImageView;->mResGif:Z

    if-eqz v1, :cond_1

    .line 295
    :try_start_0
    const-string v1, "MTKImageView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openGifStream:open new gif strem from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/ui/MTKImageView;->mResourceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v1, p0, Lcom/android/mms/ui/MTKImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MTKImageView;->mResourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MTKImageView;->mGifStream:Ljava/io/InputStream;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v1, "MTKImageView"

    const-string v2, "Open GIF resource as InputStream failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 302
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_1
    :try_start_1
    const-string v1, "MTKImageView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openGifStream:open new gif strem from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MTKImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v1, p0, Lcom/android/mms/ui/MTKImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MTKImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MTKImageView;->mGifStream:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 304
    :catch_1
    move-exception v0

    .line 305
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "MTKImageView"

    const-string v2, "Open GIF URI as InputStream failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resizeAndRotateImage(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 473
    const/4 v4, 0x0

    .line 475
    .local v4, "finalImage":Landroid/graphics/Bitmap;
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MTKImageView;->decodeBoundsInfo(Landroid/net/Uri;)Lcom/android/mms/ui/MTKImageView$Bound;

    move-result-object v0

    .line 476
    .local v0, "bound":Lcom/android/mms/ui/MTKImageView$Bound;
    # getter for: Lcom/android/mms/ui/MTKImageView$Bound;->width:I
    invoke-static {v0}, Lcom/android/mms/ui/MTKImageView$Bound;->access$200(Lcom/android/mms/ui/MTKImageView$Bound;)I

    move-result v6

    .line 477
    .local v6, "imageWidth":I
    # getter for: Lcom/android/mms/ui/MTKImageView$Bound;->height:I
    invoke-static {v0}, Lcom/android/mms/ui/MTKImageView$Bound;->access$300(Lcom/android/mms/ui/MTKImageView$Bound;)I

    move-result v5

    .line 479
    .local v5, "imageHeight":I
    const/4 v9, 0x1

    .line 480
    .local v9, "scaleFactor":I
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MTKImageView;->decodeDegreeInfo(Landroid/net/Uri;)I

    move-result v1

    .line 482
    .local v1, "degree":I
    const/16 v10, 0x5a

    if-eq v1, v10, :cond_0

    const/16 v10, 0x10e

    if-ne v1, v10, :cond_1

    .line 483
    :cond_0
    # getter for: Lcom/android/mms/ui/MTKImageView$Bound;->height:I
    invoke-static {v0}, Lcom/android/mms/ui/MTKImageView$Bound;->access$300(Lcom/android/mms/ui/MTKImageView$Bound;)I

    move-result v6

    .line 484
    # getter for: Lcom/android/mms/ui/MTKImageView$Bound;->width:I
    invoke-static {v0}, Lcom/android/mms/ui/MTKImageView$Bound;->access$200(Lcom/android/mms/ui/MTKImageView$Bound;)I

    move-result v5

    .line 487
    :cond_1
    const/16 v10, 0x280

    if-gt v6, v10, :cond_2

    const/16 v10, 0x1e0

    if-le v5, v10, :cond_4

    .line 488
    :cond_2
    const-string v10, "MTKImageView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Image need resize: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_3
    mul-int/lit8 v9, v9, 0x2

    .line 491
    div-int v10, v6, v9

    const/16 v11, 0x280

    if-gt v10, v11, :cond_3

    div-int v10, v5, v9

    const/16 v11, 0x1e0

    if-gt v10, v11, :cond_3

    .line 493
    :cond_4
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 494
    .local v8, "options":Landroid/graphics/BitmapFactory$Options;
    iput v9, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 495
    const/4 v7, 0x0

    .line 497
    .local v7, "input":Ljava/io/InputStream;
    :try_start_0
    iget-object v10, p0, Lcom/android/mms/ui/MTKImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v10, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 498
    if-eqz v7, :cond_7

    .line 500
    const/4 v10, 0x0

    :try_start_1
    invoke-static {v7, v10, v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 505
    if-nez v4, :cond_6

    .line 507
    const/4 v10, 0x0

    .line 520
    if-eqz v7, :cond_5

    .line 522
    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 529
    :cond_5
    :goto_0
    return-object v10

    .line 501
    :catch_0
    move-exception v3

    .line 503
    .local v3, "ex":Ljava/lang/OutOfMemoryError;
    const/4 v10, 0x0

    .line 520
    if-eqz v7, :cond_5

    .line 522
    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 523
    :catch_1
    move-exception v2

    .line 524
    .local v2, "e":Ljava/lang/Exception;
    const-string v11, "MTKImageView"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    .end local v3    # "ex":Ljava/lang/OutOfMemoryError;
    :goto_1
    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 510
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_6
    :try_start_4
    # getter for: Lcom/android/mms/ui/MTKImageView$Bound;->width:I
    invoke-static {v0}, Lcom/android/mms/ui/MTKImageView$Bound;->access$200(Lcom/android/mms/ui/MTKImageView$Bound;)I

    move-result v10

    div-int/2addr v10, v9

    # getter for: Lcom/android/mms/ui/MTKImageView$Bound;->height:I
    invoke-static {v0}, Lcom/android/mms/ui/MTKImageView$Bound;->access$300(Lcom/android/mms/ui/MTKImageView$Bound;)I

    move-result v11

    div-int/2addr v11, v9

    const/4 v12, 0x0

    invoke-static {v4, v10, v11, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v4

    .line 515
    :goto_2
    :try_start_5
    invoke-static {v4, v1}, Lcom/android/mms/ui/MTKImageView;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v4

    .line 520
    :cond_7
    if-eqz v7, :cond_8

    .line 522
    :try_start_6
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    :cond_8
    :goto_3
    move-object v10, v4

    .line 529
    goto :goto_0

    .line 517
    :catch_2
    move-exception v2

    .line 518
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_7
    const-string v10, "MTKImageView"

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 520
    if-eqz v7, :cond_8

    .line 522
    :try_start_8
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_3

    .line 523
    :catch_3
    move-exception v2

    .line 524
    .local v2, "e":Ljava/lang/Exception;
    const-string v10, "MTKImageView"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    :goto_4
    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 520
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    if-eqz v7, :cond_9

    .line 522
    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 520
    :cond_9
    :goto_5
    throw v10

    .line 523
    :catch_4
    move-exception v2

    .line 524
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v11, "MTKImageView"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 523
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v2

    .line 524
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v11, "MTKImageView"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 523
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v2

    .line 524
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v10, "MTKImageView"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    .line 512
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v10

    goto :goto_2
.end method

.method public static rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "b"    # Landroid/graphics/Bitmap;
    .param p1, "degrees"    # I

    .prologue
    const/high16 v3, 0x40000000

    .line 388
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 389
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 390
    .local v5, "m":Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 393
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 394
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 396
    .local v7, "b2":Landroid/graphics/Bitmap;
    if-eq p0, v7, :cond_0

    .line 397
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    move-object p0, v7

    .line 404
    .end local v5    # "m":Landroid/graphics/Matrix;
    .end local v7    # "b2":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 400
    .restart local v5    # "m":Landroid/graphics/Matrix;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showFirstGifFrame()V
    .locals 5

    .prologue
    .line 784
    invoke-direct {p0}, Lcom/android/mms/ui/MTKImageView;->openGifStream()V

    .line 785
    iget-object v3, p0, Lcom/android/mms/ui/MTKImageView;->mGifStream:Ljava/io/InputStream;

    if-nez v3, :cond_0

    .line 807
    :goto_0
    return-void

    .line 786
    :cond_0
    const/4 v1, 0x0

    .line 787
    .local v1, "firstFrame":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 788
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 789
    const/4 v3, 0x1

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 791
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/MTKImageView;->mGifStream:Ljava/io/InputStream;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 796
    iget-boolean v3, p0, Lcom/android/mms/ui/MTKImageView;->mAbort:Z

    if-eqz v3, :cond_1

    .line 797
    const-string v3, "MTKImageView"

    const-string v4, "showFirstGifFrame:thread aborted"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 792
    :catch_0
    move-exception v0

    .line 793
    .local v0, "ex":Ljava/lang/OutOfMemoryError;
    const-string v3, "MTKImageView"

    const-string v4, "showFirstGifFrame:OOM when decoding"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 800
    .end local v0    # "ex":Ljava/lang/OutOfMemoryError;
    :cond_1
    if-eqz v1, :cond_2

    .line 802
    new-instance v3, Lcom/android/mms/ui/MTKImageView$GifFrameRunnable;

    invoke-direct {v3, p0, v1}, Lcom/android/mms/ui/MTKImageView$GifFrameRunnable;-><init>(Lcom/android/mms/ui/MTKImageView;Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/android/mms/ui/MTKImageView;->mCurrentRunnable:Lcom/android/mms/ui/MTKImageView$GifFrameRunnable;

    .line 803
    iget-object v3, p0, Lcom/android/mms/ui/MTKImageView;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/mms/ui/MTKImageView;->mCurrentRunnable:Lcom/android/mms/ui/MTKImageView$GifFrameRunnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 805
    :cond_2
    const-string v3, "MTKImageView"

    const-string v4, "showFirstGifFrame:failed to decode first frame!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startAnimationThread()V
    .locals 2

    .prologue
    .line 622
    iget-object v1, p0, Lcom/android/mms/ui/MTKImageView;->mAnimationThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 631
    :goto_0
    return-void

    .line 626
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/ui/MTKImageView;->mAbort:Z

    .line 627
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/MTKImageView$GifThread;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MTKImageView$GifThread;-><init>(Lcom/android/mms/ui/MTKImageView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 628
    .local v0, "t":Ljava/lang/Thread;
    const-string v1, "gif-animation"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 629
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 630
    iput-object v0, p0, Lcom/android/mms/ui/MTKImageView;->mAnimationThread:Ljava/lang/Thread;

    goto :goto_0
.end method


# virtual methods
.method protected getAbsoluteImagePath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 456
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 457
    .local v2, "proj":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/MTKImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 463
    .local v7, "cursor":Landroid/database/Cursor;
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 464
    .local v6, "column_index":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 465
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 466
    .local v8, "path":Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 467
    return-object v8
.end method

.method protected initForGif()V
    .locals 0

    .prologue
    .line 270
    iput-object p0, p0, Lcom/android/mms/ui/MTKImageView;->self:Landroid/widget/ImageView;

    .line 271
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 165
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 166
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 607
    iget-boolean v0, p0, Lcom/android/mms/ui/MTKImageView;->mSetFromGif:Z

    if-nez v0, :cond_0

    .line 608
    invoke-direct {p0}, Lcom/android/mms/ui/MTKImageView;->abortAnimationThread()V

    .line 610
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 611
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 615
    iget-boolean v0, p0, Lcom/android/mms/ui/MTKImageView;->mSetFromGif:Z

    if-nez v0, :cond_0

    .line 616
    invoke-direct {p0}, Lcom/android/mms/ui/MTKImageView;->abortAnimationThread()V

    .line 618
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 619
    return-void
.end method

.method public setImageResource(I)V
    .locals 9
    .param p1, "resId"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 318
    const-string v4, "MTKImageView"

    const-string v5, "setImageResource:abort previous gif animation if any"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-direct {p0}, Lcom/android/mms/ui/MTKImageView;->abortAnimationThread()V

    .line 321
    const/4 v2, 0x0

    .line 322
    .local v2, "imageStream":Ljava/io/InputStream;
    const/4 v4, 0x4

    new-array v0, v4, [B

    .line 323
    .local v0, "buffer":[B
    const/4 v3, 0x0

    .line 325
    .local v3, "isGifImage":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/mms/ui/MTKImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 326
    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v0, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-eq v6, v4, :cond_0

    .line 327
    const-string v4, "MTKImageView"

    const-string v5, "can\'t read data from resource inputstream"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/4 v3, 0x0

    .line 335
    :goto_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    const/4 v2, 0x0

    .line 341
    :goto_1
    if-nez v3, :cond_2

    .line 342
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 356
    :goto_2
    return-void

    .line 329
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    aget-byte v4, v0, v4

    const/16 v5, 0x47

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    aget-byte v4, v0, v4

    const/16 v5, 0x49

    if-ne v4, v5, :cond_1

    const/4 v4, 0x2

    aget-byte v4, v0, v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v5, 0x46

    if-ne v4, v5, :cond_1

    .line 330
    const/4 v3, 0x1

    goto :goto_0

    .line 332
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 337
    :catch_0
    move-exception v1

    .line 338
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "MTKImageView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 346
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    iput p1, p0, Lcom/android/mms/ui/MTKImageView;->mResourceId:I

    .line 349
    iput-boolean v7, p0, Lcom/android/mms/ui/MTKImageView;->mUriGif:Z

    .line 350
    iput-boolean v8, p0, Lcom/android/mms/ui/MTKImageView;->mResGif:Z

    .line 355
    invoke-direct {p0}, Lcom/android/mms/ui/MTKImageView;->startAnimationThread()V

    goto :goto_2
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 540
    const-string v5, "MTKImageView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setImageURI(uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " //this="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    invoke-direct {p0}, Lcom/android/mms/ui/MTKImageView;->abortAnimationThread()V

    .line 543
    if-nez p1, :cond_0

    .line 544
    const-string v5, "MTKImageView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setImageURI:follow ImageView\'s routin for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 603
    :goto_0
    return-void

    .line 549
    :cond_0
    const/4 v3, 0x0

    .line 550
    .local v3, "imageStream":Ljava/io/InputStream;
    const/4 v5, 0x4

    new-array v0, v5, [B

    .line 551
    .local v0, "buffer":[B
    const/4 v4, 0x0

    .line 552
    .local v4, "isGifImage":Z
    const/4 v2, 0x0

    .line 554
    .local v2, "finalImage":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "content"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "file"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.resource"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 558
    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/MTKImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 559
    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v3, v0, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-eq v10, v5, :cond_2

    .line 560
    const-string v5, "MTKImageView"

    const-string v6, "can\'t read data from uri inputstream"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const/4 v4, 0x0

    .line 569
    :goto_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    const/4 v3, 0x0

    .line 579
    :goto_2
    const-string v5, "MTKImageView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setImageURI:isGifImage="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " //this="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    if-nez v4, :cond_6

    .line 582
    const-string v5, "MTKImageView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setImageURI:follow ImageView\'s routin for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    if-eqz v2, :cond_5

    .line 584
    invoke-super {p0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 562
    :cond_2
    const/4 v5, 0x0

    :try_start_1
    aget-byte v5, v0, v5

    const/16 v6, 0x47

    if-ne v5, v6, :cond_3

    const/4 v5, 0x1

    aget-byte v5, v0, v5

    const/16 v6, 0x49

    if-ne v5, v6, :cond_3

    const/4 v5, 0x2

    aget-byte v5, v0, v5

    const/16 v6, 0x46

    if-ne v5, v6, :cond_3

    .line 563
    const/4 v4, 0x1

    goto :goto_1

    .line 565
    :cond_3
    const/4 v4, 0x0

    .line 566
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MTKImageView;->resizeAndRotateImage(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1

    .line 572
    :cond_4
    const-string v5, "MTKImageView"

    const-string v6, "Uncoped uri scheme,call ImageView.setImageURI()"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 573
    const/4 v4, 0x0

    goto :goto_2

    .line 575
    :catch_0
    move-exception v1

    .line 576
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "MTKImageView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 586
    .end local v1    # "e":Ljava/io/IOException;
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 592
    :cond_6
    const-string v5, "MTKImageView"

    const-string v6, "setImageUri:synchroized lock, start gif animation"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iput-object p1, p0, Lcom/android/mms/ui/MTKImageView;->mUri:Landroid/net/Uri;

    .line 596
    iput-boolean v9, p0, Lcom/android/mms/ui/MTKImageView;->mUriGif:Z

    .line 597
    iput-boolean v8, p0, Lcom/android/mms/ui/MTKImageView;->mResGif:Z

    .line 602
    invoke-direct {p0}, Lcom/android/mms/ui/MTKImageView;->startAnimationThread()V

    goto/16 :goto_0
.end method
