.class Lcom/android/mms/ui/ComposeMessageActivity$47;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->handleAddAttachmentError(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$error:I

.field final synthetic val$mediaTypeStringId:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;II)V
    .locals 0

    .prologue
    .line 4813
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$47;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$47;->val$mediaTypeStringId:I

    iput p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$47;->val$error:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const v6, 0x7f0b0051

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 4816
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$47;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 4817
    .local v2, "res":Landroid/content/res/Resources;
    iget v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$47;->val$mediaTypeStringId:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4820
    .local v0, "mediaType":Ljava/lang/String;
    iget v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$47;->val$error:I

    packed-switch v4, :pswitch_data_0

    .line 4854
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$47;->val$error:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4822
    :pswitch_0
    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v7

    invoke-virtual {v2, v6, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4823
    .local v1, "message":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$47;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v4, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 4858
    .end local v1    # "message":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 4826
    :pswitch_1
    const v4, 0x7f0b004c

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v0, v5, v7

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 4827
    .local v3, "title":Ljava/lang/String;
    const v4, 0x7f0b004e

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v0, v5, v7

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4857
    .restart local v1    # "message":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$47;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v4, v3, v1}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4830
    .end local v1    # "message":Ljava/lang/String;
    .end local v3    # "title":Ljava/lang/String;
    :pswitch_2
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$47;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->isMsgSizeExceedDlgPopupTimesDue()Z
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$9200(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4831
    const v4, 0x7f0b004f

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v0, v5, v7

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 4835
    .restart local v3    # "title":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$47;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIsAttachmentErrorOnSend:Z
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8500(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4836
    const v4, 0x7f0b0052

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4837
    .restart local v1    # "message":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$47;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIsAttachmentErrorOnSend:Z
    invoke-static {v4, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8502(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    goto :goto_1

    .line 4839
    .end local v1    # "message":Ljava/lang/String;
    :cond_1
    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v7

    invoke-virtual {v2, v6, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4841
    .restart local v1    # "message":Ljava/lang/String;
    goto :goto_1

    .line 4845
    .end local v1    # "message":Ljava/lang/String;
    .end local v3    # "title":Ljava/lang/String;
    :pswitch_3
    const v4, 0x7f0b0053

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4846
    .restart local v3    # "title":Ljava/lang/String;
    const v4, 0x7f0b0054

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4847
    .restart local v1    # "message":Ljava/lang/String;
    goto :goto_1

    .line 4849
    .end local v1    # "message":Ljava/lang/String;
    .end local v3    # "title":Ljava/lang/String;
    :pswitch_4
    const v4, 0x7f0b0163

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4850
    .restart local v3    # "title":Ljava/lang/String;
    const v4, 0x7f0b01a0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4852
    .restart local v1    # "message":Ljava/lang/String;
    goto :goto_1

    .line 4820
    nop

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
