.class Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1$1;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;)V
    .locals 0

    .prologue
    .line 1101
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1$1;->this$2:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1$1;->this$2:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    .line 1104
    return-void
.end method
