.class public Lcom/android/mms/MmsConfig;
.super Ljava/lang/Object;
.source "MmsConfig.java"


# static fields
.field private static mAliasEnabled:Z

.field private static mAliasRuleMaxChars:I

.field private static mAliasRuleMinChars:I

.field private static mAllowAttachAudio:Z

.field private static mContext:Landroid/content/Context;

.field private static mDefaultMMSMessagesPerThread:I

.field private static mDefaultSMSMessagesPerThread:I

.field private static mEmailGateway:Ljava/lang/String;

.field private static mEnableGroupMms:Z

.field private static mEnableMMSDeliveryReports:Z

.field private static mEnableMMSReadReports:Z

.field private static mEnableMultipartSMS:Z

.field private static mEnableSMSDeliveryReports:Z

.field private static mEnableSlideDuration:Z

.field private static mHttpParams:Ljava/lang/String;

.field private static mHttpParamsLine1Key:Ljava/lang/String;

.field private static mHttpSocketTimeout:I

.field private static mMaxImageHeight:I

.field private static mMaxImageWidth:I

.field private static mMaxMessageCountPerThread:I

.field private static mMaxMessageSize:I

.field private static mMaxSizeScaleForPendingMmsAllowed:I

.field private static mMaxSubjectLength:I

.field private static mMaxTextLength:I

.field private static mMinMessageCountPerThread:I

.field private static mMinimumSlideElementDuration:I

.field private static mMmsEnabled:I

.field private static mNotifyWapMMSC:Z

.field private static mRecipientLimit:I

.field private static mSmsToMmsTextThreshold:I

.field private static mTransIdEnabled:Z

.field private static mUaProfTagName:Ljava/lang/String;

.field private static mUaProfUrl:Ljava/lang/String;

.field private static mUserAgent:Ljava/lang/String;

.field public static sDefaultDataSubscription:I

.field public static sPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 58
    sput-boolean v4, Lcom/android/mms/MmsConfig;->mTransIdEnabled:Z

    .line 59
    sput v1, Lcom/android/mms/MmsConfig;->mMmsEnabled:I

    .line 60
    const v0, 0x4b000

    sput v0, Lcom/android/mms/MmsConfig;->mMaxMessageSize:I

    .line 61
    const-string v0, "Android-Mms/2.0"

    sput-object v0, Lcom/android/mms/MmsConfig;->mUserAgent:Ljava/lang/String;

    .line 62
    const-string v0, "x-wap-profile"

    sput-object v0, Lcom/android/mms/MmsConfig;->mUaProfTagName:Ljava/lang/String;

    .line 63
    sput-object v2, Lcom/android/mms/MmsConfig;->mUaProfUrl:Ljava/lang/String;

    .line 64
    sput-object v2, Lcom/android/mms/MmsConfig;->mHttpParams:Ljava/lang/String;

    .line 65
    sput-object v2, Lcom/android/mms/MmsConfig;->mHttpParamsLine1Key:Ljava/lang/String;

    .line 66
    sput-object v2, Lcom/android/mms/MmsConfig;->mEmailGateway:Ljava/lang/String;

    .line 67
    const/16 v0, 0x1e0

    sput v0, Lcom/android/mms/MmsConfig;->mMaxImageHeight:I

    .line 68
    const/16 v0, 0x280

    sput v0, Lcom/android/mms/MmsConfig;->mMaxImageWidth:I

    .line 69
    const/16 v0, 0x32

    sput v0, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    .line 70
    const/16 v0, 0x1f4

    sput v0, Lcom/android/mms/MmsConfig;->mDefaultSMSMessagesPerThread:I

    .line 71
    const/16 v0, 0x32

    sput v0, Lcom/android/mms/MmsConfig;->mDefaultMMSMessagesPerThread:I

    .line 72
    sput v5, Lcom/android/mms/MmsConfig;->mMinMessageCountPerThread:I

    .line 73
    const/16 v0, 0x1388

    sput v0, Lcom/android/mms/MmsConfig;->mMaxMessageCountPerThread:I

    .line 74
    const v0, 0xea60

    sput v0, Lcom/android/mms/MmsConfig;->mHttpSocketTimeout:I

    .line 75
    const/4 v0, 0x7

    sput v0, Lcom/android/mms/MmsConfig;->mMinimumSlideElementDuration:I

    .line 76
    sput-boolean v4, Lcom/android/mms/MmsConfig;->mNotifyWapMMSC:Z

    .line 77
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mAllowAttachAudio:Z

    .line 84
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mEnableMultipartSMS:Z

    .line 90
    sput v3, Lcom/android/mms/MmsConfig;->mSmsToMmsTextThreshold:I

    .line 92
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mEnableSlideDuration:Z

    .line 93
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mEnableMMSReadReports:Z

    .line 94
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mEnableSMSDeliveryReports:Z

    .line 95
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mEnableMMSDeliveryReports:Z

    .line 96
    sput v3, Lcom/android/mms/MmsConfig;->mMaxTextLength:I

    .line 103
    const/4 v0, 0x4

    sput v0, Lcom/android/mms/MmsConfig;->mMaxSizeScaleForPendingMmsAllowed:I

    .line 106
    sput-boolean v4, Lcom/android/mms/MmsConfig;->mAliasEnabled:Z

    .line 107
    sput v5, Lcom/android/mms/MmsConfig;->mAliasRuleMinChars:I

    .line 108
    const/16 v0, 0x30

    sput v0, Lcom/android/mms/MmsConfig;->mAliasRuleMaxChars:I

    .line 110
    const/16 v0, 0x28

    sput v0, Lcom/android/mms/MmsConfig;->mMaxSubjectLength:I

    .line 118
    sput v3, Lcom/android/mms/MmsConfig;->sDefaultDataSubscription:I

    .line 120
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mEnableGroupMms:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backupDataSubscription(I)V
    .locals 0
    .param p0, "subscription"    # I

    .prologue
    .line 476
    sput p0, Lcom/android/mms/MmsConfig;->sDefaultDataSubscription:I

    .line 477
    return-void
