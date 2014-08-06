.class Lcom/android/mms/ui/SmsSelectorActivity$4;
.super Ljava/lang/Thread;
.source "SmsSelectorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SmsSelectorActivity;->moveToPhone([Lcom/android/mms/ui/SmsSelectorActivity$SimMessageItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SmsSelectorActivity;

.field final synthetic val$msgItems:[Lcom/android/mms/ui/SmsSelectorActivity$SimMessageItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SmsSelectorActivity;[Lcom/android/mms/ui/SmsSelectorActivity$SimMessageItem;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/mms/ui/SmsSelectorActivity$4;->this$0:Lcom/android/mms/ui/SmsSelectorActivity;

    iput-object p2, p0, Lcom/android/mms/ui/SmsSelectorActivity$4;->val$msgItems:[Lcom/android/mms/ui/SmsSelectorActivity$SimMessageItem;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 168
    iget-object v5, p0, Lcom/android/mms/ui/SmsSelectorActivity$4;->val$msgItems:[Lcom/android/mms/ui/SmsSelectorActivity$SimMessageItem;

    array-length v0, v5

    .line 169
    .local v0, "count":I
    const/4 v1, 0x0

    .line 170
    .local v1, "failedCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 171
    iget-object v5, p0, Lcom/android/mms/ui/SmsSelectorActivity$4;->this$0:Lcom/android/mms/ui/SmsSelectorActivity;

    iget-object v6, p0, Lcom/android/mms/ui/SmsSelectorActivity$4;->val$msgItems:[Lcom/android/mms/ui/SmsSelectorActivity$SimMessageItem;

    aget-object v6, v6, v2

    # invokes: Lcom/android/mms/ui/SmsSelectorActivity;->copyToPhoneMemory(Lcom/android/mms/ui/SmsSelectorActivity$SimMessageItem;)Z
    invoke-static {v5, v6}, Lcom/android/mms/ui/SmsSelectorActivity;->access$100(Lcom/android/mms/ui/SmsSelectorActivity;Lcom/android/mms/ui/SmsSelectorActivity$SimMessageItem;)Z

    move-result v3

    .line 172
    .local v3, "isMoveToPhone":Z
    if-nez v3, :cond_0

    .line 173
    add-int/lit8 v1, v1, 0x1

    .line 170
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 176
    .end local v3    # "isMoveToPhone":Z
    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/SmsSelectorActivity$4;->this$0:Lcom/android/mms/ui/SmsSelectorActivity;

    # getter for: Lcom/android/mms/ui/SmsSelectorActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/mms/ui/SmsSelectorActivity;->access$000(Lcom/android/mms/ui/SmsSelectorActivity;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x7d2

    invoke-static {v5, v6, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v4

    .line 177
    .local v4, "message":Landroid/os/Message;
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 178
    return-void
.end method
