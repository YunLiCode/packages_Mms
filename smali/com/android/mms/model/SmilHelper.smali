.class public Lcom/android/mms/model/SmilHelper;
.super Ljava/lang/Object;
.source "SmilHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method static addMediaElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/MediaModel;)V
    .locals 2
    .param p0, "target"    # Lorg/w3c/dom/events/EventTarget;
    .param p1, "media"    # Lcom/android/mms/model/MediaModel;

    .prologue
    const/4 v1, 0x0

    .line 421
    const-string v0, "SmilMediaStart"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 422
    const-string v0, "SmilMediaEnd"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 423
    const-string v0, "SmilMediaPause"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 424
    const-string v0, "SmilMediaSeek"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 425
    return-void
.end method

.method public static addPar(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILParElement;
    .locals 2
    .param p0, "document"    # Lorg/w3c/dom/smil/SMILDocument;

    .prologue
    .line 148
    const-string v1, "par"

    invoke-interface {p0, v1}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/SMILParElement;

    .line 150
    .local v0, "par":Lorg/w3c/dom/smil/SMILParElement;
    const/high16 v1, 0x41000000

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILParElement;->setDur(F)V

    .line 151
    invoke-interface {p0}, Lorg/w3c/dom/smil/SMILDocument;->getBody()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 152
    return-object v0
.end method

.method static addParElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/SlideModel;)V
    .locals 2
    .param p0, "target"    # Lorg/w3c/dom/events/EventTarget;
    .param p1, "slide"    # Lcom/android/mms/model/SlideModel;

    .prologue
    const/4 v1, 0x0

    .line 431
    const-string v0, "SmilSlideStart"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 432
    const-string v0, "SmilSlideEnd"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 433
    return-void
.end method

