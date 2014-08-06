.class public Lcom/android/mms/ui/SlideEditorActivity;
.super Landroid/app/Activity;
.source "SlideEditorActivity.java"


# instance fields
.field private mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

.field private mDirty:Z

.field private mDone:Landroid/widget/Button;

.field private final mDoneClickListener:Landroid/view/View$OnClickListener;

.field private final mModelChangedObserver:Lcom/android/mms/model/IModelChangedObserver;

.field private mNextSlide:Landroid/widget/ImageButton;

.field private final mOnNavigateBackward:Landroid/view/View$OnClickListener;

.field private final mOnNavigateForward:Landroid/view/View$OnClickListener;

.field private final mOnPreview:Landroid/view/View$OnClickListener;

.field private final mOnRemoveSlide:Landroid/view/View$OnClickListener;

.field private final mOnReplaceImage:Landroid/view/View$OnClickListener;

.field private final mOnTextChangedListener:Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;

.field private mPosition:I

.field private mPreSlide:Landroid/widget/ImageButton;

.field private mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

.field private mPreview:Landroid/widget/Button;

.field private mRemoveSlide:Landroid/widget/Button;

.field private mReplaceImage:Landroid/widget/Button;

.field private final mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

.field private mSlideView:Lcom/android/mms/ui/BasicSlideEditorView;

.field private mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

.field private mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

.field private mTextEditor:Landroid/widget/EditText;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 258
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$1;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mModelChangedObserver:Lcom/android/mms/model/IModelChangedObserver;

    .line 268
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$2;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnRemoveSlide:Landroid/view/View$OnClickListener;

    .line 287
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$3;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnTextChangedListener:Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;

    .line 302
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$4;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnPreview:Landroid/view/View$OnClickListener;

    .line 308
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$5;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnReplaceImage:Landroid/view/View$OnClickListener;

    .line 322
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$6;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnNavigateBackward:Landroid/view/View$OnClickListener;

    .line 331
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$7;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnNavigateForward:Landroid/view/View$OnClickListener;

    .line 340
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$8;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDoneClickListener:Landroid/view/View$OnClickListener;

    .line 790
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$11;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$11;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    return-void
.end method

