.class public Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment;
.super Landroid/app/DialogFragment;
.source "MessagingPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessagingPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyAlertDialogFragment"
.end annotation


# instance fields
.field private mActivity:Lcom/android/mms/ui/MessagingPreferenceActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 839
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment;)Lcom/android/mms/ui/MessagingPreferenceActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment;

    .prologue
    .line 839
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment;->mActivity:Lcom/android/mms/ui/MessagingPreferenceActivity;

    return-object v0
.end method

.method public static newInstance(Lcom/android/mms/ui/MessagingPreferenceActivity;ILjava/lang/String;)Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment;
    .locals 3
    .param p0, "activity"    # Lcom/android/mms/ui/MessagingPreferenceActivity;
    .param p1, "sub"    # I
    .param p2, "smsc"    # Ljava/lang/String;

    .prologue
    .line 844
    new-instance v1, Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment;

    invoke-direct {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment;-><init>()V

    .line 845
    .local v1, "dialog":Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment;
    iput-object p0, v1, Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment;->mActivity:Lcom/android/mms/ui/MessagingPreferenceActivity;

    .line 847
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 848
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "sub"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 849
    const-string v2, "smsc"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    invoke-virtual {v1, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 851
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 856
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "sub"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 857
    .local v1, "sub":I
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "smsc"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 862
    .local v0, "displayedSMSC":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment;->mActivity:Lcom/android/mms/ui/MessagingPreferenceActivity;

    if-nez v2, :cond_0

    .line 863
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/MessagingPreferenceActivity;

    iput-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment;->mActivity:Lcom/android/mms/ui/MessagingPreferenceActivity;

    .line 866
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment;->mActivity:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0186

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment$1;

    invoke-direct {v4, p0, v1, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment$1;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment;ILjava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
