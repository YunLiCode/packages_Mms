.class public Lcom/android/mms/ui/MessagingPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "MessagingPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment;,
        Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;
    }
.end annotation


# instance fields
.field private final isAddExpirySetting:Z

.field private final isAddPrioritySetting:Z

.field private final isAddSmsPrioritySetting:Z

.field mAirPlaneModeHandler:Landroid/os/Handler;

.field mAirPlaneModeReceiver:Landroid/content/BroadcastReceiver;

.field private mClearHistoryPref:Landroid/preference/Preference;

.field private mEnableNotificationsPref:Landroid/preference/CheckBoxPreference;

.field private mManageSimPref:Landroid/preference/Preference;

.field private mMmsAutoRetrievialPref:Landroid/preference/CheckBoxPreference;

.field private mMmsDeliveryReportPref:Landroid/preference/Preference;

.field private mMmsExpiryPref:Landroid/preference/ListPreference;

.field private mMmsGroupMmsPref:Landroid/preference/Preference;

.field mMmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

.field private mMmsLimitPref:Landroid/preference/Preference;

.field private mMmsPriority:Landroid/preference/ListPreference;

.field private mMmsReadReportPref:Landroid/preference/Preference;

.field private mMmsRecycler:Lcom/android/mms/util/Recycler;

.field private mPopupNotificationPref:Landroid/preference/CheckBoxPreference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRingtonePref:Landroid/preference/RingtonePreference;

.field private mSmsDeliveryReportPref:Landroid/preference/Preference;

.field mSmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

.field private mSmsLimitPref:Landroid/preference/Preference;

.field private mSmsPriority:Landroid/preference/ListPreference;

.field private mSmsRecycler:Lcom/android/mms/util/Recycler;

.field private mSmsSignatureEditPref:Landroid/preference/EditTextPreference;

.field private mSmsSignaturePref:Landroid/preference/CheckBoxPreference;

.field private mSmsTemplate:Landroid/preference/Preference;

.field private mSmscPrefCate:Landroid/preference/PreferenceCategory;

