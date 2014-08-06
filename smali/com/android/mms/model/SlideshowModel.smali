.class public Lcom/android/mms/model/SlideshowModel;
.super Lcom/android/mms/model/Model;
.source "SlideshowModel.java"

# interfaces
.implements Lcom/android/mms/model/IModelChangedObserver;
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/mms/model/Model;",
        "Ljava/util/List",
        "<",
        "Lcom/android/mms/model/SlideModel;",
        ">;",
        "Lcom/android/mms/model/IModelChangedObserver;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentMessageSize:I

.field private mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

.field private final mLayout:Lcom/android/mms/model/LayoutModel;

.field private final mOtherAttachModels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/OtherAttachModel;",
            ">;"
        }
    .end annotation
.end field

.field private mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

.field private final mSlides:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalMessageSize:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 86
    new-instance v0, Lcom/android/mms/model/LayoutModel;

    invoke-direct {v0}, Lcom/android/mms/model/LayoutModel;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mOtherAttachModels:Ljava/util/ArrayList;

    .line 90
    iput-object p1, p0, Lcom/android/mms/model/SlideshowModel;->mContext:Landroid/content/Context;

    .line 91
    return-void
.end method

.method private constructor <init>(Lcom/android/mms/model/LayoutModel;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILDocument;Lcom/google/android/mms/pdu/PduBody;Landroid/content/Context;)V
    .locals 4
    .param p1, "layouts"    # Lcom/android/mms/model/LayoutModel;
    .param p3, "documentCache"    # Lorg/w3c/dom/smil/SMILDocument;
    .param p4, "pbCache"    # Lcom/google/android/mms/pdu/PduBody;
    .param p5, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mms/model/LayoutModel;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;",
            "Lorg/w3c/dom/smil/SMILDocument;",
            "Lcom/google/android/mms/pdu/PduBody;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 96
    .local p2, "slides":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    .line 98
    iput-object p2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    .line 100
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mOtherAttachModels:Ljava/util/ArrayList;

    .line 101
    iput-object p5, p0, Lcom/android/mms/model/SlideshowModel;->mContext:Landroid/content/Context;

    .line 103
    iput-object p3, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    .line 104
    iput-object p4, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    .line 105
    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/SlideModel;

    .line 106
    .local v2, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    .line 107
    invoke-virtual {v2, p0}, Lcom/android/mms/model/SlideModel;->setParent(Lcom/android/mms/model/SlideshowModel;)V

    goto :goto_0

    .line 109
    .end local v2    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_0
    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mOtherAttachModels:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/OtherAttachModel;

    .line 110
    .local v1, "otherAttach":Lcom/android/mms/model/OtherAttachModel;
    invoke-virtual {v1}, Lcom/android/mms/model/OtherAttachModel;->getAttachSize()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    goto :goto_1

    .line 112
    .end local v1    # "otherAttach":Lcom/android/mms/model/OtherAttachModel;
    :cond_1
    return-void
.end method

.method public static createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-static {p0, p1}, Lcom/android/mms/model/SlideshowModel;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    return-object v0
.end method

