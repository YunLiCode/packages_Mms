.class public Lcom/android/mms/ui/SlideshowActivity;
.super Landroid/app/Activity;
.source "SlideshowActivity.java"

# interfaces
.implements Lorg/w3c/dom/events/EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mMediaController:Landroid/widget/MediaController;

.field mScreenLightWL:Landroid/os/PowerManager$WakeLock;

.field private mSlideCount:I

.field private mSlideView:Lcom/android/mms/ui/SlideView;

.field private mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

.field private mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

.field private mSmilPlayerController:Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 377
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/SlideshowActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/mms/ui/SlideshowActivity;Lcom/android/mms/dom/smil/SmilPlayer;)Lcom/android/mms/dom/smil/SmilPlayer;
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/SlideshowActivity;
    .param p1, "x1"    # Lcom/android/mms/dom/smil/SmilPlayer;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SlideshowActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/SlideshowActivity;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->initMediaController()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SlideshowActivity;)Landroid/widget/MediaController;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/SlideshowActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/mms/ui/SlideshowActivity;Landroid/widget/MediaController;)Landroid/widget/MediaController;
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/SlideshowActivity;
    .param p1, "x1"    # Landroid/widget/MediaController;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/SlideView;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/SlideshowActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SlideshowActivity;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/SlideshowActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/mms/ui/SlideshowActivity;Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/SlideshowActivity;
    .param p1, "x1"    # Lorg/w3c/dom/smil/SMILDocument;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    return-object p1
.end method

.method static synthetic access$500(Lorg/w3c/dom/smil/SMILDocument;)Z
    .locals 1
    .param p0, "x0"    # Lorg/w3c/dom/smil/SMILDocument;

    .prologue
    .line 62
    invoke-static {p0}, Lcom/android/mms/ui/SlideshowActivity;->isMMSConformance(Lorg/w3c/dom/smil/SMILDocument;)Z

    move-result v0

    return v0
.end method