.field private mSmscPrefList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mVibratePref:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 88
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscPrefList:Ljava/util/ArrayList;

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 562
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$3;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    .line 570
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$4;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    .line 631
    iput-boolean v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->isAddPrioritySetting:Z

    .line 632
    iput-boolean v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->isAddExpirySetting:Z

    .line 665
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->isAddSmsPrioritySetting:Z

    .line 917
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$9;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mAirPlaneModeReceiver:Landroid/content/BroadcastReceiver;

    .line 933
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$10;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$10;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mAirPlaneModeHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessagingPreferenceActivity;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/MessagingPreferenceActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsExpiryPref:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MessagingPreferenceActivity;)Lcom/android/mms/util/Recycler;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/MessagingPreferenceActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/MessagingPreferenceActivity;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/MessagingPreferenceActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/MessagingPreferenceActivity;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setSmsDisplayLimit()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MessagingPreferenceActivity;)Lcom/android/mms/util/Recycler;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/MessagingPreferenceActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/MessagingPreferenceActivity;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMmsDisplayLimit()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MessagingPreferenceActivity;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/MessagingPreferenceActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsPriority:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/MessagingPreferenceActivity;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/MessagingPreferenceActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->updateSMSCPref(IZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/ui/MessagingPreferenceActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/MessagingPreferenceActivity;
    .param p1, "x1"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->showToast(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/ui/MessagingPreferenceActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/MessagingPreferenceActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscPrefList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static enableNotifications(ZLandroid/content/Context;)V
    .locals 2
    .param p0, "enabled"    # Z
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 611
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 614
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_key_enable_notifications"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 616
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 617
    return-void
.end method

.method public static getIsGroupMmsEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 891
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 892
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "pref_key_mms_group_mms"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 894
    .local v0, "groupMmsPrefOn":Z
    invoke-static {}, Lcom/android/mms/MmsConfig;->getGroupMmsEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getLocalNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getNotificationEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 603
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 604
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "pref_key_enable_notifications"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 606
    .local v0, "notificationsEnabled":Z
    return v0
.end method

.method private hasIccCardCount()I
    .locals 4

    .prologue
    .line 255
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    .line 256
    .local v2, "tm":Landroid/telephony/MSimTelephonyManager;
    const/4 v0, 0x0

    .line 257
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 258
    invoke-virtual {v2, v1}, Landroid/telephony/MSimTelephonyManager;->hasIccCard(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 259
    add-int/lit8 v0, v0, 0x1

    .line 257
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 263
    :cond_1
    return v0
.end method

.method public static isNotificationEnable()Z
    .locals 4

    .prologue
    .line 951
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 952
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "pref_key_enable_notifications"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 953
    .local v0, "enable":Z
    return v0
.end method

.method public static isPopupNotificationEnable()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 957
    invoke-static {}, Lcom/android/mms/ui/MessagingPreferenceActivity;->isNotificationEnable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 963
    .local v0, "enable":Z
    .local v1, "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return v4

    .line 960
    .end local v0    # "enable":Z
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 961
    .restart local v1    # "prefs":Landroid/content/SharedPreferences;
    const-string v2, "pref_key_popup_notification"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 963
    .restart local v0    # "enable":Z
    goto :goto_0
.end method

.method private loadPrefs()V
    .locals 4

    .prologue
    .line 202
    const v2, 0x7f050001

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->addPreferencesFromResource(I)V

    .line 204
    const-string v2, "pref_key_manage_sim_messages"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    .line 205
    const-string v2, "pref_key_sms_delete_limit"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLimitPref:Landroid/preference/Preference;

    .line 206
    const-string v2, "pref_key_sms_delivery_reports"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsDeliveryReportPref:Landroid/preference/Preference;

    .line 207
    const-string v2, "pref_key_mms_delivery_reports"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsDeliveryReportPref:Landroid/preference/Preference;

    .line 208
    const-string v2, "pref_key_mms_group_mms"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsGroupMmsPref:Landroid/preference/Preference;

    .line 209
    const-string v2, "pref_key_mms_read_reports"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsReadReportPref:Landroid/preference/Preference;

    .line 210
    const-string v2, "pref_key_mms_delete_limit"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitPref:Landroid/preference/Preference;

    .line 211
    const-string v2, "pref_key_mms_clear_history"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mClearHistoryPref:Landroid/preference/Preference;

    .line 212
    const-string v2, "pref_key_enable_notifications"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mEnableNotificationsPref:Landroid/preference/CheckBoxPreference;

    .line 213
    const-string v2, "pref_key_mms_auto_retrieval"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsAutoRetrievialPref:Landroid/preference/CheckBoxPreference;

    .line 214
    const-string v2, "pref_key_mms_expiry"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsExpiryPref:Landroid/preference/ListPreference;

    .line 215
    const-string v2, "pref_key_vibrate"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mVibratePref:Landroid/preference/CheckBoxPreference;

    .line 216
    const-string v2, "pref_key_enable_signature"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsSignaturePref:Landroid/preference/CheckBoxPreference;

    .line 217
    const-string v2, "pref_key_edit_signature"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsSignatureEditPref:Landroid/preference/EditTextPreference;

    .line 218
    const-string v2, "pref_key_ringtone"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/RingtonePreference;

    iput-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mRingtonePref:Landroid/preference/RingtonePreference;

    .line 220
    const-string v2, "persist.env.mms.priority"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    const-string v2, "pref_key_sms_cdma_priority"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 222
    .local v1, "priorotySettings":Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 223
    .local v0, "prefSet":Landroid/preference/PreferenceScreen;
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 226
    .end local v0    # "prefSet":Landroid/preference/PreferenceScreen;
    .end local v1    # "priorotySettings":Landroid/preference/Preference;
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMessagePreferences()V

    .line 227
    return-void
.end method

.method private registerListeners()V
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mRingtonePref:Landroid/preference/RingtonePreference;

    invoke-virtual {v0, p0}, Landroid/preference/RingtonePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 621
    return-void
.end method

.method private registerReceiver()V
    .locals 2

    .prologue
    .line 699
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 726
    :goto_0
    return-void

    .line 700
    :cond_0
    new-instance v1, Lcom/android/mms/ui/MessagingPreferenceActivity$8;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$8;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 720
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 721
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 722
    const-string v1, "com.android.smsc.notify.error"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 723
    const-string v1, "com.android.smsc.notify.success"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 724
    const-string v1, "com.android.smsc.notify.update"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 725
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private restoreDefaultPreferences()V
    .locals 1

    .prologue
    .line 230
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 231
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 233
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscPrefList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscPrefList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscPrefCate:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscPrefCate:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 239
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->loadPrefs()V

    .line 241
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->CreateMessageTemplateXML()Z

    .line 244
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->registerListeners()V

    .line 252
    return-void
.end method

.method private setEnabledNotificationsPref()V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mEnableNotificationsPref:Landroid/preference/CheckBoxPreference;

    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getNotificationEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 423
    return-void
.end method

.method private setMessagePreferences()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 267
    const-string v9, "pref_key_manage_sim_messages"

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    .line 268
    const-string v9, "pref_key_sms_delete_limit"

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLimitPref:Landroid/preference/Preference;

    .line 269
    const-string v9, "pref_key_sms_delivery_reports"

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsDeliveryReportPref:Landroid/preference/Preference;

    .line 270
    const-string v9, "pref_key_mms_delivery_reports"

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsDeliveryReportPref:Landroid/preference/Preference;

    .line 271
    const-string v9, "pref_key_mms_read_reports"

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsReadReportPref:Landroid/preference/Preference;

    .line 272
    const-string v9, "pref_key_mms_delete_limit"

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitPref:Landroid/preference/Preference;

    .line 273
    const-string v9, "pref_key_mms_clear_history"

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mClearHistoryPref:Landroid/preference/Preference;

    .line 274
    const-string v9, "pref_key_enable_notifications"

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    iput-object v9, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mEnableNotificationsPref:Landroid/preference/CheckBoxPreference;

    .line 275
    const-string v9, "pref_key_message_template"

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsTemplate:Landroid/preference/Preference;

    .line 276
    const-string v9, "pref_key_smsc"

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    iput-object v9, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscPrefCate:Landroid/preference/PreferenceCategory;

    .line 277
    const-string v9, "pref_key_popup_notification"

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    iput-object v9, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPopupNotificationPref:Landroid/preference/CheckBoxPreference;

    .line 278
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->updateSignatureStatus()V

    .line 279
    iget-object v9, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscPrefCate:Landroid/preference/PreferenceCategory;

    if-eqz v9, :cond_0

    .line 280
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->showSmscPref()V

    .line 282
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/MmsApp;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v9

    if-nez v9, :cond_1

    .line 284
    const-string v9, "pref_key_sms_settings"

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 286
    .local v4, "smsCategory":Landroid/preference/PreferenceCategory;
    iget-object v9, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 289
    .end local v4    # "smsCategory":Landroid/preference/PreferenceCategory;
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSMSDeliveryReportsEnabled()Z

    move-result v9

    if-nez v9, :cond_2

    .line 290
    const-string v9, "pref_key_sms_settings"

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 292
    .restart local v4    # "smsCategory":Landroid/preference/PreferenceCategory;
    iget-object v9, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsDeliveryReportPref:Landroid/preference/Preference;

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 293
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/MmsApp;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v9

    if-nez v9, :cond_2

    .line 294
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 298
    .end local v4    # "smsCategory":Landroid/preference/PreferenceCategory;
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v9

    if-nez v9, :cond_5

    .line 300
    const-string v9, "pref_key_mms_settings"

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 302
    .local v0, "mmsOptions":Landroid/preference/PreferenceCategory;
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 304
    const-string v9, "pref_key_storage_settings"

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    .line 306
    .local v6, "storageOptions":Landroid/preference/PreferenceCategory;
    const-string v9, "pref_key_mms_delete_limit"

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 323
    .end local v6    # "storageOptions":Landroid/preference/PreferenceCategory;
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setEnabledNotificationsPref()V

    .line 327
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 328
    .local v3, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v9, "pref_key_vibrateWhen"

    invoke-interface {v3, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 329
    const-string v9, "pref_key_vibrateWhen"

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 331
    .local v8, "vibrateWhen":Ljava/lang/String;
    const-string v9, "always"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 332
    .local v7, "vibrate":Z
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 333
    .local v1, "prefsEditor":Landroid/content/SharedPreferences$Editor;
    const-string v9, "pref_key_vibrate"

    invoke-interface {v1, v9, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 334
    const-string v9, "pref_key_vibrateWhen"

    invoke-interface {v1, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 335
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 336
    iget-object v9, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mVibratePref:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_3

    .line 337
    iget-object v9, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mVibratePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 341
    .end local v1    # "prefsEditor":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "vibrate":Z
    .end local v8    # "vibrateWhen":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v9

    iput-object v9, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    .line 342
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v9

    iput-object v9, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    .line 345
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setSmsDisplayLimit()V

    .line 346
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMmsDisplayLimit()V

    .line 350
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMmsPriority()V

    .line 351
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setSmsPriority()V

    .line 352
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMmsExpiry()V

    .line 355
    const-string v9, "pref_key_ringtone"

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 356
    .local v5, "soundValue":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setRingtoneSummary(Ljava/lang/String;)V

    .line 358
    const-string v9, "pref_key_mms_restricted_mode"

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 359
    .local v2, "restricted":Landroid/preference/Preference;
    if-eqz v2, :cond_4

    .line 360
    const-string v9, "pref_key_mms_settings"

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 363
    :cond_4
    return-void

    .line 308
    .end local v0    # "mmsOptions":Landroid/preference/PreferenceCategory;
    .end local v2    # "restricted":Landroid/preference/Preference;
    .end local v3    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v5    # "soundValue":Ljava/lang/String;
    :cond_5
    const-string v9, "pref_key_mms_settings"

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 310
    .restart local v0    # "mmsOptions":Landroid/preference/PreferenceCategory;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSDeliveryReportsEnabled()Z

    move-result v9

    if-nez v9, :cond_6

    .line 311
    iget-object v9, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsDeliveryReportPref:Landroid/preference/Preference;

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 313
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSReadReportsEnabled()Z

    move-result v9

    if-nez v9, :cond_7

    .line 314
    iget-object v9, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsReadReportPref:Landroid/preference/Preference;

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 319
    :cond_7
    iget-object v9, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsGroupMmsPref:Landroid/preference/Preference;

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0
.end method

.method private setMmsDisplayLimit()V
    .locals 5

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitPref:Landroid/preference/Preference;

    const v1, 0x7f0b008e

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v4, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 435
    return-void
.end method

.method private setMmsExpiry()V
    .locals 8

    .prologue
    .line 438
    const-string v4, "pref_key_mms_expiry"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsExpiryPref:Landroid/preference/ListPreference;

    .line 445
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 446
    .local v3, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v4, "pref_key_mms_expiry"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 447
    const-string v4, "pref_key_mms_expiry"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 448
    .local v1, "expiry":J
    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsExpiryPref:Landroid/preference/ListPreference;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 454
    .end local v1    # "expiry":J
    :goto_0
    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsExpiryPref:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsExpiryPref:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 455
    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsExpiryPref:Landroid/preference/ListPreference;

    new-instance v5, Lcom/android/mms/ui/MessagingPreferenceActivity$2;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$2;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 465
    return-void

    .line 450
    :cond_0
    const v4, 0x7f0b0181

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, "defaultExpiry":Ljava/lang/String;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "pref_key_mms_expiry"

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 452
    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsExpiryPref:Landroid/preference/ListPreference;

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setMmsPriority()V
    .locals 6

    .prologue
    .line 634
    const-string v3, "pref_key_mms_priority"

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsPriority:Landroid/preference/ListPreference;

    .line 641
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 642
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v3, "pref_key_mms_priority"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 643
    const-string v3, "pref_key_mms_priority"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 644
    .local v1, "priority":I
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsPriority:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 650
    .end local v1    # "priority":I
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsPriority:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsPriority:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 651
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsPriority:Landroid/preference/ListPreference;

    new-instance v4, Lcom/android/mms/ui/MessagingPreferenceActivity$6;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$6;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 661
    return-void

    .line 646
    :cond_0
    const v3, 0x7f0b017e

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 647
    .local v0, "defaultPriorty":Ljava/lang/String;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "pref_key_mms_priority"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 648
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsPriority:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setRingtoneSummary(Ljava/lang/String;)V
    .locals 7
    .param p1, "soundValue"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 366
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v2, v5

    .line 367
    .local v2, "soundUri":Landroid/net/Uri;
    :goto_0
    const-string v3, ""

    .line 368
    .local v3, "summary":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-static {p0, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v4

    .line 371
    .local v4, "tone":Landroid/media/Ringtone;
    :goto_1
    :try_start_0
    const-string v5, "content://settings/system/notification_sound"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {p0, v5}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, "defaultSummary":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 373
    if-nez v2, :cond_2

    .line 374
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b009f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 381
    :goto_2
    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mRingtonePref:Landroid/preference/RingtonePreference;

    invoke-virtual {v5, v3}, Landroid/preference/RingtonePreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    .end local v0    # "defaultSummary":Ljava/lang/String;
    :goto_3
    return-void

    .line 366
    .end local v2    # "soundUri":Landroid/net/Uri;
    .end local v3    # "summary":Ljava/lang/String;
    .end local v4    # "tone":Landroid/media/Ringtone;
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    .restart local v2    # "soundUri":Landroid/net/Uri;
    .restart local v3    # "summary":Ljava/lang/String;
    :cond_1
    move-object v4, v5

    .line 368
    goto :goto_1

    .line 376
    .restart local v0    # "defaultSummary":Ljava/lang/String;
    .restart local v4    # "tone":Landroid/media/Ringtone;
    :cond_2
    move-object v3, v0

    goto :goto_2

    .line 379
    :cond_3
    :try_start_1
    invoke-virtual {v4, p0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_2

    .line 382
    .end local v0    # "defaultSummary":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 383
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v5, "MessagingPreferenceActivity"

    const-string v6, "setRingtoneSummary crash  defaultSummary is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private setSMSCPrefState(IZ)V
    .locals 4

    .prologue
    .line 773
    if-eqz p2, :cond_0

    .line 774
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 775
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.smsc"

    const-string v3, "com.android.smsc.SmscService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 777
    const-string v1, "com.android.smsc.cmd.get"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 778
    const-string v1, "sub"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 779
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 783
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscPrefList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 784
    return-void

    .line 781
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscPrefList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setSmsDisplayLimit()V
    .locals 5

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLimitPref:Landroid/preference/Preference;

    const v1, 0x7f0b008e

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v4, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 429
    return-void
.end method

.method private setSmsPriority()V
    .locals 2

    .prologue
    .line 667
    const-string v1, "pref_key_sms_cdma_priority"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsPriority:Landroid/preference/ListPreference;

    .line 669
    const-string v1, "pref_key_sms_settings"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 671
    .local v0, "mmsOptions":Landroid/preference/PreferenceCategory;
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsPriority:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 672
    return-void
.end method

.method private showSmscPref()V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 390
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v1

    .line 391
    .local v1, "count":I
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    move v0, v4

    .line 393
    .local v0, "airplaneModeOn":Z
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 394
    new-instance v3, Landroid/preference/Preference;

    invoke-direct {v3, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 395
    .local v3, "pref":Landroid/preference/Preference;
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0005

    new-array v8, v4, [Ljava/lang/Object;

    add-int/lit8 v9, v2, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-virtual {v6, v7, v1, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 399
    new-instance v6, Lcom/android/mms/ui/MessagingPreferenceActivity$1;

    invoke-direct {v6, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$1;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 412
    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscPrefCate:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 413
    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscPrefList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    invoke-direct {p0, v2, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->updateSMSCPref(IZ)V

    .line 393
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "airplaneModeOn":Z
    .end local v2    # "i":I
    .end local v3    # "pref":Landroid/preference/Preference;
    :cond_0
    move v0, v5

    .line 391
    goto :goto_0

    .line 416
    .restart local v0    # "airplaneModeOn":Z
    .restart local v2    # "i":I
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->registerReceiver()V

    .line 417
    return-void
.end method

.method private showToast(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 729
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 730
    return-void
.end method

.method private startMmsDownload()V
    .locals 4

    .prologue
    .line 558
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_ENABLE_AUTO_RETRIEVE"

    const/4 v2, 0x0

    const-class v3, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 560
    return-void
.end method

.method private updateSMSCPref(IZ)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 740
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscPrefList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscPrefList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 769
    :cond_0
    :goto_0
    return-void

    .line 742
    :cond_1
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v7

    .line 743
    if-le v7, v1, :cond_3

    move v6, v1

    .line 747
    :goto_1
    if-nez p2, :cond_a

    .line 748
    if-eqz v6, :cond_4

    .line 749
    const-string v0, "phone_msim"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/MSimTelephonyManager;

    move-object v4, v3

    move-object v5, v0

    .line 755
    :goto_2
    packed-switch p1, :pswitch_data_0

    .line 764
    if-nez p2, :cond_9

    if-eqz v6, :cond_8

    invoke-virtual {v5, p1}, Landroid/telephony/MSimTelephonyManager;->hasIccCard(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 766
    :cond_2
    :goto_3
    invoke-direct {p0, p1, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setSMSCPrefState(IZ)V

    goto :goto_0

    :cond_3
    move v6, v2

    .line 743
    goto :goto_1

    .line 751
    :cond_4
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    move-object v4, v0

    move-object v5, v3

    goto :goto_2

    :pswitch_0
    move v3, v2

    .line 757
    :goto_4
    if-ge v3, v7, :cond_0

    .line 758
    if-nez p2, :cond_7

    if-eqz v6, :cond_6

    invoke-virtual {v5, v3}, Landroid/telephony/MSimTelephonyManager;->hasIccCard(I)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    move v0, v1

    .line 760
    :goto_5
    invoke-direct {p0, v3, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setSMSCPrefState(IZ)V

    .line 757
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    .line 758
    :cond_6
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_7
    move v0, v2

    goto :goto_5

    .line 764
    :cond_8
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_9
    move v1, v2

    goto :goto_3

    :cond_a
    move-object v4, v3

    move-object v5, v3

    goto :goto_2

    .line 755
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method private updateSignatureStatus()V
    .locals 2

    .prologue
    .line 470
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsSignaturePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 471
    .local v0, "isChecked":Z
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsSignatureEditPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 472
    return-void
.end method


# virtual methods
.method CreateMessageTemplateXML()Z
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 967
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    .line 968
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    .line 969
    const-string v2, "/data/data/com.android.mms/files/message_template.xml"

    .line 970
    const-string v5, "message_template.xml"

    .line 971
    const/4 v6, 0x4

    .line 974
    :try_start_0
    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 976
    const-string v2, "UTF-8"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v3, v2, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 978
    const-string v2, ""

    const-string v7, "MessageTemplate"

    invoke-interface {v3, v2, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 981
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f060003

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    move v2, v1

    .line 984
    :goto_0
    array-length v8, v7

    if-ge v2, v8, :cond_0

    .line 985
    const-string v8, ""

    const-string v9, "message"

    invoke-interface {v3, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 986
    aget-object v8, v7, v2

    invoke-interface {v3, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 987
    const-string v8, ""

    const-string v9, "message"

    invoke-interface {v3, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 984
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 990
    :goto_1
    if-ge v2, v6, :cond_1

    .line 991
    const-string v7, ""

    const-string v8, "preDefineNumState"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 992
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 993
    const-string v7, ""

    const-string v8, "preDefineNumState"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 990
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 996
    :cond_1
    const-string v2, ""

    const-string v6, "MessageTemplate"

    invoke-interface {v3, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 997
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1003
    const-string v2, "MessagingPreferenceActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CreateMessageTemplateXML serializer"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    :try_start_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v6, 0x2

    invoke-virtual {v2, v5, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 1017
    :try_start_2
    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 1018
    const-string v4, "MessagingPreferenceActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CreateMessageTemplateXML serializer"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1027
    :goto_2
    return v0

    .line 998
    :catch_0
    move-exception v0

    .line 1000
    const-string v0, "MessagingPreferenceActivity"

    const-string v2, "CreateMessageTemplateXML occurs exception!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1001
    goto :goto_2

    .line 1008
    :catch_1
    move-exception v0

    .line 1010
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 1012
    const-string v0, "MessagingPreferenceActivity"

    const-string v2, "CreateMessageTemplateXML occurs exception!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1013
    goto :goto_2

    .line 1020
    :catch_2
    move-exception v0

    .line 1022
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1024
    const-string v0, "MessagingPreferenceActivity"

    const-string v2, "CreateMessageTemplateXML occurs exception!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1025
    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 166
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 168
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->loadPrefs()V

    .line 170
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 171
    .local v0, "actionBar":Landroid/app/ActionBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 173
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->registerListeners()V

    .line 174
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 580
    packed-switch p1, :pswitch_data_0

    .line 599
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 582
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0123

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0124

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/mms/ui/MessagingPreferenceActivity$5;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$5;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 580
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 475
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 476
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 477
    const v0, 0x7f0b0084

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 478
    return v2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 198
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 199
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 483
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 494
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 485
    :sswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->restoreDefaultPreferences()V

    goto :goto_0

    .line 491
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->finish()V

    goto :goto_0

    .line 483
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 624
    const/4 v0, 0x0

    .line 625
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mRingtonePref:Landroid/preference/RingtonePreference;

    if-ne p1, v1, :cond_0

    .line 626
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setRingtoneSummary(Ljava/lang/String;)V

    .line 627
    const/4 v0, 0x1

    .line 629
    :cond_0
    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 500
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLimitPref:Landroid/preference/Preference;

    if-ne p2, v2, :cond_1

    .line 501
    new-instance v0, Lcom/android/mms/ui/NumberPickerDialog;

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v3

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMinLimit()I

    move-result v4

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMaxLimit()I

    move-result v5

    const v6, 0x7f0b0096

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/NumberPickerDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;IIII)V

    invoke-virtual {v0}, Lcom/android/mms/ui/NumberPickerDialog;->show()V

    .line 551
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    :goto_1
    return v1

    .line 507
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitPref:Landroid/preference/Preference;

    if-ne p2, v2, :cond_2

    .line 508
    new-instance v0, Lcom/android/mms/ui/NumberPickerDialog;

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v3

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMinLimit()I

    move-result v4

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMaxLimit()I

    move-result v5

    const v6, 0x7f0b0097

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/NumberPickerDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;IIII)V

    invoke-virtual {v0}, Lcom/android/mms/ui/NumberPickerDialog;->show()V

    goto :goto_0

    .line 514
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsTemplate:Landroid/preference/Preference;

    if-ne p2, v2, :cond_3

    .line 515
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/MessageTemplate;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 516
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    if-ne p2, v2, :cond_7

    .line 517
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->hasIccCardCount()I

    move-result v2

    if-gt v2, v1, :cond_6

    .line 519
    :cond_4
    const/4 v2, -0x1

    .line 520
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 522
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/telephony/MSimTelephonyManager;->hasIccCard(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 527
    :goto_2
    const-string v1, "subscription"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 529
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 524
    :cond_5
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/telephony/MSimTelephonyManager;->hasIccCard(I)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    .line 525
    goto :goto_2

    .line 532
    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/SelectSubscription;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 533
    const-string v1, "PACKAGE"

    const-string v2, "com.android.mms"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 534
    const-string v1, "TARGET_CLASS"

    const-string v2, "com.android.mms.ui.ManageSimMessages"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 535
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 537
    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mClearHistoryPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_8

    .line 538
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->showDialog(I)V

    goto/16 :goto_1

    .line 540
    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mEnableNotificationsPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_9

    .line 542
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mEnableNotificationsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->enableNotifications(ZLandroid/content/Context;)V

    goto/16 :goto_0

    .line 543
    :cond_9
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsSignaturePref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_a

    .line 544
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->updateSignatureStatus()V

    goto/16 :goto_0

    .line 545
    :cond_a
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsAutoRetrievialPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsAutoRetrievialPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->startMmsDownload()V

    goto/16 :goto_0

    :cond_b
    move v0, v2

    goto :goto_2
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 178
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 182
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setEnabledNotificationsPref()V

    .line 184
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->updateSignatureStatus()V

    .line 185
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->registerListeners()V

    .line 186
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 190
    .local v0, "airplaneModeOn":Z
    :cond_0
    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->updateSMSCPref(IZ)V

    .line 191
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 901
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 903
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 904
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 905
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mAirPlaneModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 906
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 910
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 913
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mAirPlaneModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 914
    return-void
.end method
