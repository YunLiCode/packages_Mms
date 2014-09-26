.class Lcom/android/mms/ui/MessagingPreferenceActivity$8;
.super Landroid/content/BroadcastReceiver;
.source "MessagingPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessagingPreferenceActivity;->registerReceiver()V
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
    .line 700
    iput-object p1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$8;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 703
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 704
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 706
    const-string v4, "state"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 707
    .local v1, "on":Z
    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$8;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    const/4 v5, -0x1

    # invokes: Lcom/android/mms/ui/MessagingPreferenceActivity;->updateSMSCPref(IZ)V
    invoke-static {v4, v5, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$700(Lcom/android/mms/ui/MessagingPreferenceActivity;IZ)V

    .line 717
    .end local v1    # "on":Z
    :cond_0
    :goto_0
    return-void

    .line 708
    :cond_1
    const-string v4, "com.android.smsc.notify.error"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 709
    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$8;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    const v5, 0x7f0b0184

    # invokes: Lcom/android/mms/ui/MessagingPreferenceActivity;->showToast(I)V
    invoke-static {v4, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$800(Lcom/android/mms/ui/MessagingPreferenceActivity;I)V

    goto :goto_0

    .line 710
    :cond_2
    const-string v4, "com.android.smsc.notify.success"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 711
    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$8;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    const v5, 0x7f0b0185

    # invokes: Lcom/android/mms/ui/MessagingPreferenceActivity;->showToast(I)V
    invoke-static {v4, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$800(Lcom/android/mms/ui/MessagingPreferenceActivity;I)V

    goto :goto_0

    .line 712
    :cond_3
    const-string v4, "com.android.smsc.notify.update"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 713
    const-string v4, "sub"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 714
    .local v2, "sub":I
    const-string v4, "smsc"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 715
    .local v3, "summary":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$8;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    # getter for: Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscPrefList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$900(Lcom/android/mms/ui/MessagingPreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/preference/Preference;

    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