.method public static createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/SlideshowModel;
    .locals 46
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pb"    # Lcom/google/android/mms/pdu/PduBody;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-static/range {p1 .. p1}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/google/android/mms/pdu/PduBody;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v19

    .line 127
    .local v19, "document":Lorg/w3c/dom/smil/SMILDocument;
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v37

    .line 128
    .local v37, "sle":Lorg/w3c/dom/smil/SMILLayoutElement;
    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v43

    .line 129
    .local v43, "srle":Lorg/w3c/dom/smil/SMILRootLayoutElement;
    invoke-interface/range {v43 .. v43}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getWidth()I

    move-result v8

    .line 130
    .local v8, "w":I
    invoke-interface/range {v43 .. v43}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getHeight()I

    move-result v9

    .line 131
    .local v9, "h":I
    if-eqz v8, :cond_0

    if-nez v9, :cond_1

    .line 132
    :cond_0
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/mms/layout/LayoutParameters;->getWidth()I

    move-result v8

    .line 133
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/mms/layout/LayoutParameters;->getHeight()I

    move-result v9

    .line 134
    move-object/from16 v0, v43

    invoke-interface {v0, v8}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setWidth(I)V

    .line 135
    move-object/from16 v0, v43

    invoke-interface {v0, v9}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setHeight(I)V

    .line 137
    :cond_1
    new-instance v4, Lcom/android/mms/model/RegionModel;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;IIII)V

    .line 141
    .local v4, "rootLayout":Lcom/android/mms/model/RegionModel;
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v35, "regions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/RegionModel;>;"
    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRegions()Lorg/w3c/dom/NodeList;

    move-result-object v32

    .line 143
    .local v32, "nlRegions":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v32 .. v32}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v36

    .line 145
    .local v36, "regionsNum":I
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_0
    move/from16 v0, v23

    move/from16 v1, v36

    if-ge v0, v1, :cond_2

    .line 146
    move-object/from16 v0, v32

    move/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v42

    check-cast v42, Lorg/w3c/dom/smil/SMILRegionElement;

    .line 147
    .local v42, "sre":Lorg/w3c/dom/smil/SMILRegionElement;
    new-instance v10, Lcom/android/mms/model/RegionModel;

    invoke-interface/range {v42 .. v42}, Lorg/w3c/dom/smil/SMILRegionElement;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-interface/range {v42 .. v42}, Lorg/w3c/dom/smil/SMILRegionElement;->getFit()Ljava/lang/String;

    move-result-object v12

    invoke-interface/range {v42 .. v42}, Lorg/w3c/dom/smil/SMILRegionElement;->getLeft()I

    move-result v13

    invoke-interface/range {v42 .. v42}, Lorg/w3c/dom/smil/SMILRegionElement;->getTop()I

    move-result v14

    invoke-interface/range {v42 .. v42}, Lorg/w3c/dom/smil/SMILRegionElement;->getWidth()I

    move-result v15

    invoke-interface/range {v42 .. v42}, Lorg/w3c/dom/smil/SMILRegionElement;->getHeight()I

    move-result v16

    invoke-interface/range {v42 .. v42}, Lorg/w3c/dom/smil/SMILRegionElement;->getBackgroundColor()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v10 .. v17}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V

    .line 150
    .local v10, "r":Lcom/android/mms/model/RegionModel;
    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    add-int/lit8 v23, v23, 0x1

    goto :goto_0

    .line 152
    .end local v10    # "r":Lcom/android/mms/model/RegionModel;
    .end local v42    # "sre":Lorg/w3c/dom/smil/SMILRegionElement;
    :cond_2
    new-instance v12, Lcom/android/mms/model/LayoutModel;

    move-object/from16 v0, v35

    invoke-direct {v12, v4, v0}, Lcom/android/mms/model/LayoutModel;-><init>(Lcom/android/mms/model/RegionModel;Ljava/util/ArrayList;)V

    .line 155
    .local v12, "layouts":Lcom/android/mms/model/LayoutModel;
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/smil/SMILDocument;->getBody()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v18

    .line 156
    .local v18, "docBody":Lorg/w3c/dom/smil/SMILElement;
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/smil/SMILElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v39

    .line 157
    .local v39, "slideNodes":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v39 .. v39}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v40

    .line 158
    .local v40, "slidesNum":I
    new-instance v13, Ljava/util/ArrayList;

    move/from16 v0, v40

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 159
    .local v13, "slides":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    const/16 v45, 0x0

    .line 160
    .local v45, "totalMessageSize":I
    invoke-static/range {p1 .. p1}, Lcom/android/mms/model/SlideshowModel;->hasSmilPart(Lcom/google/android/mms/pdu/PduBody;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v24, 0x0

    .line 162
    .local v24, "index":I
    :goto_1
    const/16 v23, 0x0

    :goto_2
    move/from16 v0, v23

    move/from16 v1, v40

    if-ge v0, v1, :cond_d

    .line 165
    move-object/from16 v0, v39

    move/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v34

    check-cast v34, Lorg/w3c/dom/smil/SMILParElement;

    .line 168
    .local v34, "par":Lorg/w3c/dom/smil/SMILParElement;
    invoke-interface/range {v34 .. v34}, Lorg/w3c/dom/smil/SMILParElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v28

    .line 169
    .local v28, "mediaNodes":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v29

    .line 170
    .local v29, "mediaNum":I
    new-instance v30, Ljava/util/ArrayList;

    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 172
    .local v30, "mediaSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    const/16 v25, 0x0

    .local v25, "j":I
    :goto_3
    move/from16 v0, v25

    move/from16 v1, v29

    if-ge v0, v1, :cond_b

    .line 175
    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v27

    .line 176
    .local v27, "mediaNode":Lorg/w3c/dom/Node;
    const/16 v41, 0x0

    .line 177
    .local v41, "sme":Lorg/w3c/dom/smil/SMILMediaElement;
    move-object/from16 v0, v27

    instance-of v5, v0, Lorg/w3c/dom/smil/SMILMediaElement;

    if-eqz v5, :cond_7

    move-object/from16 v41, v27

    .line 178
    check-cast v41, Lorg/w3c/dom/smil/SMILMediaElement;

    .line 185
    add-int/lit8 v24, v24, 0x1

    .line 186
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, p1

    move/from16 v3, v24

    invoke-static {v0, v1, v12, v2, v3}, Lcom/android/mms/model/MediaModelFactory;->getMediaModel(Landroid/content/Context;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduBody;I)Lcom/android/mms/model/MediaModel;

    move-result-object v26

    .line 193
    .local v26, "media":Lcom/android/mms/model/MediaModel;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSlideDurationEnabled()Z

    move-result v5

    if-nez v5, :cond_5

    .line 194
    invoke-virtual/range {v26 .. v26}, Lcom/android/mms/model/MediaModel;->getDuration()I

    move-result v31

    .line 195
    .local v31, "mediadur":I
    invoke-interface/range {v34 .. v34}, Lorg/w3c/dom/smil/SMILParElement;->getDur()F

    move-result v20

    .line 196
    .local v20, "dur":F
    const/4 v5, 0x0

    cmpl-float v5, v20, v5

    if-nez v5, :cond_3

    .line 197
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v5

    mul-int/lit16 v0, v5, 0x3e8

    move/from16 v31, v0

    .line 198
    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/mms/model/MediaModel;->setDuration(I)V

    .line 201
    :cond_3
    move/from16 v0, v31

    div-int/lit16 v5, v0, 0x3e8

    int-to-float v5, v5

    cmpl-float v5, v5, v20

    if-eqz v5, :cond_5

    .line 202
    invoke-interface/range {v41 .. v41}, Lorg/w3c/dom/smil/SMILMediaElement;->getTagName()Ljava/lang/String;

    move-result-object v44

    .line 204
    .local v44, "tag":Ljava/lang/String;
    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "video"

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "audio"

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 213
    :cond_4
    move/from16 v0, v31

    int-to-float v5, v0

    const/high16 v6, 0x447a0000

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000

    add-float/2addr v5, v6

    move-object/from16 v0, v34

    invoke-interface {v0, v5}, Lorg/w3c/dom/smil/SMILParElement;->setDur(F)V

    .line 233
    .end local v20    # "dur":F
    .end local v31    # "mediadur":I
    .end local v44    # "tag":Ljava/lang/String;
    :cond_5
    :goto_4
    check-cast v41, Lorg/w3c/dom/events/EventTarget;

    .end local v41    # "sme":Lorg/w3c/dom/smil/SMILMediaElement;
    move-object/from16 v0, v41

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/mms/model/SmilHelper;->addMediaElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/MediaModel;)V

    .line 235
    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    invoke-virtual/range {v26 .. v26}, Lcom/android/mms/model/MediaModel;->getMediaSize()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v5

    add-int v45, v45, v5

    .line 172
    .end local v26    # "media":Lcom/android/mms/model/MediaModel;
    :goto_5
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_3

    .line 160
    .end local v24    # "index":I
    .end local v25    # "j":I
    .end local v27    # "mediaNode":Lorg/w3c/dom/Node;
    .end local v28    # "mediaNodes":Lorg/w3c/dom/NodeList;
    .end local v29    # "mediaNum":I
    .end local v30    # "mediaSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    .end local v34    # "par":Lorg/w3c/dom/smil/SMILParElement;
    :cond_6
    const/16 v24, -0x1

    goto/16 :goto_1

    .line 180
    .restart local v24    # "index":I
    .restart local v25    # "j":I
    .restart local v27    # "mediaNode":Lorg/w3c/dom/Node;
    .restart local v28    # "mediaNodes":Lorg/w3c/dom/NodeList;
    .restart local v29    # "mediaNum":I
    .restart local v30    # "mediaSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    .restart local v34    # "par":Lorg/w3c/dom/smil/SMILParElement;
    .restart local v41    # "sme":Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_7
    new-instance v5, Lcom/google/android/mms/MmsException;

    const-string v6, "Can not to parse mediaNode"

    invoke-direct {v5, v6}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 221
    .restart local v20    # "dur":F
    .restart local v26    # "media":Lcom/android/mms/model/MediaModel;
    .restart local v31    # "mediadur":I
    .restart local v44    # "tag":Ljava/lang/String;
    :cond_8
    :try_start_1
    move/from16 v0, v31

    div-int/lit16 v5, v0, 0x3e8

    int-to-float v5, v5

    cmpg-float v5, v5, v20

    if-gez v5, :cond_9

    .line 222
    move/from16 v0, v20

    float-to-int v5, v0

    mul-int/lit16 v5, v5, 0x3e8

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Lcom/android/mms/model/MediaModel;->setDuration(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    .line 237
    .end local v20    # "dur":F
    .end local v26    # "media":Lcom/android/mms/model/MediaModel;
    .end local v31    # "mediadur":I
    .end local v41    # "sme":Lorg/w3c/dom/smil/SMILMediaElement;
    .end local v44    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v22

    .line 238
    .local v22, "e":Ljava/io/IOException;
    const-string v5, "Mms/slideshow"

    invoke-virtual/range {v22 .. v22}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 224
    .end local v22    # "e":Ljava/io/IOException;
    .restart local v20    # "dur":F
    .restart local v26    # "media":Lcom/android/mms/model/MediaModel;
    .restart local v31    # "mediadur":I
    .restart local v41    # "sme":Lorg/w3c/dom/smil/SMILMediaElement;
    .restart local v44    # "tag":Ljava/lang/String;
    :cond_9
    move/from16 v0, v20

    float-to-int v5, v0

    if-eqz v5, :cond_a

    .line 225
    move/from16 v0, v20

    float-to-int v5, v0

    mul-int/lit16 v5, v5, 0x3e8

    :try_start_2
    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Lcom/android/mms/model/MediaModel;->setDuration(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    .line 239
    .end local v20    # "dur":F
    .end local v26    # "media":Lcom/android/mms/model/MediaModel;
    .end local v31    # "mediadur":I
    .end local v41    # "sme":Lorg/w3c/dom/smil/SMILMediaElement;
    .end local v44    # "tag":Ljava/lang/String;
    :catch_1
    move-exception v22

    .line 240
    .local v22, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "Mms/slideshow"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 227
    .end local v22    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v20    # "dur":F
    .restart local v26    # "media":Lcom/android/mms/model/MediaModel;
    .restart local v31    # "mediadur":I
    .restart local v41    # "sme":Lorg/w3c/dom/smil/SMILMediaElement;
    .restart local v44    # "tag":Ljava/lang/String;
    :cond_a
    move/from16 v0, v31

    int-to-float v5, v0

    const/high16 v6, 0x447a0000

    div-float/2addr v5, v6

    :try_start_3
    move-object/from16 v0, v34

    invoke-interface {v0, v5}, Lorg/w3c/dom/smil/SMILParElement;->setDur(F)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    .line 241
    .end local v20    # "dur":F
    .end local v26    # "media":Lcom/android/mms/model/MediaModel;
    .end local v31    # "mediadur":I
    .end local v41    # "sme":Lorg/w3c/dom/smil/SMILMediaElement;
    .end local v44    # "tag":Ljava/lang/String;
    :catch_2
    move-exception v22

    .line 242
    .local v22, "e":Ljava/lang/Exception;
    const-string v5, "Mms/slideshow"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 248
    .end local v22    # "e":Ljava/lang/Exception;
    .end local v27    # "mediaNode":Lorg/w3c/dom/Node;
    :cond_b
    :try_start_4
    invoke-interface/range {v34 .. v34}, Lorg/w3c/dom/smil/SMILParElement;->getDur()F

    move-result v5

    const/high16 v6, 0x447a0000

    mul-float v21, v5, v6

    .line 249
    .local v21, "durarion":F
    const/4 v5, 0x0

    cmpl-float v5, v21, v5

    if-nez v5, :cond_c

    .line 250
    const v21, 0x459c4000

    .line 252
    :cond_c
    new-instance v38, Lcom/android/mms/model/SlideModel;

    move/from16 v0, v21

    float-to-int v5, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v30

    invoke-direct {v0, v5, v1}, Lcom/android/mms/model/SlideModel;-><init>(ILjava/util/ArrayList;)V

    .line 254
    .local v38, "slide":Lcom/android/mms/model/SlideModel;
    invoke-interface/range {v34 .. v34}, Lorg/w3c/dom/smil/SMILParElement;->getFill()S

    move-result v5

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Lcom/android/mms/model/SlideModel;->setFill(S)V

    .line 255
    check-cast v34, Lorg/w3c/dom/events/EventTarget;

    .end local v34    # "par":Lorg/w3c/dom/smil/SMILParElement;
    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/android/mms/model/SmilHelper;->addParElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/SlideModel;)V

    .line 257
    move-object/from16 v0, v38

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 162
    .end local v21    # "durarion":F
    .end local v38    # "slide":Lcom/android/mms/model/SlideModel;
    :goto_6
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_2

    .line 258
    :catch_3
    move-exception v22

    .line 259
    .restart local v22    # "e":Ljava/lang/Exception;
    const-string v5, "Mms/slideshow"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 264
    .end local v22    # "e":Ljava/lang/Exception;
    .end local v25    # "j":I
    .end local v28    # "mediaNodes":Lorg/w3c/dom/NodeList;
    .end local v29    # "mediaNum":I
    .end local v30    # "mediaSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    :cond_d
    new-instance v11, Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v14, v19

    move-object/from16 v15, p1

    move-object/from16 v16, p0

    invoke-direct/range {v11 .. v16}, Lcom/android/mms/model/SlideshowModel;-><init>(Lcom/android/mms/model/LayoutModel;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILDocument;Lcom/google/android/mms/pdu/PduBody;Landroid/content/Context;)V

    .line 265
    .local v11, "slideshow":Lcom/android/mms/model/SlideshowModel;
    move/from16 v0, v45

    iput v0, v11, Lcom/android/mms/model/SlideshowModel;->mTotalMessageSize:I

    .line 266
    invoke-virtual {v11, v11}, Lcom/android/mms/model/SlideshowModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 268
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v11}, Lcom/android/mms/model/SlideshowModel;->initOtherAttach(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Lcom/android/mms/model/SlideshowModel;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v33

    .line 269
    .local v33, "otherSlideshow":Lcom/android/mms/model/SlideshowModel;
    if-nez v33, :cond_e

    .line 272
    .end local v11    # "slideshow":Lcom/android/mms/model/SlideshowModel;
    :goto_7
    return-object v11

    .restart local v11    # "slideshow":Lcom/android/mms/model/SlideshowModel;
    :cond_e
    move-object/from16 v11, v33

    goto :goto_7
.end method

.method public static createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    new-instance v0, Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v0, p0}, Lcom/android/mms/model/SlideshowModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 426
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    .line 427
    .local v1, "p":Lcom/google/android/mms/pdu/PduPersister;
    invoke-virtual {v1, p1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v2

    .line 429
    .local v2, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v0

    .line 430
    .local v0, "msgType":I
    const/16 v3, 0x80

    if-eq v0, v3, :cond_0

    const/16 v3, 0x84

    if-ne v0, v3, :cond_1

    .line 432
    :cond_0
    check-cast v2, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .end local v2    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v3

    return-object v3

    .line 434
    .restart local v2    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :cond_1
    new-instance v3, Lcom/google/android/mms/MmsException;

    invoke-direct {v3}, Lcom/google/android/mms/MmsException;-><init>()V

    throw v3
.end method

.method private static hasSmilPart(Lcom/google/android/mms/pdu/PduBody;)Z
    .locals 5
    .param p0, "body"    # Lcom/google/android/mms/pdu/PduBody;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 278
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v3

    if-ge v3, v1, :cond_2

    :cond_0
    move v1, v2

    .line 286
    :cond_1
    :goto_0
    return v1

    .line 280
    :cond_2
    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    .line 281
    .local v0, "part":Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v3

    const-string v4, "application/smil"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    .line 286
    goto :goto_0
.end method

.method private static initOtherAttach(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Lcom/android/mms/model/SlideshowModel;)Lcom/android/mms/model/SlideshowModel;
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 871
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move-object p2, v6

    .line 925
    :cond_1
    return-object p2

    .line 874
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v9

    move v7, v8

    .line 875
    :goto_0
    if-ge v7, v9, :cond_1

    .line 876
    invoke-virtual {p1, v7}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    .line 877
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    .line 878
    invoke-static {v3}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {v3}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {v3}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "application/smil"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 880
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v4

    .line 881
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 882
    const-string v1, "application/oct-stream"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "text/plain"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 883
    :cond_3
    const-string v1, ".vcs"

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 884
    const-string v3, "text/x-vCalendar"

    .line 885
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 892
    :cond_4
    :goto_1
    const-string v0, "text/x-vCalendar"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 893
    new-instance v0, Lcom/android/mms/model/VCalendarModel;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/model/VCalendarModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;)V

    .line 894
    iget v1, p2, Lcom/android/mms/model/SlideshowModel;->mTotalMessageSize:I

    invoke-virtual {v0}, Lcom/android/mms/model/VCalendarModel;->getAttachSize()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p2, Lcom/android/mms/model/SlideshowModel;->mTotalMessageSize:I

    .line 895
    invoke-virtual {p2, v0}, Lcom/android/mms/model/SlideshowModel;->addOtherAttachModel(Lcom/android/mms/model/OtherAttachModel;)V

    .line 875
    :cond_5
    :goto_2
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 886
    :cond_6
    const-string v1, ".vcf"

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 887
    const-string v3, "text/x-vCard"

    .line 888
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    goto :goto_1

    .line 896
    :cond_7
    const-string v0, "text/x-vCard"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->hasVCard()Z

    move-result v0

    if-nez v0, :cond_5

    .line 899
    :try_start_0
    new-instance v0, Lcom/android/mms/model/VcardModel;

    invoke-direct {v0, p0, v3, v2, v4}, Lcom/android/mms/model/VcardModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 903
    :goto_3
    if-eqz v0, :cond_5

    .line 904
    iget v1, p2, Lcom/android/mms/model/SlideshowModel;->mTotalMessageSize:I

    invoke-virtual {v0}, Lcom/android/mms/model/VcardModel;->getMediaSize()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p2, Lcom/android/mms/model/SlideshowModel;->mTotalMessageSize:I

    .line 905
    invoke-virtual {p2, v8}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 907
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v2

    if-nez v2, :cond_8

    .line 908
    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    goto :goto_2

    .line 900
    :catch_0
    move-exception v0

    .line 901
    const-string v1, "Mms/slideshow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initOtherAttach:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    goto :goto_3

    .line 910
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 911
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 912
    new-instance v0, Lcom/android/mms/model/SlideModel;

    const/16 v2, 0x1388

    invoke-direct {v0, v2, v1}, Lcom/android/mms/model/SlideModel;-><init>(ILjava/util/ArrayList;)V

    .line 913
    invoke-virtual {p2, v0}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    goto/16 :goto_2
