.class public Lcom/android/mms/ui/ComposeMessageActivity$MmsLengthFilter;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MmsLengthFilter"
.end annotation


# instance fields
.field private mIsMms:Z

.field private mMax:I

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Z)V
    .locals 0
    .param p2, "isMms"    # Z

    .prologue
    .line 6988
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MmsLengthFilter;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6989
    iput-boolean p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$MmsLengthFilter;->mIsMms:Z

    .line 6990
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 10
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 6994
    iget-boolean v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$MmsLengthFilter;->mIsMms:Z

    if-eqz v7, :cond_0

    .line 6995
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMmsTextLimit()I

    move-result v7

    iput v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$MmsLengthFilter;->mMax:I

    .line 7026
    :goto_0
    iget v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$MmsLengthFilter;->mMax:I

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v8

    sub-int v9, p6, p5

    sub-int/2addr v8, v9

    sub-int v0, v7, v8

    .line 7028
    .local v0, "keep":I
    if-gtz v0, :cond_5

    .line 7029
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$MmsLengthFilter;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v8, 0x7f0b01ae

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 7030
    const-string v7, ""

    .line 7043
    :goto_1
    return-object v7

    .line 6997
    .end local v0    # "keep":I
    :cond_0
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v1

    .line 6998
    .local v1, "params":[I
    const/4 v7, 0x0

    invoke-static {p1, v7}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v5

    .line 7000
    .local v5, "sourceParams":[I
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$MmsLengthFilter;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 7001
    .local v6, "sp":Landroid/content/SharedPreferences;
    const-string v7, "pref_key_enable_signature"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 7002
    .local v4, "signatureboolean":Z
    const/4 v3, 0x0

    .line 7003
    .local v3, "signature":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 7004
    const-string v7, "pref_key_edit_signature"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7007
    :cond_1
    if-eqz v4, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 7008
    const/4 v7, 0x0

    invoke-static {v3, v7}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v2

    .line 7009
    .local v2, "sigParams":[I
    const/4 v7, 0x3

    aget v7, v1, v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    const/4 v7, 0x3

    aget v7, v5, v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    const/4 v7, 0x3

    aget v7, v2, v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 7012
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    rsub-int v7, v7, 0x5fa

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$MmsLengthFilter;->mMax:I

    goto :goto_0

    .line 7014
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    rsub-int v7, v7, 0x29e

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$MmsLengthFilter;->mMax:I

    goto :goto_0

    .line 7017
    .end local v2    # "sigParams":[I
    :cond_3
    const/4 v7, 0x3

    aget v7, v1, v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    const/4 v7, 0x3

    aget v7, v5, v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    .line 7019
    const/16 v7, 0x5fa

    iput v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$MmsLengthFilter;->mMax:I

    goto/16 :goto_0

    .line 7021
    :cond_4
    const/16 v7, 0x29e

    iput v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$MmsLengthFilter;->mMax:I

    goto/16 :goto_0

    .line 7031
    .end local v1    # "params":[I
    .end local v3    # "signature":Ljava/lang/String;
    .end local v4    # "signatureboolean":Z
    .end local v5    # "sourceParams":[I
    .end local v6    # "sp":Landroid/content/SharedPreferences;
    .restart local v0    # "keep":I
    :cond_5
    sub-int v7, p3, p2

    if-lt v0, v7, :cond_6

    .line 7032
    const/4 v7, 0x0

    goto :goto_1

    .line 7034
    :cond_6
    add-int/2addr v0, p2

    .line 7035
    add-int/lit8 v7, v0, -0x1

    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 7036
    add-int/lit8 v0, v0, -0x1

    .line 7037
    if-ne v0, p2, :cond_7

    .line 7038
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$MmsLengthFilter;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v8, 0x7f0b01ae

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 7039
    const-string v7, ""

    goto/16 :goto_1

    .line 7042
    :cond_7
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$MmsLengthFilter;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v8, 0x7f0b01ae

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 7043
    invoke-interface {p1, p2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    goto/16 :goto_1
.end method
