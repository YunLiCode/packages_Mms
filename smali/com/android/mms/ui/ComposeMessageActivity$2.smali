.class Lcom/android/mms/ui/ComposeMessageActivity$2;
.super Landroid/database/ContentObserver;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 518
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$2;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfUpdate"    # Z

    .prologue
    .line 521
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$2;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$000(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 523
    .local v0, "airplaneModes":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 524
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$2;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->updateSendButtonState()V
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 526
    :cond_0
    return-void
.end method