.method private initMediaController()V
    .locals 3

    .prologue
    .line 249
    new-instance v0, Landroid/widget/MediaController;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    .line 250
    new-instance v0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;-><init>(Lcom/android/mms/ui/SlideshowActivity;Lcom/android/mms/dom/smil/SmilPlayer;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayerController:Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;

    .line 251
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayerController:Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 252
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    const v1, 0x7f0a0091

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideshowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 253
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    new-instance v1, Lcom/android/mms/ui/SlideshowActivity$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SlideshowActivity$2;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    new-instance v2, Lcom/android/mms/ui/SlideshowActivity$3;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/SlideshowActivity$3;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/MediaController;->setPrevNextListeners(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 264
    return-void
.end method

.method private static final isMMSConformance(Lorg/w3c/dom/smil/SMILDocument;)Z
    .locals 15
    .param p0, "smilDoc"    # Lorg/w3c/dom/smil/SMILDocument;

    .prologue
    .line 84
    invoke-interface {p0}, Lorg/w3c/dom/smil/SMILDocument;->getHead()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v2

    .line 85
    .local v2, "head":Lorg/w3c/dom/smil/SMILElement;
    if-nez v2, :cond_0

    .line 87
    const/4 v13, 0x0

    .line 153
    :goto_0
    return v13

    .line 89
    :cond_0
    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 90
    .local v1, "children":Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_2

    .line 92
    :cond_1
    const/4 v13, 0x0

    goto :goto_0

    .line 94
    :cond_2
    const/4 v13, 0x0

    invoke-interface {v1, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 95
    .local v5, "layout":Lorg/w3c/dom/Node;
    if-eqz v5, :cond_3

    const-string v13, "layout"

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 97
    :cond_3
    const/4 v13, 0x0

    goto :goto_0

    .line 99
    :cond_4
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 100
    .local v7, "layoutChildren":Lorg/w3c/dom/NodeList;
    if-nez v7, :cond_5

    .line 102
    const/4 v13, 0x0

    goto :goto_0

    .line 104
    :cond_5
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    .line 105
    .local v11, "num":I
    if-gtz v11, :cond_6

    .line 107
    const/4 v13, 0x0

    goto :goto_0

    .line 109
    :cond_6
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v11, :cond_10

    .line 110
    invoke-interface {v7, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 111
    .local v6, "layoutChild":Lorg/w3c/dom/Node;
    if-nez v6, :cond_7

    .line 113
    const/4 v13, 0x0

    goto :goto_0

    .line 115
    :cond_7
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    .line 116
    .local v9, "name":Ljava/lang/String;
    const-string v13, "root-layout"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 109
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 118
    :cond_9
    const-string v13, "region"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 119
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    .line 120
    .local v8, "map":Lorg/w3c/dom/NamedNodeMap;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    invoke-interface {v8}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v13

    if-ge v4, v13, :cond_8

    .line 121
    invoke-interface {v8, v4}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 122
    .local v10, "node":Lorg/w3c/dom/Node;
    if-nez v10, :cond_a

    .line 123
    const/4 v13, 0x0

    goto :goto_0

    .line 125
    :cond_a
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "attrName":Ljava/lang/String;
    const-string v13, "left"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    const-string v13, "top"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    const-string v13, "height"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    const-string v13, "width"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    const-string v13, "fit"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 120
    .end local v10    # "node":Lorg/w3c/dom/Node;
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 131
    .restart local v10    # "node":Lorg/w3c/dom/Node;
    :cond_c
    const-string v13, "id"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 133
    instance-of v13, v10, Lcom/android/mms/dom/AttrImpl;

    if-eqz v13, :cond_d

    .line 134
    check-cast v10, Lcom/android/mms/dom/AttrImpl;

    .end local v10    # "node":Lorg/w3c/dom/Node;
    invoke-virtual {v10}, Lcom/android/mms/dom/AttrImpl;->getValue()Ljava/lang/String;

    move-result-object v12

    .line 138
    .local v12, "value":Ljava/lang/String;
    const-string v13, "Text"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    const-string v13, "Image"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    .line 142
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 136
    .end local v12    # "value":Ljava/lang/String;
    .restart local v10    # "node":Lorg/w3c/dom/Node;
    :cond_d
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 145
    :cond_e
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 150
    .end local v0    # "attrName":Ljava/lang/String;
    .end local v4    # "j":I
    .end local v8    # "map":Lorg/w3c/dom/NamedNodeMap;
    .end local v10    # "node":Lorg/w3c/dom/Node;
    :cond_f
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 153
    .end local v6    # "layoutChild":Lorg/w3c/dom/Node;
    .end local v9    # "name":Ljava/lang/String;
    :cond_10
    const/4 v13, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .locals 3
    .param p1, "evt"    # Lorg/w3c/dom/events/Event;

    .prologue
    .line 444
    move-object v0, p1

    .line 445
    .local v0, "event":Lorg/w3c/dom/events/Event;
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/ui/SlideshowActivity$4;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/ui/SlideshowActivity$4;-><init>(Lcom/android/mms/ui/SlideshowActivity;Lorg/w3c/dom/events/Event;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 454
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 158
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 159
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/android/mms/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;

    .line 161
    const-string v5, "power"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/SlideshowActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 162
    .local v4, "screenLightPM":Landroid/os/PowerManager;
    const/16 v5, 0x1a

    const-string v6, "Light screen"

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/SlideshowActivity;->mScreenLightWL:Landroid/os/PowerManager$WakeLock;

    .line 165
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/SlideshowActivity;->requestWindowFeature(I)Z

    .line 166
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, -0x3

    invoke-virtual {v5, v6}, Landroid/view/Window;->setFormat(I)V

    .line 167
    const v5, 0x7f04002a

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/SlideshowActivity;->setContentView(I)V

    .line 169
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 170
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 174
    .local v3, "msg":Landroid/net/Uri;
    :try_start_0
    invoke-static {p0, v3}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    .line 175
    .local v2, "model":Lcom/android/mms/model/SlideshowModel;
    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    iput v5, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideCount:I
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    const v5, 0x7f0a0091

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/SlideshowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/mms/ui/SlideView;

    iput-object v5, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    .line 183
    const-string v5, "SlideshowPresenter"

    iget-object v6, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    invoke-static {v5, p0, v6, v2}, Lcom/android/mms/ui/PresenterFactory;->getPresenter(Ljava/lang/String;Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)Lcom/android/mms/ui/Presenter;

    .line 185
    iget-object v5, p0, Lcom/android/mms/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/mms/ui/SlideshowActivity$1;

    invoke-direct {v6, p0, v2}, Lcom/android/mms/ui/SlideshowActivity$1;-><init>(Lcom/android/mms/ui/SlideshowActivity;Lcom/android/mms/model/SlideshowModel;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 246
    .end local v2    # "model":Lcom/android/mms/model/SlideshowModel;
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Lcom/google/android/mms/MmsException;
    const-string v5, "SlideshowActivity"

    const-string v6, "Cannot present the slide show."

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 335
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 336
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mScreenLightWL:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mScreenLightWL:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mScreenLightWL:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 339
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 351
    sparse-switch p1, :sswitch_data_0

    .line 370
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    .line 374
    :cond_0
    :goto_0
    :sswitch_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 362
    :sswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayedState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->stop()V

    goto :goto_0

    .line 351
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x52 -> :sswitch_0
        0xa4 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 295
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 296
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mScreenLightWL:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mScreenLightWL:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mScreenLightWL:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    check-cast v0, Lorg/w3c/dom/events/EventTarget;

    const-string v1, "SimlDocumentEnd"

    const/4 v2, 0x0

    invoke-interface {v0, v1, p0, v2}, Lorg/w3c/dom/events/EventTarget;->removeEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayerController:Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 304
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->pause()V

    .line 305
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayerController:Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->pause()V

    .line 307
    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    check-cast v0, Lorg/w3c/dom/events/EventTarget;

    const-string v1, "SimlDocumentEnd"

    const/4 v2, 0x0

    invoke-interface {v0, v1, p0, v2}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 282
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 283
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mScreenLightWL:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mScreenLightWL:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mScreenLightWL:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_2

    .line 289
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->reload()V

    .line 291
    :cond_2
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 343
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 344
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mScreenLightWL:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mScreenLightWL:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mScreenLightWL:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 347
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 311
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 312
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mScreenLightWL:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mScreenLightWL:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mScreenLightWL:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_2

    .line 316
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->stop()V

    .line 319
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->stopWhenReload()V

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_2

    .line 323
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 327
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    if-eqz v0, :cond_3

    .line 328
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideView;->setImage(Landroid/net/Uri;)V

    .line 331
    :cond_3
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    .line 271
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
