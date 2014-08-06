.class Lcom/android/mms/ui/ComposeMessageActivity$9;
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
    .line 752
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 756
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 789
    const-string v3, "Mms/compose"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    :cond_0
    :goto_0
    return-void

    .line 758
    :pswitch_0
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/mms/ui/MessageItem;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->showMessageDetails(Lcom/android/mms/ui/MessageItem;)Z
    invoke-static {v4, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1300(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)Z

    goto :goto_0

    .line 761
    :pswitch_1
    const-string v2, "mms"

    .line 793
    .local v2, "type":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v3, 0x0

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->getMessageItem(Ljava/lang/String;JZ)Lcom/android/mms/ui/MessageItem;
    invoke-static {v4, v2, v5, v6, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1800(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;JZ)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    .line 794
    .local v0, "messageItem":Lcom/android/mms/ui/MessageItem;
    if-eqz v0, :cond_0

    .line 795
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->editMessageItem(Lcom/android/mms/ui/MessageItem;)V
    invoke-static {v3, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1900(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V

    .line 796
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->drawBottomPanel()V
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2000(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 797
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->updateSendButtonState()V
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)V

    goto :goto_0

    .line 764
    .end local v0    # "messageItem":Lcom/android/mms/ui/MessageItem;
    .end local v2    # "type":Ljava/lang/String;
    :pswitch_2
    const-string v2, "sms"

    .line 765
    .restart local v2    # "type":Ljava/lang/String;
    goto :goto_1

    .line 767
    .end local v2    # "type":Ljava/lang/String;
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/mms/ui/MessageItem;

    .line 768
    .local v1, "msgItem":Lcom/android/mms/ui/MessageItem;
    if-eqz v1, :cond_0

    .line 769
    iget v3, v1, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    packed-switch v3, :pswitch_data_1

    goto :goto_0

    .line 775
    :pswitch_4
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v4, v1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    iget-object v5, v1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->getAsyncDialog()Lcom/android/mms/ui/AsyncDialog;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/app/Activity;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;Lcom/android/mms/ui/AsyncDialog;)V

    goto :goto_0

    .line 783
    .end local v1    # "msgItem":Lcom/android/mms/ui/MessageItem;
    :pswitch_5
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget v4, p1, Landroid/os/Message;->arg1:I

    # setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mCurrentDataSubscription:I
    invoke-static {v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1402(Lcom/android/mms/ui/ComposeMessageActivity;I)I

    .line 784
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget v4, p1, Landroid/os/Message;->arg2:I

    # setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mTargetDataSubscription:I
    invoke-static {v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1502(Lcom/android/mms/ui/ComposeMessageActivity;I)I

    .line 785
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/mms/ui/MessageListItem;

    # setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedMsgListItem:Lcom/android/mms/ui/MessageListItem;
    invoke-static {v4, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1602(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageListItem;

    .line 786
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v4, 0x1

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->showDataSwitchDialog(Z)V
    invoke-static {v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1700(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    goto :goto_0

    .line 756
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 769
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
