.class public Lcom/android/mms/ui/MessageListItem;
.super Landroid/widget/LinearLayout;
.source "MessageListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/mms/ui/SlideViewInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageListItem$ImageLoadedCallback;
    }
.end annotation


# static fields
.field static final MMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;

.field private static sDefaultContactImage:Landroid/graphics/drawable/Drawable;


# instance fields
.field private isGroup:Z

.field private isSimMessage:Z

.field private mAvatar:Lcom/android/mms/ui/QuickContactDivot;

.field private mBodyTextView:Landroid/widget/TextView;

.field mCancelDownloadProgressDialog:Landroid/os/Handler;

.field mColorSpan:Landroid/text/style/ForegroundColorSpan;

.field private mDateLable:Landroid/widget/TextView;

.field private mDateView:Landroid/widget/TextView;

.field private mDefaultCountryIso:Ljava/lang/String;

.field private mDeliveredIndicator:Landroid/widget/ImageView;

.field private mDetailsIndicator:Landroid/widget/ImageView;

.field private mDownloadButton:Landroid/widget/Button;

.field private mDownloadProgressDialog:Landroid/app/ProgressDialog;

.field private mDownloadingLabel:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mImageLoadedCallback:Lcom/android/mms/ui/MessageListItem$ImageLoadedCallback;

.field private mImageView:Landroid/widget/ImageView;

.field private mLocatorView:Landroid/widget/TextView;

.field private mLockedIndicator:Landroid/widget/ImageView;

.field private mMessageItem:Lcom/android/mms/ui/MessageItem;

.field private mMmsView:Landroid/view/View;

.field private mMultiRecipients:Z

.field private mOtherAttachName:Landroid/widget/TextView;

.field private mPosition:I

.field private mPresenter:Lcom/android/mms/ui/Presenter;

.field private mShowDateSwitch:Z

.field private mShowDatelable:Z

.field private mSimName:Ljava/lang/String;

.field private mSlideShowButton:Landroid/widget/ImageButton;

.field private mSpan:Landroid/text/style/LineHeightSpan;

.field mTextSmallSpan:Landroid/text/style/TextAppearanceSpan;

