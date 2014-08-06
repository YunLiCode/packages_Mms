.class Lcom/android/mms/ui/MessagingPreferenceActivity$10;
.super Landroid/os/Handler;
.source "MessagingPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessagingPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0

    .prologue
    .line 933
    iput-object p1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$10;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 935
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 936
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 937
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$10;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    const-string v2, "pref_key_sms_settings"

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 939
    .local v0, "smsCategory":Landroid/preference/PreferenceCategory;
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 941
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$10;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    # getter for: Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$1200(Lcom/android/mms/ui/MessagingPreferenceActivity;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 947
    .end local v0    # "smsCategory":Landroid/preference/PreferenceCategory;
    :cond_0
    :goto_0
    return-void

    .line 944
    .restart local v0    # "smsCategory":Landroid/preference/PreferenceCategory;
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$10;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    # getter for: Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$1200(Lcom/android/mms/ui/MessagingPreferenceActivity;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method
