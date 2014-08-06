.class Lcom/android/mms/ui/MessageListItem$ImageLoadedCallback;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Lcom/android/mms/util/ItemLoadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageLoadedCallback"
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
.field private final mListItem:Lcom/android/mms/ui/MessageListItem;

.field private mMessageId:J


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MessageListItem;)V
    .locals 2
    .param p1, "listItem"    # Lcom/android/mms/ui/MessageListItem;

    .prologue
    .line 636
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 637
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$ImageLoadedCallback;->mListItem:Lcom/android/mms/ui/MessageListItem;

    .line 638
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMessageId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/ui/MessageListItem$ImageLoadedCallback;->mMessageId:J

    .line 639
    return-void
.end method


# virtual methods
.method public onItemLoaded(Lcom/android/mms/util/ThumbnailManager$ImageLoaded;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "imageLoaded"    # Lcom/android/mms/util/ThumbnailManager$ImageLoaded;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .prologue
    const/4 v5, 0x0

    .line 651
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$ImageLoadedCallback;->mListItem:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$000(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    .line 652
    .local v0, "msgItem":Lcom/android/mms/ui/MessageItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMessageId()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/mms/ui/MessageListItem$ImageLoadedCallback;->mMessageId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 653
    iget-boolean v1, p1, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;->mIsVideo:Z

    if-eqz v1, :cond_1

    .line 654
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$ImageLoadedCallback;->mListItem:Lcom/android/mms/ui/MessageListItem;

    iget-object v2, p1, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v5, v2}, Lcom/android/mms/ui/MessageListItem;->setVideoThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 659
    :cond_0
    :goto_0
    return-void

    .line 656
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$ImageLoadedCallback;->mListItem:Lcom/android/mms/ui/MessageListItem;

    iget-object v2, p1, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v5, v2}, Lcom/android/mms/ui/MessageListItem;->setImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public bridge synthetic onItemLoaded(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Throwable;

    .prologue
    .line 632
    check-cast p1, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/ui/MessageListItem$ImageLoadedCallback;->onItemLoaded(Lcom/android/mms/util/ThumbnailManager$ImageLoaded;Ljava/lang/Throwable;)V

    return-void
.end method

.method public reset(Lcom/android/mms/ui/MessageListItem;)V
    .locals 2
    .param p1, "listItem"    # Lcom/android/mms/ui/MessageListItem;

    .prologue
    .line 642
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMessageId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/ui/MessageListItem$ImageLoadedCallback;->mMessageId:J

    .line 643
    return-void
.end method
