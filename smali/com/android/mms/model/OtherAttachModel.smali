.class public Lcom/android/mms/model/OtherAttachModel;
.super Lcom/android/mms/model/Model;
.source "OtherAttachModel.java"


# instance fields
.field protected mContentType:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mName:Ljava/lang/String;

.field protected mSize:I

.field protected mSlideshow:Lcom/android/mms/model/SlideshowModel;

.field protected mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "slideshow"    # Lcom/android/mms/model/SlideshowModel;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/mms/model/OtherAttachModel;->mContext:Landroid/content/Context;

    .line 64
    iput-object p3, p0, Lcom/android/mms/model/OtherAttachModel;->mContentType:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/android/mms/model/OtherAttachModel;->mName:Ljava/lang/String;

    .line 66
    iput-object p4, p0, Lcom/android/mms/model/OtherAttachModel;->mUri:Landroid/net/Uri;

    .line 67
    iput-object p5, p0, Lcom/android/mms/model/OtherAttachModel;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 68
    invoke-virtual {p0}, Lcom/android/mms/model/OtherAttachModel;->initModelFromUri()V

    .line 70
    invoke-direct {p0}, Lcom/android/mms/model/OtherAttachModel;->initAttachSize()V

    .line 72
    return-void
.end method

.method private initAttachSize()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 157
    iget-object v6, p0, Lcom/android/mms/model/OtherAttachModel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 158
    .local v1, "cr":Landroid/content/ContentResolver;
    const/4 v5, 0x0

    .line 160
    .local v5, "input":Ljava/io/InputStream;
    :try_start_0
    iget-object v6, p0, Lcom/android/mms/model/OtherAttachModel;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 161
    instance-of v6, v5, Ljava/io/FileInputStream;

    if-eqz v6, :cond_2

    .line 163
    move-object v0, v5

    check-cast v0, Ljava/io/FileInputStream;

    move-object v3, v0

    .line 164
    .local v3, "f":Ljava/io/FileInputStream;
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    .line 165
    .local v4, "fc":Ljava/nio/channels/FileChannel;
    if-eqz v4, :cond_4

    .line 166
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    long-to-int v6, v6

    iput v6, p0, Lcom/android/mms/model/OtherAttachModel;->mSize:I

    .line 167
    iget v6, p0, Lcom/android/mms/model/OtherAttachModel;->mSize:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v6, :cond_1

    .line 189
    if-eqz v5, :cond_0

    .line 191
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 198
    .end local v3    # "f":Ljava/io/FileInputStream;
    .end local v4    # "fc":Ljava/nio/channels/FileChannel;
    :cond_0
    :goto_0
    return-void

    .line 192
    .restart local v3    # "f":Ljava/io/FileInputStream;
    .restart local v4    # "fc":Ljava/nio/channels/FileChannel;
    :catch_0
    move-exception v2

    .line 194
    .local v2, "e":Ljava/io/IOException;
    const-string v6, "OtherAttachmodel"

    const-string v7, "IOException caught while closing stream"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 170
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v6

    if-eq v8, v6, :cond_4

    .line 171
    iget v6, p0, Lcom/android/mms/model/OtherAttachModel;->mSize:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/mms/model/OtherAttachModel;->mSize:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 185
    .end local v3    # "f":Ljava/io/FileInputStream;
    .end local v4    # "fc":Ljava/nio/channels/FileChannel;
    :catch_1
    move-exception v2

    .line 187
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_3
    const-string v6, "OtherAttachmodel"

    const-string v7, "IOException caught while opening or reading stream"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 189
    if-eqz v5, :cond_0

    .line 191
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 192
    :catch_2
    move-exception v2

    .line 194
    const-string v6, "OtherAttachmodel"

    const-string v7, "IOException caught while closing stream"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 180
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :goto_2
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v6

    if-eq v8, v6, :cond_4

    .line 181
    iget v6, p0, Lcom/android/mms/model/OtherAttachModel;->mSize:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/mms/model/OtherAttachModel;->mSize:I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 189
    :catchall_0
    move-exception v6

    if-eqz v5, :cond_3

    .line 191
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 195
    :cond_3
    :goto_3
    throw v6

    .line 189
    :cond_4
    if-eqz v5, :cond_0

    .line 191
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_0

    .line 192
    :catch_3
    move-exception v2

    .line 194
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v6, "OtherAttachmodel"

    const-string v7, "IOException caught while closing stream"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 192
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 194
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v7, "OtherAttachmodel"

    const-string v8, "IOException caught while closing stream"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method