.end method

.method public static final beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "firstElementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 316
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, "type":I
    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 320
    :cond_1
    if-eq v0, v2, :cond_2

    .line 321
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No start tag found"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 324
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 325
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected start tag: found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 328
    :cond_3
    return-void
.end method

.method public static clearDefaultDataSubscription()V
    .locals 1

    .prologue
    .line 516
    const/4 v0, -0x1

    sput v0, Lcom/android/mms/MmsConfig;->sDefaultDataSubscription:I

    .line 517
    return-void
.end method

.method public static getAliasMaxChars()I
    .locals 1

    .prologue
    .line 297
    sget v0, Lcom/android/mms/MmsConfig;->mAliasRuleMaxChars:I

    return v0
.end method

.method public static getAliasMinChars()I
    .locals 1

    .prologue
    .line 293
    sget v0, Lcom/android/mms/MmsConfig;->mAliasRuleMinChars:I

    return v0
.end method

.method public static getAllowAttachAudio()Z
    .locals 1

    .prologue
    .line 301
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mAllowAttachAudio:Z

    return v0
.end method

.method public static getDataSubscription()I
    .locals 1

    .prologue
    .line 472
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getPreferredDataSubscription()I

    move-result v0

    return v0
.end method

.method public static getDefaultMMSMessagesPerThread()I
    .locals 1

    .prologue
    .line 225
    sget v0, Lcom/android/mms/MmsConfig;->mDefaultMMSMessagesPerThread:I

    return v0
.end method

.method public static getDefaultSMSMessagesPerThread()I
    .locals 1

    .prologue
    .line 221
    sget v0, Lcom/android/mms/MmsConfig;->mDefaultSMSMessagesPerThread:I

    return v0
.end method

.method public static getEmailGateway()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    sget-object v0, Lcom/android/mms/MmsConfig;->mEmailGateway:Ljava/lang/String;

    return-object v0
.end method

.method public static getGroupMmsEnabled()Z
    .locals 1

    .prologue
    .line 309
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mEnableGroupMms:Z

    return v0
.end method

.method public static getHttpParams()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    sget-object v0, Lcom/android/mms/MmsConfig;->mHttpParams:Ljava/lang/String;

    return-object v0
.end method

.method public static getHttpParamsLine1Key()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    sget-object v0, Lcom/android/mms/MmsConfig;->mHttpParamsLine1Key:Ljava/lang/String;

    return-object v0
.end method

.method public static getHttpSocketTimeout()I
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    .line 248
    .local v0, "csimMmscTimeout":I
    if-lez v0, :cond_0

    .line 251
    .end local v0    # "csimMmscTimeout":I
    :goto_0
    return v0

    .restart local v0    # "csimMmscTimeout":I
    :cond_0
    sget v0, Lcom/android/mms/MmsConfig;->mHttpSocketTimeout:I

    goto :goto_0