.end method

.method private makePduBody(Lorg/w3c/dom/smil/SMILDocument;)Lcom/google/android/mms/pdu/PduBody;
    .locals 20
    .param p1, "document"    # Lorg/w3c/dom/smil/SMILDocument;

    .prologue
    .line 298
    new-instance v11, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v11}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 300
    .local v11, "pb":Lcom/google/android/mms/pdu/PduBody;
    const/4 v3, 0x0

    .line 301
    .local v3, "hasForwardLock":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/mms/model/SlideModel;

    .line 302
    .local v12, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v12}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/mms/model/MediaModel;

    .line 303
    .local v8, "media":Lcom/android/mms/model/MediaModel;
    new-instance v10, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v10}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 305
    .local v10, "part":Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v17

    if-eqz v17, :cond_2

    move-object/from16 v16, v8

    .line 306
    check-cast v16, Lcom/android/mms/model/TextModel;

    .line 308
    .local v16, "text":Lcom/android/mms/model/TextModel;
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 312
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/TextModel;->getCharset()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    .line 316
    .end local v16    # "text":Lcom/android/mms/model/TextModel;
    :cond_2
    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 318
    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v14

    .line 320
    .local v14, "src":Ljava/lang/String;
    const-string v17, "cid:"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    .line 321
    .local v15, "startWithContentId":Z
    if-eqz v15, :cond_4

    .line 322
    const-string v17, "cid:"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 328
    .local v7, "location":Ljava/lang/String;
    :goto_1
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 331
    if-eqz v15, :cond_5

    .line 333
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 348
    :goto_2
    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 349
    check-cast v8, Lcom/android/mms/model/TextModel;

    .end local v8    # "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual {v8}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 359
    :cond_3
    :goto_3
    invoke-virtual {v11, v10}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    goto/16 :goto_0

    .line 324
    .end local v7    # "location":Ljava/lang/String;
    .restart local v8    # "media":Lcom/android/mms/model/MediaModel;
    :cond_4
    move-object v7, v14

    .restart local v7    # "location":Ljava/lang/String;
    goto :goto_1

    .line 336
    :cond_5
    const-string v17, "."

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 343
    .local v6, "index":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v6, v0, :cond_6

    if-nez v6, :cond_7

    :cond_6
    move-object v2, v7

    .line 345
    .local v2, "contentId":Ljava/lang/String;
    :goto_4
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    goto :goto_2

    .line 343
    .end local v2    # "contentId":Ljava/lang/String;
    :cond_7
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v7, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 350
    .end local v6    # "index":I
    :cond_8
    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v17

    if-nez v17, :cond_9

    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v17

    if-nez v17, :cond_9

    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v17

    if-nez v17, :cond_9

    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->isVcard()Z

    move-result v17

    if-eqz v17, :cond_a

    .line 351
    :cond_9
    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    .line 352
    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->isVcard()Z

    move-result v17

    if-eqz v17, :cond_3

    move-object/from16 v17, v8

    check-cast v17, Lcom/android/mms/model/VcardModel;

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/model/VcardModel;->getLookupUri()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 353
    check-cast v8, Lcom/android/mms/model/VcardModel;

    .end local v8    # "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual {v8}, Lcom/android/mms/model/VcardModel;->getLookupUri()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_3

    .line 356
    .restart local v8    # "media":Lcom/android/mms/model/MediaModel;
    :cond_a
    const-string v17, "Mms/slideshow"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unsupport media: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 362
    .end local v7    # "location":Ljava/lang/String;
    .end local v8    # "media":Lcom/android/mms/model/MediaModel;
    .end local v10    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v14    # "src":Ljava/lang/String;
    .end local v15    # "startWithContentId":Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/SlideshowModel;->mOtherAttachModels:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/OtherAttachModel;

    .line 363
    .local v1, "attachmodel":Lcom/android/mms/model/OtherAttachModel;
    new-instance v10, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v10}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 364
    .restart local v10    # "part":Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v1}, Lcom/android/mms/model/OtherAttachModel;->getContentType()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 365
    invoke-virtual {v1}, Lcom/android/mms/model/OtherAttachModel;->getContentLocation()Ljava/lang/String;

    move-result-object v7

    .line 366
    .restart local v7    # "location":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 367
    const-string v17, "."

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 368
    .restart local v6    # "index":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v6, v0, :cond_c

    move-object v2, v7

    .line 369
    .restart local v2    # "contentId":Ljava/lang/String;
    :goto_6
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 370
    invoke-virtual {v1}, Lcom/android/mms/model/OtherAttachModel;->getUri()Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    .line 371
    invoke-virtual {v11, v10}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    goto :goto_5

    .line 368
    .end local v2    # "contentId":Ljava/lang/String;
    :cond_c
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v7, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    .line 376
    .end local v1    # "attachmodel":Lcom/android/mms/model/OtherAttachModel;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "index":I
    .end local v7    # "location":Ljava/lang/String;
    .end local v10    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v12    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_d
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 377
    .local v9, "out":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/android/mms/dom/smil/parser/SmilXmlSerializer;->serialize(Lorg/w3c/dom/smil/SMILDocument;Ljava/io/OutputStream;)V

    .line 378
    new-instance v13, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v13}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 379
    .local v13, "smilPart":Lcom/google/android/mms/pdu/PduPart;
    const-string v17, "smil"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 380
    const-string v17, "smil.xml"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 381
    const-string v17, "application/smil"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 382
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 383
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v0, v13}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    .line 385
    return-object v11
