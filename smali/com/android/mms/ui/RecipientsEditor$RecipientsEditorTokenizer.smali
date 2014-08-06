.class Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;
.super Ljava/lang/Object;
.source "RecipientsEditor.java"

# interfaces
.implements Landroid/widget/MultiAutoCompleteTextView$Tokenizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/RecipientsEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecipientsEditorTokenizer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/RecipientsEditor;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/RecipientsEditor;)V
    .locals 0

    .prologue
    .line 511
    iput-object p1, p0, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->this$0:Lcom/android/mms/ui/RecipientsEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/RecipientsEditor;Lcom/android/mms/ui/RecipientsEditor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/mms/ui/RecipientsEditor;
    .param p2, "x1"    # Lcom/android/mms/ui/RecipientsEditor$1;

    .prologue
    .line 511
    invoke-direct {p0, p1}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;-><init>(Lcom/android/mms/ui/RecipientsEditor;)V

    return-void
.end method


# virtual methods
.method public findTokenEnd(Ljava/lang/CharSequence;I)I
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "cursor"    # I

    .prologue
    .line 540
    move v1, p2

    .line 541
    .local v1, "i":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 544
    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 545
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .local v0, "c":C
    const/16 v3, 0x2c

    if-eq v0, v3, :cond_0

    const/16 v3, 0x3b

    if-ne v0, v3, :cond_1

    .line 552
    .end local v0    # "c":C
    .end local v1    # "i":I
    :cond_0
    :goto_1
    return v1

    .line 548
    .restart local v0    # "c":C
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "c":C
    :cond_2
    move v1, v2

    .line 552
    goto :goto_1
.end method

.method public findTokenStart(Ljava/lang/CharSequence;I)I
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "cursor"    # I

    .prologue
    const/16 v4, 0x3b

    const/16 v3, 0x2c

    .line 516
    move v1, p2

    .line 520
    .local v1, "i":I
    if-lez v1, :cond_1

    add-int/lit8 v2, v1, -0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .local v0, "c":C
    if-eq v0, v3, :cond_0

    if-ne v0, v4, :cond_1

    .line 521
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 524
    .end local v0    # "c":C
    :cond_1
    :goto_0
    if-lez v1, :cond_2

    add-int/lit8 v2, v1, -0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .restart local v0    # "c":C
    if-eq v0, v3, :cond_2

    if-eq v0, v4, :cond_2

    .line 525
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 527
    .end local v0    # "c":C
    :cond_2
    :goto_1
    if-ge v1, p2, :cond_3

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_3

    .line 528
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 531
    :cond_3
    :goto_2
    if-ge v1, p2, :cond_4

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x3000

    if-ne v2, v3, :cond_4

    .line 532
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 535
    :cond_4
    return v1
.end method

.method public getNumbers()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 582
    iget-object v7, p0, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->this$0:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v7}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 583
    .local v4, "sp":Landroid/text/Spanned;
    invoke-interface {v4}, Landroid/text/Spanned;->length()I

    move-result v2

    .line 584
    .local v2, "len":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 586
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 587
    .local v6, "start":I
    const/4 v1, 0x0

    .line 588
    .local v1, "i":I
    :goto_0
    add-int/lit8 v7, v2, 0x1

    if-ge v1, v7, :cond_4

    .line 590
    if-eq v1, v2, :cond_0

    invoke-interface {v4, v1}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    .local v0, "c":C
    const/16 v7, 0x2c

    if-eq v0, v7, :cond_0

    const/16 v7, 0x3b

    if-ne v0, v7, :cond_3

    .line 591
    .end local v0    # "c":C
    :cond_0
    if-le v1, v6, :cond_1

    .line 592
    iget-object v7, p0, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->this$0:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v7}, Lcom/android/mms/ui/RecipientsEditor;->getContext()Landroid/content/Context;

    move-result-object v7

    # invokes: Lcom/android/mms/ui/RecipientsEditor;->getNumberAt(Landroid/text/Spanned;IILandroid/content/Context;)Ljava/lang/String;
    invoke-static {v4, v6, v1, v7}, Lcom/android/mms/ui/RecipientsEditor;->access$300(Landroid/text/Spanned;IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    iget-object v7, p0, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->this$0:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v7}, Lcom/android/mms/ui/RecipientsEditor;->getContext()Landroid/content/Context;

    move-result-object v7

    # invokes: Lcom/android/mms/ui/RecipientsEditor;->getSpanLength(Landroid/text/Spanned;IILandroid/content/Context;)I
    invoke-static {v4, v6, v1, v7}, Lcom/android/mms/ui/RecipientsEditor;->access$400(Landroid/text/Spanned;IILandroid/content/Context;)I

    move-result v5

    .line 599
    .local v5, "spanLen":I
    if-le v5, v1, :cond_1

    .line 600
    move v1, v5

    .line 604
    .end local v5    # "spanLen":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 606
    :goto_1
    if-ge v1, v2, :cond_2

    invoke-interface {v4, v1}, Landroid/text/Spanned;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-ne v7, v8, :cond_2

    .line 607
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 610
    :cond_2
    move v6, v1

    goto :goto_0

    .line 612
    .restart local v0    # "c":C
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 616
    .end local v0    # "c":C
    :cond_4
    return-object v3
