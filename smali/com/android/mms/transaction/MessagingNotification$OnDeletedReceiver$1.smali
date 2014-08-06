.class Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver$1;
.super Ljava/lang/Object;
.source "MessagingNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver$1;->this$0:Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;

    iput-object p2, p0, Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/data/Conversation;->blockingMarkAllSmsMessagesAsSeen(Landroid/content/Context;)V

    .line 188
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/data/Conversation;->blockingMarkAllMmsMessagesAsSeen(Landroid/content/Context;)V

    .line 189
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver$1;->val$context:Landroid/content/Context;

    const/16 v1, 0x7b

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 190
    return-void
.end method