.end method


# virtual methods
.method public add(ILcom/android/mms/model/SlideModel;)V
    .locals 6
    .param p1, "location"    # I
    .param p2, "object"    # Lcom/android/mms/model/SlideModel;

    .prologue
    .line 561
    if-eqz p2, :cond_1

    .line 562
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v1

    .line 563
    .local v1, "increaseSize":I
    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 565
    const-string v3, "Mms/slideshow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSlides.size() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "location"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v3, p1, :cond_1

    .line 567
    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v3, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 568
    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    .line 569
    invoke-virtual {p2, p0}, Lcom/android/mms/model/SlideModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 570
    iget-object v3, p0, Lcom/android/mms/model/Model;->mModelChangedObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/IModelChangedObserver;

    .line 571
    .local v2, "observer":Lcom/android/mms/model/IModelChangedObserver;
    invoke-virtual {p2, v2}, Lcom/android/mms/model/SlideModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 573
    .end local v2    # "observer":Lcom/android/mms/model/IModelChangedObserver;
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    .line 577
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "increaseSize":I
    :cond_1
    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 65
    check-cast p2, Lcom/android/mms/model/SlideModel;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V

    return-void
.end method

.method public add(Lcom/android/mms/model/SlideModel;)Z
    .locals 5
    .param p1, "object"    # Lcom/android/mms/model/SlideModel;

    .prologue
    const/4 v3, 0x1

    .line 480
    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v1

    .line 481
    .local v1, "increaseSize":I
    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 483
    if-eqz p1, :cond_1

    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 484
    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    .line 485
    invoke-virtual {p1, p0}, Lcom/android/mms/model/SlideModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 486
    iget-object v4, p0, Lcom/android/mms/model/Model;->mModelChangedObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/IModelChangedObserver;

    .line 487
    .local v2, "observer":Lcom/android/mms/model/IModelChangedObserver;
    invoke-virtual {p1, v2}, Lcom/android/mms/model/SlideModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 489
    .end local v2    # "observer":Lcom/android/mms/model/IModelChangedObserver;
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    .line 492
    .end local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 65
    check-cast p1, Lcom/android/mms/model/SlideModel;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+",
            "Lcom/android/mms/model/SlideModel;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 581
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/android/mms/model/SlideModel;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/android/mms/model/SlideModel;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 496
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/android/mms/model/SlideModel;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addOtherAttachModel(Lcom/android/mms/model/OtherAttachModel;)V
    .locals 2
    .param p1, "object"    # Lcom/android/mms/model/OtherAttachModel;

    .prologue
    .line 861
    if-nez p1, :cond_0

    .line 868
    :goto_0
    return-void

    .line 864
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/model/OtherAttachModel;->getAttachSize()I

    move-result v0

    .line 865
    .local v0, "size":I
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 866
    iget-object v1, p0, Lcom/android/mms/model/SlideshowModel;->mOtherAttachModels:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 867
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    goto :goto_0
.end method

