.class public Lcom/android/mms/ui/SlideshowEditActivity;
.super Landroid/app/ListActivity;
.source "SlideshowEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;
    }
.end annotation


# instance fields
.field private mAddSlideItem:Landroid/view/View;

.field private mDirty:Z

.field private mFirstCallOnPrepareOptionsMenu:Z

.field private mList:Landroid/widget/ListView;

.field private final mModelChangedObserver:Lcom/android/mms/model/IModelChangedObserver;

.field private mResultIntent:Landroid/content/Intent;

.field private mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

.field private mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

.field private mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

.field private mState:Landroid/os/Bundle;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 75
    iput-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    .line 76
    iput-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mFirstCallOnPrepareOptionsMenu:Z

    .line 428
    new-instance v0, Lcom/android/mms/ui/SlideshowEditActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowEditActivity$1;-><init>(Lcom/android/mms/ui/SlideshowEditActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mModelChangedObserver:Lcom/android/mms/model/IModelChangedObserver;

    return-void
.end method

.method static synthetic access$002(Lcom/android/mms/ui/SlideshowEditActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/SlideshowEditActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mDirty:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SlideshowEditActivity;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/SlideshowEditActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mResultIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SlideshowEditActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/SlideshowEditActivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->adjustAddSlideVisibility()V

    return-void
.end method

.method private addNewSlide()V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowEditor;->addNewSlide()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->notifyDataSetChanged()V

    .line 343
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 344
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 349
    :goto_0
    return-void

    .line 346
    :cond_0
    const v0, 0x7f0b0063

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private adjustAddSlideVisibility()V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    sget v1, Lcom/android/mms/ui/SlideshowEditor;->MAX_SLIDE_NUM:I

    if-lt v0, v1, :cond_0

    .line 331
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mAddSlideItem:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 335
    :goto_0
    return-void

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mAddSlideItem:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private cleanupSlideshowModel()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mModelChangedObserver:Lcom/android/mms/model/IModelChangedObserver;

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    .line 214
    :cond_0
    return-void
.end method

.method private createAddSlideItem()Landroid/view/View;
    .locals 6

    .prologue
    .line 127
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SlideshowEditActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v4, 0x7f04002c

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 131
    .local v2, "v":Landroid/view/View;
    const v3, 0x7f0a009b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 132
    .local v1, "text":Landroid/widget/TextView;
    const v3, 0x7f0b002c

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 134
    const v3, 0x7f0a009d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "text":Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 135
    .restart local v1    # "text":Landroid/widget/TextView;
    const v3, 0x7f0b002d

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 136
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    const v3, 0x7f0a009a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 139
    .local v0, "image":Landroid/widget/ImageView;
    const v3, 0x7f02003c

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 141
    return-object v2
.end method

.method private initSlideList()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->cleanupSlideshowModel()V

    .line 218
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    .line 219
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mModelChangedObserver:Lcom/android/mms/model/IModelChangedObserver;

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 220
    new-instance v0, Lcom/android/mms/ui/SlideshowEditor;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/SlideshowEditor;-><init>(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    .line 221
    new-instance v0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    const v1, 0x7f04002c

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;-><init>(Landroid/content/Context;ILcom/android/mms/model/SlideshowModel;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    .line 223
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 224
    return-void
.end method

.method private openSlide(I)V
    .locals 2

    .prologue
    .line 323
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/SlideEditorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 324
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 325
    const-string v1, "slide_index"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 326
    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/SlideshowEditActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 327
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 354
    if-eq p2, v2, :cond_0

    .line 380
    :goto_0
    return-void

    .line 358
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 360
    :pswitch_0
    monitor-enter p0

    .line 361
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mDirty:Z

    .line 362
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mResultIntent:Landroid/content/Intent;

    invoke-virtual {p0, v2, v1}, Lcom/android/mms/ui/SlideshowEditActivity;->setResult(ILandroid/content/Intent;)V

    .line 365
    if-eqz p3, :cond_1

    const-string v1, "done"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 366
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->finish()V

    goto :goto_0

    .line 362
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 371
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->initSlideList()V

    .line 372
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->adjustAddSlideVisibility()V
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Lcom/google/android/mms/MmsException;
    const-string v1, "SlideshowEditActivity"

    const-string v2, "Failed to initialize the slide-list."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 375
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->finish()V

    goto :goto_0

    .line 358
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 467
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 468
    .local v0, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 470
    .local v1, "position":I
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 498
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 472
    :pswitch_0
    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 473
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    invoke-virtual {v2, v1}, Lcom/android/mms/ui/SlideshowEditor;->moveSlideUp(I)V

    .line 474
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->notifyDataSetChanged()V

    .line 475
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 479
    :pswitch_1
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 480
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    invoke-virtual {v2, v1}, Lcom/android/mms/ui/SlideshowEditor;->moveSlideDown(I)V

    .line 481
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->notifyDataSetChanged()V

    .line 482
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 486
    :pswitch_2
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 487
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    invoke-virtual {v2, v1}, Lcom/android/mms/ui/SlideshowEditor;->removeSlide(I)V

    .line 488
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 492
    :pswitch_3
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->addNewSlide()V

    goto :goto_0

    .line 470
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    .line 90
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->createAddSlideItem()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mAddSlideItem:Landroid/view/View;

    .line 91
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mAddSlideItem:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 92
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mAddSlideItem:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 94
    if-eqz p1, :cond_0

    .line 96
    const-string v1, "state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mState:Landroid/os/Bundle;

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mState:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 100
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mState:Landroid/os/Bundle;

    const-string v2, "message_uri"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mUri:Landroid/net/Uri;

    .line 105
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mUri:Landroid/net/Uri;

    if-nez v1, :cond_2

    .line 106
    const-string v1, "SlideshowEditActivity"

    const-string v2, "Cannot startup activity, null Uri."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->finish()V

    .line 124
    :goto_1
    return-void

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mUri:Landroid/net/Uri;

    goto :goto_0

    .line 112
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mResultIntent:Landroid/content/Intent;

    .line 113
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mResultIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 116
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->initSlideList()V

    .line 117
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->adjustAddSlideVisibility()V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_2
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideshowEditActivity;->registerForContextMenu(Landroid/view/View;)V

    goto :goto_1

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Lcom/google/android/mms/MmsException;
    const-string v1, "SlideshowEditActivity"

    const-string v2, "Failed to initialize the slide-list."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->finish()V

    goto :goto_2
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v4, 0x0

    .line 442
    const v2, 0x7f0b0027

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    move-object v0, p3

    .line 444
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 445
    .local v0, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 447
    .local v1, "position":I
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_2

    .line 449
    if-lez v1, :cond_0

    .line 450
    const v2, 0x7f0b0029

    invoke-interface {p1, v4, v4, v4, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02005c

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 452
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 453
    const/4 v2, 0x1

    const v3, 0x7f0b002a

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020059

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 457
    :cond_1
    const/4 v2, 0x3

    const v3, 0x7f0b002c

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020050

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 460
    const/4 v2, 0x2

    const v3, 0x7f0b002b

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x108003c

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 463
    :cond_2
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 204
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 205
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->cleanupSlideshowModel()V

    .line 206
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 146
    invoke-virtual {p1}, Landroid/widget/ListView;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->addNewSlide()V

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/mms/ui/SlideshowEditActivity;->openSlide(I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 285
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    .line 287
    .local v0, "position":I
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 319
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 289
    :pswitch_0
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/SlideshowEditor;->moveSlideUp(I)V

    .line 291
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->notifyDataSetChanged()V

    .line 292
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 296
    :pswitch_1
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 297
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/SlideshowEditor;->moveSlideDown(I)V

    .line 298
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->notifyDataSetChanged()V

    .line 299
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 303
    :pswitch_2
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 304
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/SlideshowEditor;->removeSlide(I)V

    .line 305
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 309
    :pswitch_3
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->addNewSlide()V

    goto :goto_0

    .line 313
    :pswitch_4
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowEditor;->removeAllSlides()V

    .line 314
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->notifyDataSetChanged()V

    .line 315
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->finish()V

    goto :goto_0

    .line 287
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 228
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 232
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 233
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeGroup(I)V

    .line 235
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 5

    .prologue
    .line 187
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 189
    monitor-enter p0

    .line 190
    :try_start_0
    iget-boolean v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 192
    :try_start_1
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v1

    .line 193
    .local v1, "pb":Lcom/google/android/mms/pdu/PduBody;
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mUri:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lcom/google/android/mms/pdu/PduPersister;->updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;Ljava/util/HashMap;)V

    .line 194
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, v1}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    .end local v1    # "pb":Lcom/google/android/mms/pdu/PduBody;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 200
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Lcom/google/android/mms/MmsException;
    const-string v2, "SlideshowEditActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot update the message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 199
    .end local v0    # "e":Lcom/google/android/mms/MmsException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v7, 0x7f0b002c

    const v6, 0x7f020050

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 239
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 248
    iget-boolean v3, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mFirstCallOnPrepareOptionsMenu:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    if-nez v3, :cond_1

    .line 249
    :cond_0
    iput-boolean v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mFirstCallOnPrepareOptionsMenu:Z

    move v1, v2

    .line 280
    :goto_0
    return v1

    .line 253
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    .line 254
    .local v0, "position":I
    if-ltz v0, :cond_6

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v0, v3, :cond_6

    .line 256
    if-lez v0, :cond_2

    .line 257
    const v3, 0x7f0b0029

    invoke-interface {p1, v2, v2, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f02005c

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 260
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 261
    const v3, 0x7f0b002a

    invoke-interface {p1, v2, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f020059

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 265
    :cond_3
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v3

    sget v4, Lcom/android/mms/ui/SlideshowEditor;->MAX_SLIDE_NUM:I

    if-ge v3, v4, :cond_4

    .line 266
    invoke-interface {p1, v2, v5, v2, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 269
    :cond_4
    const/4 v3, 0x2

    const v4, 0x7f0b002b

    invoke-interface {p1, v2, v3, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x108003c

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 277
    :cond_5
    :goto_1
    const/4 v3, 0x4

    const v4, 0x7f0b002e

    invoke-interface {p1, v2, v3, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020055

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 272
    :cond_6
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v3

    sget v4, Lcom/android/mms/ui/SlideshowEditor;->MAX_SLIDE_NUM:I

    if-ge v3, v4, :cond_5

    .line 273
    invoke-interface {p1, v2, v5, v2, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 155
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 157
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mState:Landroid/os/Bundle;

    const-string v2, "slide_index"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 160
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 168
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 170
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mState:Landroid/os/Bundle;

    .line 171
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    if-ltz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mState:Landroid/os/Bundle;

    const-string v1, "slide_index"

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mState:Landroid/os/Bundle;

    const-string v1, "message_uri"

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_1
    const-string v0, "state"

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 183
    return-void
.end method
