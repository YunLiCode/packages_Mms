.class Lcom/android/mms/ui/SmsSelectorActivity$3;
.super Ljava/lang/Thread;
.source "SmsSelectorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SmsSelectorActivity;->moveToSim([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SmsSelectorActivity;

.field final synthetic val$msgObj:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SmsSelectorActivity;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/mms/ui/SmsSelectorActivity$3;->this$0:Lcom/android/mms/ui/SmsSelectorActivity;

    iput-object p2, p0, Lcom/android/mms/ui/SmsSelectorActivity$3;->val$msgObj:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 144
    iget-object v5, p0, Lcom/android/mms/ui/SmsSelectorActivity$3;->val$msgObj:[Ljava/lang/Object;

    array-length v0, v5

    .line 145
    .local v0, "count":I
    const/4 v1, 0x0

    .line 146
    .local v1, "failedCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 147
    const/4 v3, 0x0

    .line 148
    .local v3, "isMoveToSim":Z
    iget-object v5, p0, Lcom/android/mms/ui/SmsSelectorActivity$3;->val$msgObj:[Ljava/lang/Object;

    aget-object v5, v5, v2

    instance-of v5, v5, Lcom/android/mms/ui/MessageItem;

    if-eqz v5, :cond_0

    .line 149
    iget-object v6, p0, Lcom/android/mms/ui/SmsSelectorActivity$3;->this$0:Lcom/android/mms/ui/SmsSelectorActivity;

    iget-object v5, p0, Lcom/android/mms/ui/SmsSelectorActivity$3;->val$msgObj:[Ljava/lang/Object;

    aget-object v5, v5, v2

    check-cast v5, Lcom/android/mms/ui/MessageItem;

    iget-object v7, p0, Lcom/android/mms/ui/SmsSelectorActivity$3;->this$0:Lcom/android/mms/ui/SmsSelectorActivity;

    iget v7, v7, Lcom/android/mms/ui/BaseSelectorActivity;->mSubscription:I

    invoke-static {v6, v5, v7}, Lcom/android/mms/ui/MessageUtils;->copySmsToSim(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;I)Z

    move-result v3

    .line 153
    :cond_0
    if-nez v3, :cond_2

    .line 154
    sub-int v1, v0, v2

    .line 158
    .end local v3    # "isMoveToSim":Z
    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/SmsSelectorActivity$3;->this$0:Lcom/android/mms/ui/SmsSelectorActivity;

    # getter for: Lcom/android/mms/ui/SmsSelectorActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/mms/ui/SmsSelectorActivity;->access$000(Lcom/android/mms/ui/SmsSelectorActivity;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x3ea

    invoke-static {v5, v6, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v4

    .line 159
    .local v4, "message":Landroid/os/Message;
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 160
    return-void

    .line 146
    .end local v4    # "message":Landroid/os/Message;
    .restart local v3    # "isMoveToSim":Z
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
