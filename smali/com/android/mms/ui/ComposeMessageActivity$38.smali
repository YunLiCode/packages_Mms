.class Lcom/android/mms/ui/ComposeMessageActivity$38;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->onMessageSent()V
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
    .line 3943
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$38;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3954
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$38;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->startMsgListQuery()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8200(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 3959
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$38;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->updateThreadIdIfRunning()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8300(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 3962
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$38;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3963
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$38;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$38;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->editMessageItem(Lcom/android/mms/ui/MessageItem;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1900(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V

    .line 3964
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$38;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->drawBottomPanel()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2000(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 3965
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$38;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v1, 0x0

    # setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8402(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/ui/MessageItem;

    .line 3967
    :cond_0
    return-void
.end method
