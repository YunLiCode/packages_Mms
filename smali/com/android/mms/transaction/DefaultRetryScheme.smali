.class public Lcom/android/mms/transaction/DefaultRetryScheme;
.super Lcom/android/mms/transaction/AbstractRetryScheme;
.source "DefaultRetryScheme.java"


# static fields
.field private static final sDafaultRetrieveScheme:[I

.field private static final sDefaultRetryScheme:[I

.field private static final sYepDefaultRetryScheme:[I


# instance fields
.field private isUseYepScheme:Z

.field private mContext:Landroid/content/Context;

.field private mCsimRetryTimes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mms/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    .line 44
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/mms/transaction/DefaultRetryScheme;->sYepDefaultRetryScheme:[I

    .line 47
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/mms/transaction/DefaultRetryScheme;->sDafaultRetrieveScheme:[I

    return-void

    .line 41
    nop

    :array_0
    .array-data 4
        0x0
        0xea60
        0x493e0
        0x927c0
        0x1b7740
    .end array-data

    .line 44
    :array_1
    .array-data 4
        0x0
        0x7530
        0x7530
        0x7530
        0x493e0
        0x493e0
        0x493e0
    .end array-data

    .line 47
    :array_2
    .array-data 4
        0x0
        0x493e0
        0x493e0
        0x493e0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "retriedTimes"    # I

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p2}, Lcom/android/mms/transaction/AbstractRetryScheme;-><init>(I)V

    .line 37
    iput v1, p0, Lcom/android/mms/transaction/DefaultRetryScheme;->mCsimRetryTimes:I

    .line 55
    iput-object p1, p0, Lcom/android/mms/transaction/DefaultRetryScheme;->mContext:Landroid/content/Context;

    .line 68
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/mms/transaction/DefaultRetryScheme;->isUseYepScheme:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    iget v2, p0, Lcom/android/mms/transaction/AbstractRetryScheme;->mRetriedTimes:I

    if-gez v2, :cond_0

    :goto_1
    iput v1, p0, Lcom/android/mms/transaction/AbstractRetryScheme;->mRetriedTimes:I

    .line 78
    iget-boolean v1, p0, Lcom/android/mms/transaction/DefaultRetryScheme;->isUseYepScheme:Z

    if-eqz v1, :cond_2

    .line 79
    iget v1, p0, Lcom/android/mms/transaction/AbstractRetryScheme;->mRetriedTimes:I

    sget-object v2, Lcom/android/mms/transaction/DefaultRetryScheme;->sYepDefaultRetryScheme:[I

    array-length v2, v2

    if-lt v1, v2, :cond_1

    sget-object v1, Lcom/android/mms/transaction/DefaultRetryScheme;->sYepDefaultRetryScheme:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_2
    iput v1, p0, Lcom/android/mms/transaction/AbstractRetryScheme;->mRetriedTimes:I

    .line 90
    :goto_3
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/mms/transaction/DefaultRetryScheme;->isUseYepScheme:Z

    goto :goto_0

    .line 72
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_0
    iget v1, p0, Lcom/android/mms/transaction/AbstractRetryScheme;->mRetriedTimes:I

    goto :goto_1

    .line 79
    :cond_1
    iget v1, p0, Lcom/android/mms/transaction/AbstractRetryScheme;->mRetriedTimes:I

    goto :goto_2

    .line 82
    :cond_2
    iget v1, p0, Lcom/android/mms/transaction/AbstractRetryScheme;->mRetriedTimes:I

    sget-object v2, Lcom/android/mms/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    array-length v2, v2

    if-lt v1, v2, :cond_3

    sget-object v1, Lcom/android/mms/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_4
    iput v1, p0, Lcom/android/mms/transaction/AbstractRetryScheme;->mRetriedTimes:I

    goto :goto_3

    :cond_3
    iget v1, p0, Lcom/android/mms/transaction/AbstractRetryScheme;->mRetriedTimes:I

    goto :goto_4
.end method


# virtual methods
.method public getRetryLimit()I
    .locals 2

    .prologue
    .line 94
    iget v0, p0, Lcom/android/mms/transaction/DefaultRetryScheme;->mCsimRetryTimes:I

    if-lez v0, :cond_0

    .line 95
    iget v0, p0, Lcom/android/mms/transaction/DefaultRetryScheme;->mCsimRetryTimes:I

    .line 103
    :goto_0
    return v0

    .line 98
    :cond_0
    const-string v0, "true"

    const-string v1, "ro.config.a.enable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    const-string v0, "DefaultRetryScheme"

    const-string v1, "ro.config.a.enable true "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    sget-object v0, Lcom/android/mms/transaction/DefaultRetryScheme;->sDafaultRetrieveScheme:[I

    array-length v0, v0

    goto :goto_0

    .line 103
    :cond_1
    iget-boolean v0, p0, Lcom/android/mms/transaction/DefaultRetryScheme;->isUseYepScheme:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/mms/transaction/DefaultRetryScheme;->sYepDefaultRetryScheme:[I

    array-length v0, v0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/mms/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    array-length v0, v0

    goto :goto_0
.end method

.method public getWaitingInterval()J
    .locals 3

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 135
    .local v0, "csimRetryInterval":I
    const-string v1, "true"

    const-string v2, "ro.config.a.enable"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    const-string v1, "DefaultRetryScheme"

    const-string v2, "ro.config.a.enable true "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    sget-object v1, Lcom/android/mms/transaction/DefaultRetryScheme;->sDafaultRetrieveScheme:[I

    iget v2, p0, Lcom/android/mms/transaction/AbstractRetryScheme;->mRetriedTimes:I

    aget v1, v1, v2

    int-to-long v1, v1

    .line 140
    :goto_0
    return-wide v1

    :cond_0
    iget-boolean v1, p0, Lcom/android/mms/transaction/DefaultRetryScheme;->isUseYepScheme:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/mms/transaction/DefaultRetryScheme;->sYepDefaultRetryScheme:[I

    iget v2, p0, Lcom/android/mms/transaction/AbstractRetryScheme;->mRetriedTimes:I

    aget v1, v1, v2

    int-to-long v1, v1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/mms/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    iget v2, p0, Lcom/android/mms/transaction/AbstractRetryScheme;->mRetriedTimes:I

    aget v1, v1, v2

    int-to-long v1, v1

    goto :goto_0
.end method
