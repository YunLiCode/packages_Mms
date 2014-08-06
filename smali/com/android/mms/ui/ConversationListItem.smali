.class public Lcom/android/mms/ui/ConversationListItem;
.super Landroid/widget/RelativeLayout;
.source "ConversationListItem.java"

# interfaces
.implements Landroid/widget/Checkable;
.implements Lcom/android/mms/data/Contact$UpdateListener;


# static fields
.field public static final STYLE_BOLD:Landroid/text/style/StyleSpan;

.field private static sDefaultContactImage:Landroid/graphics/drawable/Drawable;

.field private static sItemBackground:Landroid/graphics/drawable/Drawable;


# instance fields
.field private mAttachmentView:Landroid/view/View;

.field private mAvatarView:Landroid/widget/QuickContactBadge;

.field private mConversation:Lcom/android/mms/data/Conversation;

.field private mDateView:Landroid/widget/TextView;

.field private mErrorIndicator:Landroid/view/View;

.field private mFromView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mSubjectView:Landroid/widget/TextView;

.field private mUnreadView:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 74
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    sput-object v0, Lcom/android/mms/ui/ConversationListItem;->STYLE_BOLD:Landroid/text/style/StyleSpan;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mHandler:Landroid/os/Handler;

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mHandler:Landroid/os/Handler;

    .line 82
    sget-object v0, Lcom/android/mms/ui/ConversationListItem;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/ConversationListItem;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    .line 85
    :cond_0
    sget-object v0, Lcom/android/mms/ui/ConversationListItem;->sItemBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListItem;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/ConversationListItem;->sItemBackground:Landroid/graphics/drawable/Drawable;

    .line 88
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ConversationListItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ConversationListItem;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItem;->updateFromView()V

    return-void
.end method

