.class public Lcom/android/mms/ui/NoConfirmationSendService;
.super Landroid/app/IntentService;
.source "NoConfirmationSendService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/android/mms/ui/NoConfirmationSendService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 39
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NoConfirmationSendService;->setIntentRedelivery(Z)V

    .line 40
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 52
    const-string v1, "NoConfirmationSendService onHandleIntent"

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 56
    .local v7, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.RESPOND_VIA_MESSAGE"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    const-string v1, "Mms/NoConfirmationSendService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NoConfirmationSendService onHandleIntent action"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NoConfirmationSendService onHandleIntent wrong action: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 102
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 63
    .local v9, "extras":Landroid/os/Bundle;
    if-nez v9, :cond_1

    .line 64
    const-string v1, "Called to send SMS but no extras"

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_1
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "message":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    .line 71
    .local v10, "intentUri":Landroid/net/Uri;
    invoke-static {v10}, Lcom/android/mms/data/Conversation;->getRecipients(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v11

    .line 73
    .local v11, "recipients":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 74
    const-string v1, "Recipient(s) cannot be empty"

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_2
    const-string v1, "showUI"

    const/4 v6, 0x0

    invoke-virtual {v9, v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 78
    const-string v1, "com.android.mms.ui.ComposeMessageActivityNoLockScreen"

    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const/high16 v1, 0x10000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/NoConfirmationSendService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 82
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 83
    const-string v1, "Message cannot be empty"

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_4
    const-string v1, ";"

    invoke-static {v11, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "dests":[Ljava/lang/String;
    const-wide/16 v4, 0x0

    .line 91
    .local v4, "threadId":J
    new-instance v0, Lcom/android/mms/transaction/SmsMessageSender;

    invoke-static {}, Landroid/telephony/MSimSmsManager;->getDefault()Landroid/telephony/MSimSmsManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MSimSmsManager;->getPreferredSmsSubscription()I

    move-result v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JI)V

    .line 97
    .local v0, "smsMessageSender":Lcom/android/mms/transaction/SmsMessageSender;
    :try_start_0
    invoke-virtual {v0, v4, v5}, Lcom/android/mms/transaction/SmsMessageSender;->sendMessage(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v8

    .line 99
    .local v8, "e":Ljava/lang/Exception;
    const-string v1, "Mms/NoConfirmationSendService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to send SMS message, threadId="

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
