.class Lcom/android/mms/ui/SlideshowEditActivity$1;
.super Ljava/lang/Object;
.source "SlideshowEditActivity.java"

# interfaces
.implements Lcom/android/mms/model/IModelChangedObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideshowEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideshowEditActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowEditActivity;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowEditActivity$1;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onModelChanged(Lcom/android/mms/model/Model;Z)V
    .locals 3
    .param p1, "model"    # Lcom/android/mms/model/Model;
    .param p2, "dataChanged"    # Z

    .prologue
    .line 431
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity$1;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    monitor-enter v1

    .line 432
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity$1;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    const/4 v2, 0x1

    # setter for: Lcom/android/mms/ui/SlideshowEditActivity;->mDirty:Z
    invoke-static {v0, v2}, Lcom/android/mms/ui/SlideshowEditActivity;->access$002(Lcom/android/mms/ui/SlideshowEditActivity;Z)Z

    .line 433
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity$1;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity$1;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    # getter for: Lcom/android/mms/ui/SlideshowEditActivity;->mResultIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/mms/ui/SlideshowEditActivity;->access$100(Lcom/android/mms/ui/SlideshowEditActivity;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/SlideshowEditActivity;->setResult(ILandroid/content/Intent;)V

    .line 435
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity$1;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    # invokes: Lcom/android/mms/ui/SlideshowEditActivity;->adjustAddSlideVisibility()V
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowEditActivity;->access$200(Lcom/android/mms/ui/SlideshowEditActivity;)V

    .line 436
    return-void

    .line 433
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
