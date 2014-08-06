.class final Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
.super Ljava/lang/Object;
.source "MessagingNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/MessagingNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NotificationInfo"
.end annotation


# instance fields
.field public final mAttachmentBitmap:Landroid/graphics/Bitmap;

.field public final mAttachmentType:I

.field public final mClickIntent:Landroid/content/Intent;

.field public final mIsSms:Z

.field public final mMessage:Ljava/lang/String;

.field public final mSender:Lcom/android/mms/data/Contact;

.field public final mSubId:I

.field public final mSubject:Ljava/lang/String;

.field public final mThreadId:J

.field public final mTicker:Ljava/lang/CharSequence;

.field public final mTimeMillis:J

.field public mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLandroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;JLjava/lang/String;Landroid/graphics/Bitmap;Lcom/android/mms/data/Contact;IJI)V
    .locals 0
    .param p1, "isSms"    # Z
    .param p2, "clickIntent"    # Landroid/content/Intent;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "subject"    # Ljava/lang/String;
    .param p5, "ticker"    # Ljava/lang/CharSequence;
    .param p6, "timeMillis"    # J
    .param p8, "title"    # Ljava/lang/String;
    .param p9, "attachmentBitmap"    # Landroid/graphics/Bitmap;
    .param p10, "sender"    # Lcom/android/mms/data/Contact;
    .param p11, "attachmentType"    # I
    .param p12, "threadId"    # J
    .param p14, "subId"    # I

    .prologue
    .line 472
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 473
    iput-boolean p1, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mIsSms:Z

    .line 474
    iput-object p2, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mClickIntent:Landroid/content/Intent;

    .line 475
    iput-object p3, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMessage:Ljava/lang/String;

    .line 476
    iput-object p4, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSubject:Ljava/lang/String;

    .line 477
    iput-object p5, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTicker:Ljava/lang/CharSequence;

    .line 478
    iput-wide p6, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTimeMillis:J

    .line 479
    iput-object p8, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTitle:Ljava/lang/String;

    .line 480
    iput-object p9, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentBitmap:Landroid/graphics/Bitmap;

    .line 481
    iput-object p10, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSender:Lcom/android/mms/data/Contact;

    .line 482
    iput p11, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentType:I

    .line 483
    iput-wide p12, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mThreadId:J

    .line 484
    iput p14, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSubId:I

    .line 485
    return-void
.end method


# virtual methods
.method public formatBigMessage(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x0

    .line 493
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v3, 0x7f0d000b

    invoke-direct {v1, p1, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 497
    .local v1, "notificationSubjectSpan":Landroid/text/style/TextAppearanceSpan;
    iget-object v3, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMessage:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMessage:Ljava/lang/String;

    const-string v4, "\\n\\s+"

    const-string v5, "\n"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 500
    .local v0, "message":Ljava/lang/String;
    :goto_0
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 501
    .local v2, "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    iget-object v3, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSubject:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 502
    iget-object v3, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSubject:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 503
    iget-object v3, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSubject:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v1, v6, v3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 505
    :cond_0
    iget v3, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentType:I

    if-lez v3, :cond_2

    .line 506
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 507
    invoke-virtual {v2, v7}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 509
    :cond_1
    iget v3, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentType:I

    # invokes: Lcom/android/mms/transaction/MessagingNotification;->getAttachmentTypeString(Landroid/content/Context;I)Ljava/lang/CharSequence;
    invoke-static {p1, v3}, Lcom/android/mms/transaction/MessagingNotification;->access$300(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 511
    :cond_2
    iget-object v3, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMessage:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 512
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 513
    invoke-virtual {v2, v7}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 515
    :cond_3
    iget-object v3, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 517
    :cond_4
    return-object v2

    .line 497
    .end local v0    # "message":Ljava/lang/String;
    .end local v2    # "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    :cond_5
    const-string v0, ""

    goto :goto_0
.end method

.method public formatInboxMessage(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    .line 522
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v7, 0x7f0d000b

    invoke-direct {v1, p1, v7}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 525
    .local v1, "notificationSenderSpan":Landroid/text/style/TextAppearanceSpan;
    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    const v7, 0x7f0d000e

    invoke-direct {v2, p1, v7}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 529
    .local v2, "notificationSubjectSpan":Landroid/text/style/TextAppearanceSpan;
    iget-object v7, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMessage:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMessage:Ljava/lang/String;

    const-string v8, "\\n\\s+"

    const-string v9, "\n"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 532
    .local v0, "message":Ljava/lang/String;
    :goto_0
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 533
    .local v5, "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    iget-object v7, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSender:Lcom/android/mms/data/Contact;

    invoke-virtual {v7}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v3

    .line 534
    .local v3, "sender":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 535
    invoke-virtual {v5, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 536
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v1, v10, v7, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 538
    :cond_0
    const v7, 0x7f0b013b

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 539
    .local v4, "separator":Ljava/lang/String;
    iget-boolean v7, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mIsSms:Z

    if-nez v7, :cond_4

    .line 540
    iget-object v7, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSubject:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 541
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 542
    invoke-virtual {v5, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 544
    :cond_1
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    .line 545
    .local v6, "start":I
    iget-object v7, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSubject:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 546
    iget-object v7, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSubject:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {v5, v2, v6, v7, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 549
    .end local v6    # "start":I
    :cond_2
    iget v7, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentType:I

    if-lez v7, :cond_4

    .line 550
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 551
    invoke-virtual {v5, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 553
    :cond_3
    iget v7, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentType:I

    # invokes: Lcom/android/mms/transaction/MessagingNotification;->getAttachmentTypeString(Landroid/content/Context;I)Ljava/lang/CharSequence;
    invoke-static {p1, v7}, Lcom/android/mms/transaction/MessagingNotification;->access$300(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 556
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_6

    .line 557
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 558
    invoke-virtual {v5, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 560
    :cond_5
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    .line 561
    .restart local v6    # "start":I
    invoke-virtual {v5, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 562
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {v5, v2, v6, v7, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 565
    .end local v6    # "start":I
    :cond_6
    return-object v5

    .line 529
    .end local v0    # "message":Ljava/lang/String;
    .end local v3    # "sender":Ljava/lang/String;
    .end local v4    # "separator":Ljava/lang/String;
    .end local v5    # "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    :cond_7
    const-string v0, ""

    goto/16 :goto_0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 488
    iget-wide v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTimeMillis:J

    return-wide v0
.end method
