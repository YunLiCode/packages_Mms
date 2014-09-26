.class Lcom/android/mms/ui/MessageListItem$1;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Lcom/android/mms/ui/MessageItem$PduLoadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListItem;->bindNotifInd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$1;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPduLoaded(Lcom/android/mms/ui/MessageItem;)V
    .locals 4
    .param p1, "messageItem"    # Lcom/android/mms/ui/MessageItem;

    .prologue
    .line 282
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$1;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->access$000(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getMessageId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$1;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v2}, Lcom/android/mms/ui/MessageListItem;->access$000(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getMessageId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$1;->this$0:Lcom/android/mms/ui/MessageListItem;

    # setter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v0, p1}, Lcom/android/mms/ui/MessageListItem;->access$002(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/ui/MessageItem;

    .line 285
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$1;->this$0:Lcom/android/mms/ui/MessageListItem;

    # invokes: Lcom/android/mms/ui/MessageListItem;->bindNotifInd()V
    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->access$100(Lcom/android/mms/ui/MessageListItem;)V

    .line 287
    :cond_0
    return-void
.end method
