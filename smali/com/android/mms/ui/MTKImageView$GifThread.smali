.class public Lcom/android/mms/ui/MTKImageView$GifThread;
.super Ljava/lang/Object;
.source "MTKImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MTKImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "GifThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MTKImageView;


# direct methods
.method protected constructor <init>(Lcom/android/mms/ui/MTKImageView;)V
    .locals 0

    .prologue
    .line 660
    iput-object p1, p0, Lcom/android/mms/ui/MTKImageView$GifThread;->this$0:Lcom/android/mms/ui/MTKImageView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lcom/android/mms/ui/MTKImageView$GifThread;->this$0:Lcom/android/mms/ui/MTKImageView;

    # invokes: Lcom/android/mms/ui/MTKImageView;->gifAnimation()V
    invoke-static {v0}, Lcom/android/mms/ui/MTKImageView;->access$400(Lcom/android/mms/ui/MTKImageView;)V

    .line 663
    return-void
.end method