.field private mTimeDivider:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 155
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "delivery_status"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "read_status"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/MessageListItem;->MMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 166
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 145
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->isSimMessage:Z

    .line 146
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->isGroup:Z

    .line 147
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mShowDatelable:Z

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mShowDateSwitch:Z

    .line 411
    new-instance v0, Lcom/android/mms/ui/MessageListItem$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$4;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCancelDownloadProgressDialog:Landroid/os/Handler;

    .line 734
    new-instance v0, Lcom/android/mms/ui/MessageListItem$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$7;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSpan:Landroid/text/style/LineHeightSpan;

    .line 742
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v2, 0x1030046

    invoke-direct {v0, v1, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTextSmallSpan:Landroid/text/style/TextAppearanceSpan;

    .line 745
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 167
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDefaultCountryIso:Ljava/lang/String;

    .line 169
    sget-object v0, Lcom/android/mms/ui/MessageListItem;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessageListItem;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    .line 172
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 175
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 145
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListItem;->isSimMessage:Z

    .line 146
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListItem;->isGroup:Z

    .line 147
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListItem;->mShowDatelable:Z

    .line 163
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListItem;->mShowDateSwitch:Z

    .line 411
    new-instance v1, Lcom/android/mms/ui/MessageListItem$4;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageListItem$4;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mCancelDownloadProgressDialog:Landroid/os/Handler;

    .line 734
    new-instance v1, Lcom/android/mms/ui/MessageListItem$7;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageListItem$7;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSpan:Landroid/text/style/LineHeightSpan;

    .line 742
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v3, 0x1030046

    invoke-direct {v1, v2, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mTextSmallSpan:Landroid/text/style/TextAppearanceSpan;

    .line 745
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 177
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 178
    .local v0, "color":I
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 179
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/MmsApp;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDefaultCountryIso:Ljava/lang/String;

    .line 181
    sget-object v1, Lcom/android/mms/ui/MessageListItem;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/android/mms/ui/MessageListItem;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    .line 184
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/MessageListItem;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/ui/MessageItem;
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/MessageListItem;
    .param p1, "x1"    # Lcom/android/mms/ui/MessageItem;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MessageListItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/MessageListItem;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->bindNotifInd()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MessageListItem;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/MessageListItem;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/MessageListItem;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/MessageListItem;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MessageListItem;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/MessageListItem;
    .param p1, "x1"    # Z

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindCommonMessage(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/MessageListItem;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/MessageListItem;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/MessageListItem;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDefaultCountryIso:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/MessageListItem;
    .param p1, "x1"    # Lcom/android/mms/ui/MessageItem;
    .param p2, "x2"    # I

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MessageListItem;->sendMessage(Lcom/android/mms/ui/MessageItem;I)V

    return-void
.end method

.method private bindCommonMessage(Z)V
    .locals 13
    .param p1, "sameItem"    # Z

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 491
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 494
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 499
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 501
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_8

    :cond_2
    const/4 v10, 0x1

    .line 510
    .local v10, "haveLoadedPdu":Z
    :goto_0
    if-eqz p1, :cond_3

    if-eqz v10, :cond_4

    .line 511
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    invoke-static {v0}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v12

    .line 512
    .local v12, "isSelf":Z
    if-eqz v12, :cond_9

    const/4 v8, 0x0

    .line 513
    .local v8, "addr":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    .line 515
    .local v11, "isPopStyle":Z
    if-eqz v12, :cond_a

    .line 516
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessageListItem;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    .line 521
    :goto_2
    if-nez v11, :cond_4

    .line 522
    invoke-direct {p0, v8, v12}, Lcom/android/mms/ui/MessageListItem;->updateAvatarView(Ljava/lang/String;Z)V

    .line 530
    .end local v8    # "addr":Ljava/lang/String;
    .end local v11    # "isPopStyle":Z
    .end local v12    # "isSelf":Z
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getCachedFormattedMessage()Ljava/lang/CharSequence;

    move-result-object v9

    .line 531
    .local v9, "formattedMessage":Ljava/lang/CharSequence;
    if-nez v9, :cond_5

    .line 532
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v3, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v4, v0, Lcom/android/mms/ui/MessageItem;->mSubscription:I

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v5, v0, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v6, v0, Lcom/android/mms/ui/MessageItem;->mHighlight:Ljava/util/regex/Pattern;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v7, v0, Lcom/android/mms/ui/MessageItem;->mTextContentType:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageListItem;->formatMessage(Lcom/android/mms/ui/MessageItem;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 538
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0, v9}, Lcom/android/mms/ui/MessageItem;->setCachedFormattedMessage(Ljava/lang/CharSequence;)V

    .line 540
    :cond_5
    if-eqz p1, :cond_6

    if-eqz v10, :cond_7

    .line 541
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 565
    :cond_7
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    .line 566
    .restart local v11    # "isPopStyle":Z
    if-eqz v11, :cond_c

    .line 567
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isSending()Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mSimName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b012d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 575
    :goto_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 576
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MessageListItem;->showMmsView(ZLjava/lang/String;)V

    .line 577
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageItem;->setOnPduLoaded(Lcom/android/mms/ui/MessageItem$PduLoadedCallback;)V

    .line 627
    :goto_5
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListItem;->drawRightStatusIndicator(Lcom/android/mms/ui/MessageItem;)V

    .line 629
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->requestLayout()V

    .line 630
    return-void

    .line 501
    .end local v9    # "formattedMessage":Ljava/lang/CharSequence;
    .end local v10    # "haveLoadedPdu":Z
    .end local v11    # "isPopStyle":Z
    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 512
    .restart local v10    # "haveLoadedPdu":Z
    .restart local v12    # "isSelf":Z
    :cond_9
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v8, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    goto/16 :goto_1

    .line 518
    .restart local v8    # "addr":Ljava/lang/String;
    .restart local v11    # "isPopStyle":Z
    :cond_a
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessageListItem;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_2

    .line 567
    .end local v8    # "addr":Ljava/lang/String;
    .end local v12    # "isSelf":Z
    .restart local v9    # "formattedMessage":Ljava/lang/CharSequence;
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mSimName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 571
    :cond_c
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isSending()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b012d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_d
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    goto :goto_6

    .line 585
    :cond_e
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    if-eqz v0, :cond_10

    .line 586
    if-nez p1, :cond_f

    .line 587
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/MessageListItem;->setImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 589
    :cond_f
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListItem;->setOnClickListener(Lcom/android/mms/ui/MessageItem;)V

    .line 590
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListItem;->drawPlaybackButton(Lcom/android/mms/ui/MessageItem;)V

    .line 594
    :goto_7
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v0, :cond_11

    .line 595
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    new-instance v1, Lcom/android/mms/ui/MessageListItem$6;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageListItem$6;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageItem;->setOnPduLoaded(Lcom/android/mms/ui/MessageItem$PduLoadedCallback;)V

    goto/16 :goto_5

    .line 592
    :cond_10
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MessageListItem;->showMmsView(ZLjava/lang/String;)V

    goto :goto_7

    .line 611
    :cond_11
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPresenter:Lcom/android/mms/ui/Presenter;

    if-nez v0, :cond_12

    .line 612
    const-string v0, "MmsThumbnailPresenter"

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v0, v1, p0, v2}, Lcom/android/mms/ui/PresenterFactory;->getPresenter(Ljava/lang/String;Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)Lcom/android/mms/ui/Presenter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPresenter:Lcom/android/mms/ui/Presenter;

    .line 619
    :goto_8
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageLoadedCallback:Lcom/android/mms/ui/MessageListItem$ImageLoadedCallback;

    if-nez v0, :cond_13

    .line 620
    new-instance v0, Lcom/android/mms/ui/MessageListItem$ImageLoadedCallback;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$ImageLoadedCallback;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageLoadedCallback:Lcom/android/mms/ui/MessageListItem$ImageLoadedCallback;

    .line 624
    :goto_9
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPresenter:Lcom/android/mms/ui/Presenter;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mImageLoadedCallback:Lcom/android/mms/ui/MessageListItem$ImageLoadedCallback;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/Presenter;->present(Lcom/android/mms/util/ItemLoadedCallback;)V

    goto/16 :goto_5

    .line 616
    :cond_12
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPresenter:Lcom/android/mms/ui/Presenter;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v1, v1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/Presenter;->setModel(Lcom/android/mms/model/Model;)V

    .line 617
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPresenter:Lcom/android/mms/ui/Presenter;

    invoke-virtual {v0, p0}, Lcom/android/mms/ui/Presenter;->setView(Lcom/android/mms/ui/ViewInterface;)V

    goto :goto_8

    .line 622
    :cond_13
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageLoadedCallback:Lcom/android/mms/ui/MessageListItem$ImageLoadedCallback;

    invoke-virtual {v0, p0}, Lcom/android/mms/ui/MessageListItem$ImageLoadedCallback;->reset(Lcom/android/mms/ui/MessageListItem;)V

    goto :goto_9
.end method

.method private bindNotifInd()V
    .locals 13

    .prologue
    const/4 v3, 0x0

    const/16 v12, 0x8

    const/4 v11, 0x0

    .line 279
    invoke-direct {p0, v11, v3}, Lcom/android/mms/ui/MessageListItem;->showMmsView(ZLjava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    new-instance v1, Lcom/android/mms/ui/MessageListItem$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageListItem$1;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageItem;->setOnPduLoaded(Lcom/android/mms/ui/MessageItem$PduLoadedCallback;)V

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v2, 0x7f0b00c2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v1, v1, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    add-int/lit16 v1, v1, 0x3ff

    div-int/lit16 v1, v1, 0x400

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0019

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 293
    .local v9, "msgSizeText":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v4, v0, Lcom/android/mms/ui/MessageItem;->mSubscription:I

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v5, v0, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v6, v0, Lcom/android/mms/ui/MessageItem;->mHighlight:Ljava/util/regex/Pattern;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v7, v0, Lcom/android/mms/ui/MessageItem;->mTextContentType:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageListItem;->formatMessage(Lcom/android/mms/ui/MessageItem;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    .line 300
    .local v8, "isPopStyle":Z
    if-eqz v8, :cond_2

    .line 301
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mSimName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMmsDownloadStatus()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 336
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->setLongClickable(Z)V

    .line 337
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->inflateDownloadControls()V

    .line 338
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 345
    const-string v0, "true"

    const-string v1, "ro.config.a.enable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 346
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/mms/ui/MessageListItem$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageListItem$2;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    if-eqz v0, :cond_4

    .line 381
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mLockedIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02004d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 382
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mLockedIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 386
    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveredIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 387
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDetailsIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 388
    if-nez v8, :cond_1

    .line 389
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-direct {p0, v0, v11}, Lcom/android/mms/ui/MessageListItem;->updateAvatarView(Ljava/lang/String;Z)V

    .line 391
    :cond_1
    return-void

    .line 303
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 309
    :sswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->showDownloadingAttachment()V

    goto :goto_1

    .line 367
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/mms/ui/MessageListItem$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageListItem$3;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 384
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mLockedIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 306
    :sswitch_data_0
    .sparse-switch
        0x81 -> :sswitch_0
        0x88 -> :sswitch_0
    .end sparse-switch
.end method

.method private drawPlaybackButton(Lcom/android/mms/ui/MessageItem;)V
    .locals 2
    .param p1, "msgItem"    # Lcom/android/mms/ui/MessageItem;

    .prologue
    .line 805
    iget v0, p1, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    packed-switch v0, :pswitch_data_0

    .line 831
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 834
    :goto_0
    return-void

    .line 810
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 812
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 813
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 805
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private drawRightStatusIndicator(Lcom/android/mms/ui/MessageItem;)V
    .locals 10

    .prologue
    const v3, 0x7f0b01db

    const v9, 0x7f020078

    const/4 v4, 0x0

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 1001
    iget-boolean v0, p1, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    if-eqz v0, :cond_0

    .line 1002
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mLockedIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02004d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1003
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mLockedIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1013
    :goto_0
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->isSimMessage:Z

    if-eqz v0, :cond_1

    .line 1014
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveredIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1041
    :goto_1
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    sget-object v1, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->RECEIVED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    if-ne v0, v1, :cond_9

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSending()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1045
    sget-object v0, Landroid/provider/Telephony$Mms;->REPORT_STATUS_URI:Landroid/net/Uri;

    iget-wide v1, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1050
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/mms/ui/MessageListItem;->MMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1052
    if-nez v1, :cond_7

    .line 1092
    :goto_2
    return-void

    .line 1005
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mLockedIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1015
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isOutgoingMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    sget-object v1, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->FAILED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    if-ne v0, v1, :cond_5

    .line 1017
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveredIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02004b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1018
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveredIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1020
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1021
    if-eqz v0, :cond_4

    .line 1022
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mSimName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1024
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1027
    :cond_5
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    sget-object v1, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->RECEIVED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    if-ne v0, v1, :cond_6

    .line 1029
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveredIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1030
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveredIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1032
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveredIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1056
    :cond_7
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1057
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1060
    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1062
    const/16 v1, 0x81

    if-ne v0, v1, :cond_8

    .line 1063
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDetailsIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1064
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDetailsIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1060
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1066
    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDetailsIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1068
    :cond_9
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p1, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    if-eqz v0, :cond_a

    .line 1069
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDetailsIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020079

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1070
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDetailsIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1072
    :cond_a
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDetailsIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_b
    move v0, v7

    goto :goto_3
.end method

.method private formatMessage(Lcom/android/mms/ui/MessageItem;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 12
    .param p1, "msgItem"    # Lcom/android/mms/ui/MessageItem;
    .param p2, "contact"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "subId"    # I
    .param p5, "subject"    # Ljava/lang/String;
    .param p6, "highlight"    # Ljava/util/regex/Pattern;
    .param p7, "contentType"    # Ljava/lang/String;

    .prologue
    .line 750
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 752
    .local v2, "buf":Landroid/text/SpannableStringBuilder;
    iget-boolean v8, p0, Lcom/android/mms/ui/MessageListItem;->isSimMessage:Z

    if-eqz v8, :cond_4

    .line 754
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 763
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080001

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 764
    .local v4, "isPopStyle":Z
    if-nez v4, :cond_1

    .line 765
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 766
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListItem;->getMultiSimName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 767
    const-string v8, "\n"

    invoke-virtual {v2, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 771
    :cond_1
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    const/4 v3, 0x1

    .line 772
    .local v3, "hasSubject":Z
    :goto_1
    invoke-static {}, Lcom/android/mms/util/SmileyParser;->getInstance()Lcom/android/mms/util/SmileyParser;

    move-result-object v6

    .line 773
    .local v6, "parser":Lcom/android/mms/util/SmileyParser;
    if-eqz v3, :cond_2

    .line 774
    move-object/from16 v0, p5

    invoke-virtual {v6, v0}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 778
    .local v7, "smilizedSubject":Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0022

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "%s"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/CharSequence;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    invoke-static {v8, v9, v10}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 782
    .end local v7    # "smilizedSubject":Ljava/lang/CharSequence;
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 784
    if-eqz p7, :cond_6

    const-string v8, "text/html"

    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 785
    const-string v8, "\n"

    invoke-virtual {v2, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 786
    invoke-static {p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 795
    :cond_3
    :goto_2
    if-eqz p6, :cond_8

    .line 796
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p6

    invoke-virtual {v0, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 797
    .local v5, "m":Ljava/util/regex/Matcher;
    :goto_3
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 798
    new-instance v8, Landroid/text/style/StyleSpan;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v9

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v2, v8, v9, v10, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    .line 756
    .end local v3    # "hasSubject":Z
    .end local v4    # "isPopStyle":Z
    .end local v5    # "m":Ljava/util/regex/Matcher;
    .end local v6    # "parser":Lcom/android/mms/util/SmileyParser;
    :cond_4
    iget-boolean v8, p0, Lcom/android/mms/ui/MessageListItem;->isGroup:Z

    if-eqz v8, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 757
    iget-object v8, p1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    .line 758
    .local v1, "addr":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_0

    .line 771
    .end local v1    # "addr":Ljava/lang/String;
    .restart local v4    # "isPopStyle":Z
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 788
    .restart local v3    # "hasSubject":Z
    .restart local v6    # "parser":Lcom/android/mms/util/SmileyParser;
    :cond_6
    if-eqz v3, :cond_7

    .line 789
    const-string v8, " - "

    invoke-virtual {v2, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 791
    :cond_7
    invoke-virtual {v6, p3}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    .line 801
    :cond_8
    return-object v2
.end method

.method private getMultiSimName(I)Ljava/lang/String;
    .locals 2
    .param p1, "subscription"    # I

    .prologue
    .line 1199
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 1200
    :cond_0
    const/4 v0, 0x0

    .line 1202
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->MULTI_SIM_NAME:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private inflateDownloadControls()V
    .locals 2

    .prologue
    .line 725
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 727
    const v0, 0x7f0a005c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 728
    const v0, 0x7f0a0061

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    .line 729
    const v0, 0x7f0a0062

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    .line 731
    :cond_0
    return-void
.end method

.method private recomposeFailedMessage()V
    .locals 4

    .prologue
    .line 985
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    .line 987
    const-string v1, "sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 988
    const/4 v0, 0x2

    .line 992
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 993
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 994
    new-instance v1, Ljava/lang/Long;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v2, v2, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 995
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 997
    :cond_0
    return-void

    .line 990
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private sendMessage(Lcom/android/mms/ui/MessageItem;I)V
    .locals 2
    .param p1, "messageItem"    # Lcom/android/mms/ui/MessageItem;
    .param p2, "message"    # I

    .prologue
    .line 843
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 844
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    invoke-static {v1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 845
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 846
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 848
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private setFontSize()V
    .locals 2

    .prologue
    .line 1261
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->getFontSize(Landroid/content/Context;)F

    move-result v0

    .line 1262
    .local v0, "size":F
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 1263
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1265
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 1266
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1268
    :cond_1
    return-void
.end method

.method private setOnClickListener(Lcom/android/mms/ui/MessageItem;)V
    .locals 2
    .param p1, "msgItem"    # Lcom/android/mms/ui/MessageItem;

    .prologue
    .line 955
    iget v0, p1, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    packed-switch v0, :pswitch_data_0

    .line 974
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 977
    :goto_0
    return-void

    .line 959
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/mms/ui/MessageListItem$12;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/MessageListItem$12;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 965
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/mms/ui/MessageListItem$13;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageListItem$13;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    .line 955
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showDownloadingAttachment()V
    .locals 2

    .prologue
    .line 404
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->inflateDownloadControls()V

    .line 405
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 407
    return-void
.end method

.method private showMmsView(ZLjava/lang/String;)V
    .locals 6
    .param p1, "visible"    # Z
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const v4, 0x7f0a0063

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 691
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 692
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    .line 695
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 697
    const v1, 0x7f0a005b

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 698
    .local v0, "mmsStub":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 699
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    .line 702
    .end local v0    # "mmsStub":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 703
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    .line 704
    const v1, 0x7f0a0065

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    .line 706
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    if-nez v1, :cond_2

    .line 707
    const v1, 0x7f0a0066

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    .line 709
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mOtherAttachName:Landroid/widget/TextView;

    if-nez v1, :cond_3

    .line 710
    const v1, 0x7f0a0067

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mOtherAttachName:Landroid/widget/TextView;

    .line 711
    const-string v1, "Trace"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showMmsView"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mOtherAttachName:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :cond_3
    if-eqz p2, :cond_5

    .line 714
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mOtherAttachName:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 718
    :goto_0
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mOtherAttachName:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 719
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    if-eqz p1, :cond_7

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 720
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_8

    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 722
    :cond_4
    return-void

    .line 716
    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mOtherAttachName:Landroid/widget/TextView;

    const-string v4, " "

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    move v1, v3

    .line 718
    goto :goto_1

    :cond_7
    move v1, v3

    .line 719
    goto :goto_2

    :cond_8
    move v2, v3

    .line 720
    goto :goto_3
.end method

.method private updateAvatarView(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "isSelf"    # Z

    .prologue
    const/4 v3, 0x0

    .line 466
    if-nez p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 467
    :cond_0
    if-eqz p2, :cond_2

    invoke-static {v3}, Lcom/android/mms/data/Contact;->getMe(Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 468
    .local v1, "contact":Lcom/android/mms/data/Contact;
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/mms/ui/MessageListItem;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 470
    .local v0, "avatarDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_3

    .line 471
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mAvatar:Lcom/android/mms/ui/QuickContactDivot;

    sget-object v3, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/QuickContactDivot;->assignContactUri(Landroid/net/Uri;)V

    .line 482
    .end local v1    # "contact":Lcom/android/mms/data/Contact;
    :goto_1
    const-string v2, "Browser Information"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 483
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020043

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 485
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mAvatar:Lcom/android/mms/ui/QuickContactDivot;

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/QuickContactDivot;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 486
    return-void

    .line 467
    .end local v0    # "avatarDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-static {p1, v3}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    goto :goto_0

    .line 473
    .restart local v0    # "avatarDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "contact":Lcom/android/mms/data/Contact;
    :cond_3
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 474
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mAvatar:Lcom/android/mms/ui/QuickContactDivot;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/QuickContactDivot;->assignContactUri(Landroid/net/Uri;)V

    goto :goto_1

    .line 476
    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mAvatar:Lcom/android/mms/ui/QuickContactDivot;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/ui/QuickContactDivot;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto :goto_1

    .line 480
    .end local v0    # "avatarDrawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "contact":Lcom/android/mms/data/Contact;
    :cond_5
    sget-object v0, Lcom/android/mms/ui/MessageListItem;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    .restart local v0    # "avatarDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1
.end method


# virtual methods
.method public bind(Lcom/android/mms/ui/MessageItem;ZI)V
    .locals 6
    .param p1, "msgItem"    # Lcom/android/mms/ui/MessageItem;
    .param p2, "convHasMultiRecipients"    # Z
    .param p3, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 219
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v2, v2, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    iget-wide v4, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 220
    .local v0, "sameItem":Z
    :goto_0
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    .line 222
    iput p3, p0, Lcom/android/mms/ui/MessageListItem;->mPosition:I

    .line 223
    iput-boolean p2, p0, Lcom/android/mms/ui/MessageListItem;->mMultiRecipients:Z

    .line 225
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v2, v2, Lcom/android/mms/ui/MessageItem;->mSubscription:I

    invoke-direct {p0, v2}, Lcom/android/mms/ui/MessageListItem;->getMultiSimName(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mSimName:Ljava/lang/String;

    .line 227
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mSimName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mSimName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mSimName:Ljava/lang/String;

    .line 233
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->setLongClickable(Z)V

    .line 234
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->setClickable(Z)V

    .line 239
    iget v1, p1, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    packed-switch v1, :pswitch_data_0

    .line 244
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListItem;->bindCommonMessage(Z)V

    .line 248
    :goto_1
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->setFontSize()V

    .line 249
    return-void

    .end local v0    # "sameItem":Z
    :cond_1
    move v0, v1

    .line 219
    goto :goto_0

    .line 241
    .restart local v0    # "sameItem":Z
    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->bindNotifInd()V

    goto :goto_1

    .line 239
    nop

    :pswitch_data_0
    .packed-switch 0x82
        :pswitch_0
    .end packed-switch
.end method

.method public bind(Lcom/android/mms/ui/MessageItem;ZIZZ)V
    .locals 0
    .param p1, "msgItem"    # Lcom/android/mms/ui/MessageItem;
    .param p2, "isLastItem"    # Z
    .param p3, "position"    # I
    .param p4, "isFromSim"    # Z
    .param p5, "isGroup"    # Z

    .prologue
    .line 208
    iput-boolean p4, p0, Lcom/android/mms/ui/MessageListItem;->isSimMessage:Z

    .line 209
    iput-boolean p5, p0, Lcom/android/mms/ui/MessageListItem;->isGroup:Z

    .line 210
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageListItem;->bind(Lcom/android/mms/ui/MessageItem;ZI)V

    .line 211
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 1188
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1193
    return-void
.end method

.method public getMessageItem()Lcom/android/mms/ui/MessageItem;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method isYerstoday(J)Z
    .locals 3

    .prologue
    .line 1293
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1294
    const/4 v1, 0x5

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 1295
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1296
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1297
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public multiStartDownload()V
    .locals 5

    .prologue
    .line 1309
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1310
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDataSubscription()I

    move-result v0

    .line 1311
    .local v0, "currentDataSubscription":I
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v2, v2, Lcom/android/mms/ui/MessageItem;->mSubscription:I

    if-ne v0, v2, :cond_1

    .line 1312
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->startDownload()V

    .line 1320
    .end local v0    # "currentDataSubscription":I
    :cond_0
    :goto_0
    return-void

    .line 1313
    .restart local v0    # "currentDataSubscription":I
    :cond_1
    iget-boolean v2, p0, Lcom/android/mms/ui/MessageListItem;->mShowDateSwitch:Z

    if-eqz v2, :cond_0

    .line 1314
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v4, v4, Lcom/android/mms/ui/MessageItem;->mSubscription:I

    invoke-static {v2, v3, v0, v4, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1315
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1318
    .end local v0    # "currentDataSubscription":I
    .end local v1    # "msg":Landroid/os/Message;
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->startDownload()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 839
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MessageListItem;->sendMessage(Lcom/android/mms/ui/MessageItem;I)V

    .line 840
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 188
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 190
    const v1, 0x7f0a0055

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    .line 191
    const v1, 0x7f0a0056

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    .line 192
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 193
    .local v0, "isPopStyle":Z
    if-eqz v0, :cond_0

    .line 194
    const/high16 v1, 0x7f0a0000

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mTimeDivider:Landroid/view/View;

    .line 195
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mTimeDivider:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mTimeDivider:Landroid/view/View;

    const v2, 0x7f0a00a3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDateLable:Landroid/widget/TextView;

    .line 199
    :cond_0
    const v1, 0x7f0a0057

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mLockedIndicator:Landroid/widget/ImageView;

    .line 200
    const v1, 0x7f0a0058

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveredIndicator:Landroid/widget/ImageView;

    .line 201
    const v1, 0x7f0a0059

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDetailsIndicator:Landroid/widget/ImageView;

    .line 202
    const v1, 0x7f0a002d

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/QuickContactDivot;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mAvatar:Lcom/android/mms/ui/QuickContactDivot;

    .line 204
    const v1, 0x7f0a005a

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mLocatorView:Landroid/widget/TextView;

    .line 205
    return-void
.end method

.method public onMessageListItemClick()V
    .locals 6

    .prologue
    const/high16 v5, 0x1040000

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 853
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isOutgoingMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 856
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->recomposeFailedMessage()V

    .line 952
    :goto_0
    return-void

    .line 861
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getUrls()[Landroid/text/style/URLSpan;

    move-result-object v0

    .line 863
    array-length v1, v0

    if-nez v1, :cond_1

    .line 864
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MessageListItem;->sendMessage(Lcom/android/mms/ui/MessageItem;I)V

    goto :goto_0

    .line 865
    :cond_1
    array-length v1, v0

    if-ne v1, v4, :cond_3

    .line 866
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v1, :cond_2

    const-string v1, "Browser Information"

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "persist.env.mms.wappushdialog"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 869
    new-instance v1, Lcom/android/mms/ui/MessageListItem$8;

    invoke-direct {v1, p0, v0}, Lcom/android/mms/ui/MessageListItem$8;-><init>(Lcom/android/mms/ui/MessageListItem;[Landroid/text/style/URLSpan;)V

    .line 875
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v3, 0x7f0b018a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v3, 0x7f0b018b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 883
    :cond_2
    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/text/style/URLSpan;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 886
    :cond_3
    new-instance v1, Lcom/android/mms/ui/MessageListItem$9;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v3, 0x1090011

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/android/mms/ui/MessageListItem$9;-><init>(Lcom/android/mms/ui/MessageListItem;Landroid/content/Context;I[Landroid/text/style/URLSpan;)V

    .line 927
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 929
    new-instance v3, Lcom/android/mms/ui/MessageListItem$10;

    invoke-direct {v3, p0, v0}, Lcom/android/mms/ui/MessageListItem$10;-><init>(Lcom/android/mms/ui/MessageListItem;[Landroid/text/style/URLSpan;)V

    .line 939
    const v0, 0x7f0b0113

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 940
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 941
    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 943
    new-instance v0, Lcom/android/mms/ui/MessageListItem$11;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$11;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {v2, v5, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 950
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method public pauseAudio()V
    .locals 0

    .prologue
    .line 1162
    return-void
.end method

.method public pauseVideo()V
    .locals 0

    .prologue
    .line 1168
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mOtherAttachName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1149
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mOtherAttachName:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1151
    :cond_0
    return-void
.end method

.method public seekAudio(I)V
    .locals 0
    .param p1, "seekTo"    # I

    .prologue
    .line 1174
    return-void
.end method

.method public seekVideo(I)V
    .locals 0
    .param p1, "seekTo"    # I

    .prologue
    .line 1180
    return-void
.end method

.method public setAudio(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "audio"    # Landroid/net/Uri;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 675
    .local p3, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    return-void
.end method

.method public setImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 679
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/MessageListItem;->showMmsView(ZLjava/lang/String;)V

    .line 683
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 684
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    if-nez p2, :cond_0

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    :goto_1
    return-void

    .line 684
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 685
    :catch_0
    move-exception v0

    .line 686
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v1, "MessageListItem"

    const-string v2, "setImage: out of memory: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setImageRegionFit(Ljava/lang/String;)V
    .locals 0
    .param p1, "fit"    # Ljava/lang/String;

    .prologue
    .line 1097
    return-void
.end method

.method public setImageVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 1102
    return-void
.end method

.method public setMsgListItemHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    .line 276
    return-void
.end method

.method public setOtherAttach(Ljava/lang/String;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1210
    const-string v0, "Trace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setotherAttach name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1213
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1214
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1215
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/mms/ui/MessageListItem$14;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageListItem$14;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1223
    :goto_0
    const v0, 0x7f0a0067

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1224
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1225
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1226
    return-void

    .line 1220
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 1107
    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 1112
    return-void
.end method

.method public setVcard(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1244
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lcom/android/mms/ui/MessageListItem;->showMmsView(ZLjava/lang/String;)V

    .line 1247
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f02003d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1248
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1253
    :goto_0
    return-void

    .line 1249
    :catch_0
    move-exception v0

    .line 1251
    const-string v1, "MessageListItem"

    const-string v2, "setVcard: out of memory: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setVcardVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 1258
    return-void
.end method

.method public setVideo(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1116
    return-void
.end method

.method public setVideoThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 1120
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MessageListItem;->showMmsView(ZLjava/lang/String;)V

    .line 1124
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1125
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    if-nez p2, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1129
    :goto_1
    return-void

    .line 1125
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1126
    :catch_0
    move-exception v0

    .line 1127
    const-string v1, "MessageListItem"

    const-string v2, "setVideo: out of memory: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setVideoVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 1134
    return-void
.end method

.method showDateLable(ZJ)V
    .locals 4

    .prologue
    .line 1270
    .line 1271
    if-eqz p1, :cond_2

    .line 1273
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p2, p3}, Ljava/util/Date;-><init>(J)V

    .line 1274
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 1275
    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/Date;->getYear()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/Date;->getMonth()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v0

    invoke-virtual {v1}, Ljava/util/Date;->getDate()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1278
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b01de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1284
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDateLable:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1285
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTimeDivider:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1290
    :goto_1
    return-void

    .line 1279
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/mms/ui/MessageListItem;->isYerstoday(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1280
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b01df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1282
    :cond_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-M-d"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1287
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTimeDivider:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public startAudio()V
    .locals 0

    .prologue
    .line 665
    return-void
.end method

.method protected startDownload()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x0

    .line 433
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 434
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadProgressDialog:Landroid/app/ProgressDialog;

    .line 435
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 436
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 437
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/mms/ui/MessageListItem$5;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/MessageListItem$5;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 452
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 453
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 454
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 455
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 456
    const-string v1, "uri"

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 457
    const-string v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 459
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 461
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    const/16 v1, 0x7dc

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mCancelDownloadProgressDialog:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/MmsApp;->registerForBroadcastEvent(ILandroid/os/Handler;)V

    .line 462
    return-void
.end method

.method public startVideo()V
    .locals 0

    .prologue
    .line 670
    return-void
.end method

.method public stopAudio()V
    .locals 0

    .prologue
    .line 1139
    return-void
.end method

.method public stopVideo()V
    .locals 0

    .prologue
    .line 1144
    return-void
.end method

.method public unbind()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 254
    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    .line 255
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPresenter:Lcom/android/mms/ui/Presenter;

    if-eqz v0, :cond_2

    .line 266
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPresenter:Lcom/android/mms/ui/Presenter;

    invoke-virtual {v0}, Lcom/android/mms/ui/Presenter;->cancelBackgroundLoading()V

    .line 268
    :cond_2
    return-void
.end method
