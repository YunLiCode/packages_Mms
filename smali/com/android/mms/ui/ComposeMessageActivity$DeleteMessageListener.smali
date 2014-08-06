.class Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteMessageListener"
.end annotation


# instance fields
.field private final mMessageItem:Lcom/android/mms/ui/MessageItem;

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V
    .locals 0
    .param p2, "messageItem"    # Lcom/android/mms/ui/MessageItem;

    .prologue
    .line 1075
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1076
    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    .line 1077
    return-void
.end method

.method static synthetic access$3500(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)Lcom/android/mms/ui/MessageItem;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 1081
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1082
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;-><init>(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)V

    const-string v2, "ComposeMessageActivity.DeleteMessageListener.onClick worker thread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1127
    return-void
.end method
