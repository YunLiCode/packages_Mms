.class Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler$1;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;)V
    .locals 0

    .prologue
    .line 6234
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 6236
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    .line 6237
    return-void
.end method
