.class final Lcom/android/mms/ui/MessageUtils$5;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageUtils;->resizeImage(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$append:Z

.field final synthetic val$cb:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

.field final synthetic val$part:Lcom/google/android/mms/pdu/PduPart;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;Lcom/google/android/mms/pdu/PduPart;Z)V
    .locals 0

    .prologue
    .line 876
    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$5;->val$cb:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    iput-object p2, p0, Lcom/android/mms/ui/MessageUtils$5;->val$part:Lcom/google/android/mms/pdu/PduPart;

    iput-boolean p3, p0, Lcom/android/mms/ui/MessageUtils$5;->val$append:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 879
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$5;->val$cb:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    iget-object v1, p0, Lcom/android/mms/ui/MessageUtils$5;->val$part:Lcom/google/android/mms/pdu/PduPart;

    iget-boolean v2, p0, Lcom/android/mms/ui/MessageUtils$5;->val$append:Z

    invoke-interface {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;->onResizeResult(Lcom/google/android/mms/pdu/PduPart;Z)V

    .line 880
    return-void
.end method
