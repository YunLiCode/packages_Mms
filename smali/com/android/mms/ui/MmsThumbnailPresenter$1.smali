.class Lcom/android/mms/ui/MmsThumbnailPresenter$1;
.super Ljava/lang/Object;
.source "MmsThumbnailPresenter.java"

# interfaces
.implements Lcom/android/mms/util/ItemLoadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsThumbnailPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/mms/util/ItemLoadedCallback",
        "<",
        "Lcom/android/mms/util/ThumbnailManager$ImageLoaded;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsThumbnailPresenter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsThumbnailPresenter;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/mms/ui/MmsThumbnailPresenter$1;->this$0:Lcom/android/mms/ui/MmsThumbnailPresenter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLoaded(Lcom/android/mms/util/ThumbnailManager$ImageLoaded;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "imageLoaded"    # Lcom/android/mms/util/ThumbnailManager$ImageLoaded;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .prologue
    const/4 v6, 0x0

    .line 88
    if-nez p2, :cond_1

    .line 89
    iget-object v3, p0, Lcom/android/mms/ui/MmsThumbnailPresenter$1;->this$0:Lcom/android/mms/ui/MmsThumbnailPresenter;

    # getter for: Lcom/android/mms/ui/MmsThumbnailPresenter;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;
    invoke-static {v3}, Lcom/android/mms/ui/MmsThumbnailPresenter;->access$000(Lcom/android/mms/ui/MmsThumbnailPresenter;)Lcom/android/mms/util/ItemLoadedFuture;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 90
    iget-object v3, p0, Lcom/android/mms/ui/MmsThumbnailPresenter$1;->this$0:Lcom/android/mms/ui/MmsThumbnailPresenter;

    # getter for: Lcom/android/mms/ui/MmsThumbnailPresenter;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;
    invoke-static {v3}, Lcom/android/mms/ui/MmsThumbnailPresenter;->access$000(Lcom/android/mms/ui/MmsThumbnailPresenter;)Lcom/android/mms/util/ItemLoadedFuture;

    move-result-object v4

    monitor-enter v4

    .line 91
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/MmsThumbnailPresenter$1;->this$0:Lcom/android/mms/ui/MmsThumbnailPresenter;

    # getter for: Lcom/android/mms/ui/MmsThumbnailPresenter;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;
    invoke-static {v3}, Lcom/android/mms/ui/MmsThumbnailPresenter;->access$000(Lcom/android/mms/ui/MmsThumbnailPresenter;)Lcom/android/mms/util/ItemLoadedFuture;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Lcom/android/mms/util/ItemLoadedFuture;->setIsDone(Z)V

    .line 92
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/MmsThumbnailPresenter$1;->this$0:Lcom/android/mms/ui/MmsThumbnailPresenter;

    # getter for: Lcom/android/mms/ui/MmsThumbnailPresenter;->mOnLoadedCallback:Lcom/android/mms/util/ItemLoadedCallback;
    invoke-static {v3}, Lcom/android/mms/ui/MmsThumbnailPresenter;->access$100(Lcom/android/mms/ui/MmsThumbnailPresenter;)Lcom/android/mms/util/ItemLoadedCallback;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 95
    iget-object v3, p0, Lcom/android/mms/ui/MmsThumbnailPresenter$1;->this$0:Lcom/android/mms/ui/MmsThumbnailPresenter;

    # getter for: Lcom/android/mms/ui/MmsThumbnailPresenter;->mOnLoadedCallback:Lcom/android/mms/util/ItemLoadedCallback;
    invoke-static {v3}, Lcom/android/mms/ui/MmsThumbnailPresenter;->access$100(Lcom/android/mms/ui/MmsThumbnailPresenter;)Lcom/android/mms/util/ItemLoadedCallback;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/android/mms/util/ItemLoadedCallback;->onItemLoaded(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 115
    :cond_1
    :goto_0
    return-void

    .line 92
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 98
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/MmsThumbnailPresenter$1;->this$0:Lcom/android/mms/ui/MmsThumbnailPresenter;

    iget-object v3, v3, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v3, Lcom/android/mms/model/SlideshowModel;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 99
    .local v1, "slide":Lcom/android/mms/model/SlideModel;
    if-eqz v1, :cond_1

    .line 100
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p1, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;->mIsVideo:Z

    if-eqz v3, :cond_3

    .line 101
    iget-object v3, p0, Lcom/android/mms/ui/MmsThumbnailPresenter$1;->this$0:Lcom/android/mms/ui/MmsThumbnailPresenter;

    iget-object v3, v3, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v3, Lcom/android/mms/ui/SlideViewInterface;

    iget-object v4, p1, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;->mBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v3, v6, v4}, Lcom/android/mms/ui/SlideViewInterface;->setVideoThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 103
    :cond_3
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p1, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;->mIsVideo:Z

    if-nez v3, :cond_1

    .line 105
    invoke-virtual {p1}, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;->getUri()Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, "uri":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/ImageModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 107
    .local v0, "imageUri":Landroid/net/Uri;
    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 108
    iget-object v3, p0, Lcom/android/mms/ui/MmsThumbnailPresenter$1;->this$0:Lcom/android/mms/ui/MmsThumbnailPresenter;

    iget-object v3, v3, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v3, Lcom/android/mms/ui/SlideViewInterface;

    iget-object v4, p1, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;->mBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v3, v6, v4}, Lcom/android/mms/ui/SlideViewInterface;->setImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public bridge synthetic onItemLoaded(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Throwable;

    .prologue
    .line 86
    check-cast p1, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/ui/MmsThumbnailPresenter$1;->onItemLoaded(Lcom/android/mms/util/ThumbnailManager$ImageLoaded;Ljava/lang/Throwable;)V

    return-void
.end method
