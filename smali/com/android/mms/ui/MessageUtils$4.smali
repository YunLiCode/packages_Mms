.class final Lcom/android/mms/ui/MessageUtils$4;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageUtils;->resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$append:Z

.field final synthetic val$cb:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$imageUri:Landroid/net/Uri;

.field final synthetic val$showProgress:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;ZLjava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 839
    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$4;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/mms/ui/MessageUtils$4;->val$imageUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/mms/ui/MessageUtils$4;->val$handler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/mms/ui/MessageUtils$4;->val$cb:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    iput-boolean p5, p0, Lcom/android/mms/ui/MessageUtils$4;->val$append:Z

    iput-object p6, p0, Lcom/android/mms/ui/MessageUtils$4;->val$showProgress:Ljava/lang/Runnable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 842
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$4;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageUtils$4;->val$imageUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$4;->val$handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/mms/ui/MessageUtils$4;->val$cb:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    iget-boolean v4, p0, Lcom/android/mms/ui/MessageUtils$4;->val$append:Z

    iget-object v5, p0, Lcom/android/mms/ui/MessageUtils$4;->val$showProgress:Ljava/lang/Runnable;

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils;->resizeImage(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;ZLjava/lang/Runnable;)V

    .line 843
    return-void
.end method
