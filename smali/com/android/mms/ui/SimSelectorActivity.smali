.class public Lcom/android/mms/ui/SimSelectorActivity;
.super Lcom/android/mms/ui/BaseSelectorActivity;
.source "SimSelectorActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SimSelectorActivity$SimMessageItem;
    }
.end annotation


# instance fields
.field private mFlag:I

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/mms/ui/BaseSelectorActivity;-><init>()V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/SimSelectorActivity;->mFlag:I

    .line 111
    new-instance v0, Lcom/android/mms/ui/SimSelectorActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SimSelectorActivity$3;-><init>(Lcom/android/mms/ui/SimSelectorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SimSelectorActivity;->mHandler:Landroid/os/Handler;

    .line 145
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SimSelectorActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/SimSelectorActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/mms/ui/SimSelectorActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SimSelectorActivity;Lcom/android/mms/ui/SimSelectorActivity$SimMessageItem;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/SimSelectorActivity;
    .param p1, "x1"    # Lcom/android/mms/ui/SimSelectorActivity$SimMessageItem;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SimSelectorActivity;->copyToPhoneMemory(Lcom/android/mms/ui/SimSelectorActivity$SimMessageItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SimSelectorActivity;[Lcom/android/mms/ui/SimSelectorActivity$SimMessageItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/SimSelectorActivity;
    .param p1, "x1"    # [Lcom/android/mms/ui/SimSelectorActivity$SimMessageItem;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SimSelectorActivity;->copyToPhoneMemory([Lcom/android/mms/ui/SimSelectorActivity$SimMessageItem;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SimSelectorActivity;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/SimSelectorActivity;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SimSelectorActivity;->deleteFromSim([Ljava/lang/String;)V

    return-void
.end method

.method private copyToPhoneMemory([Lcom/android/mms/ui/SimSelectorActivity$SimMessageItem;)V
    .locals 1
    .param p1, "msgItems"    # [Lcom/android/mms/ui/SimSelectorActivity$SimMessageItem;

    .prologue
    .line 69
    new-instance v0, Lcom/android/mms/ui/SimSelectorActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/ui/SimSelectorActivity$2;-><init>(Lcom/android/mms/ui/SimSelectorActivity;[Lcom/android/mms/ui/SimSelectorActivity$SimMessageItem;)V

    invoke-virtual {v0}, Lcom/android/mms/ui/SimSelectorActivity$2;->start()V

    .line 84
    return-void
.end method

.method private copyToPhoneMemory(Lcom/android/mms/ui/SimSelectorActivity$SimMessageItem;)Z
    .locals 12
    .param p1, "msgItem"    # Lcom/android/mms/ui/SimSelectorActivity$SimMessageItem;

    .prologue
    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 87
    iget-object v1, p1, Lcom/android/mms/ui/SimSelectorActivity$SimMessageItem;->mAddress:Ljava/lang/String;

    .line 88
    .local v1, "address":Ljava/lang/String;
    iget-object v2, p1, Lcom/android/mms/ui/SimSelectorActivity$SimMessageItem;->mBody:Ljava/lang/String;

    .line 89
    .local v2, "body":Ljava/lang/String;
    iget-object v4, p1, Lcom/android/mms/ui/SimSelectorActivity$SimMessageItem;->mDate:Ljava/lang/Long;

    .line 90
    .local v4, "date":Ljava/lang/Long;
    iget v6, p1, Lcom/android/mms/ui/SimSelectorActivity$SimMessageItem;->mSubId:I

    .line 91
    .local v6, "subId":I
    iget v9, p1, Lcom/android/mms/ui/SimSelectorActivity$SimMessageItem;->mStatus:I

    .line 93
    .local v9, "messageStatus":I
    if-eq v9, v11, :cond_0

    const/4 v0, 0x3

    if-ne v9, v0, :cond_2

    :cond_0
    move v8, v11

    .line 96
    .local v8, "isIncomingMessage":Z
    :goto_0
    if-eqz v8, :cond_4

    .line 97
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SimSelectorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-static/range {v0 .. v6}, Landroid/provider/Telephony$Sms$Inbox;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZI)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 104
    :cond_1
    :goto_1
    return v11

    .end local v8    # "isIncomingMessage":Z
    :cond_2
    move v8, v10

    .line 93
    goto :goto_0

    .restart local v8    # "isIncomingMessage":Z
    :cond_3
    move v11, v10

    .line 97
    goto :goto_1

    .line 99
    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/ui/SimSelectorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    move v5, v6

    invoke-static/range {v0 .. v5}, Landroid/provider/Telephony$Sms$Sent;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;I)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_1

    move v11, v10

    goto :goto_1

    .line 101
    :catch_0
    move-exception v7

    .line 102
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v7}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    move v11, v10

    .line 104
    goto :goto_1
.end method

.method private deleteFromSim([Ljava/lang/String;)V
    .locals 1
    .param p1, "ids"    # [Ljava/lang/String;

    .prologue
    .line 55
    new-instance v0, Lcom/android/mms/ui/SimSelectorActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/ui/SimSelectorActivity$1;-><init>(Lcom/android/mms/ui/SimSelectorActivity;[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/mms/ui/SimSelectorActivity$1;->start()V

    .line 66
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/android/mms/ui/SimSelectorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sim_flag"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SimSelectorActivity;->mFlag:I

    .line 51
    invoke-super {p0, p1}, Lcom/android/mms/ui/BaseSelectorActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    return-void
.end method

.method public setDialogParameter(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "pos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 161
    iget v0, p0, Lcom/android/mms/ui/SimSelectorActivity;->mFlag:I

    packed-switch v0, :pswitch_data_0

    .line 205
    :goto_0
    return-void

    .line 163
    :pswitch_0
    new-instance v0, Lcom/android/mms/ui/SimSelectorActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/ui/SimSelectorActivity$4;-><init>(Lcom/android/mms/ui/SimSelectorActivity;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SimSelectorActivity;->setDialogListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 182
    const v0, 0x7f0b01d3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/SimSelectorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SimSelectorActivity;->setDialogMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :pswitch_1
    new-instance v0, Lcom/android/mms/ui/SimSelectorActivity$5;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/ui/SimSelectorActivity$5;-><init>(Lcom/android/mms/ui/SimSelectorActivity;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SimSelectorActivity;->setDialogListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 200
    const v0, 0x7f0b01cd

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/SimSelectorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SimSelectorActivity;->setDialogMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setQueryParameter()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 155
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SimSelectorActivity;->setSelection(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SimSelectorActivity;->setProjection([Ljava/lang/String;)V

    .line 157
    return-void
.end method