.method public checkContentRestriction()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 848
    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/SlideModel;

    .line 849
    .local v3, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/MediaModel;

    .line 850
    .local v2, "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->checkContentRestriction()V

    goto :goto_0

    .line 853
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "media":Lcom/android/mms/model/MediaModel;
    .end local v3    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_1
    return-void
.end method

.method public checkMessageSize(I)V
    .locals 3
    .param p1, "increaseSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 717
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    .line 718
    .local v0, "cr":Lcom/android/mms/model/ContentRestriction;
    iget v1, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/android/mms/model/ContentRestriction;->checkMessageSize(IILandroid/content/ContentResolver;)V

    .line 719
    return-void
.end method

.method public clear()V
    .locals 5

    .prologue
    .line 500
    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 501
    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/SlideModel;

    .line 502
    .local v3, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v3, p0}, Lcom/android/mms/model/SlideModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 503
    iget-object v4, p0, Lcom/android/mms/model/Model;->mModelChangedObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/IModelChangedObserver;

    .line 504
    .local v2, "observer":Lcom/android/mms/model/IModelChangedObserver;
    invoke-virtual {v3, v2}, Lcom/android/mms/model/SlideModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 507
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "observer":Lcom/android/mms/model/IModelChangedObserver;
    .end local v3    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_1
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    .line 508
    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 509
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    .line 511
    :cond_2
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 518
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public decreaseMessageSize(I)V
    .locals 1
    .param p1, "decreaseSize"    # I

    .prologue
    .line 467
    if-lez p1, :cond_0

    .line 468
    iget v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    .line 470
    :cond_0
    return-void