.end method

.method public static getMMSDeliveryReportsEnabled()Z
    .locals 1

    .prologue
    .line 277
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mEnableMMSDeliveryReports:Z

    return v0
.end method

.method public static getMMSReadReportsEnabled()Z
    .locals 1

    .prologue
    .line 269
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mEnableMMSReadReports:Z

    return v0
.end method

.method public static getMaxImageHeight()I
    .locals 1

    .prologue
    .line 205
    sget v0, Lcom/android/mms/MmsConfig;->mMaxImageHeight:I

    return v0
.end method

.method public static getMaxImageWidth()I
    .locals 1

    .prologue
    .line 209
    sget v0, Lcom/android/mms/MmsConfig;->mMaxImageWidth:I

    return v0
.end method

.method public static getMaxMessageCountPerThread()I
    .locals 1

    .prologue
    .line 233
    sget v0, Lcom/android/mms/MmsConfig;->mMaxMessageCountPerThread:I

    return v0
.end method

.method public static getMaxMessageSize()I
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    .line 164
    .local v0, "csimMaxMessageSize":I
    if-lez v0, :cond_0

    .line 167
    .end local v0    # "csimMaxMessageSize":I
    :goto_0
    return v0

    .restart local v0    # "csimMaxMessageSize":I
    :cond_0
    sget v0, Lcom/android/mms/MmsConfig;->mMaxMessageSize:I

    goto :goto_0
.end method

.method public static getMaxMmsTextLimit()I
    .locals 1

    .prologue
    .line 526
    const/16 v0, 0x7d0

    return v0
.end method

.method public static getMaxSizeScaleForPendingMmsAllowed()I
    .locals 1

    .prologue
    .line 285
    sget v0, Lcom/android/mms/MmsConfig;->mMaxSizeScaleForPendingMmsAllowed:I

    return v0
.end method

.method public static getMaxSubjectLength()I
    .locals 1

    .prologue
    .line 305
    sget v0, Lcom/android/mms/MmsConfig;->mMaxSubjectLength:I

    return v0
.end method

.method public static getMaxTextLimit()I
    .locals 2

    .prologue
    .line 217
    sget v0, Lcom/android/mms/MmsConfig;->mMaxTextLength:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    sget v0, Lcom/android/mms/MmsConfig;->mMaxTextLength:I

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x7d0

    goto :goto_0
.end method

.method public static getMinMessageCountPerThread()I
    .locals 1

    .prologue
    .line 229
    sget v0, Lcom/android/mms/MmsConfig;->mMinMessageCountPerThread:I

    return v0
.end method

.method public static getMinimumSlideElementDuration()I
    .locals 1

    .prologue
    .line 257
    sget v0, Lcom/android/mms/MmsConfig;->mMinimumSlideElementDuration:I

    return v0
.end method

.method public static getMmsEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 149
    sget v1, Lcom/android/mms/MmsConfig;->mMmsEnabled:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMultipartSmsEnabled()Z
    .locals 1

    .prologue
    .line 261
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mEnableMultipartSMS:Z

    return v0
.end method

.method public static getNotifyWapMMSC()Z
    .locals 1

    .prologue
    .line 281
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mNotifyWapMMSC:Z

    return v0
.end method

.method public static getPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcom/android/mms/MmsConfig;->sPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 143
    sget-object v0, Lcom/android/mms/MmsConfig;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/mms/MmsConfig;->sPreferences:Landroid/content/SharedPreferences;

    .line 145
    :cond_0
    sget-object v0, Lcom/android/mms/MmsConfig;->sPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static getRecipientLimit()I
    .locals 1

    .prologue
    .line 213
    sget v0, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    return v0
.end method

.method public static getSMSDeliveryReportsEnabled()Z
    .locals 1

    .prologue
    .line 273
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mEnableSMSDeliveryReports:Z

    return v0
.end method

.method public static getSlideDurationEnabled()Z
    .locals 1

    .prologue
    .line 265
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mEnableSlideDuration:Z

    return v0
.end method

