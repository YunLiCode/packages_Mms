.class Lcom/android/mms/ui/DialogModeActivity$TextLengthFilter;
.super Ljava/lang/Object;
.source "DialogModeActivity.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/DialogModeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TextLengthFilter"
.end annotation


# instance fields
.field private final mExceedMessageSizeToast:Landroid/widget/Toast;

.field private final mMaxLength:I

.field final synthetic this$0:Lcom/android/mms/ui/DialogModeActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/DialogModeActivity;I)V
    .locals 2
    .param p2, "max"    # I

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/mms/ui/DialogModeActivity$TextLengthFilter;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iput p2, p0, Lcom/android/mms/ui/DialogModeActivity$TextLengthFilter;->mMaxLength:I

    .line 295
    const v0, 0x7f0b004f

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/DialogModeActivity$TextLengthFilter;->mExceedMessageSizeToast:Landroid/widget/Toast;

    .line 299
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 13
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 304
    const-string v10, ""

    .line 305
    .local v10, "text":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 306
    .local v1, "destString":Ljava/lang/String;
    const/4 v11, 0x0

    move/from16 v0, p5

    invoke-virtual {v1, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 307
    .local v2, "headString":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 308
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 310
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 311
    .local v7, "middleString":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 312
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 314
    :cond_1
    move/from16 v0, p6

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 315
    .local v9, "tailString":Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 316
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 318
    :cond_2
    const/16 v8, 0x9

    .line 319
    .local v8, "page":I
    iget v6, p0, Lcom/android/mms/ui/DialogModeActivity$TextLengthFilter;->mMaxLength:I

    .line 320
    .local v6, "maxLength":I
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 322
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-le v11, v8, :cond_3

    .line 323
    const/4 v6, 0x0

    .line 324
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v8, :cond_3

    .line 325
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v6, v11

    .line 324
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 329
    .end local v3    # "i":I
    :cond_3
    invoke-interface/range {p4 .. p4}, Landroid/text/Spanned;->length()I

    move-result v11

    sub-int v12, p6, p5

    sub-int/2addr v11, v12

    sub-int v4, v6, v11

    .line 331
    .local v4, "keep":I
    sub-int v11, p3, p2

    if-ge v4, v11, :cond_4

    .line 332
    iget-object v11, p0, Lcom/android/mms/ui/DialogModeActivity$TextLengthFilter;->mExceedMessageSizeToast:Landroid/widget/Toast;

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 335
    :cond_4
    if-gtz v4, :cond_5

    .line 336
    const-string v11, ""

    .line 340
    :goto_1
    return-object v11

    .line 337
    :cond_5
    sub-int v11, p3, p2

    if-lt v4, v11, :cond_6

    .line 338
    const/4 v11, 0x0

    goto :goto_1

    .line 340
    :cond_6
    add-int v11, p2, v4

    invoke-interface {p1, p2, v11}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    goto :goto_1
.end method
