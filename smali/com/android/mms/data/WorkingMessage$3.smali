.class Lcom/android/mms/data/WorkingMessage$3;
.super Ljava/lang/Object;
.source "WorkingMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/WorkingMessage;->send(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/data/WorkingMessage;

.field final synthetic val$conv:Lcom/android/mms/data/Conversation;

.field final synthetic val$msgText:Ljava/lang/String;

.field final synthetic val$recipientsInUI:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1394
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage$3;->this$0:Lcom/android/mms/data/WorkingMessage;

    iput-object p2, p0, Lcom/android/mms/data/WorkingMessage$3;->val$conv:Lcom/android/mms/data/Conversation;

    iput-object p3, p0, Lcom/android/mms/data/WorkingMessage$3;->val$msgText:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/mms/data/WorkingMessage$3;->val$recipientsInUI:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1397
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$3;->this$0:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$3;->val$conv:Lcom/android/mms/data/Conversation;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$3;->val$msgText:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage$3;->val$recipientsInUI:Ljava/lang/String;

    # invokes: Lcom/android/mms/data/WorkingMessage;->preSendSmsWorker(Lcom/android/mms/data/Conversation;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/data/WorkingMessage;->access$800(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$3;->this$0:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$3;->val$conv:Lcom/android/mms/data/Conversation;

    # invokes: Lcom/android/mms/data/WorkingMessage;->updateSendStats(Lcom/android/mms/data/Conversation;)V
    invoke-static {v0, v1}, Lcom/android/mms/data/WorkingMessage;->access$700(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;)V

    .line 1400
    return-void
.end method
