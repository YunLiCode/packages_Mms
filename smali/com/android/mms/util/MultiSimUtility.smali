.class public Lcom/android/mms/util/MultiSimUtility;
.super Ljava/lang/Object;
.source "MultiSimUtility.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentDataSubscription(Landroid/content/Context;)I
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    const-string v1, "phone_msim"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/MSimTelephonyManager;

    .line 39
    .local v0, "mtmgr":Landroid/telephony/MSimTelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getPreferredDataSubscription()I

    move-result v1

    .line 41
    .end local v0    # "mtmgr":Landroid/telephony/MSimTelephonyManager;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
