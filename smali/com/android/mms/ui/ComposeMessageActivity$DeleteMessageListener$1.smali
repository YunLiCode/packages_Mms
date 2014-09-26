.class Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)V
    .locals 0

    .prologue
    .line 1082
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1086
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->access$3500(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1087
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->access$3500(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/data/WorkingMessage;->removeThumbnailsFromCache(Lcom/android/mms/model/SlideshowModel;)V

    .line 1088
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->getPduLoaderManager()Lcom/android/mms/util/PduLoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->access$3500(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    iget-object v1, v1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/mms/util/PduLoaderManager;->removePdu(Landroid/net/Uri;)V

    .line 1093
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3600(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    move-result-object v0

    const/16 v1, 0x25e4

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->access$3500(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    iget-object v3, v3, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->access$3500(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    if-eqz v4, :cond_2

    move-object v4, v2

    :goto_0
    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1098
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v6

    .line 1099
    .local v6, "messageCount":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "baijianhua onClick  delete messageCount "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 1100
    const/4 v0, 0x1

    if-ne v6, v0, :cond_1

    .line 1101
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3600(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1$1;-><init>(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->post(Ljava/lang/Runnable;)Z

    .line 1106
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->finish()V

    .line 1108
    :cond_1
    return-void

    .line 1093
    .end local v6    # "messageCount":I
    :cond_2
    const-string v4, "locked=0"

    goto :goto_0
.end method
