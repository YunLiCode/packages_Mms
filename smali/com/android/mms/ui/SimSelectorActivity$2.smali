.class Lcom/android/mms/ui/SimSelectorActivity$2;
.super Ljava/lang/Thread;
.source "SimSelectorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SimSelectorActivity;->copyToPhoneMemory([Lcom/android/mms/ui/SimSelectorActivity$SimMessageItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SimSelectorActivity;

.field final synthetic val$msgItems:[Lcom/android/mms/ui/SimSelectorActivity$SimMessageItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SimSelectorActivity;[Lcom/android/mms/ui/SimSelectorActivity$SimMessageItem;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/mms/ui/SimSelectorActivity$2;->this$0:Lcom/android/mms/ui/SimSelectorActivity;

    iput-object p2, p0, Lcom/android/mms/ui/SimSelectorActivity$2;->val$msgItems:[Lcom/android/mms/ui/SimSelectorActivity$SimMessageItem;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 72
    iget-object v5, p0, Lcom/android/mms/ui/SimSelectorActivity$2;->val$msgItems:[Lcom/android/mms/ui/SimSelectorActivity$SimMessageItem;

    array-length v0, v5

    .line 73
    .local v0, "count":I
    const/4 v1, 0x0

    .line 74
    .local v1, "failedCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 75
    iget-object v5, p0, Lcom/android/mms/ui/SimSelectorActivity$2;->this$0:Lcom/android/mms/ui/SimSelectorActivity;

    iget-object v6, p0, Lcom/android/mms/ui/SimSelectorActivity$2;->val$msgItems:[Lcom/android/mms/ui/SimSelectorActivity$SimMessageItem;

    aget-object v6, v6, v2

    # invokes: Lcom/android/mms/ui/SimSelectorActivity;->copyToPhoneMemory(Lcom/android/mms/ui/SimSelectorActivity$SimMessageItem;)Z
    invoke-static {v5, v6}, Lcom/android/mms/ui/SimSelectorActivity;->access$100(Lcom/android/mms/ui/SimSelectorActivity;Lcom/android/mms/ui/SimSelectorActivity$SimMessageItem;)Z

    move-result v3

    .line 76
    .local v3, "isMoveToPhone":Z
    if-nez v3, :cond_0

    .line 77
    add-int/lit8 v1, v1, 0x1

    .line 74
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    .end local v3    # "isMoveToPhone":Z
    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/SimSelectorActivity$2;->this$0:Lcom/android/mms/ui/SimSelectorActivity;

    # getter for: Lcom/android/mms/ui/SimSelectorActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/mms/ui/SimSelectorActivity;->access$000(Lcom/android/mms/ui/SimSelectorActivity;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x3ea

    invoke-static {v5, v6, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v4

    .line 81
    .local v4, "message":Landroid/os/Message;
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 82
    return-void
.end method
