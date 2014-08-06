.class public Lcom/android/mms/ui/SlideView;
.super Landroid/widget/AbsoluteLayout;
.source "SlideView.java"

# interfaces
.implements Lcom/android/mms/ui/AdaptableSlideViewInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SlideView$Position;
    }
.end annotation


# instance fields
.field private mAudioInfoView:Landroid/view/View;

.field private mAudioPlayer:Landroid/media/MediaPlayer;

.field private mConformanceMode:Z

.field private mImageView:Lcom/android/mms/ui/MTKImageView;

.field private mIsPrepared:Z

.field private mMediaController:Landroid/widget/MediaController;

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mScrollText:Landroid/widget/ScrollView;

.field private mScrollViewPort:Landroid/widget/ScrollView;

.field private mSeekWhenPrepared:I

.field private mSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

.field private mStartWhenPrepared:Z

.field private mStopWhenPrepared:Z

.field private mTextView:Landroid/widget/TextView;

.field private mVcardInfoView:Landroid/view/View;

.field private mVideoView:Landroid/widget/VideoView;

.field private mViewPort:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    .line 79
    new-instance v0, Lcom/android/mms/ui/SlideView$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideView$1;-><init>(Lcom/android/mms/ui/SlideView;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    new-instance v0, Lcom/android/mms/ui/SlideView$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideView$1;-><init>(Lcom/android/mms/ui/SlideView;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 107
    return-void
.end method

.method static synthetic access$002(Lcom/android/mms/ui/SlideView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/SlideView;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SlideView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/SlideView;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mSeekWhenPrepared:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/mms/ui/SlideView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/SlideView;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/android/mms/ui/SlideView;->mSeekWhenPrepared:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SlideView;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/SlideView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/mms/ui/SlideView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/SlideView;
    .param p1, "x1"    # Landroid/media/MediaPlayer;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SlideView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/SlideView;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/mms/ui/SlideView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/SlideView;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SlideView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/SlideView;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/mms/ui/SlideView;->displayAudioInfo()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/SlideView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/SlideView;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStopWhenPrepared:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/mms/ui/SlideView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/SlideView;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->mStopWhenPrepared:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/mms/ui/SlideView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/SlideView;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/mms/ui/SlideView;->hideAudioInfo()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/ui/SlideView;)Landroid/widget/VideoView;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/SlideView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/SlideView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/SlideView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mViewPort:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/SlideView;)Landroid/widget/MediaController;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/SlideView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMediaController:Landroid/widget/MediaController;

    return-object v0
.end method

.method private displayAudioInfo()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 226
    :cond_0
    return-void
.end method

.method private hideAudioInfo()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 232
    :cond_0
    return-void
.end method

.method private initAudioInfoView(Ljava/lang/String;)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x52

    const/4 v7, -0x1

    .line 199
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    if-nez v3, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 201
    .local v1, "factory":Landroid/view/LayoutInflater;
    const v3, 0x7f040022

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    .line 202
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 203
    .local v2, "height":I
    iget-boolean v3, p0, Lcom/android/mms/ui/SlideView;->mConformanceMode:Z

    if-eqz v3, :cond_1

    .line 204
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mViewPort:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    .end local v1    # "factory":Landroid/view/LayoutInflater;
    .end local v2    # "height":I
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    const v4, 0x7f0a0089

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 216
    .local v0, "audioName":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    const/high16 v3, -0x1000000

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 219
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 220
    return-void

    .line 207
    .end local v0    # "audioName":Landroid/widget/TextView;
    .restart local v1    # "factory":Landroid/view/LayoutInflater;
    .restart local v2    # "height":I
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    new-instance v4, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getHeight()I

    move-result v6

    add-int/lit8 v6, v6, -0x52

    invoke-direct {v4, v7, v8, v5, v6}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, v3, v4}, Lcom/android/mms/ui/SlideView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public enableMMSConformanceMode(IIII)V
    .locals 10
    .param p1, "textLeft"    # I
    .param p2, "textTop"    # I
    .param p3, "imageLeft"    # I
    .param p4, "imageTop"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v7, -0x2

    const/4 v6, 0x5

    .line 509
    iput-boolean v5, p0, Lcom/android/mms/ui/SlideView;->mConformanceMode:Z

    .line 510
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mScrollViewPort:Landroid/widget/ScrollView;

    if-nez v3, :cond_0

    .line 511
    new-instance v3, Lcom/android/mms/ui/SlideView$2;

    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/android/mms/ui/SlideView$2;-><init>(Lcom/android/mms/ui/SlideView;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/mms/ui/SlideView;->mScrollViewPort:Landroid/widget/ScrollView;

    .line 550
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mScrollViewPort:Landroid/widget/ScrollView;

    invoke-virtual {v3, v8}, Landroid/widget/ScrollView;->setScrollBarStyle(I)V

    .line 551
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/mms/ui/SlideView;->mViewPort:Landroid/widget/LinearLayout;

    .line 552
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mViewPort:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 553
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mViewPort:Landroid/widget/LinearLayout;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 554
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mViewPort:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/android/mms/ui/SlideView$3;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/SlideView$3;-><init>(Lcom/android/mms/ui/SlideView;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 561
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mScrollViewPort:Landroid/widget/ScrollView;

    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->mViewPort:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v9, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 563
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mScrollViewPort:Landroid/widget/ScrollView;

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SlideView;->addView(Landroid/view/View;)V

    .line 567
    :cond_0
    new-instance v2, Ljava/util/TreeMap;

    new-instance v3, Lcom/android/mms/ui/SlideView$4;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/SlideView$4;-><init>(Lcom/android/mms/ui/SlideView;)V

    invoke-direct {v2, v3}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 584
    .local v2, "viewsByPosition":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Lcom/android/mms/ui/SlideView$Position;Landroid/view/View;>;"
    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    .line 585
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    .line 586
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 587
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    const/high16 v4, 0x41900000

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 588
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 589
    new-instance v3, Lcom/android/mms/ui/SlideView$Position;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/mms/ui/SlideView$Position;-><init>(Lcom/android/mms/ui/SlideView;II)V

    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    :cond_1
    if-ltz p3, :cond_2

    if-ltz p4, :cond_2

    .line 593
    new-instance v3, Lcom/android/mms/ui/MTKImageView;

    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/mms/ui/MTKImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/android/mms/ui/MTKImageView;

    .line 595
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/android/mms/ui/MTKImageView;

    invoke-virtual {v3, v8, v6, v8, v6}, Lcom/android/mms/ui/MTKImageView;->setPadding(IIII)V

    .line 596
    new-instance v3, Lcom/android/mms/ui/SlideView$Position;

    invoke-direct {v3, p0, p3, p4}, Lcom/android/mms/ui/SlideView$Position;-><init>(Lcom/android/mms/ui/SlideView;II)V

    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/android/mms/ui/MTKImageView;

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    new-instance v3, Landroid/widget/VideoView;

    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    .line 600
    new-instance v3, Lcom/android/mms/ui/SlideView$Position;

    add-int/lit8 v4, p3, 0x1

    invoke-direct {v3, p0, v4, p4}, Lcom/android/mms/ui/SlideView$Position;-><init>(Lcom/android/mms/ui/SlideView;II)V

    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    :cond_2
    invoke-virtual {v2}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 603
    .local v1, "view":Landroid/view/View;
    instance-of v3, v1, Landroid/widget/VideoView;

    if-eqz v3, :cond_3

    .line 604
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mViewPort:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/mms/layout/LayoutParameters;->getHeight()I

    move-result v5

    invoke-direct {v4, v9, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 610
    :goto_1
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 607
    :cond_3
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mViewPort:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 612
    .end local v1    # "view":Landroid/view/View;
    :cond_4
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 456
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->onSizeChanged(IIII)V

    .line 458
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

    add-int/lit8 v1, p2, -0x52

    invoke-interface {v0, p1, v1}, Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;->onSizeChanged(II)V

    .line 464
    :cond_0
    return-void
.end method

.method public pauseAudio()V
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 368
    invoke-direct {p0}, Lcom/android/mms/ui/SlideView;->displayAudioInfo()V

    .line 371
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    .line 372
    return-void
.end method

.method public pauseVideo()V
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 407
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 421
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/android/mms/ui/MTKImageView;

    if-eqz v0, :cond_1

    .line 426
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/android/mms/ui/MTKImageView;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MTKImageView;->setVisibility(I)V

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 430
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->stopAudio()V

    .line 433
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_3

    .line 434
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->stopVideo()V

    .line 435
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 438
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 439
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 442
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mScrollViewPort:Landroid/widget/ScrollView;

    if-eqz v0, :cond_5

    .line 443
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mScrollViewPort:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 444
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mScrollViewPort:Landroid/widget/ScrollView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v1, v3, v3, v2, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 448
    :cond_5
    return-void
.end method

.method public seekAudio(I)V
    .locals 1
    .param p1, "seekTo"    # I

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 380
    :goto_0
    return-void

    .line 378
    :cond_0
    iput p1, p0, Lcom/android/mms/ui/SlideView;->mSeekWhenPrepared:I

    goto :goto_0
.end method

.method public seekVideo(I)V
    .locals 1
    .param p1, "seekTo"    # I

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 411
    if-lez p1, :cond_0

    .line 415
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 418
    :cond_0
    return-void
.end method

.method public setAudio(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p1, "audio"    # Landroid/net/Uri;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .local p3, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 235
    if-nez p1, :cond_0

    .line 236
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Audio URI may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 244
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 245
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 246
    iput-object v3, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    .line 250
    :cond_1
    iput-boolean v2, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    .line 251
    iput-boolean v2, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    .line 252
    iput v2, p0, Lcom/android/mms/ui/SlideView;->mSeekWhenPrepared:I

    .line 253
    iput-boolean v2, p0, Lcom/android/mms/ui/SlideView;->mStopWhenPrepared:Z

    .line 256
    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    .line 257
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 258
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 259
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/mms/ui/SlideView;->initAudioInfoView(Ljava/lang/String;)V

    .line 266
    return-void

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "SlideView"

    const-string v2, "Unexpected IOException."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 262
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 263
    iput-object v3, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    goto :goto_0
.end method

.method public setImage(Landroid/net/Uri;)V
    .locals 6
    .param p1, "imageUri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 133
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/android/mms/ui/MTKImageView;

    if-nez v2, :cond_0

    .line 134
    new-instance v2, Lcom/android/mms/ui/MTKImageView;

    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/mms/ui/MTKImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/android/mms/ui/MTKImageView;

    .line 135
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/android/mms/ui/MTKImageView;

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v3, v4, v4}, Lcom/android/mms/ui/MTKImageView;->setPadding(IIII)V

    .line 136
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/android/mms/ui/MTKImageView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MTKImageView;->setBackgroundColor(I)V

    .line 137
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/android/mms/ui/MTKImageView;

    new-instance v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v3, v5, v5, v4, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, v2, v3}, Lcom/android/mms/ui/SlideView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/android/mms/ui/MTKImageView;

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/MTKImageView;->setVisibility(I)V

    .line 145
    if-nez p1, :cond_1

    .line 146
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02006a

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 148
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/android/mms/ui/MTKImageView;

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/MTKImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 156
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/android/mms/ui/MTKImageView;

    invoke-virtual {v2, p1}, Lcom/android/mms/ui/MTKImageView;->setImageURI(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v1

    .line 154
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    const-string v2, "SlideView"

    const-string v3, "setImage: out of memory: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x5

    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 110
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/android/mms/ui/MTKImageView;

    if-nez v1, :cond_0

    .line 111
    new-instance v1, Lcom/android/mms/ui/MTKImageView;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/mms/ui/MTKImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/android/mms/ui/MTKImageView;

    .line 112
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/android/mms/ui/MTKImageView;

    invoke-virtual {v1, v3, v5, v3, v5}, Lcom/android/mms/ui/MTKImageView;->setPadding(IIII)V

    .line 113
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/android/mms/ui/MTKImageView;

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v2, v4, v4, v3, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/SlideView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    :cond_0
    if-nez p2, :cond_1

    .line 121
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02006a

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 124
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/android/mms/ui/MTKImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MTKImageView;->setVisibility(I)V

    .line 125
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/android/mms/ui/MTKImageView;

    invoke-virtual {v1, p2}, Lcom/android/mms/ui/MTKImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v1, "SlideView"

    const-string v2, "setImage: out of memory: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setImageRegion(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/android/mms/ui/MTKImageView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mConformanceMode:Z

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/android/mms/ui/MTKImageView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v1, p3, p4, p1, p2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MTKImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    :cond_0
    return-void
.end method

.method public setImageRegionFit(Ljava/lang/String;)V
    .locals 0
    .param p1, "fit"    # Ljava/lang/String;

    .prologue
    .line 168
    return-void
.end method

.method public setImageVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    const/4 v0, 0x0

    .line 309
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/android/mms/ui/MTKImageView;

    if-eqz v1, :cond_0

    .line 310
    iget-boolean v1, p0, Lcom/android/mms/ui/SlideView;->mConformanceMode:Z

    if-eqz v1, :cond_2

    .line 311
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/android/mms/ui/MTKImageView;

    if-eqz p1, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/mms/ui/MTKImageView;->setVisibility(I)V

    .line 316
    :cond_0
    :goto_1
    return-void

    .line 311
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    .line 313
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/android/mms/ui/MTKImageView;

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v1, v0}, Lcom/android/mms/ui/MTKImageView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x4

    goto :goto_2
.end method

.method public setMediaController(Landroid/widget/MediaController;)V
    .locals 0
    .param p1, "mediaController"    # Landroid/widget/MediaController;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/mms/ui/SlideView;->mMediaController:Landroid/widget/MediaController;

    .line 196
    return-void
.end method

.method public setOnSizeChangedListener(Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

    .prologue
    .line 467
    iput-object p1, p0, Lcom/android/mms/ui/SlideView;->mSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

    .line 468
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x2

    const/4 v2, 0x0

    .line 269
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mConformanceMode:Z

    if-nez v0, :cond_2

    .line 270
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    if-nez v0, :cond_0

    .line 271
    new-instance v0, Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    .line 272
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    const/high16 v1, 0x3000000

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setScrollBarStyle(I)V

    .line 273
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v1, v3, v3, v2, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/SlideView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 280
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    .line 281
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 282
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->requestFocus()Z

    .line 286
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 288
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000

    const v2, 0x3fa66666

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 289
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->getFontSize(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 290
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 293
    return-void
.end method

.method public setTextRegion(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mConformanceMode:Z

    if-nez v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v1, p3, p4, p1, p2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    :cond_0
    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    const/4 v0, 0x0

    .line 319
    iget-boolean v1, p0, Lcom/android/mms/ui/SlideView;->mConformanceMode:Z

    if-eqz v1, :cond_2

    .line 320
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 321
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 326
    :cond_0
    :goto_1
    return-void

    .line 321
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    .line 323
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    if-eqz v1, :cond_0

    .line 324
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x4

    goto :goto_2
.end method

.method public setVcard(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 9
    .param p1, "lookupUri"    # Landroid/net/Uri;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x52

    const/4 v7, -0x1

    .line 620
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mVcardInfoView:Landroid/view/View;

    if-nez v3, :cond_0

    .line 621
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 622
    .local v0, "factory":Landroid/view/LayoutInflater;
    const v3, 0x7f040029

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/SlideView;->mVcardInfoView:Landroid/view/View;

    .line 623
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mVcardInfoView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 624
    .local v1, "height":I
    iget-boolean v3, p0, Lcom/android/mms/ui/SlideView;->mConformanceMode:Z

    if-eqz v3, :cond_1

    .line 625
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mViewPort:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->mVcardInfoView:Landroid/view/View;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 633
    .end local v0    # "factory":Landroid/view/LayoutInflater;
    .end local v1    # "height":I
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mVcardInfoView:Landroid/view/View;

    const v4, 0x7f0a0089

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 634
    .local v2, "vcardName":Landroid/widget/TextView;
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 636
    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 638
    return-void

    .line 628
    .end local v2    # "vcardName":Landroid/widget/TextView;
    .restart local v0    # "factory":Landroid/view/LayoutInflater;
    .restart local v1    # "height":I
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mVcardInfoView:Landroid/view/View;

    new-instance v4, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getHeight()I

    move-result v6

    add-int/lit8 v6, v6, -0x52

    invoke-direct {v4, v7, v8, v5, v6}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, v3, v4}, Lcom/android/mms/ui/SlideView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setVcardVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    const/4 v0, 0x0

    .line 642
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVcardInfoView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 643
    iget-boolean v1, p0, Lcom/android/mms/ui/SlideView;->mConformanceMode:Z

    if-eqz v1, :cond_2

    .line 644
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVcardInfoView:Landroid/view/View;

    if-eqz p1, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 649
    :cond_0
    :goto_1
    return-void

    .line 644
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    .line 646
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVcardInfoView:Landroid/view/View;

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x4

    goto :goto_2
.end method

.method public setVideo(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "video"    # Landroid/net/Uri;

    .prologue
    const/4 v3, -0x2

    const/4 v2, 0x0

    .line 172
    if-nez p1, :cond_0

    .line 173
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/SlideView;->setImage(Landroid/net/Uri;)V

    .line 192
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-nez v0, :cond_1

    .line 179
    new-instance v0, Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    .line 180
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v1, v3, v3, v2, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/SlideView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public setVideoRegion(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mConformanceMode:Z

    if-nez v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v1, p3, p4, p1, p2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    :cond_0
    return-void
.end method

.method public setVideoThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 615
    return-void
.end method

.method public setVideoVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    const/4 v0, 0x0

    .line 329
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-eqz v1, :cond_0

    .line 330
    iget-boolean v1, p0, Lcom/android/mms/ui/SlideView;->mConformanceMode:Z

    if-eqz v1, :cond_2

    .line 331
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-eqz p1, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 336
    :cond_0
    :goto_1
    return-void

    .line 331
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    .line 333
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x4

    goto :goto_2
.end method

.method public startAudio()V
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 341
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    .line 342
    invoke-direct {p0}, Lcom/android/mms/ui/SlideView;->displayAudioInfo()V

    .line 346
    :goto_0
    return-void

    .line 344
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    goto :goto_0
.end method

.method public startVideo()V
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 389
    :cond_0
    return-void
.end method

.method public stopAudio()V
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 351
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 352
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    .line 353
    invoke-direct {p0}, Lcom/android/mms/ui/SlideView;->hideAudioInfo()V

    .line 357
    :goto_0
    return-void

    .line 355
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStopWhenPrepared:Z

    goto :goto_0
.end method

.method public stopVideo()V
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 398
    :cond_0
    return-void
.end method
