.class Lcom/android/mms/ui/MTKImageView$GifFrameRunnable;
.super Ljava/lang/Object;
.source "MTKImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MTKImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GifFrameRunnable"
.end annotation


# instance fields
.field mFrame:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/android/mms/ui/MTKImageView;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MTKImageView;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p2, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 766
    iput-object p1, p0, Lcom/android/mms/ui/MTKImageView$GifFrameRunnable;->this$0:Lcom/android/mms/ui/MTKImageView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 767
    iput-object p2, p0, Lcom/android/mms/ui/MTKImageView$GifFrameRunnable;->mFrame:Landroid/graphics/Bitmap;

    .line 768
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 771
    iget-object v0, p0, Lcom/android/mms/ui/MTKImageView$GifFrameRunnable;->this$0:Lcom/android/mms/ui/MTKImageView;

    const/4 v1, 0x1

    # setter for: Lcom/android/mms/ui/MTKImageView;->mSetFromGif:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/MTKImageView;->access$502(Lcom/android/mms/ui/MTKImageView;Z)Z

    .line 772
    const-string v0, "MTKImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GifFrameRunnable:run:call setImageBitmap(mFrame="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MTKImageView$GifFrameRunnable;->mFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    iget-object v0, p0, Lcom/android/mms/ui/MTKImageView$GifFrameRunnable;->this$0:Lcom/android/mms/ui/MTKImageView;

    # getter for: Lcom/android/mms/ui/MTKImageView;->mAnimationThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/android/mms/ui/MTKImageView;->access$600(Lcom/android/mms/ui/MTKImageView;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 775
    iget-object v0, p0, Lcom/android/mms/ui/MTKImageView$GifFrameRunnable;->this$0:Lcom/android/mms/ui/MTKImageView;

    iget-object v1, p0, Lcom/android/mms/ui/MTKImageView$GifFrameRunnable;->mFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MTKImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 779
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MTKImageView$GifFrameRunnable;->this$0:Lcom/android/mms/ui/MTKImageView;

    const/4 v1, 0x0

    # setter for: Lcom/android/mms/ui/MTKImageView;->mSetFromGif:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/MTKImageView;->access$502(Lcom/android/mms/ui/MTKImageView;Z)Z

    .line 780
    return-void
.end method
