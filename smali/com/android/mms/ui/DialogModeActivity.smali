.class public Lcom/android/mms/ui/DialogModeActivity;
.super Landroid/app/Activity;
.source "DialogModeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/mms/data/WorkingMessage$MessageStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/DialogModeActivity$TextLengthFilter;
    }
.end annotation


# static fields
.field private static final projection:[Ljava/lang/String;


# instance fields
.field private mCloseButton:Landroid/widget/Button;

.field private mContactImage:Landroid/widget/ImageView;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurUri:Landroid/net/Uri;

.field private mCurUriIdx:I

.field private mCursor:Landroid/database/Cursor;

.field private mDeleteButton:Landroid/widget/Button;

.field private mLeftArrow:Landroid/widget/ImageButton;

.field private mMsgNumText:Landroid/widget/TextView;

.field private mParser:Lcom/android/mms/util/SmileyParser;

.field private mReadedUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mRecipient:Ljava/lang/String;

.field private mRecipientView:Landroid/widget/TextView;

.field private mRightArrow:Landroid/widget/ImageButton;

.field private mSendButton:Landroid/widget/ImageButton;

.field private mSendingMessage:Z

.field private mSmsContent:Ljava/lang/String;

.field private mSmsContentView:Landroid/widget/TextView;

.field private mSmsDate:Ljava/lang/String;

.field private mSmsDateView:Landroid/widget/TextView;

.field private mSmsEditor:Landroid/widget/EditText;

.field private mSubid:I

.field private mTextCounter:Landroid/widget/TextView;

.field private final mTextEditorWatcher:Landroid/text/TextWatcher;

.field private mUri:Landroid/net/Uri;

.field private mUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mWaitingForSendMessage:Z

.field private mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

.field private sDefaultContactImage:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 71
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sub_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/DialogModeActivity;->projection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    iput-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    .line 70
    iput-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mUri:Landroid/net/Uri;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mSmsContent:Ljava/lang/String;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mRecipient:Ljava/lang/String;

    .line 83
    invoke-static {}, Lcom/android/mms/util/SmileyParser;->getInstance()Lcom/android/mms/util/SmileyParser;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mParser:Lcom/android/mms/util/SmileyParser;

    .line 86
    iput v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mReadedUris:Ljava/util/ArrayList;

    .line 94
    iput-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 97
    iput v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mSubid:I

    .line 270
    new-instance v0, Lcom/android/mms/ui/DialogModeActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/DialogModeActivity$1;-><init>(Lcom/android/mms/ui/DialogModeActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mTextEditorWatcher:Landroid/text/TextWatcher;

    .line 658
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/DialogModeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/DialogModeActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->updateSendButtonState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/DialogModeActivity;Ljava/lang/CharSequence;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/DialogModeActivity;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/DialogModeActivity;->updateCounter(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method private addNewUri(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 452
    if-nez p1, :cond_0

    .line 459
    :goto_0
    return-void

    .line 456
    :cond_0
    const-string v2, "sms_uri"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, "newString":Ljava/lang/String;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 458
    .local v1, "newUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private getContactImage()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 372
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    if-nez v3, :cond_0

    .line 373
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    .line 390
    :goto_0
    return-object v3

    .line 376
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 378
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 379
    .local v1, "recipientIds":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-static {v1, v5, v3}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v2

    .line 381
    .local v2, "recipients":Lcom/android/mms/data/ContactList;
    invoke-virtual {v2, v5}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 382
    .local v0, "contact":Lcom/android/mms/data/Contact;
    if-nez v0, :cond_1

    .line 383
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 386
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/DialogModeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3, v4}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    .line 390
    .end local v0    # "contact":Lcom/android/mms/data/Contact;
    .end local v1    # "recipientIds":Ljava/lang/String;
    .end local v2    # "recipients":Lcom/android/mms/data/ContactList;
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private getConversation()Lcom/android/mms/data/Conversation;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 746
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->getThreadId()J

    move-result-wide v1

    .line 747
    .local v1, "tid":J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-gez v4, :cond_1

    move-object v0, v3

    .line 754
    :cond_0
    :goto_0
    return-object v0

    .line 750
    :cond_1
    const/4 v4, 0x1

    invoke-static {p0, v1, v2, v4}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 751
    .local v0, "conv":Lcom/android/mms/data/Conversation;
    if-nez v0, :cond_0

    move-object v0, v3

    .line 752
    goto :goto_0
.end method

.method private getHomes()Ljava/util/List;
    .locals 7
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
    .line 804
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 805
    .local v2, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/mms/ui/DialogModeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 806
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 807
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 808
    const/high16 v6, 0x10000

    invoke-virtual {v3, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 811
    .local v4, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 812
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 814
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_0
    return-object v2
.end method

.method private getMultiSimName(I)Ljava/lang/String;
    .locals 2
    .param p1, "subscription"    # I

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/android/mms/ui/DialogModeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->MULTI_SIM_NAME:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSenderString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 600
    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    if-nez v2, :cond_0

    .line 601
    const-string v2, ""

    .line 613
    :goto_0
    return-object v2

    .line 604
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 606
    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 608
    .local v0, "recipientIds":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 610
    .local v1, "recipients":Lcom/android/mms/data/ContactList;
    const-string v2, ", "

    invoke-virtual {v1, v2}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 613
    .end local v0    # "recipientIds":Ljava/lang/String;
    .end local v1    # "recipients":Lcom/android/mms/data/ContactList;
    :cond_1
    const-string v2, ""

    goto :goto_0
.end method

.method private getSmsContent()Ljava/lang/String;
    .locals 3

    .prologue
    .line 618
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 619
    const-string v0, ""

    .line 626
    :goto_0
    return-object v0

    .line 622
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 623
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 624
    .local v0, "content":Ljava/lang/String;
    goto :goto_0

    .line 626
    .end local v0    # "content":Ljava/lang/String;
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private getThreadId()J
    .locals 4

    .prologue
    const-wide/16 v0, -0x1

    .line 395
    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    if-nez v2, :cond_1

    .line 403
    :cond_0
    :goto_0
    return-wide v0

    .line 399
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 400
    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 401
    .local v0, "tid":J
    goto :goto_0
.end method

.method private initView()V
    .locals 7

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/android/mms/ui/DialogModeActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 143
    .local v0, "display":Landroid/view/Display;
    const v2, 0x7f04001c

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/DialogModeActivity;->setContentView(I)V

    .line 144
    invoke-virtual {p0}, Lcom/android/mms/ui/DialogModeActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 145
    .local v1, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x5f

    div-int/lit8 v2, v2, 0x64

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 146
    invoke-virtual {p0}, Lcom/android/mms/ui/DialogModeActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 148
    const v2, 0x7f0a0068

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/DialogModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mContactImage:Landroid/widget/ImageView;

    .line 149
    invoke-virtual {p0}, Lcom/android/mms/ui/DialogModeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020040

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    .line 151
    const v2, 0x7f0a0069

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/DialogModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mRecipientView:Landroid/widget/TextView;

    .line 152
    const v2, 0x7f0a006d

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/DialogModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mSmsContentView:Landroid/widget/TextView;

    .line 153
    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mSmsContentView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 156
    const v2, 0x7f0a0070

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/DialogModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mSmsEditor:Landroid/widget/EditText;

    .line 157
    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mSmsEditor:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mTextEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 158
    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mSmsEditor:Landroid/widget/EditText;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    const/4 v4, 0x0

    new-instance v5, Lcom/android/mms/ui/DialogModeActivity$TextLengthFilter;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v6

    invoke-direct {v5, p0, v6}, Lcom/android/mms/ui/DialogModeActivity$TextLengthFilter;-><init>(Lcom/android/mms/ui/DialogModeActivity;I)V

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 160
    const v2, 0x7f0a0074

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/DialogModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mCloseButton:Landroid/widget/Button;

    .line 161
    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mCloseButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    const v2, 0x7f0a0075

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/DialogModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mDeleteButton:Landroid/widget/Button;

    .line 163
    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    const v2, 0x7f0a0071

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/DialogModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mSendButton:Landroid/widget/ImageButton;

    .line 165
    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mSendButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    const v2, 0x7f0a0024

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/DialogModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mTextCounter:Landroid/widget/TextView;

    .line 167
    const v2, 0x7f0a006b

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/DialogModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mLeftArrow:Landroid/widget/ImageButton;

    .line 168
    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mLeftArrow:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    const v2, 0x7f0a006e

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/DialogModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mRightArrow:Landroid/widget/ImageButton;

    .line 170
    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mRightArrow:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    const v2, 0x7f0a006a

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/DialogModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mMsgNumText:Landroid/widget/TextView;

    .line 172
    const v2, 0x7f0a0056

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/DialogModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mSmsDateView:Landroid/widget/TextView;

    .line 173
    return-void
.end method

.method private loadCurMsg()Landroid/database/Cursor;
    .locals 11

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 463
    iget v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 464
    iput-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    .line 465
    iput-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    .line 466
    iput v7, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    .line 467
    invoke-virtual {p0}, Lcom/android/mms/ui/DialogModeActivity;->finish()V

    .line 514
    :goto_0
    return-object v3

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    .line 472
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    if-nez v0, :cond_2

    .line 474
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 475
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 476
    iput-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    .line 478
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/DialogModeActivity;->finish()V

    goto :goto_0

    .line 484
    :cond_2
    const/4 v0, 0x7

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v7

    const-string v0, "thread_id"

    aput-object v0, v2, v8

    const/4 v0, 0x2

    const-string v1, "address"

    aput-object v1, v2, v0

    const-string v0, "date"

    aput-object v0, v2, v9

    const/4 v0, 0x4

    const-string v1, "read"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "body"

    aput-object v1, v2, v0

    const-string v0, "sub_id"

    aput-object v0, v2, v10

    .line 486
    .local v2, "projection":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 487
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 489
    :cond_3
    const-string v0, "DialogModeActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadCurMsg():mCurUri = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-virtual {p0}, Lcom/android/mms/ui/DialogModeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 492
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_4

    .line 493
    iput-object v3, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    .line 494
    invoke-virtual {p0}, Lcom/android/mms/ui/DialogModeActivity;->finish()V

    goto :goto_0

    .line 498
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_6

    .line 499
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 500
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 501
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 502
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->loadCurMsg()Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_0

    .line 504
    :cond_5
    invoke-virtual {p0}, Lcom/android/mms/ui/DialogModeActivity;->finish()V

    goto/16 :goto_0

    .line 508
    :cond_6
    iput-object v6, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    .line 509
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 510
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mSubid:I

    .line 511
    const v0, 0x7f0b0018

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DialogModeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {p0, v3, v4}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mSmsDate:Ljava/lang/String;

    move-object v3, v6

    .line 514
    goto/16 :goto_0
.end method

.method private markAsRead(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 437
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/DialogModeActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/DialogModeActivity$3;-><init>(Lcom/android/mms/ui/DialogModeActivity;Landroid/net/Uri;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 449
    return-void
.end method

.method private markAsSeen(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 418
    .local p1, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 419
    .local v0, "uriArray":[Ljava/lang/Object;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/mms/ui/DialogModeActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/ui/DialogModeActivity$2;-><init>(Lcom/android/mms/ui/DialogModeActivity;[Ljava/lang/Object;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 433
    return-void
.end method

.method private openThread(J)V
    .locals 2
    .param p1, "threadId"    # J

    .prologue
    .line 409
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 415
    :goto_0
    return-void

    .line 412
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DialogModeActivity;->startActivity(Landroid/content/Intent;)V

    .line 414
    invoke-virtual {p0}, Lcom/android/mms/ui/DialogModeActivity;->finish()V

    goto :goto_0
.end method

.method private removeCurMsg()V
    .locals 2

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    .line 520
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 539
    :goto_0
    return-void

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 527
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 529
    invoke-virtual {p0}, Lcom/android/mms/ui/DialogModeActivity;->finish()V

    goto :goto_0

    .line 533
    :cond_1
    iget v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    if-eqz v0, :cond_2

    .line 534
    iget v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    .line 537
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->loadCurMsg()Landroid/database/Cursor;

    .line 538
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->setDialogView()V

    goto :goto_0
.end method

.method private resetMessage()V
    .locals 2

    .prologue
    .line 680
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mSmsEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mTextEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 683
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mSmsEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/method/TextKeyListener;->clear(Landroid/text/Editable;)V

    .line 685
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_0

    .line 686
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 689
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->updateSendButtonState()V

    .line 690
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mSmsEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mTextEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 691
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mSmsEditor:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 692
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mSendingMessage:Z

    .line 693
    return-void
.end method

.method private sendMessage(Z)V
    .locals 3
    .param p1, "bCheckEcmMode"    # Z

    .prologue
    const/4 v2, 0x1

    .line 698
    invoke-static {p0}, Lcom/android/mms/data/WorkingMessage;->createEmpty(Lcom/android/mms/ui/DialogModeActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 700
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 701
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mSmsEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 704
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mSubid:I

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setCurrentConvSub(I)V

    .line 705
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->send(Ljava/lang/String;)V

    .line 706
    iput-boolean v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mSendingMessage:Z

    .line 707
    iput-boolean v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mWaitingForSendMessage:Z

    .line 708
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    .line 709
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/DialogModeActivity;->markAsRead(Landroid/net/Uri;)V

    .line 710
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->removeCurMsg()V

    .line 711
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->resetMessage()V

    .line 714
    return-void
.end method

.method private setDialogView()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    .line 187
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 188
    .local v0, "msgNum":I
    const/4 v4, 0x1

    if-gt v0, v4, :cond_1

    .line 189
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mLeftArrow:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 190
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mRightArrow:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 191
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mMsgNumText:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    :goto_0
    const-string v3, ""

    .line 212
    .local v3, "simName":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 213
    iget v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mSubid:I

    invoke-direct {p0, v4}, Lcom/android/mms/ui/DialogModeActivity;->getMultiSimName(I)Ljava/lang/String;

    move-result-object v3

    .line 214
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 215
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 219
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mSmsDateView:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/DialogModeActivity;->mSmsDate:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mRecipientView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->getSenderString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mSmsContentView:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setScrollY(I)V

    .line 222
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mSmsContentView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/mms/ui/DialogModeActivity;->mParser:Lcom/android/mms/util/SmileyParser;

    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->getSmsContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mContactImage:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->getContactImage()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 224
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->updateSendButtonState()V

    .line 227
    return-void

    .line 193
    .end local v3    # "simName":Ljava/lang/String;
    :cond_1
    iget v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    if-eqz v4, :cond_2

    .line 194
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mLeftArrow:Landroid/widget/ImageButton;

    invoke-virtual {v4, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 198
    :goto_1
    iget v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    iget-object v5, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq v4, v5, :cond_3

    .line 199
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mRightArrow:Landroid/widget/ImageButton;

    invoke-virtual {v4, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 203
    :goto_2
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mMsgNumText:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    .local v2, "msgNumStrBuilder":Ljava/lang/StringBuilder;
    iget v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    const/16 v4, 0x2f

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, "msgNumStr":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mMsgNumText:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 196
    .end local v1    # "msgNumStr":Ljava/lang/String;
    .end local v2    # "msgNumStrBuilder":Ljava/lang/StringBuilder;
    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mLeftArrow:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    .line 201
    :cond_3
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mRightArrow:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_2
.end method

.method private updateCounter(Ljava/lang/CharSequence;III)V
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v4, 0x0

    .line 361
    const/4 v2, 0x0

    .line 362
    .local v2, "params":[I
    invoke-static {p1, v4}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v2

    .line 363
    aget v1, v2, v4

    .line 364
    .local v1, "msgCount":I
    const/4 v4, 0x2

    aget v3, v2, v4

    .line 365
    .local v3, "remainingInCurrentMessage":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, "counterText":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/mms/ui/DialogModeActivity;->mTextCounter:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    return-void
.end method

.method private updateSendButtonState()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 346
    const/4 v1, 0x1

    .line 348
    .local v1, "enable":Z
    iget-object v5, p0, Lcom/android/mms/ui/DialogModeActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 350
    .local v0, "airplaneModes":I
    if-ne v0, v3, :cond_0

    move v2, v3

    .line 351
    .local v2, "isAirplaneMode":Z
    :goto_0
    if-eqz v1, :cond_1

    if-nez v2, :cond_1

    invoke-static {p0, v4}, Lcom/android/mms/ui/MessageUtils;->isSimActivated(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_1

    move v1, v3

    .line 353
    :goto_1
    iget-object v6, p0, Lcom/android/mms/ui/DialogModeActivity;->mSendButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_2

    iget-object v5, p0, Lcom/android/mms/ui/DialogModeActivity;->mSmsEditor:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    move v5, v3

    :goto_2
    invoke-virtual {v6, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 354
    iget-object v5, p0, Lcom/android/mms/ui/DialogModeActivity;->mSendButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_3

    iget-object v6, p0, Lcom/android/mms/ui/DialogModeActivity;->mSmsEditor:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    :goto_3
    invoke-virtual {v5, v3}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 356
    return-void

    .end local v2    # "isAirplaneMode":Z
    :cond_0
    move v2, v4

    .line 350
    goto :goto_0

    .restart local v2    # "isAirplaneMode":Z
    :cond_1
    move v1, v4

    .line 351
    goto :goto_1

    :cond_2
    move v5, v4

    .line 353
    goto :goto_2

    :cond_3
    move v3, v4

    .line 354
    goto :goto_3
.end method


# virtual methods
.method public isHome()Z
    .locals 13

    .prologue
    const/4 v11, 0x1

    const/4 v8, 0x0

    .line 758
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->getHomes()Ljava/util/List;

    move-result-object v3

    .line 760
    .local v3, "homePackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v12, "activity"

    invoke-virtual {p0, v12}, Lcom/android/mms/ui/DialogModeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 761
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/4 v12, 0x2

    invoke-virtual {v0, v12}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v9

    .line 763
    .local v9, "rti":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    .line 764
    .local v10, "rtiSize":I
    if-gtz v10, :cond_1

    .line 800
    :cond_0
    :goto_0
    return v8

    .line 766
    :cond_1
    if-ne v10, v11, :cond_2

    .line 768
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 769
    .local v4, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v12, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 770
    .local v6, "packageName0":Ljava/lang/String;
    iget-object v12, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 771
    .local v1, "className0":Ljava/lang/String;
    iget v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->numActivities:I

    .line 773
    .local v5, "num0":I
    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    move v8, v11

    .line 774
    goto :goto_0

    .line 780
    .end local v1    # "className0":Ljava/lang/String;
    .end local v4    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v5    # "num0":I
    .end local v6    # "packageName0":Ljava/lang/String;
    :cond_2
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 781
    .restart local v4    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v12, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 782
    .restart local v6    # "packageName0":Ljava/lang/String;
    iget-object v12, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 784
    .restart local v1    # "className0":Ljava/lang/String;
    iget v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->numActivities:I

    .line 785
    .restart local v5    # "num0":I
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 786
    .restart local v4    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v12, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 787
    .local v7, "packageName1":Ljava/lang/String;
    iget-object v12, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 791
    .local v2, "className1":Ljava/lang/String;
    invoke-interface {v3, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    .line 792
    .local v8, "ret":Z
    if-eqz v8, :cond_0

    .line 793
    const-string v12, "com.android.mms.ui.DialogModeActivity"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    if-ne v5, v11, :cond_3

    .line 795
    const/4 v8, 0x1

    goto :goto_0

    .line 797
    :cond_3
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public onAttachmentChanged()V
    .locals 0

    .prologue
    .line 724
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 235
    const-string v0, "DialogModeActivity"

    const-string v1, "Onclick"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mSmsContentView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->getThreadId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/DialogModeActivity;->openThread(J)V

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mSendButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 240
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/DialogModeActivity;->sendMessage(Z)V

    .line 241
    const-string v0, "DialogModeActivity"

    const-string v1, "sendSMS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 242
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mCloseButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 244
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 245
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    .line 251
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/DialogModeActivity;->markAsSeen(Ljava/util/ArrayList;)V

    .line 253
    invoke-virtual {p0}, Lcom/android/mms/ui/DialogModeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    .line 254
    invoke-virtual {p0}, Lcom/android/mms/ui/DialogModeActivity;->finish()V

    goto :goto_0

    .line 255
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mDeleteButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_5

    .line 257
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/DialogModeActivity;->markAsRead(Landroid/net/Uri;)V

    .line 258
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->getThreadId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/DialogModeActivity;->openThread(J)V

    goto :goto_0

    .line 262
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mLeftArrow:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_6

    .line 263
    invoke-virtual {p0}, Lcom/android/mms/ui/DialogModeActivity;->onSlideToPrev()V

    goto :goto_0

    .line 264
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mRightArrow:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/android/mms/ui/DialogModeActivity;->onSlideToNext()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    if-eqz p1, :cond_0

    .line 105
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    const-string v0, "uris"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    .line 107
    const-string v0, "cururiidx"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    .line 108
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 113
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DialogModeActivity;->setFinishOnTouchOutside(Z)V

    .line 114
    invoke-virtual {p0}, Lcom/android/mms/ui/DialogModeActivity;->isHome()Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    const-string v0, "DialogModeActivity"

    const-string v1, "not at Home, just finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p0}, Lcom/android/mms/ui/DialogModeActivity;->finish()V

    .line 130
    :goto_0
    return-void

    .line 119
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/DialogModeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 120
    invoke-virtual {p0}, Lcom/android/mms/ui/DialogModeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/DialogModeActivity;->addNewUri(Landroid/content/Intent;)V

    .line 121
    const-string v0, "DialogModeActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCursor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->loadCurMsg()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_2

    .line 124
    const-string v0, "DialogModeActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadCurMsg() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->loadCurMsg()Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 127
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->initView()V

    .line 128
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->setDialogView()V

    .line 129
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->resetMessage()V

    goto :goto_0
.end method

.method public onMaxPendingMessagesReached()V
    .locals 0

    .prologue
    .line 738
    return-void
.end method

.method public onMessageSent()V
    .locals 0

    .prologue
    .line 733
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 178
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 179
    invoke-direct {p0, p1}, Lcom/android/mms/ui/DialogModeActivity;->addNewUri(Landroid/content/Intent;)V

    .line 180
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    .line 181
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->loadCurMsg()Landroid/database/Cursor;

    .line 182
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->initView()V

    .line 183
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->setDialogView()V

    .line 184
    return-void
.end method

.method public onPreMessageSent()V
    .locals 0

    .prologue
    .line 729
    return-void
.end method

.method public onProtocolChanged(Z)V
    .locals 0
    .param p1, "mms"    # Z

    .prologue
    .line 719
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 136
    const-string v0, "uris"

    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 137
    const-string v0, "cururiidx"

    iget v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 138
    return-void
.end method

.method public onSlideToNext()V
    .locals 3

    .prologue
    .line 582
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 584
    .local v0, "msgNum":I
    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 596
    :cond_0
    :goto_0
    return-void

    .line 587
    :cond_1
    iget v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    add-int/lit8 v2, v0, -0x1

    if-eq v1, v2, :cond_0

    .line 590
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mReadedUris:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 591
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mReadedUris:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    :cond_2
    iget v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    .line 594
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->loadCurMsg()Landroid/database/Cursor;

    .line 595
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->setDialogView()V

    goto :goto_0
.end method

.method public onSlideToPrev()V
    .locals 3

    .prologue
    .line 565
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 567
    .local v0, "msgNum":I
    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 579
    :cond_0
    :goto_0
    return-void

    .line 570
    :cond_1
    iget v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    if-eqz v1, :cond_0

    .line 573
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mReadedUris:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 574
    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mReadedUris:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    :cond_2
    iget v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/mms/ui/DialogModeActivity;->mCurUriIdx:I

    .line 577
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->loadCurMsg()Landroid/database/Cursor;

    .line 578
    invoke-direct {p0}, Lcom/android/mms/ui/DialogModeActivity;->setDialogView()V

    goto :goto_0
.end method