.method public static createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "document"    # Lorg/w3c/dom/smil/SMILDocument;
    .param p2, "src"    # Ljava/lang/String;

    .prologue
    .line 157
    invoke-interface {p1, p0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/SMILMediaElement;

    .line 159
    .local v0, "mediaElement":Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-static {p2}, Lcom/android/mms/model/SmilHelper;->escapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILMediaElement;->setSrc(Ljava/lang/String;)V

    .line 160
    return-object v0
.end method

.method private static createSmilDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 35
    .param p0, "slideshow"    # Lcom/android/mms/model/SlideshowModel;

    .prologue
    .line 262
    new-instance v10, Lcom/android/mms/dom/smil/SmilDocumentImpl;

    invoke-direct {v10}, Lcom/android/mms/dom/smil/SmilDocumentImpl;-><init>()V

    .line 265
    .local v10, "document":Lorg/w3c/dom/smil/SMILDocument;
    const-string v32, "smil"

    move-object/from16 v0, v32

    invoke-interface {v10, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v26

    check-cast v26, Lorg/w3c/dom/smil/SMILElement;

    .line 266
    .local v26, "smilElement":Lorg/w3c/dom/smil/SMILElement;
    move-object/from16 v0, v26

    invoke-interface {v10, v0}, Lorg/w3c/dom/smil/SMILDocument;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 269
    const-string v32, "head"

    move-object/from16 v0, v32

    invoke-interface {v10, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v13

    check-cast v13, Lorg/w3c/dom/smil/SMILElement;

    .line 270
    .local v13, "headElement":Lorg/w3c/dom/smil/SMILElement;
    move-object/from16 v0, v26

    invoke-interface {v0, v13}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 273
    const-string v32, "layout"

    move-object/from16 v0, v32

    invoke-interface {v10, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v17

    check-cast v17, Lorg/w3c/dom/smil/SMILLayoutElement;

    .line 275
    .local v17, "layoutElement":Lorg/w3c/dom/smil/SMILLayoutElement;
    move-object/from16 v0, v17

    invoke-interface {v13, v0}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 278
    const-string v32, "root-layout"

    move-object/from16 v0, v32

    invoke-interface {v10, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v23

    check-cast v23, Lorg/w3c/dom/smil/SMILRootLayoutElement;

    .line 280
    .local v23, "rootLayoutElement":Lorg/w3c/dom/smil/SMILRootLayoutElement;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v18

    .line 281
    .local v18, "layouts":Lcom/android/mms/model/LayoutModel;
    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/LayoutModel;->getLayoutWidth()I

    move-result v32

    move-object/from16 v0, v23

    move/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setWidth(I)V

    .line 282
    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/LayoutModel;->getLayoutHeight()I

    move-result v32

    move-object/from16 v0, v23

    move/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setHeight(I)V

    .line 283
    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/LayoutModel;->getBackgroundColor()Ljava/lang/String;

    move-result-object v8

    .line 284
    .local v8, "bgColor":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_0

    .line 285
    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setBackgroundColor(Ljava/lang/String;)V

    .line 287
    :cond_0
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILLayoutElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 290
    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/LayoutModel;->getRegions()Ljava/util/ArrayList;

    move-result-object v22

    .line 291
    .local v22, "regions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/RegionModel;>;"
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 292
    .local v28, "smilRegions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/smil/SMILRegionElement;>;"
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/mms/model/RegionModel;

    .line 293
    .local v21, "r":Lcom/android/mms/model/RegionModel;
    const-string v32, "region"

    move-object/from16 v0, v32

    invoke-interface {v10, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v27

    check-cast v27, Lorg/w3c/dom/smil/SMILRegionElement;

    .line 294
    .local v27, "smilRegion":Lorg/w3c/dom/smil/SMILRegionElement;
    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRegionElement;->setId(Ljava/lang/String;)V

    .line 295
    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v32

    move-object/from16 v0, v27

    move/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRegionElement;->setLeft(I)V

    .line 296
    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v32

    move-object/from16 v0, v27

    move/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRegionElement;->setTop(I)V

    .line 297
    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v32

    move-object/from16 v0, v27

    move/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRegionElement;->setWidth(I)V

    .line 298
    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v32

    move-object/from16 v0, v27

    move/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRegionElement;->setHeight(I)V

    .line 299
    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/model/RegionModel;->getFit()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRegionElement;->setFit(Ljava/lang/String;)V

    .line 300
    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 304
    .end local v21    # "r":Lcom/android/mms/model/RegionModel;
    .end local v27    # "smilRegion":Lorg/w3c/dom/smil/SMILRegionElement;
    :cond_1
    const-string v32, "body"

    move-object/from16 v0, v32

    invoke-interface {v10, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/smil/SMILElement;

    .line 305
    .local v9, "bodyElement":Lorg/w3c/dom/smil/SMILElement;
    move-object/from16 v0, v26

    invoke-interface {v0, v9}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 307
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_d

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/mms/model/SlideModel;

    .line 308
    .local v24, "slide":Lcom/android/mms/model/SlideModel;
    const/16 v31, 0x0

    .line 309
    .local v31, "txtRegionPresentInLayout":Z
    const/16 v16, 0x0

    .line 312
    .local v16, "imgRegionPresentInLayout":Z
    invoke-static {v10}, Lcom/android/mms/model/SmilHelper;->addPar(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILParElement;

    move-result-object v20

    .line 313
    .local v20, "par":Lorg/w3c/dom/smil/SMILParElement;
    invoke-virtual/range {v24 .. v24}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    const/high16 v33, 0x447a0000

    div-float v32, v32, v33

    move-object/from16 v0, v20

    move/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILParElement;->setDur(F)V

    move-object/from16 v32, v20

    .line 315
    check-cast v32, Lorg/w3c/dom/events/EventTarget;

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/mms/model/SmilHelper;->addParElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/SlideModel;)V

    .line 318
    invoke-virtual/range {v24 .. v24}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/mms/model/MediaModel;

    .line 319
    .local v19, "media":Lcom/android/mms/model/MediaModel;
    const/16 v25, 0x0

    .line 320
    .local v25, "sme":Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v29

    .line 321
    .local v29, "src":Ljava/lang/String;
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/android/mms/model/TextModel;

    move/from16 v32, v0

    if-eqz v32, :cond_7

    move-object/from16 v30, v19

    .line 322
    check-cast v30, Lcom/android/mms/model/TextModel;

    .line 323
    .local v30, "text":Lcom/android/mms/model/TextModel;
    invoke-virtual/range {v30 .. v30}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_3

    .line 329
    const-string v32, "text"

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-static {v0, v10, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v25

    move-object/from16 v32, v25

    .line 330
    check-cast v32, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    const-string v33, "Text"

    move-object/from16 v0, v32

    move-object/from16 v1, v28

    move-object/from16 v2, v17

    move-object/from16 v3, v33

    move/from16 v4, v31

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/model/SmilHelper;->setRegion(Lorg/w3c/dom/smil/SMILRegionMediaElement;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/lang/String;Z)Z

    move-result v31

    .line 370
    .end local v30    # "text":Lcom/android/mms/model/TextModel;
    :cond_4
    :goto_2
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/MediaModel;->getBegin()I

    move-result v7

    .line 371
    .local v7, "begin":I
    if-eqz v7, :cond_5

    .line 372
    const-string v32, "begin"

    div-int/lit16 v0, v7, 0x3e8

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/smil/SMILMediaElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    :cond_5
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/MediaModel;->getDuration()I

    move-result v11

    .line 375
    .local v11, "duration":I
    if-eqz v11, :cond_6

    .line 376
    int-to-float v0, v11

    move/from16 v32, v0

    const/high16 v33, 0x447a0000

    div-float v32, v32, v33

    move-object/from16 v0, v25

    move/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILMediaElement;->setDur(F)V

    .line 378
    :cond_6
    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 380
    check-cast v25, Lorg/w3c/dom/events/EventTarget;

    .end local v25    # "sme":Lorg/w3c/dom/smil/SMILMediaElement;
    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/mms/model/SmilHelper;->addMediaElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/MediaModel;)V

    goto/16 :goto_1

    .line 335
    .end local v7    # "begin":I
    .end local v11    # "duration":I
    .restart local v25    # "sme":Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_7
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/android/mms/model/ImageModel;

    move/from16 v32, v0

    if-eqz v32, :cond_8

    .line 336
    const-string v32, "img"

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-static {v0, v10, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v25

    move-object/from16 v32, v25

    .line 337
    check-cast v32, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    const-string v33, "Image"

    move-object/from16 v0, v32

    move-object/from16 v1, v28

    move-object/from16 v2, v17

    move-object/from16 v3, v33

    move/from16 v4, v16

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/model/SmilHelper;->setRegion(Lorg/w3c/dom/smil/SMILRegionMediaElement;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/lang/String;Z)Z

    move-result v16

    goto :goto_2

    .line 342
    :cond_8
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/android/mms/model/VideoModel;

    move/from16 v32, v0

    if-eqz v32, :cond_9

    .line 343
    const-string v32, "video"

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-static {v0, v10, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v25

    move-object/from16 v32, v25

    .line 344
    check-cast v32, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    const-string v33, "Image"

    move-object/from16 v0, v32

    move-object/from16 v1, v28

    move-object/from16 v2, v17

    move-object/from16 v3, v33

    move/from16 v4, v16

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/model/SmilHelper;->setRegion(Lorg/w3c/dom/smil/SMILRegionMediaElement;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/lang/String;Z)Z

    move-result v16

    goto/16 :goto_2

    .line 349
    :cond_9
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/android/mms/model/AudioModel;

    move/from16 v32, v0

    if-eqz v32, :cond_b

    .line 350
    const-string v32, "audio"

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-static {v0, v10, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v25

    move-object/from16 v32, v19

    .line 351
    check-cast v32, Lcom/android/mms/model/AudioModel;

    invoke-virtual/range {v32 .. v32}, Lcom/android/mms/model/AudioModel;->getExtras()Ljava/util/Map;

    move-result-object v12

    .line 354
    .local v12, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v32, "artist"

    move-object/from16 v0, v32

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 355
    .local v6, "artist":Ljava/lang/String;
    const-string v32, "album"

    move-object/from16 v0, v32

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 356
    .local v5, "album":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_a

    .line 357
    const-string v32, "artist"

    invoke-static {v6}, Lcom/android/mms/model/SmilHelper;->escapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/smil/SMILMediaElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    :cond_a
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_4

    .line 360
    const-string v32, "album"

    invoke-static {v5}, Lcom/android/mms/model/SmilHelper;->escapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/smil/SMILMediaElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 362
    .end local v5    # "album":Ljava/lang/String;
    .end local v6    # "artist":Ljava/lang/String;
    .end local v12    # "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_b
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/android/mms/model/VcardModel;

    move/from16 v32, v0

    if-eqz v32, :cond_c

    .line 363
    const-string v32, "ref"

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-static {v0, v10, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v25

    goto/16 :goto_2

    .line 365
    :cond_c
    const-string v32, "Mms/smil"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Unsupport media: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 390
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v16    # "imgRegionPresentInLayout":Z
    .end local v19    # "media":Lcom/android/mms/model/MediaModel;
    .end local v20    # "par":Lorg/w3c/dom/smil/SMILParElement;
    .end local v24    # "slide":Lcom/android/mms/model/SlideModel;
    .end local v25    # "sme":Lorg/w3c/dom/smil/SMILMediaElement;
    .end local v29    # "src":Ljava/lang/String;
    .end local v31    # "txtRegionPresentInLayout":Z
    :cond_d
    return-object v10
.end method

.method private static createSmilDocument(Lcom/google/android/mms/pdu/PduBody;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 23
    .param p0, "pb"    # Lcom/google/android/mms/pdu/PduBody;

    .prologue
    .line 176
    new-instance v6, Lcom/android/mms/dom/smil/SmilDocumentImpl;

    invoke-direct {v6}, Lcom/android/mms/dom/smil/SmilDocumentImpl;-><init>()V

    .line 180
    .local v6, "document":Lorg/w3c/dom/smil/SMILDocument;
    const-string v21, "smil"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v17

    check-cast v17, Lorg/w3c/dom/smil/SMILElement;

    .line 181
    .local v17, "smil":Lorg/w3c/dom/smil/SMILElement;
    const-string v21, "xmlns"

    const-string v22, "http://www.w3.org/2001/SMIL20/Language"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/smil/SMILElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Lorg/w3c/dom/smil/SMILDocument;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 185
    const-string v21, "head"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/smil/SMILElement;

    .line 186
    .local v10, "head":Lorg/w3c/dom/smil/SMILElement;
    move-object/from16 v0, v17

    invoke-interface {v0, v10}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 188
    const-string v21, "layout"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v13

    check-cast v13, Lorg/w3c/dom/smil/SMILLayoutElement;

    .line 189
    .local v13, "layout":Lorg/w3c/dom/smil/SMILLayoutElement;
    invoke-interface {v10, v13}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 192
    const-string v21, "body"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/smil/SMILElement;

    .line 193
    .local v4, "body":Lorg/w3c/dom/smil/SMILElement;
    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 194
    invoke-static {v6}, Lcom/android/mms/model/SmilHelper;->addPar(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILParElement;

    move-result-object v14

    .line 197
    .local v14, "par":Lorg/w3c/dom/smil/SMILParElement;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v16

    .line 198
    .local v16, "partsNum":I
    if-nez v16, :cond_1

    .line 254
    :cond_0
    return-object v6

    .line 202
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/MmsApp;->getDrmManagerClient()Landroid/drm/DrmManagerClient;

    move-result-object v7

    .line 204
    .local v7, "drmManagerClient":Landroid/drm/DrmManagerClient;
    const/4 v9, 0x0

    .line 205
    .local v9, "hasText":Z
    const/4 v8, 0x0

    .line 206
    .local v8, "hasMedia":Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v11, v0, :cond_0

    .line 208
    if-eqz v14, :cond_2

    if-eqz v8, :cond_3

    if-eqz v9, :cond_3

    .line 209
    :cond_2
    invoke-static {v6}, Lcom/android/mms/model/SmilHelper;->addPar(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILParElement;

    move-result-object v14

    .line 210
    const/4 v9, 0x0

    .line 211
    const/4 v8, 0x0

    .line 214
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v15

    .line 215
    .local v15, "part":Lcom/google/android/mms/pdu/PduPart;
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    .line 217
    .local v5, "contentType":Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 218
    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 221
    :cond_4
    const-string v21, "text/plain"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_5

    const-string v21, "application/vnd.wap.xhtml+xml"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_5

    const-string v21, "text/html"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 224
    :cond_5
    const-string v21, "text"

    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v6, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v18

    .line 226
    .local v18, "textElement":Lorg/w3c/dom/smil/SMILMediaElement;
    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 227
    const/4 v9, 0x1

    .line 206
    .end local v18    # "textElement":Lorg/w3c/dom/smil/SMILMediaElement;
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 228
    :cond_6
    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 229
    const-string v21, "img"

    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v6, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v12

    .line 231
    .local v12, "imageElement":Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-interface {v14, v12}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 232
    const/4 v8, 0x1

    .line 233
    goto :goto_1

    .end local v12    # "imageElement":Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_7
    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 234
    const-string v21, "video"

    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v6, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v20

    .line 236
    .local v20, "videoElement":Lorg/w3c/dom/smil/SMILMediaElement;
    move-object/from16 v0, v20

    invoke-interface {v14, v0}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 237
    const/4 v8, 0x1

    .line 238
    goto :goto_1

    .end local v20    # "videoElement":Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_8
    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 239
    const-string v21, "audio"

    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v6, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v3

    .line 241
    .local v3, "audioElement":Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-interface {v14, v3}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 242
    const/4 v8, 0x1

    .line 243
    goto :goto_1

    .end local v3    # "audioElement":Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_9
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    const-string v22, "text/x-vCard"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 244
    const-string v21, "ref"

    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v6, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v19

    .line 246
    .local v19, "vcardElement":Lorg/w3c/dom/smil/SMILMediaElement;
    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 247
    const/4 v8, 0x1

    .line 248
    goto :goto_1

    .line 250
    .end local v19    # "vcardElement":Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_a
    const-string v21, "Mms/smil"

    const-string v22, "unsupport media type"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static escapeXML(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 164
    const-string v0, "&"

    const-string v1, "&amp;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<"

    const-string v2, "&lt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ">"

    const-string v2, "&gt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "&quot;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'"

    const-string v2, "&apos;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static findRegionElementById(Ljava/util/ArrayList;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILRegionElement;
    .locals 3
    .param p1, "rId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/smil/SMILRegionElement;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/w3c/dom/smil/SMILRegionElement;"
        }
    .end annotation

    .prologue
    .line 395
    .local p0, "smilRegions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/smil/SMILRegionElement;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/smil/SMILRegionElement;

    .line 396
    .local v1, "smilRegion":Lorg/w3c/dom/smil/SMILRegionElement;
    invoke-interface {v1}, Lorg/w3c/dom/smil/SMILRegionElement;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 400
    .end local v1    # "smilRegion":Lorg/w3c/dom/smil/SMILRegionElement;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static findSmilPart(Lcom/google/android/mms/pdu/PduBody;)Lcom/google/android/mms/pdu/PduPart;
    .locals 5
    .param p0, "body"    # Lcom/google/android/mms/pdu/PduBody;

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v2

    .line 103
    .local v2, "partNum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 104
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 105
    .local v1, "part":Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v3

    const-string v4, "application/smil"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    .end local v1    # "part":Lcom/google/android/mms/pdu/PduPart;
    :goto_1
    return-object v1

    .line 103
    .restart local v1    # "part":Lcom/google/android/mms/pdu/PduPart;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    .end local v1    # "part":Lcom/google/android/mms/pdu/PduPart;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 1
    .param p0, "model"    # Lcom/android/mms/model/SlideshowModel;

    .prologue
    .line 93
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->createSmilDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    return-object v0
.end method

.method public static getDocument(Lcom/google/android/mms/pdu/PduBody;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 2
    .param p0, "pb"    # Lcom/google/android/mms/pdu/PduBody;

    .prologue
    .line 76
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->findSmilPart(Lcom/google/android/mms/pdu/PduBody;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 77
    .local v1, "smilPart":Lcom/google/android/mms/pdu/PduPart;
    const/4 v0, 0x0

    .line 80
    .local v0, "document":Lorg/w3c/dom/smil/SMILDocument;
    if-eqz v1, :cond_0

    .line 81
    invoke-static {v1}, Lcom/android/mms/model/SmilHelper;->getSmilDocument(Lcom/google/android/mms/pdu/PduPart;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    .line 84
    :cond_0
    if-nez v0, :cond_1

    .line 86
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->createSmilDocument(Lcom/google/android/mms/pdu/PduBody;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    .line 89
    :cond_1
    return-object v0
.end method

.method private static getSmilDocument(Lcom/google/android/mms/pdu/PduPart;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 6
    .param p0, "smilPart"    # Lcom/google/android/mms/pdu/PduPart;

    .prologue
    .line 126
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v1

    .line 127
    .local v1, "data":[B
    if-eqz v1, :cond_0

    .line 133
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 134
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v4, Lcom/android/mms/dom/smil/parser/SmilXmlParser;

    invoke-direct {v4}, Lcom/android/mms/dom/smil/parser/SmilXmlParser;-><init>()V

    invoke-virtual {v4, v0}, Lcom/android/mms/dom/smil/parser/SmilXmlParser;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v2

    .line 135
    .local v2, "document":Lorg/w3c/dom/smil/SMILDocument;
    invoke-static {v2}, Lcom/android/mms/model/SmilHelper;->validate(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 144
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v1    # "data":[B
    .end local v2    # "document":Lorg/w3c/dom/smil/SMILDocument;
    :goto_0
    return-object v4

    .line 137
    :catch_0
    move-exception v3

    .line 138
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "Mms/smil"

    const-string v5, "Failed to parse SMIL document."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    .end local v3    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 139
    :catch_1
    move-exception v3

    .line 140
    .local v3, "e":Lorg/xml/sax/SAXException;
    const-string v4, "Mms/smil"

    const-string v5, "Failed to parse SMIL document."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 141
    .end local v3    # "e":Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v3

    .line 142
    .local v3, "e":Lcom/google/android/mms/MmsException;
    const-string v4, "Mms/smil"

    const-string v5, "Failed to parse SMIL document."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static setRegion(Lorg/w3c/dom/smil/SMILRegionMediaElement;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "srme"    # Lorg/w3c/dom/smil/SMILRegionMediaElement;
    .param p2, "smilLayout"    # Lorg/w3c/dom/smil/SMILLayoutElement;
    .param p3, "regionId"    # Ljava/lang/String;
    .param p4, "regionPresentInLayout"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/smil/SMILRegionMediaElement;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/smil/SMILRegionElement;",
            ">;",
            "Lorg/w3c/dom/smil/SMILLayoutElement;",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .line 408
    .local p1, "smilRegions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/smil/SMILRegionElement;>;"
    invoke-static {p1, p3}, Lcom/android/mms/model/SmilHelper;->findRegionElementById(Ljava/util/ArrayList;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILRegionElement;

    move-result-object v0

    .line 409
    .local v0, "smilRegion":Lorg/w3c/dom/smil/SMILRegionElement;
    if-nez p4, :cond_0

    if-eqz v0, :cond_0

    .line 410
    invoke-interface {p0, v0}, Lorg/w3c/dom/smil/SMILRegionMediaElement;->setRegion(Lorg/w3c/dom/smil/SMILRegionElement;)V

    .line 411
    invoke-interface {p2, v0}, Lorg/w3c/dom/smil/SMILLayoutElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 412
    const/4 v1, 0x1

    .line 414
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static validate(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 0
    .param p0, "in"    # Lorg/w3c/dom/smil/SMILDocument;

    .prologue
    .line 116
    return-object p0
.end method
