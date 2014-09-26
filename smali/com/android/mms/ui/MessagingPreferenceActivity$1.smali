.class Lcom/android/mms/ui/MessagingPreferenceActivity$1;
.super Ljava/lang/Object;
.source "MessagingPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessagingPreferenceActivity;->showSmscPref()V
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
    .line 399
    iput-object p1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$1;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 402
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$1;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;->newInstance(Lcom/android/mms/ui/MessagingPreferenceActivity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;

    move-result-object v0

    .line 407
    .local v0, "dialog":Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$1;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 408
    const/4 v1, 0x1

    return v1
.end method
