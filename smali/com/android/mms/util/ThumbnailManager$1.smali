.class Lcom/android/mms/util/ThumbnailManager$1;
.super Ljava/lang/Object;
.source "ThumbnailManager.java"

# interfaces
.implements Lcom/android/mms/util/ItemLoadedFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/ThumbnailManager;->getThumbnail(Landroid/net/Uri;ZLcom/android/mms/util/ItemLoadedCallback;)Lcom/android/mms/util/ItemLoadedFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsDone:Z

.field final synthetic this$0:Lcom/android/mms/util/ThumbnailManager;

.field final synthetic val$callback:Lcom/android/mms/util/ItemLoadedCallback;


# direct methods
.method constructor <init>(Lcom/android/mms/util/ThumbnailManager;Lcom/android/mms/util/ItemLoadedCallback;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/mms/util/ThumbnailManager$1;->this$0:Lcom/android/mms/util/ThumbnailManager;

    iput-object p2, p0, Lcom/android/mms/util/ThumbnailManager$1;->val$callback:Lcom/android/mms/util/ItemLoadedCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/mms/util/ThumbnailManager$1;->this$0:Lcom/android/mms/util/ThumbnailManager;

    iget-object v1, p0, Lcom/android/mms/util/ThumbnailManager$1;->val$callback:Lcom/android/mms/util/ItemLoadedCallback;

    invoke-virtual {v0, v1}, Lcom/android/mms/util/ThumbnailManager;->cancelCallback(Lcom/android/mms/util/ItemLoadedCallback;)V

    .line 169
    iget-object v0, p0, Lcom/android/mms/util/ThumbnailManager$1;->this$0:Lcom/android/mms/util/ThumbnailManager;

    invoke-virtual {v0, p1}, Lcom/android/mms/util/ThumbnailManager;->removeThumbnail(Landroid/net/Uri;)V

    .line 170
    return-void
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/android/mms/util/ThumbnailManager$1;->mIsDone:Z

    return v0
.end method

.method public setIsDone(Z)V
    .locals 0
    .param p1, "done"    # Z

    .prologue
    .line 174
    iput-boolean p1, p0, Lcom/android/mms/util/ThumbnailManager$1;->mIsDone:Z

    .line 175
    return-void
.end method
