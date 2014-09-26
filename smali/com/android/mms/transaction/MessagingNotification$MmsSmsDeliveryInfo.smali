.class final Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;
.super Ljava/lang/Object;
.source "MessagingNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/MessagingNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MmsSmsDeliveryInfo"
.end annotation


# instance fields
.field public mTicker:Ljava/lang/CharSequence;

.field public mTimeMillis:J


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;J)V
    .locals 0
    .param p1, "ticker"    # Ljava/lang/CharSequence;
    .param p2, "timeMillis"    # J

    .prologue
    .line 427
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 428
    iput-object p1, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;->mTicker:Ljava/lang/CharSequence;

    .line 429
    iput-wide p2, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;->mTimeMillis:J

    .line 430
    return-void
.end method


# virtual methods
.method public deliver(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isStatusMessage"    # Z

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;->mTicker:Ljava/lang/CharSequence;

    iget-wide v1, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;->mTimeMillis:J

    # invokes: Lcom/android/mms/transaction/MessagingNotification;->updateDeliveryNotification(Landroid/content/Context;ZLjava/lang/CharSequence;J)V
    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->access$200(Landroid/content/Context;ZLjava/lang/CharSequence;J)V

    .line 435
    return-void
.end method
