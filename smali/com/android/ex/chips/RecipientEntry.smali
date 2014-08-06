.class public Lcom/android/ex/chips/RecipientEntry;
.super Ljava/lang/Object;
.source "RecipientEntry.java"


# instance fields
.field private final mContactId:J

.field private final mDataId:J

.field private final mDestination:Ljava/lang/String;

.field private final mDestinationLabel:Ljava/lang/String;

.field private final mDestinationType:I

.field private final mDisplayName:Ljava/lang/String;

.field private final mEntryType:I

.field private final mIsDivider:Z

.field private mIsFirstLevel:Z

.field private mIsValid:Z

.field private mPhotoBytes:[B

.field private final mPhotoThumbnailUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLandroid/net/Uri;ZZ)V
    .locals 1
    .param p1, "entryType"    # I
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "destination"    # Ljava/lang/String;
    .param p4, "destinationType"    # I
    .param p5, "destinationLabel"    # Ljava/lang/String;
    .param p6, "contactId"    # J
    .param p8, "dataId"    # J
    .param p10, "photoThumbnailUri"    # Landroid/net/Uri;
    .param p11, "isFirstLevel"    # Z
    .param p12, "isValid"    # Z

    .prologue
    .line 79
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput p1, p0, Lcom/android/ex/chips/RecipientEntry;->mEntryType:I

    .line 81
    iput-boolean p11, p0, Lcom/android/ex/chips/RecipientEntry;->mIsFirstLevel:Z

    .line 82
    iput-object p2, p0, Lcom/android/ex/chips/RecipientEntry;->mDisplayName:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lcom/android/ex/chips/RecipientEntry;->mDestination:Ljava/lang/String;

    .line 84
    iput p4, p0, Lcom/android/ex/chips/RecipientEntry;->mDestinationType:I

    .line 85
    iput-object p5, p0, Lcom/android/ex/chips/RecipientEntry;->mDestinationLabel:Ljava/lang/String;

    .line 86
    iput-wide p6, p0, Lcom/android/ex/chips/RecipientEntry;->mContactId:J

    .line 87
    iput-wide p8, p0, Lcom/android/ex/chips/RecipientEntry;->mDataId:J

    .line 88
    iput-object p10, p0, Lcom/android/ex/chips/RecipientEntry;->mPhotoThumbnailUri:Landroid/net/Uri;

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEntry;->mPhotoBytes:[B

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ex/chips/RecipientEntry;->mIsDivider:Z

    .line 91
    iput-boolean p12, p0, Lcom/android/ex/chips/RecipientEntry;->mIsValid:Z

    .line 92
    return-void
.end method

.method public static constructFakeEntry(Ljava/lang/String;Z)Lcom/android/ex/chips/RecipientEntry;
    .locals 14
    .param p0, "address"    # Ljava/lang/String;
    .param p1, "isValid"    # Z

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 112
    invoke-static {p0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v13

    .line 113
    .local v13, "tokens":[Landroid/text/util/Rfc822Token;
    array-length v0, v13

    if-lez v0, :cond_0

    aget-object v0, v13, v1

    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "tokenizedAddress":Ljava/lang/String;
    :goto_0
    new-instance v0, Lcom/android/ex/chips/RecipientEntry;

    const/4 v4, -0x1

    const/4 v11, 0x1

    move-object v3, v2

    move-wide v8, v6

    move-object v10, v5

    move v12, p1

    invoke-direct/range {v0 .. v12}, Lcom/android/ex/chips/RecipientEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLandroid/net/Uri;ZZ)V

    return-object v0

    .end local v2    # "tokenizedAddress":Ljava/lang/String;
    :cond_0
    move-object v2, p0

    .line 113
    goto :goto_0
.end method

.method public static constructFakePhoneEntry(Ljava/lang/String;Z)Lcom/android/ex/chips/RecipientEntry;
    .locals 13
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "isValid"    # Z

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, 0x0

    .line 125
    new-instance v0, Lcom/android/ex/chips/RecipientEntry;

    const/4 v1, 0x0

    const/4 v4, -0x1

    const/4 v11, 0x1

    move-object v2, p0

    move-object v3, p0

    move-wide v8, v6

    move-object v10, v5

    move v12, p1

    invoke-direct/range {v0 .. v12}, Lcom/android/ex/chips/RecipientEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLandroid/net/Uri;ZZ)V

    return-object v0
.end method

.method public static constructGeneratedEntry(Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/ex/chips/RecipientEntry;
    .locals 13
    .param p0, "display"    # Ljava/lang/String;
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "isValid"    # Z

    .prologue
    const-wide/16 v6, -0x2

    const/4 v5, 0x0

    .line 148
    new-instance v0, Lcom/android/ex/chips/RecipientEntry;

    const/4 v1, 0x0

    const/4 v4, -0x1

    const/4 v11, 0x1

    move-object v2, p0

    move-object v3, p1

    move-wide v8, v6

    move-object v10, v5

    move v12, p2

    invoke-direct/range {v0 .. v12}, Lcom/android/ex/chips/RecipientEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLandroid/net/Uri;ZZ)V

    return-object v0
.end method

.method public static constructSecondLevelEntry(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JJLjava/lang/String;Z)Lcom/android/ex/chips/RecipientEntry;
    .locals 13
    .param p0, "displayName"    # Ljava/lang/String;
    .param p1, "displayNameSource"    # I
    .param p2, "destination"    # Ljava/lang/String;
    .param p3, "destinationType"    # I
    .param p4, "destinationLabel"    # Ljava/lang/String;
    .param p5, "contactId"    # J
    .param p7, "dataId"    # J
    .param p9, "thumbnailUriAsString"    # Ljava/lang/String;
    .param p10, "isValid"    # Z

    .prologue
    .line 173
    new-instance v0, Lcom/android/ex/chips/RecipientEntry;

    const/4 v1, 0x0

    invoke-static {p1, p0, p2}, Lcom/android/ex/chips/RecipientEntry;->pickDisplayName(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz p9, :cond_0

    invoke-static/range {p9 .. p9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    :goto_0
    const/4 v11, 0x0

    move-object v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v12, p10

    invoke-direct/range {v0 .. v12}, Lcom/android/ex/chips/RecipientEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLandroid/net/Uri;ZZ)V

    return-object v0

    :cond_0
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public static constructTopLevelEntry(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JJLjava/lang/String;Z)Lcom/android/ex/chips/RecipientEntry;
    .locals 13
    .param p0, "displayName"    # Ljava/lang/String;
    .param p1, "displayNameSource"    # I
    .param p2, "destination"    # Ljava/lang/String;
    .param p3, "destinationType"    # I
    .param p4, "destinationLabel"    # Ljava/lang/String;
    .param p5, "contactId"    # J
    .param p7, "dataId"    # J
    .param p9, "thumbnailUriAsString"    # Ljava/lang/String;
    .param p10, "isValid"    # Z

    .prologue
    .line 163
    new-instance v0, Lcom/android/ex/chips/RecipientEntry;

    const/4 v1, 0x0

    invoke-static {p1, p0, p2}, Lcom/android/ex/chips/RecipientEntry;->pickDisplayName(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz p9, :cond_0

    invoke-static/range {p9 .. p9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    :goto_0
    const/4 v11, 0x1

    move-object v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v12, p10

    invoke-direct/range {v0 .. v12}, Lcom/android/ex/chips/RecipientEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLandroid/net/Uri;ZZ)V

    return-object v0

    :cond_0
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public static isCreatedRecipient(J)Z
    .locals 2
    .param p0, "id"    # J

    .prologue
    .line 103
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x2

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static pickDisplayName(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "displayNameSource"    # I
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/lang/String;

    .prologue
    .line 138
    const/16 v0, 0x14

    if-le p0, v0, :cond_0

    .end local p1    # "displayName":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "displayName":Ljava/lang/String;
    :cond_0
    move-object p1, p2

    goto :goto_0
.end method


# virtual methods
.method public getContactId()J
    .locals 2

    .prologue
    .line 200
    iget-wide v0, p0, Lcom/android/ex/chips/RecipientEntry;->mContactId:J

    return-wide v0
.end method

.method public getDataId()J
    .locals 2

    .prologue
    .line 204
    iget-wide v0, p0, Lcom/android/ex/chips/RecipientEntry;->mDataId:J

    return-wide v0
.end method

.method public getDestination()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEntry;->mDestination:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEntry;->mDestinationLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationType()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/android/ex/chips/RecipientEntry;->mDestinationType:I

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEntry;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEntryType()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/android/ex/chips/RecipientEntry;->mEntryType:I

    return v0
.end method

.method public declared-synchronized getPhotoBytes()[B
    .locals 1

    .prologue
    .line 222
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEntry;->mPhotoBytes:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPhotoThumbnailUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEntry;->mPhotoThumbnailUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isFirstLevel()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/android/ex/chips/RecipientEntry;->mIsFirstLevel:Z

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/android/ex/chips/RecipientEntry;->mEntryType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/ex/chips/RecipientEntry;->mIsValid:Z

    return v0
.end method

.method public declared-synchronized setPhotoBytes([B)V
    .locals 1
    .param p1, "photoBytes"    # [B

    .prologue
    .line 217
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEntry;->mPhotoBytes:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    monitor-exit p0

    return-void

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEntry;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEntry;->mDestination:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">, isValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/ex/chips/RecipientEntry;->mIsValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
