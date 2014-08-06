.class public Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;
.super Landroid/os/AsyncTask;
.source "SelectMmsSubscription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SelectMmsSubscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SwitchSubscriptionTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SelectMmsSubscription;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/SelectMmsSubscription;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;->this$0:Lcom/android/mms/ui/SelectMmsSubscription;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private getOtherSub(I)I
    .locals 1
    .param p1, "sub"    # I

    .prologue
    .line 192
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getStatus(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 7
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 136
    iget-object v4, p0, Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;->this$0:Lcom/android/mms/ui/SelectMmsSubscription;

    # getter for: Lcom/android/mms/ui/SelectMmsSubscription;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/mms/ui/SelectMmsSubscription;->access$000(Lcom/android/mms/ui/SelectMmsSubscription;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b019d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "dataStatus":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;->this$0:Lcom/android/mms/ui/SelectMmsSubscription;

    # getter for: Lcom/android/mms/ui/SelectMmsSubscription;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/mms/ui/SelectMmsSubscription;->access$000(Lcom/android/mms/ui/SelectMmsSubscription;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b019e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, "success":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;->this$0:Lcom/android/mms/ui/SelectMmsSubscription;

    # getter for: Lcom/android/mms/ui/SelectMmsSubscription;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/mms/ui/SelectMmsSubscription;->access$000(Lcom/android/mms/ui/SelectMmsSubscription;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b019f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "failed":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .end local v3    # "success":Ljava/lang/String;
    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "status":Ljava/lang/String;
    return-object v2

    .end local v2    # "status":Ljava/lang/String;
    .restart local v3    # "success":Ljava/lang/String;
    :cond_0
    move-object v3, v1

    .line 139
    goto :goto_0
.end method

.method private removeAbortNotification()V
    .locals 4

    .prologue
    .line 145
    const-string v2, "SelectMmsSubscription"

    const-string v3, "removeAbortNotification"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const-string v1, "notification"

    .line 147
    .local v1, "ns":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;->this$0:Lcom/android/mms/ui/SelectMmsSubscription;

    # getter for: Lcom/android/mms/ui/SelectMmsSubscription;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/SelectMmsSubscription;->access$000(Lcom/android/mms/ui/SelectMmsSubscription;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 149
    .local v0, "mNotificationManager":Landroid/app/NotificationManager;
    const-string v2, "ABORT"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 150
    iget-object v2, p0, Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;->this$0:Lcom/android/mms/ui/SelectMmsSubscription;

    # getter for: Lcom/android/mms/ui/SelectMmsSubscription;->requestedSub:I
    invoke-static {v2}, Lcom/android/mms/ui/SelectMmsSubscription;->access$600(Lcom/android/mms/ui/SelectMmsSubscription;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;->getOtherSub(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 152
    return-void
.end method

.method private removeStatusBarNotificationWithOtherSub()V
    .locals 4

    .prologue
    .line 154
    const-string v2, "SelectMmsSubscription"

    const-string v3, "removeStatusBarNotificationWithOtherSub"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-string v1, "notification"

    .line 156
    .local v1, "ns":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;->this$0:Lcom/android/mms/ui/SelectMmsSubscription;

    # getter for: Lcom/android/mms/ui/SelectMmsSubscription;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/SelectMmsSubscription;->access$000(Lcom/android/mms/ui/SelectMmsSubscription;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 158
    .local v0, "mNotificationManager":Landroid/app/NotificationManager;
    iget-object v2, p0, Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;->this$0:Lcom/android/mms/ui/SelectMmsSubscription;

    # getter for: Lcom/android/mms/ui/SelectMmsSubscription;->requestedSub:I
    invoke-static {v2}, Lcom/android/mms/ui/SelectMmsSubscription;->access$600(Lcom/android/mms/ui/SelectMmsSubscription;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;->getOtherSub(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 159
    return-void
.end method

.method private showNotificationAbortAndSwitchBack()V
    .locals 7

    .prologue
    .line 162
    const-string v0, "SelectMmsSubscription"

    const-string v1, "showNotificationAbortAndSwitchBack"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string v0, "notification"

    .line 164
    iget-object v1, p0, Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;->this$0:Lcom/android/mms/ui/SelectMmsSubscription;

    # getter for: Lcom/android/mms/ui/SelectMmsSubscription;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/SelectMmsSubscription;->access$000(Lcom/android/mms/ui/SelectMmsSubscription;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 167
    const v1, 0x1080077

    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 171
    new-instance v4, Landroid/app/Notification;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 173
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 174
    const-string v1, "TRIGGER_SWITCH_ONLY"

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 176
    sget-boolean v1, Lcom/android/mms/transaction/TransactionService;->isNeedToSwitchSubscriptionOrWaitProcess:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getUserPreferDataSubscription()I

    move-result v1

    .line 177
    :goto_0
    const-string v3, "sub_id"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 179
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;->this$0:Lcom/android/mms/ui/SelectMmsSubscription;

    # getter for: Lcom/android/mms/ui/SelectMmsSubscription;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/SelectMmsSubscription;->access$000(Lcom/android/mms/ui/SelectMmsSubscription;)Landroid/content/Context;

    move-result-object v3

    const-class v5, Lcom/android/mms/ui/SelectMmsSubscription;

    invoke-direct {v1, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 181
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 182
    iget-object v2, p0, Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;->this$0:Lcom/android/mms/ui/SelectMmsSubscription;

    # getter for: Lcom/android/mms/ui/SelectMmsSubscription;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/SelectMmsSubscription;->access$000(Lcom/android/mms/ui/SelectMmsSubscription;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v5, 0x8000000

    invoke-static {v2, v3, v1, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 184
    iget-object v2, p0, Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;->this$0:Lcom/android/mms/ui/SelectMmsSubscription;

    # getter for: Lcom/android/mms/ui/SelectMmsSubscription;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/SelectMmsSubscription;->access$000(Lcom/android/mms/ui/SelectMmsSubscription;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;->this$0:Lcom/android/mms/ui/SelectMmsSubscription;

    # getter for: Lcom/android/mms/ui/SelectMmsSubscription;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/SelectMmsSubscription;->access$000(Lcom/android/mms/ui/SelectMmsSubscription;)Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0b0144

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;->this$0:Lcom/android/mms/ui/SelectMmsSubscription;

    # getter for: Lcom/android/mms/ui/SelectMmsSubscription;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/mms/ui/SelectMmsSubscription;->access$000(Lcom/android/mms/ui/SelectMmsSubscription;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0b0145

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v3, v5, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 187
    const-string v1, "ABORT"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v4}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 189
    return-void

    .line 176
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;->this$0:Lcom/android/mms/ui/SelectMmsSubscription;

    # getter for: Lcom/android/mms/ui/SelectMmsSubscription;->requestedSub:I
    invoke-static {v1}, Lcom/android/mms/ui/SelectMmsSubscription;->access$600(Lcom/android/mms/ui/SelectMmsSubscription;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;->getOtherSub(I)I

    move-result v1

    goto :goto_0
.end method

.method private showNotificationMmsInProgress()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 196
    const-string v0, "SelectMmsSubscription"

    const-string v1, "showNotificationMmsInProgress"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const-string v0, "notification"

    .line 198
    iget-object v1, p0, Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;->this$0:Lcom/android/mms/ui/SelectMmsSubscription;

    # getter for: Lcom/android/mms/ui/SelectMmsSubscription;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/SelectMmsSubscription;->access$000(Lcom/android/mms/ui/SelectMmsSubscription;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 201
    const v2, 0x1080077

    .line 203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 204
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDataSubscription()I

    move-result v5

    .line 206
    iget-object v1, p0, Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;->this$0:Lcom/android/mms/ui/SelectMmsSubscription;

    const-string v6, "connectivity"

    invoke-virtual {v1, v6}, Lcom/android/mms/ui/SelectMmsSubscription;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 207
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 208
    const-string v1, ""

    .line 209
    if-nez v5, :cond_1

    .line 210
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v5, 0x2

    if-ne v1, v5, :cond_0

    const-string v1, "CDMA"

    .line 214
    :goto_0
    iget-object v5, p0, Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;->this$0:Lcom/android/mms/ui/SelectMmsSubscription;

    # getter for: Lcom/android/mms/ui/SelectMmsSubscription;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/mms/ui/SelectMmsSubscription;->access$000(Lcom/android/mms/ui/SelectMmsSubscription;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0b0146

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 216
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5, v2, v1, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 219
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;->this$0:Lcom/android/mms/ui/SelectMmsSubscription;

    # getter for: Lcom/android/mms/ui/SelectMmsSubscription;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/SelectMmsSubscription;->access$000(Lcom/android/mms/ui/SelectMmsSubscription;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 221
    iget-object v2, p0, Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;->this$0:Lcom/android/mms/ui/SelectMmsSubscription;

    # getter for: Lcom/android/mms/ui/SelectMmsSubscription;->startUpIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/mms/ui/SelectMmsSubscription;->access$100(Lcom/android/mms/ui/SelectMmsSubscription;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 223
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 225
    iget-object v2, p0, Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;->this$0:Lcom/android/mms/ui/SelectMmsSubscription;

    # getter for: Lcom/android/mms/ui/SelectMmsSubscription;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/SelectMmsSubscription;->access$000(Lcom/android/mms/ui/SelectMmsSubscription;)Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x8000000

    invoke-static {v2, v8, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 228
    iget-object v2, p0, Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;->this$0:Lcom/android/mms/ui/SelectMmsSubscription;

    # getter for: Lcom/android/mms/ui/SelectMmsSubscription;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/SelectMmsSubscription;->access$000(Lcom/android/mms/ui/SelectMmsSubscription;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;->this$0:Lcom/android/mms/ui/SelectMmsSubscription;

    # getter for: Lcom/android/mms/ui/SelectMmsSubscription;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/SelectMmsSubscription;->access$000(Lcom/android/mms/ui/SelectMmsSubscription;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b0147

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;->this$0:Lcom/android/mms/ui/SelectMmsSubscription;

    # getter for: Lcom/android/mms/ui/SelectMmsSubscription;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/mms/ui/SelectMmsSubscription;->access$000(Lcom/android/mms/ui/SelectMmsSubscription;)Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f0b0148

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v2, v3, v4, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 231
    iget-object v1, p0, Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;->this$0:Lcom/android/mms/ui/SelectMmsSubscription;

    # getter for: Lcom/android/mms/ui/SelectMmsSubscription;->requestedSub:I
    invoke-static {v1}, Lcom/android/mms/ui/SelectMmsSubscription;->access$600(Lcom/android/mms/ui/SelectMmsSubscription;)I

    move-result v1

    invoke-virtual {v0, v1, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 233
    return-void

    .line 210
    :cond_0
    const-string v1, "WCDMA"

    goto :goto_0

    .line 212
    :cond_1
    const-string v1, "GSM"

    goto :goto_0
.end method

.method private switchSubscriptionTo(I)I
    .locals 7
    .param p1, "sub"    # I

    .prologue
    const/16 v6, 0x3e8

    const/4 v3, 0x1

    .line 248
    iget-object v4, p0, Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;->this$0:Lcom/android/mms/ui/SelectMmsSubscription;

    # getter for: Lcom/android/mms/ui/SelectMmsSubscription;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/mms/ui/SelectMmsSubscription;->access$000(Lcom/android/mms/ui/SelectMmsSubscription;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 250
    .local v2, "tmgr":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 251
    const-string v4, "SelectMmsSubscription"

    const-string v5, "DSDS enabled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v4, p0, Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;->this$0:Lcom/android/mms/ui/SelectMmsSubscription;

    # getter for: Lcom/android/mms/ui/SelectMmsSubscription;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/mms/ui/SelectMmsSubscription;->access$000(Lcom/android/mms/ui/SelectMmsSubscription;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "phone_msim"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/MSimTelephonyManager;

    .line 254
    .local v0, "mtmgr":Landroid/telephony/MSimTelephonyManager;
    invoke-virtual {v0, p1}, Landroid/telephony/MSimTelephonyManager;->setPreferredDataSubscription(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v3

    .line 255
    .local v1, "result":I
    :goto_0
    if-ne v1, v3, :cond_2

    .line 256
    const-string v3, "SelectMmsSubscription"

    const-string v4, "Subscription switch done."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-virtual {p0, v6}, Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;->sleep(I)V

    .line 259
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;->this$0:Lcom/android/mms/ui/SelectMmsSubscription;

    # invokes: Lcom/android/mms/ui/SelectMmsSubscription;->isNetworkAvailable()Z
    invoke-static {v3}, Lcom/android/mms/ui/SelectMmsSubscription;->access$700(Lcom/android/mms/ui/SelectMmsSubscription;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 260
    const-string v3, "SelectMmsSubscription"

    const-string v4, "isNetworkAvailable = false, sleep.."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-virtual {p0, v6}, Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;->sleep(I)V

    goto :goto_1

    .line 254
    .end local v1    # "result":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .end local v0    # "mtmgr":Landroid/telephony/MSimTelephonyManager;
    :cond_1
    move v1, v3

    .line 266
    :cond_2
    return v1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    const/4 v3, 0x0

    .line 70
    const-string v0, "SelectMmsSubscription"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doInBackground(), Thread="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;->this$0:Lcom/android/mms/ui/SelectMmsSubscription;

    # getter for: Lcom/android/mms/ui/SelectMmsSubscription;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/ui/SelectMmsSubscription;->access$000(Lcom/android/mms/ui/SelectMmsSubscription;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/util/MultiSimUtility;->getCurrentDataSubscription(Landroid/content/Context;)I

    move-result v0

    aget-object v1, p1, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 74
    aget-object v0, p1, v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;->switchSubscriptionTo(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 59
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 81
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 82
    const-string v1, "SelectMmsSubscription"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPostExecute(), Thread="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 86
    const-string v1, "SelectMmsSubscription"

    const-string v2, "No DDS switch required. set requestedSubid=-1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v1, p0, Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;->this$0:Lcom/android/mms/ui/SelectMmsSubscription;

    # getter for: Lcom/android/mms/ui/SelectMmsSubscription;->startUpIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/mms/ui/SelectMmsSubscription;->access$100(Lcom/android/mms/ui/SelectMmsSubscription;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 88
    .local v0, "tempBundle":Landroid/os/Bundle;
    const-string v1, "sub_id"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 89
    iget-object v1, p0, Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;->this$0:Lcom/android/mms/ui/SelectMmsSubscription;

    # getter for: Lcom/android/mms/ui/SelectMmsSubscription;->startUpIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/mms/ui/SelectMmsSubscription;->access$100(Lcom/android/mms/ui/SelectMmsSubscription;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 99
    .end local v0    # "tempBundle":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;->this$0:Lcom/android/mms/ui/SelectMmsSubscription;

    # getter for: Lcom/android/mms/ui/SelectMmsSubscription;->triggerSwitchOnly:I
    invoke-static {v1}, Lcom/android/mms/ui/SelectMmsSubscription;->access$200(Lcom/android/mms/ui/SelectMmsSubscription;)I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 101
    invoke-direct {p0}, Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;->removeAbortNotification()V

    .line 102
    iget-object v1, p0, Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;->this$0:Lcom/android/mms/ui/SelectMmsSubscription;

    invoke-virtual {v1}, Lcom/android/mms/ui/SelectMmsSubscription;->stopSelf()V

    .line 131
    :cond_1
    :goto_1
    return-void

    .line 93
    :cond_2
    const-string v1, "SelectMmsSubscription"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPostExecute(), result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v1, p0, Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;->this$0:Lcom/android/mms/ui/SelectMmsSubscription;

    # getter for: Lcom/android/mms/ui/SelectMmsSubscription;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/SelectMmsSubscription;->access$000(Lcom/android/mms/ui/SelectMmsSubscription;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;->getStatus(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 106
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 109
    const-string v1, "SelectMmsSubscription"

    const-string v2, "Starting transaction service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v1, p0, Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;->this$0:Lcom/android/mms/ui/SelectMmsSubscription;

    # invokes: Lcom/android/mms/ui/SelectMmsSubscription;->triggerTransactionService()V
    invoke-static {v1}, Lcom/android/mms/ui/SelectMmsSubscription;->access$300(Lcom/android/mms/ui/SelectMmsSubscription;)V

    .line 111
    iget-object v1, p0, Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;->this$0:Lcom/android/mms/ui/SelectMmsSubscription;

    invoke-virtual {v1}, Lcom/android/mms/ui/SelectMmsSubscription;->stopSelf()V

    goto :goto_1

    .line 115
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;->this$0:Lcom/android/mms/ui/SelectMmsSubscription;

    # setter for: Lcom/android/mms/ui/SelectMmsSubscription;->flagOkToStartTransactionService:Z
    invoke-static {v1, v5}, Lcom/android/mms/ui/SelectMmsSubscription;->access$402(Lcom/android/mms/ui/SelectMmsSubscription;Z)Z

    .line 121
    iget-object v1, p0, Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;->this$0:Lcom/android/mms/ui/SelectMmsSubscription;

    invoke-virtual {v1}, Lcom/android/mms/ui/SelectMmsSubscription;->registerForPdpUp()V

    .line 122
    sget-boolean v1, Lcom/android/mms/transaction/TransactionService;->isNeedToSwitchSubscriptionOrWaitProcess:Z

    if-eqz v1, :cond_5

    .line 123
    invoke-direct {p0}, Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;->removeStatusBarNotificationWithOtherSub()V

    .line 127
    :goto_2
    invoke-direct {p0}, Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;->showNotificationMmsInProgress()V

    .line 128
    invoke-direct {p0}, Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;->showNotificationAbortAndSwitchBack()V

    goto :goto_1

    .line 125
    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;->this$0:Lcom/android/mms/ui/SelectMmsSubscription;

    # invokes: Lcom/android/mms/ui/SelectMmsSubscription;->removeStatusBarNotification()V
    invoke-static {v1}, Lcom/android/mms/ui/SelectMmsSubscription;->access$500(Lcom/android/mms/ui/SelectMmsSubscription;)V

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 59
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 66
    return-void
.end method

.method sleep(I)V
    .locals 4
    .param p1, "ms"    # I

    .prologue
    .line 237
    :try_start_0
    const-string v1, "SelectMmsSubscription"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sleeping for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(ms)..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 239
    const-string v1, "SelectMmsSubscription"

    const-string v2, "Sleeping...Done!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
