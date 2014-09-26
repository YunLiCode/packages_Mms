.class public Lcom/android/mms/ui/MmsThumbnailPresenter;
.super Lcom/android/mms/ui/Presenter;
.source "MmsThumbnailPresenter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MmsThumbnailPresenter"


# instance fields
.field private mImageLoadedCallback:Lcom/android/mms/util/ItemLoadedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/mms/util/ItemLoadedCallback",
            "<",
            "Lcom/android/mms/util/ThumbnailManager$ImageLoaded;",
            ">;"
        }
    .end annotation
.end field

.field private mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;

.field private mOnLoadedCallback:Lcom/android/mms/util/ItemLoadedCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Lcom/android/mms/ui/ViewInterface;
    .param p3, "model"    # Lcom/android/mms/model/Model;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/Presenter;-><init>(Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)V

    .line 85
    new-instance v0, Lcom/android/mms/ui/MmsThumbnailPresenter$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsThumbnailPresenter$1;-><init>(Lcom/android/mms/ui/MmsThumbnailPresenter;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mImageLoadedCallback:Lcom/android/mms/util/ItemLoadedCallback;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MmsThumbnailPresenter;)Lcom/android/mms/util/ItemLoadedFuture;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/MmsThumbnailPresenter;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MmsThumbnailPresenter;)Lcom/android/mms/util/ItemLoadedCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/MmsThumbnailPresenter;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mOnLoadedCallback:Lcom/android/mms/util/ItemLoadedCallback;

    return-object v0
.end method

.method private presentFirstSlide(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/SlideModel;)V
    .locals 1
    .param p1, "view"    # Lcom/android/mms/ui/SlideViewInterface;
    .param p2, "slide"    # Lcom/android/mms/model/SlideModel;

    .prologue
    .line 72
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->reset()V

    .line 74
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/MmsThumbnailPresenter;->presentImageThumbnail(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ImageModel;)V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/MmsThumbnailPresenter;->presentVideoThumbnail(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/VideoModel;)V

    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 79
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/mms/ui/MmsThumbnailPresenter;->presentAudioThumbnail(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/AudioModel;)V

    goto :goto_0

    .line 80
    :cond_3
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasVcard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getVcard()Lcom/android/mms/model/VcardModel;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/mms/ui/MmsThumbnailPresenter;->presentVcardThumbnail(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/VcardModel;)V

    goto :goto_0
.end method

.method private presentImageThumbnail(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ImageModel;)V
    .locals 1
    .param p1, "view"    # Lcom/android/mms/ui/SlideViewInterface;
    .param p2, "image"    # Lcom/android/mms/model/ImageModel;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mImageLoadedCallback:Lcom/android/mms/util/ItemLoadedCallback;

    invoke-virtual {p2, v0}, Lcom/android/mms/model/ImageModel;->loadThumbnailBitmap(Lcom/android/mms/util/ItemLoadedCallback;)Lcom/android/mms/util/ItemLoadedFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;

    .line 124
    return-void
.end method

.method private presentVideoThumbnail(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/VideoModel;)V
    .locals 1
    .param p1, "view"    # Lcom/android/mms/ui/SlideViewInterface;
    .param p2, "video"    # Lcom/android/mms/model/VideoModel;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mImageLoadedCallback:Lcom/android/mms/util/ItemLoadedCallback;

    invoke-virtual {p2, v0}, Lcom/android/mms/model/VideoModel;->loadThumbnailBitmap(Lcom/android/mms/util/ItemLoadedCallback;)Lcom/android/mms/util/ItemLoadedFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;

    .line 120
    return-void
.end method


# virtual methods
.method public cancelBackgroundLoading()V
    .locals 3

    .prologue
    .line 143
    iget-object v1, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v1, Lcom/android/mms/model/SlideshowModel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 144
    .local v0, "slide":Lcom/android/mms/model/SlideModel;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/ImageModel;->cancelThumbnailLoading()V

    .line 147
    :cond_0
    return-void
.end method

