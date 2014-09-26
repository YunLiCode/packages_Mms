.class Lcom/android/mms/ui/ComposeMessageActivity$10;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0

    .prologue
    .line 802
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$10;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 805
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 815
    :goto_0
    return-void

    .line 807
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$10;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mCurrentDataSubscription:I
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1402(Lcom/android/mms/ui/ComposeMessageActivity;I)I

    .line 808
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$10;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget v1, p1, Landroid/os/Message;->arg2:I

    # setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mTargetDataSubscription:I
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1502(Lcom/android/mms/ui/ComposeMessageActivity;I)I

    .line 809
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$10;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    # setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSwitchToSend:Z
    invoke-static {v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2102(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 810
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$10;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v1, 0x0

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->showDataSwitchDialog(Z)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1700(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    goto :goto_0

    .line 805
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
