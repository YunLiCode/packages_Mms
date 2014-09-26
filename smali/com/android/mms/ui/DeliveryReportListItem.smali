.class public Lcom/android/mms/ui/DeliveryReportListItem;
.super Landroid/widget/LinearLayout;
.source "DeliveryReportListItem.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeliveryDateView:Landroid/widget/TextView;

.field private mIconView:Landroid/widget/ImageView;

.field private mRecipientView:Landroid/widget/TextView;

.field private mStatusView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object p1, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mContext:Landroid/content/Context;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    iput-object p1, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method


# virtual methods
.method public final bind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "recipient"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "deliveryDate"    # Ljava/lang/String;

    .prologue
    const v10, 0x7f02007a

    .line 64
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 65
    iget-object v6, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mRecipientView:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mContext:Landroid/content/Context;

    const v9, 0x7f0b00da

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {p1, v8}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    :goto_0
    iget-object v6, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/mms/ui/DeliveryReportListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 75
    .local v0, "context":Landroid/content/Context;
    const v6, 0x7f0b00d6

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, "receivedStr":Ljava/lang/String;
    const v6, 0x7f0b00d7

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "failedStr":Ljava/lang/String;
    const v6, 0x7f0b00d4

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, "pendingStr":Ljava/lang/String;
    const v6, 0x7f0b00d9

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 79
    .local v5, "rejectStr":Ljava/lang/String;
    const v6, 0x7f0b0194

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "expiredStr":Ljava/lang/String;
    invoke-virtual {p2, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    .line 82
    iget-object v6, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mIconView:Landroid/widget/ImageView;

    const v7, 0x7f020078

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mDeliveryDateView:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    return-void

    .line 68
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "expiredStr":Ljava/lang/String;
    .end local v2    # "failedStr":Ljava/lang/String;
    .end local v3    # "pendingStr":Ljava/lang/String;
    .end local v4    # "receivedStr":Ljava/lang/String;
    .end local v5    # "rejectStr":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mRecipientView:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 83
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v1    # "expiredStr":Ljava/lang/String;
    .restart local v2    # "failedStr":Ljava/lang/String;
    .restart local v3    # "pendingStr":Ljava/lang/String;
    .restart local v4    # "receivedStr":Ljava/lang/String;
    .restart local v5    # "rejectStr":Ljava/lang/String;
    :cond_2
    invoke-virtual {p2, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3

    .line 84
    iget-object v6, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 85
    :cond_3
    invoke-virtual {p2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_4

    .line 86
    iget-object v6, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mIconView:Landroid/widget/ImageView;

    const v7, 0x7f02007b

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 87
    :cond_4
    invoke-virtual {p2, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_0

    .line 89
    :cond_5
    iget-object v6, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 51
    const v0, 0x7f0a003c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DeliveryReportListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mRecipientView:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f0a003d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DeliveryReportListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mStatusView:Landroid/widget/TextView;

    .line 53
    const v0, 0x7f0a003e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DeliveryReportListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mDeliveryDateView:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f0a003b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DeliveryReportListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mIconView:Landroid/widget/ImageView;

    .line 55
    return-void
.end method
