.class public Lcom/android/mms/model/VcardModel;
.super Lcom/android/mms/model/MediaModel;
.source "VcardModel.java"


# instance fields
.field private mLookupUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0, v0, p2}, Lcom/android/mms/model/VcardModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 56
    invoke-direct {p0, p2}, Lcom/android/mms/model/VcardModel;->initModelFromUri(Landroid/net/Uri;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "src"    # Ljava/lang/String;
    .param p4, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 61
    const-string v2, "ref"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/model/MediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/model/VcardModel;->mLookupUri:Ljava/lang/String;

    .line 62
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    invoke-direct {p0, p4}, Lcom/android/mms/model/VcardModel;->initLookupUri(Landroid/net/Uri;)V

    .line 65
    :cond_0
    return-void
.end method

.method private initLookupUri(Landroid/net/Uri;)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 121
    invoke-static {p1}, Lcom/android/mms/model/VcardModel;->isMmsUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "cr":Landroid/content/ContentResolver;
    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 123
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 125
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    const-string v1, "cd"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/model/VcardModel;->mLookupUri:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :cond_0
    if-eqz v6, :cond_1

    .line 130
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 131
    const/4 v6, 0x0

    .line 135
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    return-void

    .line 129
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v6    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 130
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 131
    const/4 v6, 0x0

    :cond_2
    throw v1
.end method

.method private initModelFromUri(Landroid/net/Uri;)V
    .locals 13
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 68
    const-string v2, "text/x-vCard"

    iput-object v2, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v12

    .line 71
    .local v12, "scheme":Ljava/lang/String;
    if-nez v12, :cond_0

    .line 72
    const-string v2, "Mms/media"

    const-string v3, "The uri\'s scheme is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :goto_0
    return-void

    .line 76
    :cond_0
    const-string v2, "file"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 80
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd_HHmmss"

    invoke-direct {v8, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 81
    .local v8, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    .line 82
    .local v7, "currentDateString":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vcards_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".vcf"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    .line 117
    .end local v7    # "currentDateString":Ljava/lang/String;
    .end local v8    # "dateFormat":Ljava/text/SimpleDateFormat;
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/model/VcardModel;->initMediaDuration()V

    goto :goto_0

    .line 83
    :cond_2
    const-string v2, "content"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    iget-object v2, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 85
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 87
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-static {p1}, Lcom/android/mms/model/VcardModel;->isMmsUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 88
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 89
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 90
    const-string v2, "_data"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 91
    .local v11, "path":Ljava/lang/String;
    const-string v2, "cd"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/model/VcardModel;->mLookupUri:Ljava/lang/String;

    .line 92
    const/16 v2, 0x2f

    invoke-virtual {v11, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v11, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    .end local v11    # "path":Ljava/lang/String;
    :cond_3
    :goto_2
    if-eqz v6, :cond_6

    .line 110
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 111
    const/4 v6, 0x0

    goto :goto_1

    .line 95
    :cond_4
    :try_start_1
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    .line 98
    .local v10, "lookup":Ljava/lang/String;
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_MULTI_VCARD_URI:Landroid/net/Uri;

    invoke-static {v2, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 99
    .local v1, "lookupUri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/model/VcardModel;->mLookupUri:Ljava/lang/String;

    .line 100
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 101
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 102
    const-string v2, "_display_name"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 103
    .local v9, "displayName":Ljava/lang/String;
    iput-object v9, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 109
    .end local v1    # "lookupUri":Landroid/net/Uri;
    .end local v9    # "displayName":Ljava/lang/String;
    .end local v10    # "lookup":Ljava/lang/String;
    :catchall_0
    move-exception v2

    if-eqz v6, :cond_7

    .line 110
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 111
    const/4 v6, 0x0

    .line 113
    throw v2

    .line 105
    .restart local v1    # "lookupUri":Landroid/net/Uri;
    .restart local v10    # "lookup":Ljava/lang/String;
    :cond_5
    :try_start_2
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string v3, "Type of media is unknown."

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    .end local v1    # "lookupUri":Landroid/net/Uri;
    .end local v10    # "lookup":Ljava/lang/String;
    :cond_6
    new-instance v2, Lcom/google/android/mms/MmsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    new-instance v2, Lcom/google/android/mms/MmsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public getLookupUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/mms/model/VcardModel;->mLookupUri:Ljava/lang/String;

    return-object v0
.end method

.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .locals 0
    .param p1, "evt"    # Lorg/w3c/dom/events/Event;

    .prologue
    .line 143
    return-void
.end method

.method protected initMediaDuration()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 152
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/model/MediaModel;->mDuration:I

    .line 153
    return-void
.end method

.method protected isPlayable()Z
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method
