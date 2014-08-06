.class public Lcom/android/mms/ui/RecipientsEditor;
.super Lcom/android/ex/chips/RecipientEditTextView;
.source "RecipientsEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/RecipientsEditor$RecipientContextMenuInfo;,
        Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;,
        Lcom/android/mms/ui/RecipientsEditor$DrawableTouchedListener;,
        Lcom/android/mms/ui/RecipientsEditor$AddressValidator;
    }
.end annotation


# instance fields
.field private mDrawableTouchedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/RecipientsEditor$DrawableTouchedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mInternalValidator:Lcom/android/mms/ui/RecipientsEditor$AddressValidator;

.field private mLastSeparator:C

.field private mLongPressedPosition:I

.field private mOnSelectChipRunnable:Ljava/lang/Runnable;

.field private final mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/android/ex/chips/RecipientEditTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mLongPressedPosition:I

    .line 59
    const/16 v0, 0x2c

    iput-char v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mLastSeparator:C

    .line 67
    iput-object v1, p0, Lcom/android/mms/ui/RecipientsEditor;->mDrawableTouchedListeners:Ljava/util/List;

    .line 84
    new-instance v0, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;-><init>(Lcom/android/mms/ui/RecipientsEditor;Lcom/android/mms/ui/RecipientsEditor$1;)V

    iput-object v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    .line 85
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientsEditor;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 87
    new-instance v0, Lcom/android/mms/ui/RecipientsEditor$AddressValidator;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/RecipientsEditor$AddressValidator;-><init>(Lcom/android/mms/ui/RecipientsEditor;Lcom/android/mms/ui/RecipientsEditor$1;)V

    iput-object v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mInternalValidator:Lcom/android/mms/ui/RecipientsEditor$AddressValidator;

    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mInternalValidator:Lcom/android/mms/ui/RecipientsEditor$AddressValidator;

    invoke-super {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 91
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientsEditor;->setImeOptions(I)V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mDrawableTouchedListeners:Ljava/util/List;

    .line 95
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientsEditor;->setThreshold(I)V

    .line 106
    new-instance v0, Lcom/android/mms/ui/RecipientsEditor$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/RecipientsEditor$1;-><init>(Lcom/android/mms/ui/RecipientsEditor;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientsEditor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 143
    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/RecipientsEditor;)C
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/RecipientsEditor;

    .prologue
    .line 56
    iget-char v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mLastSeparator:C

    return v0
.end method

.method static synthetic access$202(Lcom/android/mms/ui/RecipientsEditor;C)C
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/RecipientsEditor;
    .param p1, "x1"    # C

    .prologue
    .line 56
    iput-char p1, p0, Lcom/android/mms/ui/RecipientsEditor;->mLastSeparator:C

    return p1
.end method

.method static synthetic access$300(Landroid/text/Spanned;IILandroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/text/Spanned;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-static {p0, p1, p2, p3}, Lcom/android/mms/ui/RecipientsEditor;->getNumberAt(Landroid/text/Spanned;IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/text/Spanned;IILandroid/content/Context;)I
    .locals 1
    .param p0, "x0"    # Landroid/text/Spanned;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-static {p0, p1, p2, p3}, Lcom/android/mms/ui/RecipientsEditor;->getSpanLength(Landroid/text/Spanned;IILandroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/RecipientsEditor;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/RecipientsEditor;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/RecipientsEditor;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/RecipientsEditor;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static contactToToken(Lcom/android/mms/data/Contact;)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "c"    # Lcom/android/mms/data/Contact;

    .prologue
    .line 331
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->getNameAndNumber()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 332
    .local v1, "s":Landroid/text/SpannableString;
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v0

    .line 334
    .local v0, "len":I
    if-nez v0, :cond_0

    .line 341
    .end local v1    # "s":Landroid/text/SpannableString;
    :goto_0
    return-object v1

    .line 338
    .restart local v1    # "s":Landroid/text/SpannableString;
    :cond_0
    new-instance v2, Landroid/text/Annotation;

    const-string v3, "number"

    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/ui/RecipientsEditor;->trimSpaceInPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/16 v4, 0x21

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 341
    invoke-virtual {v1}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/RecipientsEditor;->trimSpaceInPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getAnnotation([Landroid/text/Annotation;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "a"    # [Landroid/text/Annotation;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 502
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 503
    aget-object v1, p0, v0

    invoke-virtual {v1}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 504
    aget-object v1, p0, v0

    invoke-virtual {v1}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 508
    :goto_1
    return-object v1

    .line 502
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 508
    :cond_1
    const-string v1, ""

    goto :goto_1
.end method

.method private static getFieldAt(Ljava/lang/String;Landroid/text/Spanned;IILandroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 492
    const-class v0, Landroid/text/Annotation;

    invoke-interface {p1, p2, p3, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Annotation;

    .line 493
    invoke-static {v0, p0}, Lcom/android/mms/ui/RecipientsEditor;->getAnnotation([Landroid/text/Annotation;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 494
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 495
    invoke-static {p1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    .line 497
    :cond_0
    return-object v0
.end method

.method private static getNumberAt(Landroid/text/Spanned;IILandroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "sp"    # Landroid/text/Spanned;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 456
    const-string v3, "number"

    invoke-static {v3, p0, p1, p2, p3}, Lcom/android/mms/ui/RecipientsEditor;->getFieldAt(Ljava/lang/String;Landroid/text/Spanned;IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, "number":Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->replaceUnicodeDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 459
    if-eqz v0, :cond_0

    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 460
    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 462
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 463
    const/16 v3, 0x3c

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 464
    .local v1, "pos":I
    if-ltz v1, :cond_1

    const/16 v3, 0x3e

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 466
    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v2

    .line 467
    .local v2, "tokens":[Landroid/text/util/Rfc822Token;
    array-length v3, v2

    if-nez v3, :cond_2

    .line 473
    .end local v0    # "number":Ljava/lang/String;
    .end local v1    # "pos":I
    .end local v2    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_1
    :goto_0
    return-object v0

    .line 470
    .restart local v0    # "number":Ljava/lang/String;
    .restart local v1    # "pos":I
    .restart local v2    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_2
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getSpanLength(Landroid/text/Spanned;IILandroid/content/Context;)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 483
    const-class v0, Landroid/text/Annotation;

    invoke-interface {p0, p1, p2, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Annotation;

    .line 484
    array-length v2, v0

    if-lez v2, :cond_0

    .line 485
    aget-object v0, v0, v1

    invoke-interface {p0, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 487
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private hasInvalidCharacter(Ljava/lang/String;)Z
    .locals 6
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 219
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 220
    .local v0, "charNumber":[C
    array-length v1, v0

    .line 221
    .local v1, "count":I
    const-string v4, "persist.env.mms.filtchar"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 222
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 223
    aget-char v4, v0, v2

    const v5, 0xff01

    if-lt v4, v5, :cond_0

    aget-char v4, v0, v2

    const v5, 0xff5d

    if-gt v4, v5, :cond_0

    .line 237
    :goto_1
    return v3

    .line 222
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 228
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v1, :cond_4

    .line 229
    if-nez v2, :cond_3

    aget-char v4, v0, v2

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_3

    .line 228
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 232
    :cond_3
    aget-char v4, v0, v2

    invoke-direct {p0, v4}, Lcom/android/mms/ui/RecipientsEditor;->isValidCharacter(C)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 237
    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private isValidAddress(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "isMms"    # Z

    .prologue
    const/4 v0, 0x0

    .line 199
    if-eqz p2, :cond_1

    .line 200
    invoke-static {p1}, Lcom/android/mms/ui/RecipientsEditor;->trimSpaceInPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isValidMmsAddress(Ljava/lang/String;)Z

    move-result v0

    .line 210
    :cond_0
    :goto_0
    return v0

    .line 202
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/ui/RecipientsEditor;->hasInvalidCharacter(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 210
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isWellFormedSmsAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isValidCharacter(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 243
    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x2d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x28

    if-eq p1, v0, :cond_1

    const/16 v0, 0x29

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pointToPosition(II)I
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 395
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_0

    .line 396
    const/4 v2, -0x1

    .line 409
    :goto_0
    return v2

    .line 399
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr p1, v3

    .line 400
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getExtendedPaddingTop()I

    move-result v3

    sub-int/2addr p2, v3

    .line 403
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getScrollX()I

    move-result v3

    add-int/2addr p1, v3

    .line 404
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getScrollY()I

    move-result v3

    add-int/2addr p2, v3

    .line 406
    invoke-virtual {v0, p2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v1

    .line 407
    .local v1, "line":I
    int-to-float v3, p1

    invoke-virtual {v0, v1, v3}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v2

    .line 409
    .local v2, "off":I
    goto :goto_0
.end method

.method public static trimSpaceInPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 311
    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 327
    .end local p0    # "number":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 315
    .restart local p0    # "number":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 316
    .local v0, "chars":[C
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_4

    .line 319
    aget-char v3, v0, v1

    const/16 v4, 0x20

    if-ne v3, v4, :cond_3

    .line 318
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 321
    :cond_3
    aget-char v3, v0, v1

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_2

    .line 324
    aget-char v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 327
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public addDrawableTouchedListener(Lcom/android/mms/ui/RecipientsEditor$DrawableTouchedListener;)V
    .locals 1
    .param p1, "drawableTouchedListener"    # Lcom/android/mms/ui/RecipientsEditor$DrawableTouchedListener;

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mDrawableTouchedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    return-void
.end method

.method public constructContactsFromInput(Z)Lcom/android/mms/data/ContactList;
    .locals 6
    .param p1, "blocking"    # Z

    .prologue
    .line 188
    iget-object v5, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {v5}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->getNumbers()Ljava/util/List;

    move-result-object v4

    .line 189
    .local v4, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Lcom/android/mms/data/ContactList;

    invoke-direct {v2}, Lcom/android/mms/data/ContactList;-><init>()V

    .line 190
    .local v2, "list":Lcom/android/mms/data/ContactList;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 191
    .local v3, "number":Ljava/lang/String;
    invoke-static {v3, p1}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 192
    .local v0, "contact":Lcom/android/mms/data/Contact;
    invoke-virtual {v0, v3}, Lcom/android/mms/data/Contact;->setNumber(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v2, v0}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 195
    .end local v0    # "contact":Lcom/android/mms/data/Contact;
    .end local v3    # "number":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method public containsEmail()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 298
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v4

    const/16 v5, 0x40

    invoke-static {v4, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 307
    :cond_0
    :goto_0
    return v3

    .line 301
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {v4}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->getNumbers()Ljava/util/List;

    move-result-object v2

    .line 302
    .local v2, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 303
    .local v1, "number":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/RecipientsEditor;->trimSpaceInPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 304
    invoke-static {v1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 305
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public enoughToFilter()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 160
    invoke-super {p0}, Lcom/android/ex/chips/RecipientEditTextView;->enoughToFilter()Z

    move-result v3

    if-nez v3, :cond_1

    .line 171
    :cond_0
    :goto_0
    return v2

    .line 168
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getSelectionEnd()I

    move-result v0

    .line 169
    .local v0, "end":I
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v1

    .line 171
    .local v1, "len":I
    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public formatInvalidNumbers(Z)Ljava/lang/String;
    .locals 4
    .param p1, "isMms"    # Z

    .prologue
    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {v3}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->getNumbers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 287
    .local v1, "number":Ljava/lang/String;
    invoke-direct {p0, v1, p1}, Lcom/android/mms/ui/RecipientsEditor;->isValidAddress(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 288
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 289
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 294
    .end local v1    # "number":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 7

    .prologue
    .line 439
    iget v5, p0, Lcom/android/mms/ui/RecipientsEditor;->mLongPressedPosition:I

    if-ltz v5, :cond_0

    .line 440
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 441
    .local v4, "text":Landroid/text/Spanned;
    iget v5, p0, Lcom/android/mms/ui/RecipientsEditor;->mLongPressedPosition:I

    invoke-interface {v4}, Landroid/text/Spanned;->length()I

    move-result v6

    if-gt v5, v6, :cond_0

    .line 442
    iget-object v5, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    iget v6, p0, Lcom/android/mms/ui/RecipientsEditor;->mLongPressedPosition:I

    invoke-virtual {v5, v4, v6}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 443
    .local v3, "start":I
    iget-object v5, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {v5, v4, v3}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 445
    .local v1, "end":I
    if-eq v1, v3, :cond_0

    .line 446
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v3, v1, v6}, Lcom/android/mms/ui/RecipientsEditor;->getNumberAt(Landroid/text/Spanned;IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 447
    .local v2, "number":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-static {v2, v5}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 448
    .local v0, "c":Lcom/android/mms/data/Contact;
    new-instance v5, Lcom/android/mms/ui/RecipientsEditor$RecipientContextMenuInfo;

    invoke-direct {v5, v0}, Lcom/android/mms/ui/RecipientsEditor$RecipientContextMenuInfo;-><init>(Lcom/android/mms/data/Contact;)V

    .line 452
    .end local v0    # "c":Lcom/android/mms/data/Contact;
    .end local v1    # "end":I
    .end local v2    # "number":Ljava/lang/String;
    .end local v3    # "start":I
    .end local v4    # "text":Landroid/text/Spanned;
    :goto_0
    return-object v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public getExsitNumbers()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->getNumbersString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumbers()Ljava/util/List;
    .locals 1
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
    .line 180
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->getNumbers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRecipientCount()I
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->getNumbers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public hasInvalidRecipient(Z)Z
    .locals 6
    .param p1, "isMms"    # Z

    .prologue
    const/4 v2, 0x1

    .line 271
    iget-object v3, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {v3}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->getNumbers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 272
    .local v1, "number":Ljava/lang/String;
    const-string v3, "Trace"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "baijianhua hasInvalidRecipient number"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "isMms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-direct {p0, v1, p1}, Lcom/android/mms/ui/RecipientsEditor;->isValidAddress(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 274
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 281
    .end local v1    # "number":Ljava/lang/String;
    :goto_0
    return v2

    .line 276
    .restart local v1    # "number":Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 281
    .end local v1    # "number":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hasValidRecipient(Z)I
    .locals 8
    .param p1, "isMms"    # Z

    .prologue
    .line 250
    const/4 v4, 0x0

    .line 251
    .local v4, "validNum":I
    const/4 v2, 0x0

    .line 252
    .local v2, "invalidNum":I
    iget-object v5, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {v5}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->getNumbers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 253
    .local v3, "number":Ljava/lang/String;
    invoke-direct {p0, v3, p1}, Lcom/android/mms/ui/RecipientsEditor;->isValidAddress(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 254
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 256
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 259
    .end local v3    # "number":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {v5}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->getNumbers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 260
    .local v0, "count":I
    if-ne v4, v0, :cond_2

    .line 261
    const/4 v2, 0x0

    .line 266
    .end local v2    # "invalidNum":I
    :goto_1
    return v2

    .line 262
    .restart local v2    # "invalidNum":I
    :cond_2
    if-ne v2, v0, :cond_3

    .line 263
    const/4 v2, -0x1

    goto :goto_1

    .line 265
    :cond_3
    const-string v5, "Trace"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "baijianhua hasValidRecipient invalidNum"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-super/range {p0 .. p5}, Lcom/android/ex/chips/RecipientEditTextView;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 149
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mOnSelectChipRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mOnSelectChipRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 152
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 414
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 415
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 416
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 418
    .local v3, "y":I
    if-nez v0, :cond_0

    .line 419
    invoke-direct {p0, v2, v3}, Lcom/android/mms/ui/RecipientsEditor;->pointToPosition(II)I

    move-result v4

    iput v4, p0, Lcom/android/mms/ui/RecipientsEditor;->mLongPressedPosition:I

    .line 423
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 425
    :goto_0
    return v4

    .line 424
    :catch_0
    move-exception v1

    .line 425
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public populate(Lcom/android/mms/data/ContactList;)V
    .locals 6
    .param p1, "list"    # Lcom/android/mms/data/ContactList;

    .prologue
    .line 364
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 367
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/RecipientsEditor;->setText(Ljava/lang/CharSequence;)V

    .line 389
    :cond_0
    return-void

    .line 370
    :cond_1
    const-string v4, ""

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/RecipientsEditor;->setText(Ljava/lang/CharSequence;)V

    .line 371
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 377
    .local v0, "c":Lcom/android/mms/data/Contact;
    invoke-static {v0}, Lcom/android/mms/ui/RecipientsEditor;->contactToToken(Lcom/android/mms/data/Contact;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 379
    .local v1, "charSequence":Ljava/lang/CharSequence;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 380
    .local v3, "number":Ljava/lang/String;
    if-eqz v3, :cond_3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 381
    const-string v4, ","

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 383
    :cond_3
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 384
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/RecipientsEditor;->append(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setOnSelectChipRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "onSelectChipRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/mms/ui/RecipientsEditor;->mOnSelectChipRunnable:Ljava/lang/Runnable;

    .line 156
    return-void
.end method
