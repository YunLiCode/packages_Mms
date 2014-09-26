.class Lcom/android/mms/ui/ComposeMessageActivity$SendIgnoreInvalidRecipientListener;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendIgnoreInvalidRecipientListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0

    .prologue
    .line 1140
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$SendIgnoreInvalidRecipientListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p2, "x1"    # Lcom/android/mms/ui/ComposeMessageActivity$1;

    .prologue
    .line 1140
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$SendIgnoreInvalidRecipientListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v3, 0x1

    .line 1143
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$SendIgnoreInvalidRecipientListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    .line 1144
    .local v0, "isMms":Z
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$SendIgnoreInvalidRecipientListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->isPreparedForSending()Z
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$600(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1146
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 1147
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$SendIgnoreInvalidRecipientListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->sendMessageWithChooseDialog(ZZ)V
    invoke-static {v1, v3, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3800(Lcom/android/mms/ui/ComposeMessageActivity;ZZ)V

    .line 1151
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1156
    :goto_1
    return-void

    .line 1149
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$SendIgnoreInvalidRecipientListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->sendMessage(Z)V
    invoke-static {v1, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3900(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    goto :goto_0

    .line 1153
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$SendIgnoreInvalidRecipientListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v2, 0x7f0b01e0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
