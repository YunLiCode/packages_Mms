.class Lcom/android/mms/ui/ComposeMessageActivity$6;
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
    .line 631
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$6;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 634
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 690
    :cond_0
    :goto_0
    return-void

    .line 636
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$6;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->editSlideshow()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$500(Lcom/android/mms/ui/ComposeMessageActivity;)V

    goto :goto_0

    .line 640
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$6;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->isPreparedForSending()Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$600(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$6;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->confirmSendMessageIfNeeded()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)V

    goto :goto_0

    .line 650
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$6;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$6;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget v1, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->viewMmsMessageAttachment(I)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$800(Lcom/android/mms/ui/ComposeMessageActivity;I)V

    goto :goto_0

    .line 659
    :pswitch_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$6;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->showAddAttachmentDialog(Z)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$900(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    goto :goto_0

    .line 663
    :pswitch_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$6;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->removeAttachment(Z)V

    .line 664
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$6;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v1, 0x0

    # setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mAttachFileUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1002(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 667
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$6;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1100(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/AttachmentEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/AttachmentEditor;->resetSlideshowImage()V

    goto :goto_0

    .line 670
    :pswitch_5
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$6;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->isPreparedForSending()Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$600(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$6;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/mms/data/WorkingMessage;->setCurrentConvSub(I)V

    .line 672
    sput v2, Lcom/android/mms/ui/ComposeMessageActivity;->subSelected:I

    .line 673
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$6;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->confirmSendMessageIfNeeded()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 674
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$6;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1100(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/AttachmentEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/AttachmentEditor;->resetSlideshowImage()V

    goto :goto_0

    .line 679
    :pswitch_6
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$6;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->isPreparedForSending()Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$600(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$6;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setCurrentConvSub(I)V

    .line 681
    sput v1, Lcom/android/mms/ui/ComposeMessageActivity;->subSelected:I

    .line 682
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$6;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->confirmSendMessageIfNeeded()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 683
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$6;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1100(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/AttachmentEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/AttachmentEditor;->resetSlideshowImage()V

    goto/16 :goto_0

    .line 634
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
