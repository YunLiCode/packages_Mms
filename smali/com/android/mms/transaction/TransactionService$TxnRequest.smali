.class Lcom/android/mms/transaction/TransactionService$TxnRequest;
.super Ljava/lang/Object;
.source "TransactionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/TransactionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TxnRequest"
.end annotation


# instance fields
.field anyRequestFailed:I

.field isNoRetry:Z

.field requestedSubId:I

.field serviceId:I

.field final synthetic this$0:Lcom/android/mms/transaction/TransactionService;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/TransactionService;II)V
    .locals 1
    .param p2, "srvId"    # I
    .param p3, "reqSubId"    # I

    .prologue
    .line 293
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/mms/transaction/TransactionService$TxnRequest;-><init>(Lcom/android/mms/transaction/TransactionService;IIZ)V

    .line 294
    return-void
.end method

.method constructor <init>(Lcom/android/mms/transaction/TransactionService;IIZ)V
    .locals 1
    .param p2, "srvId"    # I
    .param p3, "reqSubId"    # I
    .param p4, "isFinalRetry"    # Z

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/mms/transaction/TransactionService$TxnRequest;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 289
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/transaction/TransactionService$TxnRequest;->anyRequestFailed:I

    .line 297
    iput p2, p0, Lcom/android/mms/transaction/TransactionService$TxnRequest;->serviceId:I

    .line 298
    iput p3, p0, Lcom/android/mms/transaction/TransactionService$TxnRequest;->requestedSubId:I

    .line 299
    iput-boolean p4, p0, Lcom/android/mms/transaction/TransactionService$TxnRequest;->isNoRetry:Z

    .line 300
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TxnRequest=[ServiceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/transaction/TransactionService$TxnRequest;->serviceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reqeustedSubId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/transaction/TransactionService$TxnRequest;->requestedSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", anyRequestFailed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/transaction/TransactionService$TxnRequest;->anyRequestFailed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
