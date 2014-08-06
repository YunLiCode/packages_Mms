.class Lcom/android/mms/ui/ComposeMessageActivity$46;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;


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
    .line 4774
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$46;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResizeResult(Lcom/google/android/mms/pdu/PduPart;Z)V
    .locals 10
    .param p1, "part"    # Lcom/google/android/mms/pdu/PduPart;
    .param p2, "append"    # Z

    .prologue
    const v9, 0x7f0b00f4

    const/4 v7, 0x1

    .line 4778
    if-nez p1, :cond_0

    .line 4779
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$46;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v7, -0x1

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->handleAddAttachmentError(II)V
    invoke-static {v6, v7, v9}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8600(Lcom/android/mms/ui/ComposeMessageActivity;II)V

    .line 4804
    :goto_0
    return-void

    .line 4783
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$46;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 4784
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v4

    .line 4787
    .local v4, "persister":Lcom/google/android/mms/pdu/PduPersister;
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$46;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    move-result-object v3

    .line 4788
    .local v3, "messageUri":Landroid/net/Uri;
    if-nez v3, :cond_2

    .line 4789
    const/4 v5, -0x1

    .line 4803
    .local v5, "result":I
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$46;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->handleAddAttachmentError(II)V
    invoke-static {v6, v5, v9}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8600(Lcom/android/mms/ui/ComposeMessageActivity;II)V

    goto :goto_0

    .line 4792
    .end local v5    # "result":I
    :cond_2
    :try_start_0
    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-virtual {v4, p1, v6, v7, v8}, Lcom/google/android/mms/pdu/PduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;JLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v1

    .line 4794
    .local v1, "dataUri":Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$46;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7, v1, p2}, Lcom/android/mms/data/WorkingMessage;->setAttachment(ILandroid/net/Uri;Z)I

    move-result v5

    .line 4795
    .restart local v5    # "result":I
    const-string v6, "Mms:app"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4796
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ResizeImageResultCallback: dataUri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 4798
    .end local v1    # "dataUri":Landroid/net/Uri;
    .end local v5    # "result":I
    :catch_0
    move-exception v2

    .line 4799
    .local v2, "e":Lcom/google/android/mms/MmsException;
    const/4 v5, -0x1

    .restart local v5    # "result":I
    goto :goto_1
.end method