.method public static getSmsToMmsTextThreshold()I
    .locals 3

    .prologue
    .line 135
    const-string v1, "persist.env.c.mms.limitcount"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 136
    .local v0, "limitCount":I
    if-eqz v0, :cond_0

    .line 139
    .end local v0    # "limitCount":I
    :goto_0
    return v0

    .restart local v0    # "limitCount":I
    :cond_0
    sget v0, Lcom/android/mms/MmsConfig;->mSmsToMmsTextThreshold:I

    goto :goto_0
.end method

.method public static getStorageMemoryIsFull()Z
    .locals 9

    .prologue
    .line 532
    new-instance v4, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 533
    .local v4, "fs":Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v0, v5

    .line 534
    .local v0, "blocks":J
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v2, v5

    .line 535
    .local v2, "blocksSize":J
    mul-long v5, v0, v2

    const-wide/32 v7, 0x4b000

    cmp-long v5, v5, v7

    if-gtz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static getTransIdEnabled()Z
    .locals 1

    .prologue
    .line 177
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mTransIdEnabled:Z

    return v0
.end method

.method public static getUaProfTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lcom/android/mms/MmsConfig;->mUaProfTagName:Ljava/lang/String;

    return-object v0
.end method

.method public static getUaProfUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lcom/android/mms/MmsConfig;->mUaProfUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    sget-object v0, Lcom/android/mms/MmsConfig;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public static getUserPreferDataSubscription()I
    .locals 4

    .prologue
    .line 503
    const/4 v1, 0x0

    .line 506
    .local v1, "userPref":I
    :try_start_0
    sget-object v2, Lcom/android/mms/MmsConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "multi_sim_data_call"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 512
    :goto_0
    return v1

    .line 508
    :catch_0
    move-exception v0

    .line 509
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "MmsConfig"

    const-string v3, "Settings Exception Reading Dual Sim Data Call Values"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    sput-object p0, Lcom/android/mms/MmsConfig;->mContext:Landroid/content/Context;

    .line 128
    const-string v0, "MmsConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mnc/mcc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gsm.sim.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->loadMmsSettings(Landroid/content/Context;)V

    .line 132
    return-void
.end method

.method public static isAliasEnabled()Z
    .locals 1

    .prologue
    .line 289
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mAliasEnabled:Z

    return v0
.end method