.end method

.method public get(I)Lcom/android/mms/model/SlideModel;
    .locals 2
    .param p1, "location"    # I

    .prologue
    .line 585
    const/4 v0, 0x0

    .line 586
    .local v0, "slideModel":Lcom/android/mms/model/SlideModel;
    monitor-enter p0

    .line 587
    if-ltz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    move-object v0, v1

    .line 588
    :goto_0
    monitor-exit p0

    .line 589
    return-object v0

    .line 587
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 588
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMessageSize()I
    .locals 1

    .prologue
    .line 450
    iget v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    return v0
.end method

.method public getLayout()Lcom/android/mms/model/LayoutModel;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    return-object v0
.end method

.method public getOtherAttach()Lcom/android/mms/model/OtherAttachModel;
    .locals 2

    .prologue
    .line 936
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mOtherAttachModels:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/OtherAttachModel;

    return-object v0
.end method

.method public getTotalMessageSize()I
    .locals 1

    .prologue
    .line 457
    iget v0, p0, Lcom/android/mms/model/SlideshowModel;->mTotalMessageSize:I

    return v0
.end method

.method public hasOtherAttachModel()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 857
    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mOtherAttachModels:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 858
    .local v0, "other":Z
    :goto_0
    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mOtherAttachModels:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    return v1

    .end local v0    # "other":Z
    :cond_0
    move v0, v2

    .line 857
    goto :goto_0

    .restart local v0    # "other":Z
    :cond_1
    move v1, v2

    .line 858
    goto :goto_1
