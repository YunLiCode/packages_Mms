.class Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;
.super Ljava/lang/Object;
.source "RecipientEditTextView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/chips/RecipientEditTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecipientTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/chips/RecipientEditTextView;


# direct methods
.method private constructor <init>(Lcom/android/ex/chips/RecipientEditTextView;)V
    .locals 0

    .prologue
    .line 2211
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientEditTextView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/ex/chips/RecipientEditTextView;
    .param p2, "x1"    # Lcom/android/ex/chips/RecipientEditTextView$1;

    .prologue
    .line 2211
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;-><init>(Lcom/android/ex/chips/RecipientEditTextView;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 2217
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2219
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v2

    .line 2220
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const-class v3, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v2, v1, v0, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 2222
    array-length v3, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 2223
    invoke-interface {v2, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2222
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2225
    :cond_0
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    # getter for: Lcom/android/ex/chips/RecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;
    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->access$1700(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/text/style/ImageSpan;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2226
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    # getter for: Lcom/android/ex/chips/RecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;
    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->access$1700(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/text/style/ImageSpan;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2228
    :cond_1
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    # getter for: Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->access$400(Lcom/android/ex/chips/RecipientEditTextView;)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2229
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    # invokes: Lcom/android/ex/chips/RecipientEditTextView;->clearSelectedChip()V
    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->access$1800(Lcom/android/ex/chips/RecipientEditTextView;)V

    .line 2279
    :cond_2
    :goto_1
    return-void

    .line 2235
    :cond_3
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    # invokes: Lcom/android/ex/chips/RecipientEditTextView;->chipsPending()Z
    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->access$1900(Lcom/android/ex/chips/RecipientEditTextView;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2239
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    # getter for: Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->access$400(Lcom/android/ex/chips/RecipientEditTextView;)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2240
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    # getter for: Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-static {v2}, Lcom/android/ex/chips/RecipientEditTextView;->access$400(Lcom/android/ex/chips/RecipientEditTextView;)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/ex/chips/RecipientEditTextView;->isGeneratedContact(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2241
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0, v3}, Lcom/android/ex/chips/RecipientEditTextView;->setCursorVisible(Z)V

    .line 2242
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v2}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/ex/chips/RecipientEditTextView;->setSelection(I)V

    .line 2243
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    # invokes: Lcom/android/ex/chips/RecipientEditTextView;->clearSelectedChip()V
    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->access$1800(Lcom/android/ex/chips/RecipientEditTextView;)V

    .line 2248
    :cond_4
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 2251
    if-le v0, v3, :cond_2

    .line 2252
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->lastCharacterIsCommitCharacter(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2253
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    # invokes: Lcom/android/ex/chips/RecipientEditTextView;->commitByCharacter()V
    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->access$2000(Lcom/android/ex/chips/RecipientEditTextView;)V

    goto :goto_1

    .line 2257
    :cond_5
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    .line 2258
    :goto_2
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v1}, Lcom/android/ex/chips/RecipientEditTextView;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 2259
    if-eq v0, v1, :cond_7

    .line 2260
    invoke-interface {p1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    .line 2264
    :goto_3
    const/16 v1, 0x20

    if-ne v0, v1, :cond_2

    .line 2265
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->isPhoneQuery()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2268
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2269
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    # getter for: Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;
    invoke-static {v1}, Lcom/android/ex/chips/RecipientEditTextView;->access$2100(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v2}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v2

    invoke-interface {v1, v0, v2}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 2270
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    # getter for: Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;
    invoke-static {v2}, Lcom/android/ex/chips/RecipientEditTextView;->access$2100(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2272
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    # getter for: Lcom/android/ex/chips/RecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;
    invoke-static {v1}, Lcom/android/ex/chips/RecipientEditTextView;->access$2200(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/AutoCompleteTextView$Validator;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    # getter for: Lcom/android/ex/chips/RecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;
    invoke-static {v1}, Lcom/android/ex/chips/RecipientEditTextView;->access$2200(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/AutoCompleteTextView$Validator;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/widget/AutoCompleteTextView$Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2274
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    # invokes: Lcom/android/ex/chips/RecipientEditTextView;->commitByCharacter()V
    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->access$2000(Lcom/android/ex/chips/RecipientEditTextView;)V

    goto/16 :goto_1

    .line 2257
    :cond_6
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 2262
    :cond_7
    invoke-interface {p1, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    goto :goto_3
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 2322
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5

    .prologue
    .line 2286
    sub-int v0, p3, p4

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2289
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionStart()I

    move-result v1

    .line 2290
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v0

    const-class v2, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v0, v1, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 2292
    array-length v2, v0

    if-lez v2, :cond_1

    .line 2294
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v2}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 2296
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    # getter for: Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;
    invoke-static {v3}, Lcom/android/ex/chips/RecipientEditTextView;->access$2100(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 2298
    add-int/lit8 v1, p2, 0x1

    .line 2299
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v4

    if-le v1, v4, :cond_0

    .line 2300
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v1

    .line 2302
    :cond_0
    invoke-interface {v2, v3, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 2303
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v1}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-interface {v1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2304
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    # getter for: Lcom/android/ex/chips/RecipientEditTextView;->mAddressPopup:Landroid/widget/ListPopupWindow;
    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->access$2300(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    # getter for: Lcom/android/ex/chips/RecipientEditTextView;->mAddressPopup:Landroid/widget/ListPopupWindow;
    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->access$2300(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2305
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    # getter for: Lcom/android/ex/chips/RecipientEditTextView;->mAddressPopup:Landroid/widget/ListPopupWindow;
    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->access$2300(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 2317
    :cond_1
    :goto_0
    return-void

    .line 2308
    :cond_2
    if-le p4, p3, :cond_1

    .line 2309
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    # getter for: Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->access$400(Lcom/android/ex/chips/RecipientEditTextView;)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    # getter for: Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-static {v1}, Lcom/android/ex/chips/RecipientEditTextView;->access$400(Lcom/android/ex/chips/RecipientEditTextView;)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->isGeneratedContact(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2311
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->lastCharacterIsCommitCharacter(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2312
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    # invokes: Lcom/android/ex/chips/RecipientEditTextView;->commitByCharacter()V
    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->access$2000(Lcom/android/ex/chips/RecipientEditTextView;)V

    goto :goto_0
.end method
