.class public Lcom/android/mms/ui/DeliveryReportItem;
.super Ljava/lang/Object;
.source "DeliveryReportItem.java"


# instance fields
.field deliveryDate:Ljava/lang/String;

.field recipient:Ljava/lang/String;

.field status:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "recipient"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "deliveryDate"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/mms/ui/DeliveryReportItem;->recipient:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/android/mms/ui/DeliveryReportItem;->status:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/android/mms/ui/DeliveryReportItem;->deliveryDate:Ljava/lang/String;

    .line 33
    return-void
.end method