.end method

.method public getNumbersString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 620
    iget-object v7, p0, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->this$0:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v7}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 621
    .local v4, "sp":Landroid/text/Spanned;
    invoke-interface {v4}, Landroid/text/Spanned;->length()I

    move-result v2

    .line 622
    .local v2, "len":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 623
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 624
    .local v6, "start":I
    const/4 v1, 0x0

    .line 625
    .local v1, "i":I
    :goto_0
    add-int/lit8 v7, v2, 0x1

    if-ge v1, v7, :cond_4

    .line 627
    if-eq v1, v2, :cond_0

    invoke-interface {v4, v1}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    .local v0, "c":C
    const/16 v7, 0x2c

    if-eq v0, v7, :cond_0

    const/16 v7, 0x3b

    if-ne v0, v7, :cond_3

    .line 628
    .end local v0    # "c":C
    :cond_0
    if-le v1, v6, :cond_1

    .line 629
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->this$0:Lcom/android/mms/ui/RecipientsEditor;

    # getter for: Lcom/android/mms/ui/RecipientsEditor;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/mms/ui/RecipientsEditor;->access$500(Lcom/android/mms/ui/RecipientsEditor;)Landroid/content/Context;

    move-result-object v8

    # invokes: Lcom/android/mms/ui/RecipientsEditor;->getNumberAt(Landroid/text/Spanned;IILandroid/content/Context;)Ljava/lang/String;
    invoke-static {v4, v6, v1, v8}, Lcom/android/mms/ui/RecipientsEditor;->access$300(Landroid/text/Spanned;IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\',"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    iget-object v7, p0, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->this$0:Lcom/android/mms/ui/RecipientsEditor;

    # getter for: Lcom/android/mms/ui/RecipientsEditor;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/mms/ui/RecipientsEditor;->access$600(Lcom/android/mms/ui/RecipientsEditor;)Landroid/content/Context;

    move-result-object v7

    # invokes: Lcom/android/mms/ui/RecipientsEditor;->getSpanLength(Landroid/text/Spanned;IILandroid/content/Context;)I
    invoke-static {v4, v6, v1, v7}, Lcom/android/mms/ui/RecipientsEditor;->access$400(Landroid/text/Spanned;IILandroid/content/Context;)I

    move-result v5

    .line 635
    .local v5, "spanLen":I
    if-le v5, v1, :cond_1

    .line 636
    move v1, v5

    .line 640
    .end local v5    # "spanLen":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 642
    :goto_1
    if-ge v1, v2, :cond_2

    invoke-interface {v4, v1}, Landroid/text/Spanned;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-ne v7, v8, :cond_2

    .line 643
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 646
    :cond_2
    move v6, v1

    goto :goto_0

    .line 648
    .restart local v0    # "c":C
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 652
    .end local v0    # "c":C
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_2
    return-object v7

    :cond_5
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 557
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 559
    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    .line 560
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 564
    :cond_0
    if-lez v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0x2c

    if-eq v0, v2, :cond_1

    const/16 v2, 0x3b

    if-ne v0, v2, :cond_2

    .line 576
    :cond_1
    :goto_1
    return-object p1

    .line 569
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->this$0:Lcom/android/mms/ui/RecipientsEditor;

    # getter for: Lcom/android/mms/ui/RecipientsEditor;->mLastSeparator:C
    invoke-static {v2}, Lcom/android/mms/ui/RecipientsEditor;->access$200(Lcom/android/mms/ui/RecipientsEditor;)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 570
    instance-of v2, p1, Landroid/text/Spanned;

    if-eqz v2, :cond_3

    .line 571
    new-instance v4, Landroid/text/SpannableString;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object v0, p1

    .line 572
    check-cast v0, Landroid/text/Spanned;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v3, Ljava/lang/Object;

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    move-object p1, v4

    .line 574
    goto :goto_1

    .line 576
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method
