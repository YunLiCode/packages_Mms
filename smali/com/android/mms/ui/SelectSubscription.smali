.class public Lcom/android/mms/ui/SelectSubscription;
.super Landroid/preference/PreferenceActivity;
.source "SelectSubscription.java"


# instance fields
.field mAreaInfoEnabled:Z

.field private mPkg:Ljava/lang/String;

.field private mSubscription:I

.field private mSubscription1Pref:Landroid/preference/Preference;

.field private mSubscription2Pref:Landroid/preference/Preference;

.field private mTargetClass:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 48
    iput-boolean v0, p0, Lcom/android/mms/ui/SelectSubscription;->mAreaInfoEnabled:Z

    .line 49
    iput v0, p0, Lcom/android/mms/ui/SelectSubscription;->mSubscription:I

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const-string v2, "SelectSubscription"

    const-string v3, "On Create()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const v2, 0x7f050003

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SelectSubscription;->addPreferencesFromResource(I)V

    .line 76
    const-string v2, "pref_key_subscription1"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SelectSubscription;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/SelectSubscription;->mSubscription1Pref:Landroid/preference/Preference;

    .line 77
    const-string v2, "pref_key_subscription2"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SelectSubscription;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/SelectSubscription;->mSubscription2Pref:Landroid/preference/Preference;

    .line 79
    invoke-virtual {p0}, Lcom/android/mms/ui/SelectSubscription;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Settings$System;->MULTI_SIM_NAME:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "simOneName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/ui/SelectSubscription;->mSubscription1Pref:Landroid/preference/Preference;

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/mms/ui/SelectSubscription;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Settings$System;->MULTI_SIM_NAME:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "simTwoName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/ui/SelectSubscription;->mSubscription2Pref:Landroid/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 83
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 96
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 97
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 56
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    const-class v1, Lcom/android/mms/ui/ManageSimMessages;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 59
    iget-object v1, p0, Lcom/android/mms/ui/SelectSubscription;->mSubscription1Pref:Landroid/preference/Preference;

    if-ne p2, v1, :cond_0

    .line 60
    const-string v1, "SelectSubscription"

    const-string v2, "onPreferenceTreeClick: Selected Subsciption 1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const-string v1, "subscription"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 66
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SelectSubscription;->startActivity(Landroid/content/Intent;)V

    .line 68
    return v3

    .line 63
    :cond_0
    const-string v1, "SelectSubscription"

    const-string v2, "onPreferenceTreeClick: Selected Subsciption 2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const-string v1, "subscription"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 89
    invoke-virtual {p0}, Lcom/android/mms/ui/SelectSubscription;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 90
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "PACKAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SelectSubscription;->mPkg:Ljava/lang/String;

    .line 91
    const-string v1, "TARGET_CLASS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SelectSubscription;->mTargetClass:Ljava/lang/String;

    .line 92
    return-void
.end method