# virtual methods
.method public getAttachSize()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/android/mms/model/OtherAttachModel;->mSize:I

    return v0
.end method

.method public getContentLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/mms/model/OtherAttachModel;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/mms/model/OtherAttachModel;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/mms/model/OtherAttachModel;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method protected initMediaSize(Ljava/io/InputStream;)V
    .locals 7
    .param p1, "input"    # Ljava/io/InputStream;

    .prologue
    .line 100
    :try_start_0
    instance-of v4, p1, Ljava/io/FileInputStream;

    if-eqz v4, :cond_1

    .line 102
    move-object v0, p1

    check-cast v0, Ljava/io/FileInputStream;

    move-object v2, v0

    .line 103
    .local v2, "f":Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 104
    .local v3, "fc":Ljava/nio/channels/FileChannel;
    if-eqz v3, :cond_1

    .line 105
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, p0, Lcom/android/mms/model/OtherAttachModel;->mSize:I

    .line 106
    iget v4, p0, Lcom/android/mms/model/OtherAttachModel;->mSize:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v4, :cond_1

    .line 117
    if-eqz p1, :cond_0

    .line 119
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 125
    .end local v2    # "f":Ljava/io/FileInputStream;
    .end local v3    # "fc":Ljava/nio/channels/FileChannel;
    :cond_0
    :goto_0
    return-void

    .line 120
    .restart local v2    # "f":Ljava/io/FileInputStream;
    .restart local v3    # "fc":Ljava/nio/channels/FileChannel;
    :catch_0
    move-exception v1

    .line 121
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "OtherAttachmodel"

    const-string v5, "IOException caught while closing stream"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 111
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "f":Ljava/io/FileInputStream;
    .end local v3    # "fc":Ljava/nio/channels/FileChannel;
    :cond_1
    :goto_1
    const/4 v4, -0x1

    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 112
    iget v4, p0, Lcom/android/mms/model/OtherAttachModel;->mSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/mms/model/OtherAttachModel;->mSize:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 114
    :catch_1
    move-exception v1

    .line 115
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_3
    const-string v4, "OtherAttachmodel"

    const-string v5, "IOException caught while opening or reading stream"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 117
    if-eqz p1, :cond_0

    .line 119
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 120
    :catch_2
    move-exception v1

    .line 121
    const-string v4, "OtherAttachmodel"

    const-string v5, "IOException caught while closing stream"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 117
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    if-eqz p1, :cond_0

    .line 119
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 120
    :catch_3
    move-exception v1

    .line 121
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v4, "OtherAttachmodel"

    const-string v5, "IOException caught while closing stream"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 117
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz p1, :cond_3

    .line 119
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 122
    :cond_3
    :goto_2
    throw v4

    .line 120
    :catch_4
    move-exception v1

    .line 121
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v5, "OtherAttachmodel"

    const-string v6, "IOException caught while closing stream"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method protected initModelFromFileUri()V
    .locals 5

    .prologue
    .line 85
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/android/mms/model/OtherAttachModel;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/model/OtherAttachModel;->mName:Ljava/lang/String;

    .line 87
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 88
    .local v2, "input":Ljava/io/InputStream;
    invoke-virtual {p0, v2}, Lcom/android/mms/model/OtherAttachModel;->initMediaSize(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "input":Ljava/io/InputStream;
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v3, "OtherAttachmodel"

    const-string v4, "File not found!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected initModelFromSqlUri()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method protected initModelFromUri()V
    .locals 2

    .prologue
    .line 75
    iget-object v1, p0, Lcom/android/mms/model/OtherAttachModel;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "scheme":Ljava/lang/String;
    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/android/mms/model/OtherAttachModel;->initModelFromSqlUri()V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/android/mms/model/OtherAttachModel;->initModelFromFileUri()V

    goto :goto_0
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/mms/model/OtherAttachModel;->mUri:Landroid/net/Uri;

    .line 141
    return-void
.end method
