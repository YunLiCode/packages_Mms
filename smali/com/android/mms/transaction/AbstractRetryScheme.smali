.class public abstract Lcom/android/mms/transaction/AbstractRetryScheme;
.super Ljava/lang/Object;
.source "AbstractRetryScheme.java"


# instance fields
.field protected mRetriedTimes:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "retriedTimes"    # I

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/android/mms/transaction/AbstractRetryScheme;->mRetriedTimes:I

    .line 28
    return-void
.end method
