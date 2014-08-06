.class public Lcom/android/mms/MessageTemplateProvider;
.super Landroid/content/ContentProvider;
.source "MessageTemplateProvider.java"


# static fields
.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mLocale:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 87
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/mms/MessageTemplateProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 88
    sget-object v0, Lcom/android/mms/MessageTemplateProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.mms.MessageTemplateProvider"

    const-string v2, "messages"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 89
    sget-object v0, Lcom/android/mms/MessageTemplateProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.mms.MessageTemplateProvider"

    const-string v2, "messages/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 90
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/MessageTemplateProvider;->mLocale:Ljava/lang/String;

    .line 94
    return-void
.end method

.method private updateXML()V
    .locals 12

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/android/mms/MessageTemplateProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f060003

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 270
    .local v9, "smsTempPreArray":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/mms/MessageTemplateProvider;->getXMLDoc()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 271
    .local v0, "doc":Lorg/w3c/dom/Document;
    if-nez v0, :cond_1

    .line 273
    const-string v10, "MessageTemplateProvider"

    const-string v11, "query: get XML documnet failed!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_0
    return-void

    .line 276
    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v8

    .line 277
    .local v8, "root":Lorg/w3c/dom/Element;
    const-string v10, "message"

    invoke-interface {v8, v10}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 278
    .local v4, "lists":Lorg/w3c/dom/NodeList;
    const-string v10, "preDefineNumState"

    invoke-interface {v8, v10}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 280
    .local v7, "preDefineNumStateLists":Lorg/w3c/dom/NodeList;
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 281
    .local v3, "listLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v10, 0x4

    if-ge v1, v10, :cond_0

    if-ge v1, v3, :cond_0

    .line 282
    const-string v10, "message"

    invoke-interface {v8, v10}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 283
    invoke-interface {v7, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 284
    .local v6, "nodeState":Lorg/w3c/dom/Node;
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "modify"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 285
    invoke-interface {v4, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 286
    .local v5, "node":Lorg/w3c/dom/Node;
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 287
    .local v2, "index":I
    aget-object v10, v9, v2

    invoke-interface {v5, v10}, Lorg/w3c/dom/Node;->setTextContent(Ljava/lang/String;)V

    .line 289
    .end local v2    # "index":I
    .end local v5    # "node":Lorg/w3c/dom/Node;
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/mms/MessageTemplateProvider;->saveXMLDoc(Lorg/w3c/dom/Document;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 291
    const-string v10, "MessageTemplateProvider"

    const-string v11, "update: save XML file failed!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method CreateMessageTemplateXML()Z
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 399
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    .line 400
    .local v2, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v5, Ljava/io/StringWriter;

    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V

    .line 403
    .local v5, "writer":Ljava/io/StringWriter;
    :try_start_0
    invoke-interface {v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 405
    const-string v8, "UTF-8"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v2, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 407
    const-string v8, ""

    const-string v9, "MessageTemplate"

    invoke-interface {v2, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 410
    invoke-virtual {p0}, Lcom/android/mms/MessageTemplateProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060003

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 413
    .local v3, "smsTempPreArray":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v8, v3

    if-ge v1, v8, :cond_0

    .line 414
    const-string v8, ""

    const-string v9, "message"

    invoke-interface {v2, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 415
    aget-object v8, v3, v1

    invoke-interface {v2, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 416
    const-string v8, ""

    const-string v9, "message"

    invoke-interface {v2, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 413
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 419
    :cond_0
    const/4 v1, 0x0

    :goto_1
    const/4 v8, 0x4

    if-ge v1, v8, :cond_1

    .line 420
    const-string v8, ""

    const-string v9, "preDefineNumState"

    invoke-interface {v2, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 421
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 422
    const-string v8, ""

    const-string v9, "preDefineNumState"

    invoke-interface {v2, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 419
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 425
    :cond_1
    const-string v8, ""

    const-string v9, "MessageTemplate"

    invoke-interface {v2, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 426
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    const/4 v4, 0x0

    .line 435
    .local v4, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p0}, Lcom/android/mms/MessageTemplateProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "message_template.xml"

    const/4 v10, 0x2

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 445
    :try_start_2
    invoke-virtual {v5}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 446
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 454
    .end local v1    # "i":I
    .end local v3    # "smsTempPreArray":[Ljava/lang/String;
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    :goto_2
    return v6

    .line 427
    :catch_0
    move-exception v0

    .line 429
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "MessageTemplateProvider"

    const-string v8, "CreateMessageTemplateXML occurs exception!"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 430
    goto :goto_2

    .line 436
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "i":I
    .restart local v3    # "smsTempPreArray":[Ljava/lang/String;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 438
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 440
    const-string v6, "MessageTemplateProvider"

    const-string v8, "CreateMessageTemplateXML occurs exception!"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 441
    goto :goto_2

    .line 447
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 449
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 451
    const-string v6, "MessageTemplateProvider"

    const-string v8, "CreateMessageTemplateXML occurs exception!"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 452
    goto :goto_2
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 99
    sget-object v10, Lcom/android/mms/MessageTemplateProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v10, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_0

    .line 101
    const-string v10, "MessageTemplateProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "delete: Uri:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " not match!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v10, -0x1

    .line 138
    :goto_0
    return v10

    .line 104
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 105
    .local v0, "_id":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 106
    .local v3, "id":I
    const-string v10, "Emmet"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {p0}, Lcom/android/mms/MessageTemplateProvider;->getXMLDoc()Lorg/w3c/dom/Document;

    move-result-object v1

    .line 108
    .local v1, "doc":Lorg/w3c/dom/Document;
    if-nez v1, :cond_1

    .line 110
    const-string v10, "MessageTemplateProvider"

    const-string v11, "delete: Get XML Document failded!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v10, -0x1

    goto :goto_0

    .line 113
    :cond_1
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v9

    .line 115
    .local v9, "root":Lorg/w3c/dom/Element;
    const-string v10, "message"

    invoke-interface {v9, v10}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 116
    .local v4, "lists":Lorg/w3c/dom/NodeList;
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v3, v10, :cond_2

    if-gez v3, :cond_3

    .line 118
    :cond_2
    const-string v10, "MessageTemplateProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "delete: id="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " nodelist length="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v10, -0x1

    goto :goto_0

    .line 121
    :cond_3
    const/4 v10, 0x4

    if-ge v3, v10, :cond_5

    .line 122
    const-string v10, "preDefineNumState"

    invoke-interface {v9, v10}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 124
    .local v8, "preDefineNumStateLists":Lorg/w3c/dom/NodeList;
    move v2, v3

    .local v2, "i":I
    :goto_1
    const/4 v10, 0x3

    if-ge v2, v10, :cond_4

    .line 125
    invoke-interface {v8, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 126
    .local v7, "nodeState":Lorg/w3c/dom/Node;
    add-int/lit8 v10, v2, 0x1

    invoke-interface {v8, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 127
    .local v5, "nextNodeState":Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Lorg/w3c/dom/Node;->setTextContent(Ljava/lang/String;)V

    .line 124
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 129
    .end local v5    # "nextNodeState":Lorg/w3c/dom/Node;
    .end local v7    # "nodeState":Lorg/w3c/dom/Node;
    :cond_4
    const/4 v10, 0x3

    invoke-interface {v8, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 130
    .local v6, "node":Lorg/w3c/dom/Node;
    const-string v10, "modify"

    invoke-interface {v6, v10}, Lorg/w3c/dom/Node;->setTextContent(Ljava/lang/String;)V

    .line 132
    .end local v2    # "i":I
    .end local v6    # "node":Lorg/w3c/dom/Node;
    .end local v8    # "preDefineNumStateLists":Lorg/w3c/dom/NodeList;
    :cond_5
    invoke-interface {v4, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 133
    invoke-virtual {p0, v1}, Lcom/android/mms/MessageTemplateProvider;->saveXMLDoc(Lorg/w3c/dom/Document;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 135
    const-string v10, "MessageTemplateProvider"

    const-string v11, "delete: save xml file error!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/4 v10, -0x1

    goto/16 :goto_0

    .line 138
    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 143
    const/4 v0, 0x0

    return-object v0
.end method

.method getXMLDoc()Lorg/w3c/dom/Document;
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 298
    const/4 v2, 0x0

    .line 299
    .local v2, "docBuilderFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v1, 0x0

    .line 300
    .local v1, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v0, 0x0

    .line 302
    .local v0, "doc":Lorg/w3c/dom/Document;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 304
    :try_start_0
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 312
    new-instance v8, Ljava/io/File;

    const-string v10, "/data/data/com.android.mms/files/message_template.xml"

    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 313
    .local v8, "messageFile":Ljava/io/File;
    invoke-virtual {p0}, Lcom/android/mms/MessageTemplateProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget-object v10, v10, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v10}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    .line 318
    .local v7, "locale":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 320
    const-string v10, "MessageTemplateProvider"

    const-string v11, "Create Message Template File: /data/data/com.android.mms/files/message_template.xml for first time call"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-virtual {p0}, Lcom/android/mms/MessageTemplateProvider;->CreateMessageTemplateXML()Z

    move-result v10

    if-nez v10, :cond_0

    .line 359
    .end local v7    # "locale":Ljava/lang/String;
    .end local v8    # "messageFile":Ljava/io/File;
    :goto_0
    return-object v9

    .line 305
    :catch_0
    move-exception v5

    .line 308
    .local v5, "e2":Ljavax/xml/parsers/ParserConfigurationException;
    const-string v10, "MessageTemplateProvider"

    const-string v11, "Generate DOM builder failed!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 326
    .end local v5    # "e2":Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v7    # "locale":Ljava/lang/String;
    .restart local v8    # "messageFile":Ljava/io/File;
    :cond_0
    iget-object v10, p0, Lcom/android/mms/MessageTemplateProvider;->mLocale:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 328
    iput-object v7, p0, Lcom/android/mms/MessageTemplateProvider;->mLocale:Ljava/lang/String;

    .line 329
    invoke-direct {p0}, Lcom/android/mms/MessageTemplateProvider;->updateXML()V

    .line 332
    :cond_1
    const/4 v6, 0x0

    .line 334
    .local v6, "inputStream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {p0}, Lcom/android/mms/MessageTemplateProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "message_template.xml"

    invoke-virtual {v10, v11}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 344
    :try_start_2
    invoke-virtual {v1, v6}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v0

    .line 354
    if-nez v0, :cond_2

    .line 356
    const-string v10, "MessageTemplateProvider"

    const-string v11, "Cannot parse the message template file!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 335
    :catch_1
    move-exception v4

    .line 338
    .local v4, "e1":Ljava/io/FileNotFoundException;
    const-string v10, "MessageTemplateProvider"

    const-string v11, "Open message template file exception!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 345
    .end local v4    # "e1":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v3

    .line 347
    .local v3, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v3}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    .line 349
    .end local v3    # "e":Lorg/xml/sax/SAXException;
    :catch_3
    move-exception v3

    .line 351
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    move-object v9, v0

    .line 359
    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v3, 0x0

    .line 149
    sget-object v4, Lcom/android/mms/MessageTemplateProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 151
    const-string v4, "MessageTemplateProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insert: Uri:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not match!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v3

    .line 177
    .end local p1    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object p1

    .line 155
    .restart local p1    # "uri":Landroid/net/Uri;
    :cond_1
    const-string v4, "message"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 157
    const-string v4, "MessageTemplateProvider"

    const-string v5, "insert: values not valid"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v3

    .line 158
    goto :goto_0

    .line 161
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/MessageTemplateProvider;->getXMLDoc()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 162
    .local v0, "doc":Lorg/w3c/dom/Document;
    if-nez v0, :cond_3

    .line 164
    const-string v4, "MessageTemplateProvider"

    const-string v5, "insert: Get XML Document failded!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v3

    .line 165
    goto :goto_0

    .line 167
    :cond_3
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    .line 168
    .local v2, "root":Lorg/w3c/dom/Element;
    const-string v4, "message"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 169
    .local v1, "newChild":Lorg/w3c/dom/Element;
    const-string v4, "message"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 170
    invoke-interface {v2, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 172
    invoke-virtual {p0, v0}, Lcom/android/mms/MessageTemplateProvider;->saveXMLDoc(Lorg/w3c/dom/Document;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 174
    const-string v4, "MessageTemplateProvider"

    const-string v5, "Save XML Document failded!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v3

    .line 175
    goto :goto_0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 189
    sget-object v8, Lcom/android/mms/MessageTemplateProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v8, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_1

    .line 191
    const-string v8, "MessageTemplateProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "query: Uri:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " not match!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v1, 0x0

    .line 213
    :cond_0
    :goto_0
    return-object v1

    .line 195
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/MessageTemplateProvider;->getXMLDoc()Lorg/w3c/dom/Document;

    move-result-object v2

    .line 196
    .local v2, "doc":Lorg/w3c/dom/Document;
    if-nez v2, :cond_2

    .line 198
    const-string v8, "MessageTemplateProvider"

    const-string v9, "query: get XML documnet failed!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v1, 0x0

    goto :goto_0

    .line 202
    :cond_2
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v7

    .line 204
    .local v7, "root":Lorg/w3c/dom/Element;
    const/4 v8, 0x2

    new-array v0, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "_id"

    aput-object v9, v0, v8

    const/4 v8, 0x1

    const-string v9, "message"

    aput-object v9, v0, v8

    .line 205
    .local v0, "columnNames":[Ljava/lang/String;
    new-instance v1, Landroid/database/MatrixCursor;

    invoke-direct {v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 207
    .local v1, "cursor":Landroid/database/MatrixCursor;
    const-string v8, "message"

    invoke-interface {v7, v8}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 208
    .local v4, "lists":Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v3, v8, :cond_0

    .line 209
    invoke-interface {v4, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 210
    .local v5, "node":Lorg/w3c/dom/Node;
    const/4 v8, 0x2

    new-array v6, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x1

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    .line 211
    .local v6, "obj":[Ljava/lang/Object;
    invoke-virtual {v1, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 208
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method saveXMLDoc(Lorg/w3c/dom/Document;)Z
    .locals 10
    .param p1, "doc"    # Lorg/w3c/dom/Document;

    .prologue
    const/4 v6, 0x0

    .line 363
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v3

    .line 364
    .local v3, "transFactory":Ljavax/xml/transform/TransformerFactory;
    const/4 v4, 0x0

    .line 366
    .local v4, "transFormer":Ljavax/xml/transform/Transformer;
    :try_start_0
    invoke-virtual {v3}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 374
    new-instance v0, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v0, p1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 376
    .local v0, "domSource":Ljavax/xml/transform/dom/DOMSource;
    const/4 v2, 0x0

    .line 378
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p0}, Lcom/android/mms/MessageTemplateProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "message_template.xml"

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 386
    new-instance v5, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v5, v2}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    .line 388
    .local v5, "xmlResult":Ljavax/xml/transform/stream/StreamResult;
    :try_start_2
    invoke-virtual {v4, v0, v5}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_2

    .line 395
    const/4 v6, 0x1

    .end local v0    # "domSource":Ljavax/xml/transform/dom/DOMSource;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .end local v5    # "xmlResult":Ljavax/xml/transform/stream/StreamResult;
    :goto_0
    return v6

    .line 367
    :catch_0
    move-exception v1

    .line 370
    .local v1, "e":Ljavax/xml/transform/TransformerConfigurationException;
    const-string v7, "MessageTemplateProvider"

    const-string v8, "Generate transFormer failed!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 379
    .end local v1    # "e":Ljavax/xml/transform/TransformerConfigurationException;
    .restart local v0    # "domSource":Ljavax/xml/transform/dom/DOMSource;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 382
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v7, "MessageTemplateProvider"

    const-string v8, "Open message template file failed!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 389
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v5    # "xmlResult":Ljavax/xml/transform/stream/StreamResult;
    :catch_2
    move-exception v1

    .line 392
    .local v1, "e":Ljavax/xml/transform/TransformerException;
    const-string v7, "MessageTemplateProvider"

    const-string v8, "Transform XML File failed!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 219
    sget-object v8, Lcom/android/mms/MessageTemplateProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v8, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_0

    .line 221
    const-string v8, "MessageTemplateProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "update: Uri:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " not match!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v8, -0x1

    .line 264
    :goto_0
    return v8

    .line 225
    :cond_0
    const-string v8, "_id"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "message"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 227
    :cond_1
    const-string v8, "MessageTemplateProvider"

    const-string v9, "update: values not valid"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v8, -0x1

    goto :goto_0

    .line 231
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/MessageTemplateProvider;->getXMLDoc()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 232
    .local v0, "doc":Lorg/w3c/dom/Document;
    if-nez v0, :cond_3

    .line 234
    const-string v8, "MessageTemplateProvider"

    const-string v9, "update: get XML documnet failed!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/4 v8, -0x1

    goto :goto_0

    .line 238
    :cond_3
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v7

    .line 239
    .local v7, "root":Lorg/w3c/dom/Element;
    const-string v8, "message"

    invoke-interface {v7, v8}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 240
    .local v2, "lists":Lorg/w3c/dom/NodeList;
    const-string v8, "_id"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 241
    .local v1, "id":I
    const-string v8, "message"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 243
    .local v3, "message":Ljava/lang/String;
    if-ltz v1, :cond_4

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-lt v1, v8, :cond_5

    .line 245
    :cond_4
    const-string v8, "MessageTemplateProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "update: id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " nodelist length="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const/4 v8, -0x1

    goto :goto_0

    .line 248
    :cond_5
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 249
    .local v4, "node":Lorg/w3c/dom/Node;
    const/4 v8, 0x4

    if-ge v1, v8, :cond_6

    .line 250
    const-string v8, "preDefineNumState"

    invoke-interface {v7, v8}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 252
    .local v6, "preDefineNumStateLists":Lorg/w3c/dom/NodeList;
    invoke-interface {v6, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 253
    .local v5, "nodeState":Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 254
    const-string v8, "modify"

    invoke-interface {v5, v8}, Lorg/w3c/dom/Node;->setTextContent(Ljava/lang/String;)V

    .line 258
    .end local v5    # "nodeState":Lorg/w3c/dom/Node;
    .end local v6    # "preDefineNumStateLists":Lorg/w3c/dom/NodeList;
    :cond_6
    invoke-interface {v4, v3}, Lorg/w3c/dom/Node;->setTextContent(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0, v0}, Lcom/android/mms/MessageTemplateProvider;->saveXMLDoc(Lorg/w3c/dom/Document;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 261
    const-string v8, "MessageTemplateProvider"

    const-string v9, "update: save XML file failed!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const/4 v8, -0x1

    goto/16 :goto_0

    .line 264
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_0
.end method