.end method

.method public hasVCalendar()Z
    .locals 4

    .prologue
    .line 956
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mOtherAttachModels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/OtherAttachModel;

    .line 957
    .local v1, "model":Lcom/android/mms/model/OtherAttachModel;
    invoke-virtual {v1}, Lcom/android/mms/model/OtherAttachModel;->getContentType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/x-vCalendar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 958
    const/4 v2, 0x1

    .line 961
    .end local v1    # "model":Lcom/android/mms/model/OtherAttachModel;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hasVCard()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 940
    iget-object v5, p0, Lcom/android/mms/model/SlideshowModel;->mOtherAttachModels:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/OtherAttachModel;

    .line 941
    .local v1, "model":Lcom/android/mms/model/OtherAttachModel;
    invoke-virtual {v1}, Lcom/android/mms/model/OtherAttachModel;->getContentType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "text/x-vCard"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    .line 951
    .end local v1    # "model":Lcom/android/mms/model/OtherAttachModel;
    :cond_1
    :goto_0
    return v3

    .line 946
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    if-le v5, v4, :cond_3

    move v3, v4

    .line 947
    goto :goto_0

    .line 949
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    .line 951
    .local v2, "slide":Lcom/android/mms/model/SlideModel;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasVcard()Z

    move-result v3

    goto :goto_0
.end method

.method public increaseMessageSize(I)V
    .locals 1
    .param p1, "increaseSize"    # I

    .prologue
    .line 461
    if-lez p1, :cond_0

    .line 462
    iget v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    .line 464
    :cond_0
    return-void
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isSimple()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 730
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 744
    :cond_0
    :goto_0
    return v3

    .line 733
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 735
    .local v0, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v2

    :goto_2
    add-int/2addr v4, v1

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasVcard()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_3
    add-int/2addr v1, v4

    if-ne v1, v2, :cond_0

    .line 741
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v1

    if-nez v1, :cond_0

    move v3, v2

    .line 744
    goto :goto_0

    :cond_2
    move v1, v3

    .line 735
    goto :goto_1

    :cond_3
    move v4, v3

    goto :goto_2

    :cond_4
    move v1, v3

    goto :goto_3
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 597
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public makeCopy()Lcom/google/android/mms/pdu/PduBody;
    .locals 1

    .prologue
    .line 415
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/model/SlideshowModel;->makePduBody(Lorg/w3c/dom/smil/SMILDocument;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    return-object v0
.end method

.method public onModelChanged(Lcom/android/mms/model/Model;Z)V
    .locals 1
    .param p1, "model"    # Lcom/android/mms/model/Model;
    .param p2, "dataChanged"    # Z

    .prologue
    const/4 v0, 0x0

    .line 692
    if-eqz p2, :cond_0

    .line 693
    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    .line 694
    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    .line 696
    :cond_0
    return-void
.end method

.method public openPartFiles(Landroid/content/ContentResolver;)Ljava/util/HashMap;
    .locals 12
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 389
    const/4 v5, 0x0

    .line 391
    .local v5, "openedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    iget-object v9, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/model/SlideModel;

    .line 392
    .local v7, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v7}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/model/MediaModel;

    .line 393
    .local v4, "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v9

    if-nez v9, :cond_1

    .line 396
    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v8

    .line 399
    .local v8, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p1, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 400
    .local v3, "is":Ljava/io/InputStream;
    if-eqz v3, :cond_1

    .line 401
    if-nez v5, :cond_2

    .line 402
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .end local v5    # "openedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    .local v6, "openedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    move-object v5, v6

    .line 404
    .end local v6    # "openedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    .restart local v5    # "openedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    :cond_2
    invoke-virtual {v5, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 406
    .end local v3    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 407
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v9, "Mms/slideshow"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "openPartFiles couldn\'t open: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 411
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "media":Lcom/android/mms/model/MediaModel;
    .end local v7    # "slide":Lcom/android/mms/model/SlideModel;
    .end local v8    # "uri":Landroid/net/Uri;
    :cond_3
    return-object v5
.end method

.method public prepareForSend()V
    .locals 3

    .prologue
    .line 766
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 767
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v0

    .line 768
    .local v0, "text":Lcom/android/mms/model/TextModel;
    if-eqz v0, :cond_0

    .line 769
    invoke-virtual {v0}, Lcom/android/mms/model/TextModel;->cloneText()V

    .line 772
    .end local v0    # "text":Lcom/android/mms/model/TextModel;
    :cond_0
    return-void
.end method

.method protected registerModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V
    .locals 3
    .param p1, "observer"    # Lcom/android/mms/model/IModelChangedObserver;

    .prologue
    .line 665
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    invoke-virtual {v2, p1}, Lcom/android/mms/model/LayoutModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 667
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 668
    .local v1, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1, p1}, Lcom/android/mms/model/SlideModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 670
    .end local v1    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_0
    return-void
.end method

.method public removOtherAttach()V
    .locals 3

    .prologue
    .line 929
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mOtherAttachModels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/OtherAttachModel;

    .line 930
    .local v1, "model":Lcom/android/mms/model/OtherAttachModel;
    invoke-virtual {v1}, Lcom/android/mms/model/OtherAttachModel;->getAttachSize()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideshowModel;->decreaseMessageSize(I)V

    goto :goto_0

    .line 932
    .end local v1    # "model":Lcom/android/mms/model/OtherAttachModel;
    :cond_0
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mOtherAttachModels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 933
    return-void
.end method

