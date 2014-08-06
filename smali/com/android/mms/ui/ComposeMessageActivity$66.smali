.class Lcom/android/mms/ui/ComposeMessageActivity$66;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->handleDataSwitch(Z)V
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
    .line 6604
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$66;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 6606
    sparse-switch p2, :sswitch_data_0

    .line 6624
    :goto_0
    return v0

    .line 6611
    :sswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$66;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIsDataSwitching:Z
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$11600(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6612
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$66;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->removeDataSwitchTask()V
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$11700(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 6614
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$66;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIsDataConnecting:Z
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2900(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6615
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$66;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2600(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 6616
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$66;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mDataSwitchHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2800(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 6617
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$66;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v2, 0x0

    # setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedMsgListItem:Lcom/android/mms/ui/MessageListItem;
    invoke-static {v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1602(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageListItem;

    .line 6618
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$66;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$66;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mDataStateReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3000(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6619
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$66;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mDataSwitchHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2800(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6620
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$66;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIsDataConnecting:Z
    invoke-static {v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2902(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 6622
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 6606
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method