.method private formatMessage()Ljava/lang/CharSequence;
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 117
    const/16 v2, 0x8

    .line 118
    .local v2, "color":I
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, "from":Ljava/lang/String;
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 122
    .local v1, "buf":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 123
    .local v0, "before":I
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v4

    if-le v4, v6, :cond_0

    .line 124
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0131

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v7}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 147
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->hasUnreadMessages()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 148
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200c7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v5, 0x11

    invoke-virtual {v1, v4, v8, v0, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 153
    :cond_1
    return-object v1
.end method

.method private formatSubject(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 9
    .param p1, "subject"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v8, 0x11

    const/4 v7, 0x0

    .line 348
    const v2, 0x1030046

    .line 349
    .local v2, "size":I
    const/16 v1, 0x8

    .line 351
    .local v1, "color":I
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 352
    .local v0, "buf":Landroid/text/SpannableStringBuilder;
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->hasDraft()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 353
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 354
    new-instance v3, Landroid/text/style/TextAppearanceSpan;

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    const v5, 0x1030046

    const/16 v6, 0x8

    invoke-direct {v3, v4, v5, v6}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v0, v3, v7, v4, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 356
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200c7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v0, v3, v7, v4, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 360
    :cond_0
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 361
    return-object v0
.end method

.method private generatorUnreadCountIcon(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 14
    .param p1, "icon"    # Landroid/graphics/Bitmap;
    .param p2, "count"    # I

    .prologue
    .line 322
    if-nez p1, :cond_0

    .line 323
    const/4 v1, 0x0

    .line 343
    :goto_0
    return-object v1

    .line 324
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 325
    .local v1, "contactIcon":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 327
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 328
    .local v5, "iconPaint":Landroid/graphics/Paint;
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setDither(Z)V

    .line 329
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 330
    new-instance v8, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-direct {v8, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 331
    .local v8, "src":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-direct {v3, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 332
    .local v3, "dst":Landroid/graphics/Rect;
    invoke-virtual {v0, p1, v8, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 334
    new-instance v2, Landroid/graphics/Paint;

    const/16 v10, 0x101

    invoke-direct {v2, v10}, Landroid/graphics/Paint;-><init>(I)V

    .line 335
    .local v2, "countPaint":Landroid/graphics/Paint;
    const/4 v10, -0x1

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 336
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListItem;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v7, v10, Landroid/util/DisplayMetrics;->density:F

    .line 337
    .local v7, "scale":F
    const/high16 v10, 0x41400000

    mul-float/2addr v10, v7

    const/high16 v11, 0x3f000000

    add-float v4, v10, v11

    .line 338
    .local v4, "fontsize":F
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 339
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    .line 341
    .local v9, "textWidth":F
    const/high16 v10, 0x40400000

    mul-float/2addr v10, v7

    const/high16 v11, 0x3f000000

    add-float v6, v10, v11

    .line 342
    .local v6, "offset":F
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v11, v9

    const/high16 v12, 0x40000000

    div-float/2addr v11, v12

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    add-float/2addr v12, v6

    const/high16 v13, 0x40000000

    add-float/2addr v12, v13

    invoke-virtual {v0, v10, v11, v12, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method private getResIcon(I)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 317
    .local v1, "is":Ljava/io/InputStream;
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 318
    .local v0, "bmp":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method private updateAvatarView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 158
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 159
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    .line 161
    .local v1, "contact":Lcom/android/mms/data/Contact;
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/ui/MessageUtils;->isWappush(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020043

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 167
    .local v0, "avatarDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 168
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 183
    .end local v1    # "contact":Lcom/android/mms/data/Contact;
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2, v0}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2, v5}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 185
    return-void

    .line 164
    .end local v0    # "avatarDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "contact":Lcom/android/mms/data/Contact;
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/mms/ui/ConversationListItem;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0    # "avatarDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 172
    :cond_1
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 173
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    goto :goto_1

    .line 175
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto :goto_1

    .line 180
    .end local v0    # "avatarDrawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "contact":Lcom/android/mms/data/Contact;
    :cond_3
    sget-object v0, Lcom/android/mms/ui/ConversationListItem;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    .line 181
    .restart local v0    # "avatarDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto :goto_1
.end method

.method private updateBackground()V
    .locals 3

    .prologue
    .line 272
    const/4 v1, 0x0

    .line 274
    .local v1, "backgroundId":I
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    const v1, 0x7f02008b

    .line 276
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 277
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 293
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-void

    .line 280
    :cond_0
    sget-object v2, Lcom/android/mms/ui/ConversationListItem;->sItemBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationListItem;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateFromView()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItem;->formatMessage()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItem;->updateAvatarView()V

    .line 190
    return-void
.end method


# virtual methods
.method public final bind(Landroid/content/Context;Lcom/android/mms/data/Conversation;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversation"    # Lcom/android/mms/data/Conversation;

    .prologue
    .line 206
    iput-object p2, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    .line 208
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItem;->updateBackground()V

    .line 210
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mAttachmentView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 211
    .local v0, "attachmentLayout":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p2}, Lcom/android/mms/data/Conversation;->hasError()Z

    move-result v3

    .line 215
    .local v3, "hasError":Z
    if-eqz v3, :cond_2

    .line 216
    const/4 v8, 0x0

    const v9, 0x7f0a0031

    invoke-virtual {v0, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 221
    :goto_0
    invoke-virtual {p2}, Lcom/android/mms/data/Conversation;->hasAttachment()Z

    move-result v2

    .line 222
    .local v2, "hasAttachment":Z
    iget-object v9, p0, Lcom/android/mms/ui/ConversationListItem;->mAttachmentView:Landroid/view/View;

    if-eqz v2, :cond_3

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 225
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/mms/data/Conversation;->getDate()J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItem;->formatMessage()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    invoke-virtual {p2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 233
    .local v1, "contacts":Lcom/android/mms/data/ContactList;
    const-string v8, "Mms:contact"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 234
    const-string v8, "ConversationListItem"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bind: contacts.addListeners "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 239
    invoke-static {}, Lcom/android/mms/util/SmileyParser;->getInstance()Lcom/android/mms/util/SmileyParser;

    move-result-object v5

    .line 240
    .local v5, "parser":Lcom/android/mms/util/SmileyParser;
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/mms/data/Conversation;->getSnippet()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/mms/ui/ConversationListItem;->formatSubject(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 243
    .local v6, "subjectLayout":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v9, 0x0

    if-eqz v2, :cond_4

    const v8, 0x7f0a0032

    :goto_2
    invoke-virtual {v6, v9, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 247
    invoke-virtual {p2}, Lcom/android/mms/data/Conversation;->hasUnreadMessages()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {p2}, Lcom/android/mms/data/Conversation;->getUnreadMessageCount()I

    move-result v8

    if-lez v8, :cond_6

    :cond_1
    const/4 v4, 0x1

    .line 248
    .local v4, "isUnRead":Z
    :goto_3
    iget-object v9, p0, Lcom/android/mms/ui/ConversationListItem;->mErrorIndicator:Landroid/view/View;

    if-eqz v3, :cond_7

    const/4 v8, 0x0

    :goto_4
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 250
    if-eqz v4, :cond_9

    .line 257
    const v8, 0x7f0200b6

    invoke-direct {p0, v8}, Lcom/android/mms/ui/ConversationListItem;->getResIcon(I)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {p2}, Lcom/android/mms/data/Conversation;->getUnreadMessageCount()I

    move-result v9

    invoke-direct {p0, v8, v9}, Lcom/android/mms/ui/ConversationListItem;->generatorUnreadCountIcon(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 258
    .local v7, "unreadicon":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_8

    .line 259
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadView:Landroid/widget/ImageView;

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 260
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadView:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 268
    .end local v7    # "unreadicon":Landroid/graphics/Bitmap;
    :goto_5
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItem;->updateAvatarView()V

    .line 269
    return-void

    .line 218
    .end local v1    # "contacts":Lcom/android/mms/data/ContactList;
    .end local v2    # "hasAttachment":Z
    .end local v4    # "isUnRead":Z
    .end local v5    # "parser":Lcom/android/mms/util/SmileyParser;
    .end local v6    # "subjectLayout":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    const/4 v8, 0x0

    const v9, 0x7f0a0030

    invoke-virtual {v0, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_0

    .line 222
    .restart local v2    # "hasAttachment":Z
    :cond_3
    const/16 v8, 0x8

    goto/16 :goto_1

    .line 243
    .restart local v1    # "contacts":Lcom/android/mms/data/ContactList;
    .restart local v5    # "parser":Lcom/android/mms/util/SmileyParser;
    .restart local v6    # "subjectLayout":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    if-eqz v3, :cond_5

    const v8, 0x7f0a0031

    goto :goto_2

    :cond_5
    const v8, 0x7f0a0030

    goto :goto_2

    .line 247
    :cond_6
    const/4 v4, 0x0

    goto :goto_3

    .line 248
    .restart local v4    # "isUnRead":Z
    :cond_7
    const/16 v8, 0x8

    goto :goto_4

    .line 262
    .restart local v7    # "unreadicon":Landroid/graphics/Bitmap;
    :cond_8
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadView:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 265
    .end local v7    # "unreadicon":Landroid/graphics/Bitmap;
    :cond_9
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadView:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 94
    const v0, 0x7f0a002f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    .line 95
    const v0, 0x7f0a0014

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    .line 97
    const v0, 0x7f0a0030

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    .line 98
    const v0, 0x7f0a0032

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAttachmentView:Landroid/view/View;

    .line 99
    const v0, 0x7f0a0031

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mErrorIndicator:Landroid/view/View;

    .line 100
    const v0, 0x7f0a002d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    .line 101
    const v0, 0x7f0a002e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadView:Landroid/widget/ImageView;

    .line 102
    return-void
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 3
    .param p1, "updated"    # Lcom/android/mms/data/Contact;

    .prologue
    .line 193
    const-string v0, "Mms:contact"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    const-string v0, "ConversationListItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " contact: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/ui/ConversationListItem$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationListItem$1;-><init>(Lcom/android/mms/ui/ConversationListItem;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 201
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, p1}, Lcom/android/mms/data/Conversation;->setIsChecked(Z)V

    .line 305
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItem;->updateBackground()V

    .line 306
    return-void
.end method

.method public toggle()V
    .locals 2

    .prologue
    .line 313
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/mms/data/Conversation;->setIsChecked(Z)V

    .line 314
    return-void

    .line 313
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final unbind()V
    .locals 3

    .prologue
    .line 296
    const-string v0, "Mms:contact"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    const-string v0, "ConversationListItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unbind: contacts.removeListeners "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_0
    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 301
    return-void
.end method
