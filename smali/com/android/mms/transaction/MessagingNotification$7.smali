.class final Lcom/android/mms/transaction/MessagingNotification$7;
.super Landroid/content/BroadcastReceiver;
.source "MessagingNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/MessagingNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1624
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1627
    const-string v5, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1628
    # getter for: Lcom/android/mms/transaction/MessagingNotification;->sNotificationSet:Ljava/util/SortedSet;
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->access$600()Ljava/util/SortedSet;

    move-result-object v5

    if-eqz v5, :cond_2

    # getter for: Lcom/android/mms/transaction/MessagingNotification;->sNotificationSet:Ljava/util/SortedSet;
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->access$600()Ljava/util/SortedSet;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/SortedSet;->size()I

    move-result v5

    if-eqz v5, :cond_2

    .line 1630
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1631
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    # getter for: Lcom/android/mms/transaction/MessagingNotification;->sNotificationSet:Ljava/util/SortedSet;
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->access$600()Ljava/util/SortedSet;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    .line 1632
    .local v1, "info":Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    iget-object v5, v1, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSender:Lcom/android/mms/data/Contact;

    invoke-virtual {v5}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v5

    iget v6, v1, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSubId:I

    invoke-static {p1, v5, v8, v8, v6}, Lcom/android/mms/transaction/MessagingNotification;->buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1634
    .local v3, "senderInfo":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1636
    .local v4, "senderInfoName":Ljava/lang/String;
    iget-object v5, v1, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSender:Lcom/android/mms/data/Contact;

    invoke-virtual {v5}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1637
    iget-object v5, v1, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSender:Lcom/android/mms/data/Contact;

    invoke-virtual {v5}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1639
    :cond_0
    iput-object v4, v1, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTitle:Ljava/lang/String;

    goto :goto_0

    .line 1642
    .end local v1    # "info":Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    .end local v3    # "senderInfo":Ljava/lang/String;
    .end local v4    # "senderInfoName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    # invokes: Lcom/android/mms/transaction/MessagingNotification;->updateNotification(Landroid/content/Context;ZI)V
    invoke-static {p1, v7, v5}, Lcom/android/mms/transaction/MessagingNotification;->access$700(Landroid/content/Context;ZI)V

    .line 1645
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method
