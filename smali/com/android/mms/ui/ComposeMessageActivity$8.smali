.class Lcom/android/mms/ui/ComposeMessageActivity$8;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->viewMmsMessageAttachment(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;I)V
    .locals 0

    .prologue
    .line 716
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$8;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$8;->val$requestCode:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 721
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$8;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mTempMmsUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$300(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    .line 730
    :cond_0
    :goto_0
    return-void

    .line 725
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$8;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$8;->val$requestCode:I

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->isAudioPlayerActivityRunning(I)Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1200(Lcom/android/mms/ui/ComposeMessageActivity;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$8;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$8;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mTempMmsUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$300(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/net/Uri;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$8;->val$requestCode:I

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->launchSlideshowActivity(Landroid/content/Context;Landroid/net/Uri;I)V

    goto :goto_0
.end method
