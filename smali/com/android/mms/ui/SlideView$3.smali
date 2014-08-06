.class Lcom/android/mms/ui/SlideView$3;
.super Ljava/lang/Object;
.source "SlideView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideView;->enableMMSConformanceMode(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideView;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideView;)V
    .locals 0

    .prologue
    .line 554
    iput-object p1, p0, Lcom/android/mms/ui/SlideView$3;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$3;->this$0:Lcom/android/mms/ui/SlideView;

    # getter for: Lcom/android/mms/ui/SlideView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->access$900(Lcom/android/mms/ui/SlideView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$3;->this$0:Lcom/android/mms/ui/SlideView;

    # getter for: Lcom/android/mms/ui/SlideView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->access$900(Lcom/android/mms/ui/SlideView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    .line 559
    :cond_0
    return-void
.end method
