.class Lcom/android/mms/transaction/TransactionService$1;
.super Landroid/os/Handler;
.source "TransactionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/TransactionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/TransactionService;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/TransactionService;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/mms/transaction/TransactionService$1;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 208
    const/4 v0, 0x0

    .line 210
    .local v0, "str":Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v3, :cond_2

    .line 211
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService$1;->this$0:Lcom/android/mms/transaction/TransactionService;

    const v2, 0x7f0b00f8

    invoke-virtual {v1, v2}, Lcom/android/mms/transaction/TransactionService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 230
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 231
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService$1;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 234
    :cond_1
    return-void

    .line 212
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 213
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService$1;->this$0:Lcom/android/mms/transaction/TransactionService;

    const v2, 0x7f0b0102

    invoke-virtual {v1, v2}, Lcom/android/mms/transaction/TransactionService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 214
    :cond_3
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 215
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService$1;->this$0:Lcom/android/mms/transaction/TransactionService;

    const v2, 0x7f0b015f

    invoke-virtual {v1, v2}, Lcom/android/mms/transaction/TransactionService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 216
    :cond_4
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    .line 217
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService$1;->this$0:Lcom/android/mms/transaction/TransactionService;

    const v2, 0x7f0b0160

    invoke-virtual {v1, v2}, Lcom/android/mms/transaction/TransactionService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 218
    :cond_5
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_6

    .line 219
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService$1;->this$0:Lcom/android/mms/transaction/TransactionService;

    const v2, 0x7f0b0103

    invoke-virtual {v1, v2}, Lcom/android/mms/transaction/TransactionService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 220
    :cond_6
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_7

    .line 221
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService$1;->this$0:Lcom/android/mms/transaction/TransactionService;

    const v2, 0x7f0b0104

    invoke-virtual {v1, v2}, Lcom/android/mms/transaction/TransactionService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 222
    :cond_7
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_8

    .line 223
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService$1;->this$0:Lcom/android/mms/transaction/TransactionService;

    const v2, 0x7f0b0106

    invoke-virtual {v1, v2}, Lcom/android/mms/transaction/TransactionService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 224
    :cond_8
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_9

    .line 225
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService$1;->this$0:Lcom/android/mms/transaction/TransactionService;

    const v2, 0x7f0b0107

    invoke-virtual {v1, v2}, Lcom/android/mms/transaction/TransactionService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 226
    :cond_9
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    .line 227
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService$1;->this$0:Lcom/android/mms/transaction/TransactionService;

    const v2, 0x7f0b0105

    invoke-virtual {v1, v2}, Lcom/android/mms/transaction/TransactionService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method