.method public onModelChanged(Lcom/android/mms/model/Model;Z)V
    .locals 0
    .param p1, "model"    # Lcom/android/mms/model/Model;
    .param p2, "dataChanged"    # Z

    .prologue
    .line 138
    return-void
.end method

.method public present(Lcom/android/mms/util/ItemLoadedCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/android/mms/util/ItemLoadedCallback;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mOnLoadedCallback:Lcom/android/mms/util/ItemLoadedCallback;

    .line 49
    iget-object v0, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v0, Lcom/android/mms/model/SlideshowModel;

    .line 50
    .local v0, "model":Lcom/android/mms/model/SlideshowModel;
    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->hasOtherAttachModel()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 51
    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getOtherAttach()Lcom/android/mms/model/OtherAttachModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/OtherAttachModel;->getContentLocation()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "otherName":Ljava/lang/String;
    const/4 v2, -0x1

    .line 53
    .local v2, "resId":I
    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->hasVCalendar()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 54
    const v2, 0x7f02007c

    .line 56
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    instance-of v4, v4, Lcom/android/mms/ui/MessageListItem;

    if-eqz v4, :cond_2

    .line 57
    iget-object v4, p0, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v4, Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageListItem;->reset()V

    .line 58
    iget-object v4, p0, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v4, Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v4, v1, v2}, Lcom/android/mms/ui/MessageListItem;->setOtherAttach(Ljava/lang/String;I)V

    .line 69
    .end local v1    # "otherName":Ljava/lang/String;
    .end local v2    # "resId":I
    :cond_1
    :goto_0
    return-void

    .line 59
    .restart local v1    # "otherName":Ljava/lang/String;
    .restart local v2    # "resId":I
    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    instance-of v4, v4, Lcom/android/mms/ui/OtherAttachmentView;

    if-eqz v4, :cond_1

    .line 60
    iget-object v4, p0, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v4, Lcom/android/mms/ui/OtherAttachmentView;

    invoke-virtual {v4}, Lcom/android/mms/ui/OtherAttachmentView;->reset()V

    .line 61
    iget-object v4, p0, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v4, Lcom/android/mms/ui/OtherAttachmentView;

    invoke-virtual {v4, v1, v2}, Lcom/android/mms/ui/OtherAttachmentView;->setOtherAttach(Ljava/lang/String;I)V

    goto :goto_0

    .line 65
    .end local v1    # "otherName":Ljava/lang/String;
    .end local v2    # "resId":I
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    .line 66
    .local v3, "slide":Lcom/android/mms/model/SlideModel;
    if-eqz v3, :cond_1

    .line 67
    iget-object v4, p0, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v4, Lcom/android/mms/ui/SlideViewInterface;

    invoke-direct {p0, v4, v3}, Lcom/android/mms/ui/MmsThumbnailPresenter;->presentFirstSlide(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/SlideModel;)V

    goto :goto_0
.end method

.method protected presentAudioThumbnail(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/AudioModel;)V
    .locals 3
    .param p1, "view"    # Lcom/android/mms/ui/SlideViewInterface;
    .param p2, "audio"    # Lcom/android/mms/model/AudioModel;

    .prologue
    .line 127
    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getExtras()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/android/mms/ui/SlideViewInterface;->setAudio(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V

    .line 128
    return-void
.end method

.method protected presentVcardThumbnail(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/VcardModel;)V
    .locals 2
    .param p1, "view"    # Lcom/android/mms/ui/SlideViewInterface;
    .param p2, "vcard"    # Lcom/android/mms/model/VcardModel;

    .prologue
    .line 131
    invoke-virtual {p2}, Lcom/android/mms/model/VcardModel;->getLookupUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Lcom/android/mms/model/VcardModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/android/mms/ui/SlideViewInterface;->setVcard(Landroid/net/Uri;Ljava/lang/String;)V

    .line 134
    return-void

    .line 131
    :cond_0
    invoke-virtual {p2}, Lcom/android/mms/model/VcardModel;->getLookupUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method
