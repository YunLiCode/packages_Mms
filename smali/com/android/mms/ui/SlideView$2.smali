.class Lcom/android/mms/ui/SlideView$2;
.super Landroid/widget/ScrollView;
.source "SlideView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideView;->enableMMSConformanceMode(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mBottomY:I

.field final synthetic this$0:Lcom/android/mms/ui/SlideView;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideView;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 511
    iput-object p1, p0, Lcom/android/mms/ui/SlideView$2;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-direct {p0, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v2, 0x0

    .line 515
    invoke-super/range {p0 .. p5}, Landroid/widget/ScrollView;->onLayout(ZIIII)V

    .line 516
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView$2;->getChildCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 517
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SlideView$2;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 518
    .local v0, "childHeight":I
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView$2;->getHeight()I

    move-result v1

    .line 519
    .local v1, "height":I
    if-ge v1, v0, :cond_0

    sub-int v2, v0, v1

    :cond_0
    iput v2, p0, Lcom/android/mms/ui/SlideView$2;->mBottomY:I

    .line 521
    .end local v0    # "childHeight":I
    .end local v1    # "height":I
    :cond_1
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$2;->this$0:Lcom/android/mms/ui/SlideView;

    # getter for: Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->access$700(Lcom/android/mms/ui/SlideView;)Landroid/widget/VideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$2;->this$0:Lcom/android/mms/ui/SlideView;

    # getter for: Lcom/android/mms/ui/SlideView;->mViewPort:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->access$800(Lcom/android/mms/ui/SlideView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 530
    :cond_0
    if-eqz p2, :cond_1

    iget v0, p0, Lcom/android/mms/ui/SlideView$2;->mBottomY:I

    if-lt p2, v0, :cond_2

    .line 531
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$2;->this$0:Lcom/android/mms/ui/SlideView;

    # getter for: Lcom/android/mms/ui/SlideView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->access$900(Lcom/android/mms/ui/SlideView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/SlideView$2;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/mms/ui/SlideshowActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 533
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$2;->this$0:Lcom/android/mms/ui/SlideView;

    # getter for: Lcom/android/mms/ui/SlideView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->access$900(Lcom/android/mms/ui/SlideView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    .line 536
    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$2;->this$0:Lcom/android/mms/ui/SlideView;

    # getter for: Lcom/android/mms/ui/SlideView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->access$900(Lcom/android/mms/ui/SlideView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideView$2;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/mms/ui/SlideshowActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$2;->this$0:Lcom/android/mms/ui/SlideView;

    # getter for: Lcom/android/mms/ui/SlideView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->access$900(Lcom/android/mms/ui/SlideView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    .line 545
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 546
    const/4 v0, 0x0

    return v0
.end method