.method static synthetic access$002(Lcom/android/mms/ui/SlideEditorActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/SlideEditorActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDirty:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SlideEditorActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/SlideEditorActivity;

    .prologue
    .line 69
    iget v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/SlideEditorActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/SlideEditorActivity;
    .param p1, "x1"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SlideEditorActivity;->setReplaceButtonText(I)V

    return-void
.end method

.method static synthetic access$108(Lcom/android/mms/ui/SlideEditorActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/mms/ui/SlideEditorActivity;

    .prologue
    .line 69
    iget v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    return v0
.end method

.method static synthetic access$110(Lcom/android/mms/ui/SlideEditorActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/mms/ui/SlideEditorActivity;

    .prologue
    .line 69
    iget v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/SlideEditorActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/SlideEditorActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SlideEditorActivity;->notifyUser(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/model/SlideshowModel;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/SlideEditorActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/ui/SlideshowEditor;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/SlideEditorActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SlideEditorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/SlideEditorActivity;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->showCurrentSlide()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/SlideEditorActivity;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/SlideEditorActivity;
    .param p1, "x1"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/SlideEditorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/SlideEditorActivity;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->previewSlideshow()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/ui/SlideEditorActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/SlideEditorActivity;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getPictureString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/SlideEditorActivity;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/SlideEditorActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/SlideEditorActivity;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/SlideEditorActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method private getAsyncDialog()Lcom/android/mms/ui/AsyncDialog;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

    if-nez v0, :cond_0

    .line 351
    new-instance v0, Lcom/android/mms/ui/AsyncDialog;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/AsyncDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

    return-object v0
.end method

.method private getAudioString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 839
    const v0, 0x7f0b00f3

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPictureString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 843
    const v0, 0x7f0b00f4

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getResourcesString(I)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 834
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 835
    .local v0, "r":Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getResourcesString(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # I
    .param p2, "mediaName"    # Ljava/lang/String;

    .prologue
    .line 829
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 830
    .local v0, "r":Landroid/content/res/Resources;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getVideoString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 847
    const v0, 0x7f0b00f5

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initActivityState(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 195
    if-eqz p1, :cond_0

    .line 196
    const-string v0, "message_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    .line 197
    const-string v0, "slide_index"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    .line 202
    :goto_0
    return-void

    .line 199
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    .line 200
    const-string v0, "slide_index"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    goto :goto_0
.end method

.method private notifyUser(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 854
    return-void
.end method

.method private previewSlideshow()V
    .locals 3

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getAsyncDialog()Lcom/android/mms/ui/AsyncDialog;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/app/Activity;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;Lcom/android/mms/ui/AsyncDialog;)V

    .line 359
    return-void
.end method

.method private setReplaceButtonText(I)V
    .locals 1
    .param p1, "text"    # I

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mReplaceImage:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 554
    return-void
.end method

.method private showCurrentSlide()V
    .locals 2

    .prologue
    .line 857
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideshowPresenter;->setLocation(I)V

    .line 858
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideshowPresenter;->present(Lcom/android/mms/util/ItemLoadedCallback;)V

    .line 859
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->updateTitle()V

    .line 861
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 862
    const v0, 0x7f0b006f

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->setReplaceButtonText(I)V

    .line 866
    :goto_0
    return-void

    .line 864
    :cond_0
    const v0, 0x7f0b0031

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->setReplaceButtonText(I)V

    goto :goto_0
.end method

.method private showDurationDialog()V
    .locals 4

    .prologue
    .line 557
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 558
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f02006d

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 559
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0071

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 560
    .local v1, "title":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 562
    const v2, 0x7f060008

    new-instance v3, Lcom/android/mms/ui/SlideEditorActivity$9;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/SlideEditorActivity$9;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 582
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 583
    return-void
.end method

.method private showLayoutSelectorDialog()V
    .locals 5

    .prologue
    .line 586
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 587
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f02006e

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 589
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0072

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 590
    .local v2, "title":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 592
    new-instance v0, Lcom/android/mms/ui/LayoutSelectorAdapter;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/LayoutSelectorAdapter;-><init>(Landroid/content/Context;)V

    .line 593
    .local v0, "adapter":Lcom/android/mms/ui/LayoutSelectorAdapter;
    new-instance v3, Lcom/android/mms/ui/SlideEditorActivity$10;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/SlideEditorActivity$10;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 607
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 608
    return-void
.end method

.method private updateTitle()V
    .locals 4

    .prologue
    .line 362
    const v0, 0x7f0b002f

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 363
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    .prologue
    const v7, 0x7f0b004e

    const v5, 0x7f0b004c

    const/4 v0, 0x1

    const v6, 0x7f0b0051

    const/4 v1, 0x0

    .line 612
    const/4 v2, -0x1

    if-eq p2, v2, :cond_1

    .line 788
    :cond_0
    :goto_0
    return-void

    .line 616
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 620
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/SlideshowEditor;->changeText(ILjava/lang/String;)V

    goto :goto_0

    .line 624
    :pswitch_1
    const/4 v2, 0x0

    .line 627
    :try_start_0
    const-string v3, ".jpg"

    iget v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, p0}, Lcom/android/mms/TempFileProvider;->renameScrapFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/ResolutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 630
    if-nez v2, :cond_2

    .line 653
    :goto_1
    if-eqz v0, :cond_0

    .line 654
    const-string v0, "add picture failed"

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->notifyUser(Ljava/lang/String;)V

    .line 655
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getPictureString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 634
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/MmsApp;->getThumbnailManager()Lcom/android/mms/util/ThumbnailManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/mms/util/ThumbnailManager;->removeThumbnail(Landroid/net/Uri;)V

    .line 636
    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v3, v4, v2}, Lcom/android/mms/ui/SlideshowEditor;->changeImage(ILandroid/net/Uri;)V

    .line 637
    const v3, 0x7f0b006f

    invoke-direct {p0, v3}, Lcom/android/mms/ui/SlideEditorActivity;->setReplaceButtonText(I)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/mms/ResolutionException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    move v0, v1

    goto :goto_1

    .line 639
    :catch_0
    move-exception v2

    .line 640
    const-string v3, "SlideEditorActivity"

    const-string v4, "add image failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 642
    :catch_1
    move-exception v0

    .line 643
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getPictureString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getPictureString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v7, v2}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 652
    goto :goto_1

    .line 646
    :catch_2
    move-exception v0

    move-object v0, v2

    .line 647
    :goto_3
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    invoke-static {p0, v0, v2, v3, v1}, Lcom/android/mms/ui/MessageUtils;->resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;Z)V

    move v0, v1

    .line 652
    goto :goto_1

    .line 649
    :catch_3
    move-exception v0

    .line 650
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    invoke-static {p0, v2, v0, v3, v1}, Lcom/android/mms/ui/MessageUtils;->resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;Z)V

    goto :goto_2

    .line 663
    :pswitch_2
    :try_start_2
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/ui/SlideshowEditor;->changeImage(ILandroid/net/Uri;)V

    .line 664
    const v2, 0x7f0b006f

    invoke-direct {p0, v2}, Lcom/android/mms/ui/SlideEditorActivity;->setReplaceButtonText(I)V
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/android/mms/ResolutionException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_2 .. :try_end_2} :catch_7

    goto/16 :goto_0

    .line 665
    :catch_4
    move-exception v0

    .line 666
    const-string v2, "SlideEditorActivity"

    const-string v3, "add image failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 667
    const-string v0, "add picture failed"

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->notifyUser(Ljava/lang/String;)V

    .line 668
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getPictureString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 671
    :catch_5
    move-exception v0

    .line 672
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getPictureString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getPictureString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v7, v1}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 675
    :catch_6
    move-exception v2

    .line 676
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRestrictedMode()Z

    move-result v2

    if-nez v2, :cond_3

    .line 677
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    invoke-static {p0, v0, v2, v3, v1}, Lcom/android/mms/ui/MessageUtils;->resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;Z)V

    goto/16 :goto_0

    .line 680
    :cond_3
    const v2, 0x7f0b0163

    invoke-direct {p0, v2}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b01a0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 685
    :catch_7
    move-exception v2

    .line 687
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRestrictedMode()Z

    move-result v2

    if-nez v2, :cond_4

    .line 688
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    invoke-static {p0, v0, v2, v3, v1}, Lcom/android/mms/ui/MessageUtils;->resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;Z)V

    goto/16 :goto_0

    .line 691
    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 692
    const v3, 0x7f0b00f4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 693
    const v4, 0x7f0b004f

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v3, v5, v1

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 694
    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v1

    invoke-virtual {v2, v6, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 695
    invoke-static {p0, v4, v0}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 704
    :pswitch_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    .line 705
    const-string v0, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 707
    if-nez v0, :cond_5

    .line 708
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 711
    :cond_5
    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 721
    :goto_4
    if-eqz v0, :cond_0

    .line 722
    :try_start_3
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v2, v3, v0}, Lcom/android/mms/ui/SlideshowEditor;->changeAudio(ILandroid/net/Uri;)V
    :try_end_3
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_3 .. :try_end_3} :catch_a

    goto/16 :goto_0

    .line 724
    :catch_8
    move-exception v0

    .line 725
    const-string v2, "SlideEditorActivity"

    const-string v3, "add audio failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 726
    const-string v0, "add music failed"

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->notifyUser(Ljava/lang/String;)V

    .line 727
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getAudioString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 715
    :cond_6
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_4

    .line 730
    :catch_9
    move-exception v0

    .line 731
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getAudioString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getAudioString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v7, v1}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 734
    :catch_a
    move-exception v0

    .line 735
    const v0, 0x7f0b004f

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getAudioString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v6, v1}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 743
    :pswitch_4
    :try_start_4
    const-string v0, ".3gp"

    iget v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p0}, Lcom/android/mms/TempFileProvider;->renameScrapFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 746
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v2, v3, v0}, Lcom/android/mms/ui/SlideshowEditor;->changeVideo(ILandroid/net/Uri;)V
    :try_end_4
    .catch Lcom/google/android/mms/MmsException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_4 .. :try_end_4} :catch_d

    goto/16 :goto_0

    .line 747
    :catch_b
    move-exception v0

    .line 748
    const-string v0, "add video failed"

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->notifyUser(Ljava/lang/String;)V

    .line 749
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getVideoString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 752
    :catch_c
    move-exception v0

    .line 753
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getVideoString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getVideoString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v7, v1}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 756
    :catch_d
    move-exception v0

    .line 757
    const v0, 0x7f0b004f

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getVideoString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v6, v1}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 765
    :pswitch_5
    :try_start_5
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/mms/ui/SlideshowEditor;->changeVideo(ILandroid/net/Uri;)V
    :try_end_5
    .catch Lcom/google/android/mms/MmsException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_5 .. :try_end_5} :catch_f
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_5 .. :try_end_5} :catch_10

    goto/16 :goto_0

    .line 766
    :catch_e
    move-exception v0

    .line 767
    const-string v2, "SlideEditorActivity"

    const-string v3, "add video failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 768
    const-string v0, "add video failed"

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->notifyUser(Ljava/lang/String;)V

    .line 769
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getVideoString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 772
    :catch_f
    move-exception v0

    .line 773
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getVideoString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getVideoString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v7, v1}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 776
    :catch_10
    move-exception v0

    .line 777
    const v0, 0x7f0b004f

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getVideoString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v6, v1}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 784
    :pswitch_6
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/SlideshowEditor;->changeDuration(II)V

    goto/16 :goto_0

    .line 646
    :catch_11
    move-exception v0

    move-object v0, v2

    goto/16 :goto_3

    .line 616
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 130
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 131
    const v2, 0x7f040011

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SlideEditorActivity;->setContentView(I)V

    .line 133
    const v2, 0x7f0a0040

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SlideEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/BasicSlideEditorView;

    iput-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideView:Lcom/android/mms/ui/BasicSlideEditorView;

    .line 134
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideView:Lcom/android/mms/ui/BasicSlideEditorView;

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnTextChangedListener:Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/BasicSlideEditorView;->setOnTextChangedListener(Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;)V

    .line 136
    const v2, 0x7f0a0044

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SlideEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPreSlide:Landroid/widget/ImageButton;

    .line 137
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPreSlide:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnNavigateBackward:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    const v2, 0x7f0a0045

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SlideEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mNextSlide:Landroid/widget/ImageButton;

    .line 140
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mNextSlide:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnNavigateForward:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    const v2, 0x7f0a0046

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SlideEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPreview:Landroid/widget/Button;

    .line 143
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPreview:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnPreview:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    const v2, 0x7f0a0047

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SlideEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mReplaceImage:Landroid/widget/Button;

    .line 146
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mReplaceImage:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnReplaceImage:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    const v2, 0x7f0a0048

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SlideEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mRemoveSlide:Landroid/widget/Button;

    .line 149
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mRemoveSlide:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnRemoveSlide:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    const v2, 0x7f0a0049

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SlideEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mTextEditor:Landroid/widget/EditText;

    .line 152
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mTextEditor:Landroid/widget/EditText;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 155
    const v2, 0x7f0a004a

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SlideEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDone:Landroid/widget/Button;

    .line 156
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDone:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDoneClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/mms/ui/SlideEditorActivity;->initActivityState(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 161
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v2}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    .line 163
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 164
    const-string v2, "SlideEditorActivity"

    const-string v3, "Loaded slideshow is empty; can\'t edit nothingness, exiting."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->finish()V

    .line 192
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mModelChangedObserver:Lcom/android/mms/model/IModelChangedObserver;

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 170
    new-instance v2, Lcom/android/mms/ui/SlideshowEditor;

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v2, p0, v3}, Lcom/android/mms/ui/SlideshowEditor;-><init>(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V

    iput-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    .line 171
    const-string v2, "SlideshowPresenter"

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideView:Lcom/android/mms/ui/BasicSlideEditorView;

    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v2, p0, v3, v4}, Lcom/android/mms/ui/PresenterFactory;->getPresenter(Ljava/lang/String;Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)Lcom/android/mms/ui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/SlideshowPresenter;

    iput-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    .line 175
    iget v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v3

    if-lt v2, v3, :cond_3

    .line 176
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    .line 181
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 182
    .local v1, "slide":Lcom/android/mms/model/SlideModel;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasVcard()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 183
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/SlideshowEditor;->removeVcard(I)Z

    .line 186
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->showCurrentSlide()V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 187
    .end local v1    # "slide":Lcom/android/mms/model/SlideModel;
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Lcom/google/android/mms/MmsException;
    const-string v2, "SlideEditorActivity"

    const-string v3, "Create SlideshowModel failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->finish()V

    goto :goto_0

    .line 177
    .end local v0    # "e":Lcom/google/android/mms/MmsException;
    :cond_3
    :try_start_1
    iget v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    if-gez v2, :cond_1

    .line 178
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 250
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 252
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mModelChangedObserver:Lcom/android/mms/model/IModelChangedObserver;

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 256
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 452
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 549
    :cond_0
    :goto_0
    :pswitch_0
    return v10

    .line 454
    :pswitch_1
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->previewSlideshow()V

    goto :goto_0

    .line 458
    :pswitch_2
    iget-object v7, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget v8, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v7, v8}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v6

    .line 459
    .local v6, "slide":Lcom/android/mms/model/SlideModel;
    if-eqz v6, :cond_0

    .line 460
    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->removeText()Z

    goto :goto_0

    .line 465
    .end local v6    # "slide":Lcom/android/mms/model/SlideModel;
    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.GET_CONTENT"

    const/4 v8, 0x0

    invoke-direct {v1, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 466
    .local v1, "intent":Landroid/content/Intent;
    const-string v7, "image/*"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 467
    invoke-virtual {p0, v1, v10}, Lcom/android/mms/ui/SlideEditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 471
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_4
    const/4 v7, 0x2

    invoke-static {p0, v7}, Lcom/android/mms/ui/MessageUtils;->capturePicture(Landroid/app/Activity;I)V

    goto :goto_0

    .line 475
    :pswitch_5
    iget-object v7, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v8, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v7, v8}, Lcom/android/mms/ui/SlideshowEditor;->removeImage(I)Z

    .line 476
    const v7, 0x7f0b0031

    invoke-direct {p0, v7}, Lcom/android/mms/ui/SlideEditorActivity;->setReplaceButtonText(I)V

    goto :goto_0

    .line 480
    :pswitch_6
    const/4 v7, 0x3

    invoke-static {p0, v7}, Lcom/android/mms/ui/MessageUtils;->selectAudio(Landroid/app/Activity;I)V

    goto :goto_0

    .line 485
    :pswitch_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v7

    add-int/lit16 v7, v7, -0x400

    int-to-long v4, v7

    .line 486
    .local v4, "sizeLimit":J
    iget-object v7, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    if-eqz v7, :cond_1

    .line 487
    const-string v7, "SlideEditorActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CurrentMessageSize------>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v9}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v7, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v7

    int-to-long v7, v7

    sub-long/2addr v4, v7

    .line 489
    const-string v7, "SlideEditorActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sizeLimit------>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_1
    const/4 v7, 0x4

    invoke-static {p0, v7, v4, v5}, Lcom/android/mms/ui/MessageUtils;->recordSound(Landroid/app/Activity;IJ)V

    goto/16 :goto_0

    .line 496
    .end local v4    # "sizeLimit":J
    :pswitch_8
    iget-object v7, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v8, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v7, v8}, Lcom/android/mms/ui/SlideshowEditor;->removeAudio(I)Z

    goto/16 :goto_0

    .line 500
    :pswitch_9
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 501
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v7, "video/*"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 502
    const-string v7, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v1, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 503
    const/4 v7, 0x5

    invoke-virtual {p0, v1, v7}, Lcom/android/mms/ui/SlideEditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 508
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_a
    const-wide/16 v2, 0x1400

    .line 509
    .local v2, "minLimit":J
    iget-object v7, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget v8, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v7, v8}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v6

    .line 510
    .restart local v6    # "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v0

    .line 511
    .local v0, "currentSlideSize":I
    iget-object v7, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v7, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->computeAttachmentSizeLimit(Lcom/android/mms/model/SlideshowModel;I)J

    move-result-wide v4

    .line 513
    .restart local v4    # "sizeLimit":J
    cmp-long v7, v4, v2

    if-lez v7, :cond_2

    .line 515
    const/4 v7, 0x7

    invoke-static {p0, v7, v4, v5}, Lcom/android/mms/ui/MessageUtils;->recordVideo(Landroid/app/Activity;IJ)V

    goto/16 :goto_0

    .line 517
    :cond_2
    const v7, 0x7f0b0050

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/SlideEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 524
    .end local v0    # "currentSlideSize":I
    .end local v2    # "minLimit":J
    .end local v4    # "sizeLimit":J
    .end local v6    # "slide":Lcom/android/mms/model/SlideModel;
    :pswitch_b
    iget-object v7, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v8, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v7, v8}, Lcom/android/mms/ui/SlideshowEditor;->removeVideo(I)Z

    goto/16 :goto_0

    .line 528
    :pswitch_c
    iget v7, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    .line 529
    iget-object v7, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v8, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v7, v8}, Lcom/android/mms/ui/SlideshowEditor;->addNewSlide(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 531
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->showCurrentSlide()V

    goto/16 :goto_0

    .line 534
    :cond_3
    iget v7, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    .line 535
    const v7, 0x7f0b0063

    invoke-static {p0, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 541
    :pswitch_d
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->showLayoutSelectorDialog()V

    goto/16 :goto_0

    .line 545
    :pswitch_e
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->showDurationDialog()V

    goto/16 :goto_0

    .line 452
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_c
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_1
        :pswitch_7
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method protected onPause()V
    .locals 5

    .prologue
    .line 214
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 217
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

    if-eqz v2, :cond_0

    .line 218
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

    invoke-virtual {v2}, Lcom/android/mms/ui/AsyncDialog;->clearPendingProgressDialog()V

    .line 221
    :cond_0
    monitor-enter p0

    .line 222
    :try_start_0
    iget-boolean v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 224
    :try_start_1
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v1

    .line 225
    .local v1, "pb":Lcom/google/android/mms/pdu/PduBody;
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lcom/google/android/mms/pdu/PduPersister;->updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;Ljava/util/HashMap;)V

    .line 226
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, v1}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    .end local v1    # "pb":Lcom/google/android/mms/pdu/PduBody;
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 232
    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Lcom/google/android/mms/MmsException;
    const-string v2, "SlideEditorActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot update the message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 231
    .end local v0    # "e":Lcom/google/android/mms/MmsException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 14
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/16 v11, 0xc

    const/4 v10, 0x2

    const v13, 0x7f02005f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 367
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->isFinishing()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 447
    :cond_0
    :goto_0
    return v6

    .line 370
    :cond_1
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 372
    iget-object v8, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget v9, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v8, v9}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    .line 374
    .local v3, "slide":Lcom/android/mms/model/SlideModel;
    if-eqz v3, :cond_0

    .line 379
    const/16 v8, 0xb

    const v9, 0x7f0b006e

    invoke-interface {p1, v6, v8, v6, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    const v9, 0x1080356

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 383
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 385
    const v8, 0x7f0b0030

    invoke-interface {p1, v6, v6, v6, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    const v9, 0x7f020062

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 390
    :cond_2
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 391
    const/4 v8, 0x3

    const v9, 0x7f0b0032

    invoke-interface {p1, v6, v8, v6, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    const v9, 0x7f020060

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 401
    :cond_3
    :goto_1
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 402
    const/4 v8, 0x5

    const v9, 0x7f0b0034

    invoke-interface {p1, v6, v8, v6, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    const v9, 0x7f020061

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 417
    :cond_4
    :goto_2
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 418
    const/16 v8, 0x8

    const v9, 0x7f0b0036

    invoke-interface {p1, v6, v8, v6, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    const v9, 0x7f020063

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 427
    :cond_5
    :goto_3
    const/4 v8, 0x7

    const v9, 0x7f0b002c

    invoke-interface {p1, v6, v8, v6, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    const v9, 0x7f020050

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 431
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v8

    div-int/lit16 v1, v8, 0x3e8

    .line 432
    .local v1, "durationTime":I
    if-ne v1, v7, :cond_a

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0078

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 434
    .local v5, "unit":Ljava/lang/String;
    :goto_4
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0070

    new-array v10, v10, [Ljava/lang/Object;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 436
    .local v0, "duration":Ljava/lang/String;
    const/16 v8, 0xa

    invoke-interface {p1, v6, v8, v6, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v8

    const v9, 0x7f020056

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 440
    iget-object v8, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v8}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/model/LayoutModel;->getLayoutType()I

    move-result v8

    if-ne v8, v7, :cond_b

    .line 441
    const v2, 0x7f0b0073

    .line 446
    .local v2, "resId":I
    :goto_5
    const/16 v8, 0x9

    invoke-interface {p1, v6, v8, v6, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v13}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move v6, v7

    .line 447
    goto/16 :goto_0

    .line 393
    .end local v0    # "duration":Ljava/lang/String;
    .end local v1    # "durationTime":I
    .end local v2    # "resId":I
    .end local v5    # "unit":Ljava/lang/String;
    :cond_6
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v8

    if-nez v8, :cond_3

    .line 394
    const v8, 0x7f0b0031

    invoke-interface {p1, v6, v7, v6, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v13}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 396
    const v8, 0x7f0b00de

    invoke-interface {p1, v6, v10, v6, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v13}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 404
    :cond_7
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v8

    if-nez v8, :cond_4

    .line 405
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAllowAttachAudio()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 406
    const/16 v8, 0xd

    const v9, 0x7f0b0033

    invoke-interface {p1, v6, v8, v6, v9}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v8

    const v9, 0x7f020051

    invoke-interface {v8, v9}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    move-result-object v4

    .line 408
    .local v4, "subMenu":Landroid/view/SubMenu;
    const/4 v8, 0x4

    const v9, 0x7f0b00e1

    invoke-interface {v4, v6, v8, v6, v9}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 409
    const v8, 0x7f0b00e2

    invoke-interface {v4, v6, v11, v6, v8}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 411
    .end local v4    # "subMenu":Landroid/view/SubMenu;
    :cond_8
    const v8, 0x7f0b00e2

    invoke-interface {p1, v6, v11, v6, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    const v9, 0x7f020051

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 420
    :cond_9
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v8

    if-nez v8, :cond_5

    .line 421
    const/4 v8, 0x6

    const v9, 0x7f0b0035

    invoke-interface {p1, v6, v8, v6, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    const v9, 0x7f02005d

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 422
    const/16 v8, 0xe

    const v9, 0x7f0b00e0

    invoke-interface {p1, v6, v8, v6, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    const v9, 0x7f02005d

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 432
    .restart local v1    # "durationTime":I
    :cond_a
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0079

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_4

    .line 443
    .restart local v0    # "duration":Ljava/lang/String;
    .restart local v5    # "unit":Ljava/lang/String;
    :cond_b
    const v2, 0x7f0b0074

    .restart local v2    # "resId":I
    goto/16 :goto_5
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 236
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 237
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mTextEditor:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 239
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 245
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 206
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 208
    const-string v0, "slide_index"

    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 209
    const-string v0, "message_uri"

    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 210
    return-void
.end method
