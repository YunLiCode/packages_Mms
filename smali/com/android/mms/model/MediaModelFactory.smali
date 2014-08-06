.class public Lcom/android/mms/model/MediaModelFactory;
.super Ljava/lang/Object;
.source "MediaModelFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createEmptyTextModel(Landroid/content/Context;Lcom/android/mms/model/RegionModel;)Lcom/android/mms/model/MediaModel;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "regionModel"    # Lcom/android/mms/model/RegionModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    new-instance v0, Lcom/android/mms/model/TextModel;

    const-string v1, "text/plain"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    return-object v0
.end method

.method private static findPart(Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;I)Lcom/google/android/mms/pdu/PduPart;
    .locals 5
    .param p0, "pb"    # Lcom/google/android/mms/pdu/PduBody;
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 62
    const/4 v0, 0x0

    .line 64
    .local v0, "part":Lcom/google/android/mms/pdu/PduPart;
    if-eqz p1, :cond_0

    .line 65
    invoke-static {p1}, Lcom/android/mms/model/MediaModelFactory;->unescapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 66
    const-string v2, "cid:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cid:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentId(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    .line 86
    :cond_0
    :goto_0
    const-string v2, "Mms:media"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findPart part ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    if-eqz v0, :cond_2

    move-object v1, v0

    .line 96
    .end local v0    # "part":Lcom/google/android/mms/pdu/PduPart;
    .local v1, "part":Lcom/google/android/mms/pdu/PduPart;
    :goto_1
    return-object v1

    .line 69
    .end local v1    # "part":Lcom/google/android/mms/pdu/PduPart;
    .restart local v0    # "part":Lcom/google/android/mms/pdu/PduPart;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduBody;->getPartByName(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    .line 70
    if-nez v0, :cond_0

    .line 71
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduBody;->getPartByFileName(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    .line 72
    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentLocation(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    .line 75
    if-nez v0, :cond_0

    .line 76
    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentLocation(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    .line 77
    if-nez v0, :cond_0

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentId(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    goto :goto_0

    .line 91
    :cond_2
    const-string v2, "Mms:media"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findPart index ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " parts num = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v2

    if-ge p2, v2, :cond_3

    .line 95
    invoke-virtual {p0, p2}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    move-object v1, v0

    .line 96
    .end local v0    # "part":Lcom/google/android/mms/pdu/PduPart;
    .restart local v1    # "part":Lcom/google/android/mms/pdu/PduPart;
    goto :goto_1

    .line 99
    .end local v1    # "part":Lcom/google/android/mms/pdu/PduPart;
    .restart local v0    # "part":Lcom/google/android/mms/pdu/PduPart;
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No part found for the model."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static getGenericMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/google/android/mms/pdu/PduPart;Lcom/android/mms/model/RegionModel;)Lcom/android/mms/model/MediaModel;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "src"    # Ljava/lang/String;
    .param p3, "sme"    # Lorg/w3c/dom/smil/SMILMediaElement;
    .param p4, "part"    # Lcom/google/android/mms/pdu/PduPart;
    .param p5, "regionModel"    # Lcom/android/mms/model/RegionModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v11

    .line 148
    .local v11, "bytes":[B
    if-nez v11, :cond_0

    .line 149
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Content-Type of the part may not be null."

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 153
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v11}, Ljava/lang/String;-><init>([B)V

    .line 154
    .local v3, "contentType":Ljava/lang/String;
    const/4 v1, 0x0

    .line 155
    .local v1, "media":Lcom/android/mms/model/MediaModel;
    const-string v2, "text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 156
    new-instance v1, Lcom/android/mms/model/TextModel;

    .end local v1    # "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v5

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v6

    move-object v2, p0

    move-object/from16 v4, p2

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[BLcom/android/mms/model/RegionModel;)V

    .line 212
    .restart local v1    # "media":Lcom/android/mms/model/MediaModel;
    :cond_1
    :goto_0
    const/4 v10, 0x0

    .line 213
    .local v10, "begin":I
    invoke-interface/range {p3 .. p3}, Lorg/w3c/dom/smil/SMILMediaElement;->getBegin()Lorg/w3c/dom/smil/TimeList;

    move-result-object v14

    .line 214
    .local v14, "tl":Lorg/w3c/dom/smil/TimeList;
    if-eqz v14, :cond_2

    invoke-interface {v14}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result v2

    if-lez v2, :cond_2

    .line 216
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v13

    .line 217
    .local v13, "t":Lorg/w3c/dom/smil/Time;
    invoke-interface {v13}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L

    mul-double/2addr v4, v6

    double-to-int v10, v4

    .line 219
    .end local v13    # "t":Lorg/w3c/dom/smil/Time;
    :cond_2
    invoke-virtual {v1, v10}, Lcom/android/mms/model/MediaModel;->setBegin(I)V

    .line 222
    invoke-interface/range {p3 .. p3}, Lorg/w3c/dom/smil/SMILMediaElement;->getDur()F

    move-result v2

    const/high16 v4, 0x447a0000

    mul-float/2addr v2, v4

    float-to-int v12, v2

    .line 223
    .local v12, "duration":I
    if-gtz v12, :cond_4

    .line 224
    invoke-interface/range {p3 .. p3}, Lorg/w3c/dom/smil/SMILMediaElement;->getEnd()Lorg/w3c/dom/smil/TimeList;

    move-result-object v14

    .line 225
    if-eqz v14, :cond_4

    invoke-interface {v14}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result v2

    if-lez v2, :cond_4

    .line 227
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v13

    .line 228
    .restart local v13    # "t":Lorg/w3c/dom/smil/Time;
    invoke-interface {v13}, Lorg/w3c/dom/smil/Time;->getTimeType()S

    move-result v2

    if-eqz v2, :cond_4

    .line 229
    invoke-interface {v13}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L

    mul-double/2addr v4, v6

    double-to-int v2, v4

    sub-int v12, v2, v10

    .line 231
    if-nez v12, :cond_4

    instance-of v2, v1, Lcom/android/mms/model/AudioModel;

    if-nez v2, :cond_3

    instance-of v2, v1, Lcom/android/mms/model/VideoModel;

    if-eqz v2, :cond_4

    .line 233
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v12

    .line 234
    const-string v2, "Mms:app"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 235
    const-string v2, "Mms:media"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MediaModelFactory] compute new duration for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", duration="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    .end local v13    # "t":Lorg/w3c/dom/smil/Time;
    :cond_4
    invoke-virtual {v1, v12}, Lcom/android/mms/model/MediaModel;->setDuration(I)V

    .line 245
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSlideDurationEnabled()Z

    move-result v2

    if-nez v2, :cond_12

    .line 252
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/model/MediaModel;->setFill(S)V

    .line 257
    :goto_1
    return-object v1

    .line 158
    .end local v10    # "begin":I
    .end local v12    # "duration":I
    .end local v14    # "tl":Lorg/w3c/dom/smil/TimeList;
    :cond_5
    const-string v2, "img"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 159
    new-instance v1, Lcom/android/mms/model/ImageModel;

    .end local v1    # "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v5

    move-object v2, p0

    move-object/from16 v4, p2

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .restart local v1    # "media":Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 161
    :cond_6
    const-string v2, "video"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 162
    new-instance v1, Lcom/android/mms/model/VideoModel;

    .end local v1    # "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v5

    move-object v2, p0

    move-object/from16 v4, p2

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .restart local v1    # "media":Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 164
    :cond_7
    const-string v2, "audio"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 165
    new-instance v1, Lcom/android/mms/model/AudioModel;

    .end local v1    # "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-direct {v1, p0, v3, v0, v2}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 169
    .restart local v1    # "media":Lcom/android/mms/model/MediaModel;
    const-string v2, "artist"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Lorg/w3c/dom/smil/SMILMediaElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 170
    .local v9, "artist":Ljava/lang/String;
    const-string v2, "album"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Lorg/w3c/dom/smil/SMILMediaElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 171
    .local v8, "album":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    move-object v2, v1

    .line 172
    check-cast v2, Lcom/android/mms/model/AudioModel;

    invoke-virtual {v2}, Lcom/android/mms/model/AudioModel;->getExtras()Ljava/util/Map;

    move-result-object v2

    const-string v4, "artist"

    invoke-static {v9}, Lcom/android/mms/model/MediaModelFactory;->unescapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :cond_8
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v1

    .line 175
    check-cast v2, Lcom/android/mms/model/AudioModel;

    invoke-virtual {v2}, Lcom/android/mms/model/AudioModel;->getExtras()Ljava/util/Map;

    move-result-object v2

    const-string v4, "album"

    invoke-static {v8}, Lcom/android/mms/model/MediaModelFactory;->unescapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 177
    .end local v8    # "album":Ljava/lang/String;
    .end local v9    # "artist":Ljava/lang/String;
    :cond_9
    const-string v2, "ref"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 178
    invoke-static {v3}, Lcom/google/android/mms/ContentType;->isTextType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v4, "text/x-vCard"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 180
    new-instance v1, Lcom/android/mms/model/TextModel;

    .end local v1    # "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v5

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v6

    move-object v2, p0

    move-object/from16 v4, p2

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[BLcom/android/mms/model/RegionModel;)V

    .restart local v1    # "media":Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 182
    :cond_a
    invoke-static {v3}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 183
    new-instance v1, Lcom/android/mms/model/ImageModel;

    .end local v1    # "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v5

    move-object v2, p0

    move-object/from16 v4, p2

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .restart local v1    # "media":Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 185
    :cond_b
    invoke-static {v3}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 186
    new-instance v1, Lcom/android/mms/model/VideoModel;

    .end local v1    # "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v5

    move-object v2, p0

    move-object/from16 v4, p2

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .restart local v1    # "media":Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 188
    :cond_c
    invoke-static {v3}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 189
    new-instance v1, Lcom/android/mms/model/AudioModel;

    .end local v1    # "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-direct {v1, p0, v3, v0, v2}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v1    # "media":Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 191
    :cond_d
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v4, "text/x-vCard"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, ".vcf"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 192
    :cond_e
    new-instance v1, Lcom/android/mms/model/VcardModel;

    .end local v1    # "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-direct {v1, p0, v3, v0, v2}, Lcom/android/mms/model/VcardModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 194
    .restart local v1    # "media":Lcom/android/mms/model/MediaModel;
    const-string v2, "text/x-vCard"

    iput-object v2, v1, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    goto/16 :goto_0

    .line 196
    :cond_f
    const-string v2, "Mms:media"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MediaModelFactory] getGenericMediaModel Unsupported Content-Type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    move-object/from16 v0, p5

    invoke-static {p0, v0}, Lcom/android/mms/model/MediaModelFactory;->createEmptyTextModel(Landroid/content/Context;Lcom/android/mms/model/RegionModel;)Lcom/android/mms/model/MediaModel;

    move-result-object v1

    goto/16 :goto_0

    .line 200
    :cond_10
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v4, "vcard"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 205
    new-instance v1, Lcom/android/mms/model/VcardModel;

    .end local v1    # "media":Lcom/android/mms/model/MediaModel;
    const-string v2, "text/x-vCard"

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-direct {v1, p0, v2, v0, v4}, Lcom/android/mms/model/VcardModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v1    # "media":Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 208
    :cond_11
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported TAG: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 255
    .restart local v10    # "begin":I
    .restart local v12    # "duration":I
    .restart local v14    # "tl":Lorg/w3c/dom/smil/TimeList;
    :cond_12
    invoke-interface/range {p3 .. p3}, Lorg/w3c/dom/smil/SMILMediaElement;->getFill()S

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/mms/model/MediaModel;->setFill(S)V

    goto/16 :goto_1
.end method

.method public static getMediaModel(Landroid/content/Context;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduBody;I)Lcom/android/mms/model/MediaModel;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sme"    # Lorg/w3c/dom/smil/SMILMediaElement;
    .param p2, "layouts"    # Lcom/android/mms/model/LayoutModel;
    .param p3, "pb"    # Lcom/google/android/mms/pdu/PduBody;
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-interface {p1}, Lorg/w3c/dom/smil/SMILMediaElement;->getTagName()Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, "tag":Ljava/lang/String;
    invoke-interface {p1}, Lorg/w3c/dom/smil/SMILMediaElement;->getSrc()Ljava/lang/String;

    move-result-object v4

    .line 47
    .local v4, "src":Ljava/lang/String;
    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v0, v4, v1}, Lcom/android/mms/model/MediaModelFactory;->findPart(Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v7

    .line 48
    .local v7, "part":Lcom/google/android/mms/pdu/PduPart;
    if-eqz v7, :cond_0

    .line 49
    const-string v2, "Mms:media"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMediaModel generateLocation ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    instance-of v2, p1, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    if-eqz v2, :cond_1

    move-object v5, p1

    .line 53
    check-cast v5, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    move-object v2, p0

    move-object/from16 v6, p2

    invoke-static/range {v2 .. v7}, Lcom/android/mms/model/MediaModelFactory;->getRegionMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILRegionMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduPart;)Lcom/android/mms/model/MediaModel;

    move-result-object v2

    .line 56
    :goto_0
    return-object v2

    :cond_1
    const/4 v13, 0x0

    move-object v8, p0

    move-object v9, v3

    move-object v10, v4

    move-object v11, p1

    move-object v12, v7

    invoke-static/range {v8 .. v13}, Lcom/android/mms/model/MediaModelFactory;->getGenericMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/google/android/mms/pdu/PduPart;Lcom/android/mms/model/RegionModel;)Lcom/android/mms/model/MediaModel;

    move-result-object v2

    goto :goto_0
.end method

.method private static getRegionMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILRegionMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduPart;)Lcom/android/mms/model/MediaModel;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "src"    # Ljava/lang/String;
    .param p3, "srme"    # Lorg/w3c/dom/smil/SMILRegionMediaElement;
    .param p4, "layouts"    # Lcom/android/mms/model/LayoutModel;
    .param p5, "part"    # Lcom/google/android/mms/pdu/PduPart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-interface {p3}, Lorg/w3c/dom/smil/SMILRegionMediaElement;->getRegion()Lorg/w3c/dom/smil/SMILRegionElement;

    move-result-object v7

    .line 114
    .local v7, "sre":Lorg/w3c/dom/smil/SMILRegionElement;
    if-eqz v7, :cond_0

    .line 115
    invoke-interface {v7}, Lorg/w3c/dom/smil/SMILRegionElement;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/android/mms/model/LayoutModel;->findRegionById(Ljava/lang/String;)Lcom/android/mms/model/RegionModel;

    move-result-object v5

    .line 116
    .local v5, "region":Lcom/android/mms/model/RegionModel;
    if-eqz v5, :cond_2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    .line 117
    invoke-static/range {v0 .. v5}, Lcom/android/mms/model/MediaModelFactory;->getGenericMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/google/android/mms/pdu/PduPart;Lcom/android/mms/model/RegionModel;)Lcom/android/mms/model/MediaModel;

    move-result-object v0

    .line 130
    :goto_0
    return-object v0

    .line 120
    .end local v5    # "region":Lcom/android/mms/model/RegionModel;
    :cond_0
    const/4 v6, 0x0

    .line 122
    .local v6, "rId":Ljava/lang/String;
    const-string v0, "text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    const-string v6, "Text"

    .line 128
    :goto_1
    invoke-virtual {p4, v6}, Lcom/android/mms/model/LayoutModel;->findRegionById(Ljava/lang/String;)Lcom/android/mms/model/RegionModel;

    move-result-object v5

    .line 129
    .restart local v5    # "region":Lcom/android/mms/model/RegionModel;
    if-eqz v5, :cond_2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    .line 130
    invoke-static/range {v0 .. v5}, Lcom/android/mms/model/MediaModelFactory;->getGenericMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/google/android/mms/pdu/PduPart;Lcom/android/mms/model/RegionModel;)Lcom/android/mms/model/MediaModel;

    move-result-object v0

    goto :goto_0

    .line 125
    .end local v5    # "region":Lcom/android/mms/model/RegionModel;
    :cond_1
    const-string v6, "Image"

    goto :goto_1

    .line 134
    .end local v6    # "rId":Ljava/lang/String;
    .restart local v5    # "region":Lcom/android/mms/model/RegionModel;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Region not found or bad region ID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static unescapeXML(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 103
    const-string v0, "&lt;"

    const-string v1, "<"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&gt;"

    const-string v2, ">"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&quot;"

    const-string v2, "\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&apos;"

    const-string v2, "\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&amp;"

    const-string v2, "&"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
