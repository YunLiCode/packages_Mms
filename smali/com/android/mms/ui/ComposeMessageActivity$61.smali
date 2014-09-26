.class Lcom/android/mms/ui/ComposeMessageActivity$61;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;


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
    .line 5996
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$61;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Lcom/android/mms/ui/MessageListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/android/mms/ui/MessageListAdapter;

    .prologue
    .line 6004
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$61;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->startMsgListQuery()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8200(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 6005
    return-void
.end method

.method public onDataSetChanged(Lcom/android/mms/ui/MessageListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/android/mms/ui/MessageListAdapter;

    .prologue
    .line 5999
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$61;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v1, 0x1

    # setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mPossiblePendingNotification:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10102(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 6000
    return-void
.end method