.method public remove(I)Lcom/android/mms/model/SlideModel;
    .locals 5
    .param p1, "location"    # I

    .prologue
    .line 609
    const/4 v1, 0x0

    .line 610
    .local v1, "slide":Lcom/android/mms/model/SlideModel;
    monitor-enter p0

    .line 612
    :try_start_0
    const-string v2, "Mms/slideshow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSlides.size() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v2, p1, :cond_0

    .line 614
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/mms/model/SlideModel;

    move-object v1, v0

    .line 617
    :cond_0
    if-eqz v1, :cond_1

    .line 618
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideshowModel;->decreaseMessageSize(I)V

    .line 619
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->unregisterAllModelChangedObservers()V

    .line 620
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    .line 622
    :cond_1
    monitor-exit p0

    .line 623
    return-object v1

    .line 622
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 530
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 531
    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 532
    .local v0, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideshowModel;->decreaseMessageSize(I)V

    .line 533
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->unregisterAllModelChangedObservers()V

    .line 534
    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    .line 537
    .end local v0    # "slide":Lcom/android/mms/model/SlideModel;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 541
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 545
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(ILcom/android/mms/model/SlideModel;)Lcom/android/mms/model/SlideModel;
    .locals 6
    .param p1, "location"    # I
    .param p2, "object"    # Lcom/android/mms/model/SlideModel;

    .prologue
    .line 627
    iget-object v5, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/model/SlideModel;

    .line 628
    .local v4, "slide":Lcom/android/mms/model/SlideModel;
    if-eqz p2, :cond_1

    .line 629
    const/4 v3, 0x0

    .line 630
    .local v3, "removeSize":I
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v0

    .line 631
    .local v0, "addSize":I
    if-eqz v4, :cond_0

    .line 632
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v3

    .line 634
    :cond_0
    if-le v0, v3, :cond_3

    .line 635
    sub-int v5, v0, v3

    invoke-virtual {p0, v5}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 636
    sub-int v5, v0, v3

    invoke-virtual {p0, v5}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    .line 642
    .end local v0    # "addSize":I
    .end local v3    # "removeSize":I
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v5, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "slide":Lcom/android/mms/model/SlideModel;
    check-cast v4, Lcom/android/mms/model/SlideModel;

    .line 643
    .restart local v4    # "slide":Lcom/android/mms/model/SlideModel;
    if-eqz v4, :cond_2

    .line 644
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->unregisterAllModelChangedObservers()V

    .line 647
    :cond_2
    if-eqz p2, :cond_4

    .line 648
    invoke-virtual {p2, p0}, Lcom/android/mms/model/SlideModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 649
    iget-object v5, p0, Lcom/android/mms/model/Model;->mModelChangedObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/IModelChangedObserver;

    .line 650
    .local v2, "observer":Lcom/android/mms/model/IModelChangedObserver;
    invoke-virtual {p2, v2}, Lcom/android/mms/model/SlideModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_1

    .line 638
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "observer":Lcom/android/mms/model/IModelChangedObserver;
    .restart local v0    # "addSize":I
    .restart local v3    # "removeSize":I
    :cond_3
    sub-int v5, v3, v0

    invoke-virtual {p0, v5}, Lcom/android/mms/model/SlideshowModel;->decreaseMessageSize(I)V

    goto :goto_0

    .line 654
    .end local v0    # "addSize":I
    .end local v3    # "removeSize":I
    :cond_4
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    .line 655
    return-object v4
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 65
    check-cast p2, Lcom/android/mms/model/SlideModel;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/model/SlideshowModel;->set(ILcom/android/mms/model/SlideModel;)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    return-object v0
.end method

.method public setCurrentMessageSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 439
    iput p1, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    .line 440
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 659
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public sync(Lcom/google/android/mms/pdu/PduBody;)V
    .locals 7
    .param p1, "pb"    # Lcom/google/android/mms/pdu/PduBody;

    .prologue
    .line 699
    iget-object v6, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/model/SlideModel;

    .line 700
    .local v5, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/MediaModel;

    .line 701
    .local v3, "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentLocation(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v4

    .line 702
    .local v4, "part":Lcom/google/android/mms/pdu/PduPart;
    if-eqz v4, :cond_1

    .line 703
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/mms/model/MediaModel;->setUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 707
    .end local v3    # "media":Lcom/android/mms/model/MediaModel;
    .end local v4    # "part":Lcom/google/android/mms/pdu/PduPart;
    :cond_2
    iget-object v6, p0, Lcom/android/mms/model/SlideshowModel;->mOtherAttachModels:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/OtherAttachModel;

    .line 708
    .local v0, "attachmodel":Lcom/android/mms/model/OtherAttachModel;
    invoke-virtual {v0}, Lcom/android/mms/model/OtherAttachModel;->getContentLocation()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentLocation(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v4

    .line 709
    .restart local v4    # "part":Lcom/google/android/mms/pdu/PduPart;
    if-eqz v4, :cond_3

    .line 710
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/mms/model/OtherAttachModel;->setUri(Landroid/net/Uri;)V

    goto :goto_1

    .line 714
    .end local v0    # "attachmodel":Lcom/android/mms/model/OtherAttachModel;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v5    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_4
    return-void
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 557
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toPduBody()Lcom/google/android/mms/pdu/PduBody;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    if-nez v0, :cond_0

    .line 291
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    .line 292
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    invoke-direct {p0, v0}, Lcom/android/mms/model/SlideshowModel;->makePduBody(Lorg/w3c/dom/smil/SMILDocument;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    return-object v0
.end method

.method protected unregisterAllModelChangedObserversInDescendants()V
    .locals 3

    .prologue
    .line 684
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    invoke-virtual {v2}, Lcom/android/mms/model/LayoutModel;->unregisterAllModelChangedObservers()V

    .line 686
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 687
    .local v1, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->unregisterAllModelChangedObservers()V

    goto :goto_0

    .line 689
    .end local v1    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_0
    return-void
.end method

.method protected unregisterModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V
    .locals 3
    .param p1, "observer"    # Lcom/android/mms/model/IModelChangedObserver;

    .prologue
    .line 675
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    invoke-virtual {v2, p1}, Lcom/android/mms/model/LayoutModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 677
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 678
    .local v1, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1, p1}, Lcom/android/mms/model/SlideModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 680
    .end local v1    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_0
    return-void
.end method
