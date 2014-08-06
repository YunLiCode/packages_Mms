.class Lcom/android/mms/ui/ComposeMessageActivity$14;
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
    .line 879
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$14;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 882
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 916
    :goto_0
    return-void

    .line 884
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 885
    .local v0, "isReceive":Z
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$14;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->handleDataSwitchDone(Z)V
    invoke-static {v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2700(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    goto :goto_0

    .line 888
    .end local v0    # "isReceive":Z
    :pswitch_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$14;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedMsgListItem:Lcom/android/mms/ui/MessageListItem;
    invoke-static {v1, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1602(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageListItem;

    .line 889
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$14;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSwitchToSend:Z
    invoke-static {v1, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2102(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 890
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$14;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2600(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 891
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$14;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mDataSwitchHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2800(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 892
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$14;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v2, 0x7f0b015e

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 895
    :pswitch_2
    const-string v1, "Mms/compose"

    const-string v2, "DATA CONNECTED TIMEOUT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$14;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v2, 0x7f0b015b

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 897
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$14;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIsDataConnecting:Z
    invoke-static {v1, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2902(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 898
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$14;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedMsgListItem:Lcom/android/mms/ui/MessageListItem;
    invoke-static {v1, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1602(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageListItem;

    .line 899
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$14;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSwitchToSend:Z
    invoke-static {v1, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2102(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 900
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$14;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$14;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mDataStateReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3000(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 901
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$14;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2600(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$14;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2600(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 903
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$14;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 906
    :pswitch_3
    const-string v1, "Mms/compose"

    const-string v2, "switch back data sub"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$14;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->processDataReset()V
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3100(Lcom/android/mms/ui/ComposeMessageActivity;)V

    goto/16 :goto_0

    .line 910
    :pswitch_4
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$14;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->handleDataSwitchTimeout()V
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3200(Lcom/android/mms/ui/ComposeMessageActivity;)V

    goto/16 :goto_0

    .line 882
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