.method public static isRestrictedMode()Z
    .locals 3

    .prologue
    .line 520
    invoke-static {}, Lcom/android/mms/MmsConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_key_mms_restricted_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static loadMmsSettings(Landroid/content/Context;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 340
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/high16 v11, 0x7f050000

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 343
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string v8, "mms_config"

    invoke-static {v4, v8}, Lcom/android/mms/MmsConfig;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 346
    :cond_0
    :goto_0
    invoke-static {v4}, Lcom/android/mms/MmsConfig;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 347
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 348
    .local v5, "tag":Ljava/lang/String;
    if-nez v5, :cond_3

    .line 451
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 454
    .end local v5    # "tag":Ljava/lang/String;
    :goto_1
    const/4 v2, 0x0

    .line 456
    .local v2, "errorStr":Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    sget-object v8, Lcom/android/mms/MmsConfig;->mUaProfUrl:Ljava/lang/String;

    if-nez v8, :cond_1

    .line 457
    const-string v2, "uaProfUrl"

    .line 460
    :cond_1
    if-eqz v2, :cond_2

    .line 461
    const-string v8, "MmsConfig.loadMmsSettings mms_config.xml missing %s setting"

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v2, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 464
    .local v1, "err":Ljava/lang/String;
    const-string v8, "MmsConfig"

    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    .end local v1    # "err":Ljava/lang/String;
    :cond_2
    return-void

    .line 351
    .end local v2    # "errorStr":Ljava/lang/String;
    .restart local v5    # "tag":Ljava/lang/String;
    :cond_3
    const/4 v8, 0x0

    :try_start_1
    invoke-interface {v4, v8}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 352
    .local v3, "name":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-interface {v4, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    .line 353
    .local v7, "value":Ljava/lang/String;
    const/4 v6, 0x0

    .line 354
    .local v6, "text":Ljava/lang/String;
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v8

    const/4 v11, 0x4

    if-ne v8, v11, :cond_4

    .line 355
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v6

    .line 359
    :cond_4
    const-string v8, "MmsConfig"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "tag: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " value: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const-string v8, "name"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 363
    const-string v8, "bool"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 365
    const-string v8, "enabledMMS"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 366
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v8, v9

    :goto_2
    sput v8, Lcom/android/mms/MmsConfig;->mMmsEnabled:I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 444
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "tag":Ljava/lang/String;
    .end local v6    # "text":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 445
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    const-string v8, "MmsConfig"

    const-string v11, "loadMmsSettings caught "

    invoke-static {v8, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 451
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_1

    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v5    # "tag":Ljava/lang/String;
    .restart local v6    # "text":Ljava/lang/String;
    .restart local v7    # "value":Ljava/lang/String;
    :cond_5
    move v8, v10

    .line 366
    goto :goto_2

    .line 367
    :cond_6
    :try_start_3
    const-string v8, "enabledTransID"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 368
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/MmsConfig;->mTransIdEnabled:Z
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 446
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "tag":Ljava/lang/String;
    .end local v6    # "text":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 447
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_4
    const-string v8, "MmsConfig"

    const-string v11, "loadMmsSettings caught "

    invoke-static {v8, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 451
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_1

    .line 369
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v5    # "tag":Ljava/lang/String;
    .restart local v6    # "text":Ljava/lang/String;
    .restart local v7    # "value":Ljava/lang/String;
    :cond_7
    :try_start_5
    const-string v8, "enabledNotifyWapMMSC"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 370
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/MmsConfig;->mNotifyWapMMSC:Z
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 448
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "tag":Ljava/lang/String;
    .end local v6    # "text":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 449
    .local v0, "e":Ljava/io/IOException;
    :try_start_6
    const-string v8, "MmsConfig"

    const-string v11, "loadMmsSettings caught "

    invoke-static {v8, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 451
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_1

    .line 371
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v5    # "tag":Ljava/lang/String;
    .restart local v6    # "text":Ljava/lang/String;
    .restart local v7    # "value":Ljava/lang/String;
    :cond_8
    :try_start_7
    const-string v8, "aliasEnabled"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 372
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/MmsConfig;->mAliasEnabled:Z
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 451
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "tag":Ljava/lang/String;
    .end local v6    # "text":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v8

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    throw v8

    .line 373
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v5    # "tag":Ljava/lang/String;
    .restart local v6    # "text":Ljava/lang/String;
    .restart local v7    # "value":Ljava/lang/String;
    :cond_9
    :try_start_8
    const-string v8, "allowAttachAudio"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 374
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/MmsConfig;->mAllowAttachAudio:Z

    goto/16 :goto_0

    .line 375
    :cond_a
    const-string v8, "enableMultipartSMS"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 376
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/MmsConfig;->mEnableMultipartSMS:Z

    goto/16 :goto_0

    .line 377
    :cond_b
    const-string v8, "enableSlideDuration"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 378
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/MmsConfig;->mEnableSlideDuration:Z

    goto/16 :goto_0

    .line 379
    :cond_c
    const-string v8, "enableMMSReadReports"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 380
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/MmsConfig;->mEnableMMSReadReports:Z

    goto/16 :goto_0

    .line 381
    :cond_d
    const-string v8, "enableSMSDeliveryReports"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 382
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/MmsConfig;->mEnableSMSDeliveryReports:Z

    goto/16 :goto_0

    .line 383
    :cond_e
    const-string v8, "enableMMSDeliveryReports"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 384
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/MmsConfig;->mEnableMMSDeliveryReports:Z

    goto/16 :goto_0

    .line 385
    :cond_f
    const-string v8, "enableGroupMms"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 386
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/MmsConfig;->mEnableGroupMms:Z

    goto/16 :goto_0

    .line 388
    :cond_10
    const-string v8, "int"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    .line 390
    const-string v8, "maxMessageSize"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 391
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mMaxMessageSize:I

    goto/16 :goto_0

    .line 392
    :cond_11
    const-string v8, "maxImageHeight"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 393
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mMaxImageHeight:I

    goto/16 :goto_0

    .line 394
    :cond_12
    const-string v8, "maxImageWidth"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 395
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mMaxImageWidth:I

    goto/16 :goto_0

    .line 396
    :cond_13
    const-string v8, "defaultSMSMessagesPerThread"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 397
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mDefaultSMSMessagesPerThread:I

    goto/16 :goto_0

    .line 398
    :cond_14
    const-string v8, "defaultMMSMessagesPerThread"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 399
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mDefaultMMSMessagesPerThread:I

    goto/16 :goto_0

    .line 400
    :cond_15
    const-string v8, "minMessageCountPerThread"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 401
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mMinMessageCountPerThread:I

    goto/16 :goto_0

    .line 402
    :cond_16
    const-string v8, "maxMessageCountPerThread"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 403
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mMaxMessageCountPerThread:I

    goto/16 :goto_0

    .line 404
    :cond_17
    const-string v8, "recipientLimit"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 405
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    .line 406
    sget v8, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    if-gez v8, :cond_0

    .line 407
    const/16 v8, 0x32

    sput v8, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    goto/16 :goto_0

    .line 409
    :cond_18
    const-string v8, "httpSocketTimeout"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 410
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mHttpSocketTimeout:I

    goto/16 :goto_0

    .line 411
    :cond_19
    const-string v8, "minimumSlideElementDuration"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 412
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mMinimumSlideElementDuration:I

    goto/16 :goto_0

    .line 413
    :cond_1a
    const-string v8, "maxSizeScaleForPendingMmsAllowed"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 414
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mMaxSizeScaleForPendingMmsAllowed:I

    goto/16 :goto_0

    .line 415
    :cond_1b
    const-string v8, "aliasMinChars"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 416
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mAliasRuleMinChars:I

    goto/16 :goto_0

    .line 417
    :cond_1c
    const-string v8, "aliasMaxChars"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 418
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mAliasRuleMaxChars:I

    goto/16 :goto_0

    .line 419
    :cond_1d
    const-string v8, "smsToMmsTextThreshold"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 420
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mSmsToMmsTextThreshold:I

    goto/16 :goto_0

    .line 421
    :cond_1e
    const-string v8, "maxMessageTextSize"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 422
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mMaxTextLength:I

    goto/16 :goto_0

    .line 423
    :cond_1f
    const-string v8, "maxSubjectLength"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 424
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/mms/MmsConfig;->mMaxSubjectLength:I

    goto/16 :goto_0

    .line 426
    :cond_20
    const-string v8, "string"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 428
    const-string v8, "userAgent"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_21

    .line 429
    sput-object v6, Lcom/android/mms/MmsConfig;->mUserAgent:Ljava/lang/String;

    goto/16 :goto_0

    .line 430
    :cond_21
    const-string v8, "uaProfTagName"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_22

    .line 431
    sput-object v6, Lcom/android/mms/MmsConfig;->mUaProfTagName:Ljava/lang/String;

    goto/16 :goto_0

    .line 432
    :cond_22
    const-string v8, "uaProfUrl"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_23

    .line 433
    sput-object v6, Lcom/android/mms/MmsConfig;->mUaProfUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 434
    :cond_23
    const-string v8, "httpParams"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_24

    .line 435
    sput-object v6, Lcom/android/mms/MmsConfig;->mHttpParams:Ljava/lang/String;

    goto/16 :goto_0

    .line 436
    :cond_24
    const-string v8, "httpParamsLine1Key"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_25

    .line 437
    sput-object v6, Lcom/android/mms/MmsConfig;->mHttpParamsLine1Key:Ljava/lang/String;

    goto/16 :goto_0

    .line 438
    :cond_25
    const-string v8, "emailGatewayNumber"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 439
    sput-object v6, Lcom/android/mms/MmsConfig;->mEmailGateway:Ljava/lang/String;
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0
.end method

.method public static needDataSwitchBack()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 490
    invoke-static {}, Lcom/android/mms/MmsConfig;->getUserPreferDataSubscription()I

    move-result v2

    .line 491
    .local v2, "userPref":I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDataSubscription()I

    move-result v0

    .line 492
    .local v0, "currentDataSub":I
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/telephony/MSimTelephonyManager;->getSimState(I)I

    move-result v3

    .line 493
    .local v3, "userPrefState":I
    if-eq v2, v0, :cond_0

    if-eq v3, v1, :cond_0

    .line 497
    .local v1, "needBack":Z
    :goto_0
    const-string v4, "MmsConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "userPref="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " currentDataSub="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " userPrefState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " needBack="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    return v1

    .line 493
    .end local v1    # "needBack":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 334
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, "type":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 337
    :cond_1
    return-void
.end method

.method public static restoreDataSubscription()Z
    .locals 2

    .prologue
    .line 480
    invoke-static {}, Lcom/android/mms/MmsConfig;->getUserPreferDataSubscription()I

    move-result v0

    .line 481
    .local v0, "userPref":I
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/MSimTelephonyManager;->setPreferredDataSubscription(I)Z

    move-result v1

    return v1
.end method
