.class public Lcom/android/mms/transaction/SmsRejectedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsRejectedReceiver.java"


# instance fields
.field private outOfMemory:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/transaction/SmsRejectedReceiver;->outOfMemory:Z

    return-void
.end method

.method private popNotification(ZLandroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 62
    const-string v0, "notification"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 65
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/ConversationList;

    invoke-direct {v1, p2, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const/high16 v2, 0x34000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 70
    invoke-static {p2, v3, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 73
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    .line 76
    const v1, 0x7f0200a3

    iput v1, v4, Landroid/app/Notification;->icon:I

    .line 79
    iget-boolean v1, p0, Lcom/android/mms/transaction/SmsRejectedReceiver;->outOfMemory:Z

    if-eqz v1, :cond_0

    .line 80
    const v2, 0x7f0b00ed

    .line 81
    const v1, 0x7f0b00ee

    .line 89
    :goto_0
    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 90
    const/4 v5, -0x1

    iput v5, v4, Landroid/app/Notification;->defaults:I

    .line 92
    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, p2, v2, v1, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 96
    if-eqz p1, :cond_2

    const/16 v1, 0xef

    :goto_1
    invoke-virtual {v0, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 97
    return-void

    .line 82
    :cond_0
    if-eqz p1, :cond_1

    .line 83
    const v2, 0x7f0b00f1

    .line 84
    const v1, 0x7f0b00f2

    goto :goto_0

    .line 86
    :cond_1
    const v2, 0x7f0b00ef

    .line 87
    const v1, 0x7f0b00f0

    goto :goto_0

    .line 96
    :cond_2
    const/16 v1, 0xf0

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v6, -0x1

    const/4 v3, 0x0

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "device_provisioned"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    const-string v4, "android.provider.Telephony.SMS_REJECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 48
    const-string v4, "result"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 49
    .local v1, "reason":I
    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    :goto_0
    iput-boolean v2, p0, Lcom/android/mms/transaction/SmsRejectedReceiver;->outOfMemory:Z

    .line 50
    if-eq v6, v1, :cond_2

    iget-boolean v2, p0, Lcom/android/mms/transaction/SmsRejectedReceiver;->outOfMemory:Z

    if-nez v2, :cond_2

    .line 58
    .end local v1    # "reason":I
    :cond_0
    :goto_1
    return-void

    .restart local v1    # "reason":I
    :cond_1
    move v2, v3

    .line 49
    goto :goto_0

    .line 55
    :cond_2
    const-string v2, "isReject"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 56
    .local v0, "isReject":Z
    invoke-direct {p0, v0, p1, p2}, Lcom/android/mms/transaction/SmsRejectedReceiver;->popNotification(ZLandroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1
.end method
