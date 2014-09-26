.class Lcom/android/mms/ui/MessagingPreferenceActivity$2;
.super Ljava/lang/Object;
.source "MessagingPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessagingPreferenceActivity;->setMmsExpiry()V
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
    .line 455
    iput-object p1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$2;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 458
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$2;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 459
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_key_mms_expiry"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 460
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$2;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    # getter for: Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsExpiryPref:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$000(Lcom/android/mms/ui/MessagingPreferenceActivity;)Landroid/preference/ListPreference;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 461
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$2;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    # getter for: Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsExpiryPref:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$000(Lcom/android/mms/ui/MessagingPreferenceActivity;)Landroid/preference/ListPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$2;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    # getter for: Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsExpiryPref:Landroid/preference/ListPreference;
    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$000(Lcom/android/mms/ui/MessagingPreferenceActivity;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 462
    const/4 v1, 0x1

    return v1
.end method
