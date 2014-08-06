.class public Lcom/android/mms/ui/ComposeMessageActivity;
.super Landroid/app/Activity;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/mms/data/Contact$UpdateListener;
.implements Lcom/android/mms/data/WorkingMessage$MessageStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ComposeMessageActivity$MmsLengthFilter;,
        Lcom/android/mms/ui/ComposeMessageActivity$MessageListListener;,
        Lcom/android/mms/ui/ComposeMessageActivity$DataResetAsyncTask;,
        Lcom/android/mms/ui/ComposeMessageActivity$DataSwitchAsyncTask;,
        Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;,
        Lcom/android/mms/ui/ComposeMessageActivity$TemplateSelectListener;,
        Lcom/android/mms/ui/ComposeMessageActivity$CopyToSimThread;,
        Lcom/android/mms/ui/ComposeMessageActivity$CopyToSimSelectListener;,
        Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;,
        Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;,
        Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;,
        Lcom/android/mms/ui/ComposeMessageActivity$SendIgnoreInvalidRecipientListener;,
        Lcom/android/mms/ui/ComposeMessageActivity$DiscardDraftListener;,
        Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;
    }
.end annotation


# static fields
.field private static final mAudioUri:Ljava/lang/String;

.field private static final mImageUri:Ljava/lang/String;

.field private static final mVideoUri:Ljava/lang/String;

.field private static sEmptyContactList:Lcom/android/mms/data/ContactList;

.field public static subSelected:I


# instance fields
.field private CopyToSimWithToastHandler:Landroid/os/Handler;

.field private alreadyMaxSubject:Z

.field private attachmentDlg:Landroid/app/AlertDialog;

.field private isLocked:Z

.field private mAddAttachmentHandler:Landroid/os/Handler;

.field private mAddContactIntent:Landroid/content/Intent;

.field private final mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mAllButton:Landroid/widget/Button;

.field private mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

.field private mAttachFileUri:Landroid/net/Uri;

.field private mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

.field private final mAttachmentEditorHandler:Landroid/os/Handler;

.field private mAttachmentEditorScrollView:Landroid/view/View;

.field private mAttachmentTypeSelectorAdapter:Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;

.field private mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

.field private mBottomPanel:Landroid/view/View;

.field private mCallLogButton:Landroid/widget/Button;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mConversation:Lcom/android/mms/data/Conversation;

.field private mCurrentDataSubscription:I

.field private mDataResetTask:Lcom/android/mms/ui/ComposeMessageActivity$DataResetAsyncTask;

.field private final mDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

.field private final mDataStateReceiver:Landroid/content/BroadcastReceiver;

.field private mDataSwitchHandler:Landroid/os/Handler;

.field private mDataSwitchTask:Lcom/android/mms/ui/ComposeMessageActivity$DataSwitchAsyncTask;

.field private mDebugRecipients:Ljava/lang/String;

.field private mEditMessageItem:Lcom/android/mms/ui/MessageItem;

.field private mExistsRecipientsCount:I

.field private mGroupButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private final mHttpProgressFilter:Landroid/content/IntentFilter;

.field private final mHttpProgressReceiver:Landroid/content/BroadcastReceiver;

.field private mInvalidRecipientDialog:Landroid/app/AlertDialog;

.field private mIsAttachmentErrorOnSend:Z

.field private mIsAudioPlayerActivityRunning:Z

.field private mIsDataConnecting:Z

.field private mIsDataSwitching:Z

.field private mIsKeyboardOpen:Z

.field private mIsLandscape:Z

.field private mIsPickingContact:Z

.field private mIsProcessPickedRecipients:Z

.field private mIsReceiveMode:Z

.field private mIsRunning:Z

.field private mIsWappush:Z

.field private mLastMessageId:J

.field private mLastRecipientCount:I

.field private mLastSmoothScrollPosition:I

.field private final mMediaStateReceiver:Landroid/content/BroadcastReceiver;

.field private final mMessageListItemHandler:Landroid/os/Handler;

.field private mMessageSizeExceedCounter:I

.field private mMessagesAndDraftLoaded:Z

.field private final mMmsSendHandler:Landroid/os/Handler;

.field public mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

.field private final mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mMsgListView:Lcom/android/mms/ui/MessageListView;

.field private mNeedCheckConversationList:Z

.field private mPossiblePendingNotification:Z

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRecipientsButton:Landroid/view/View;

.field private mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

.field private final mRecipientsMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mRecipientsPickList:Lcom/android/mms/data/ContactList;

.field private mRecipientsPicker:Landroid/widget/ImageButton;

.field private final mRecipientsWatcher:Landroid/text/TextWatcher;

.field private mResendSmsRecipient:Ljava/lang/String;

.field mResetMessageRunnable:Ljava/lang/Runnable;

.field private final mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

.field private mSavedScrollPosition:I

.field private mScrollOnSend:Z

.field private mSelectedMsgListItem:Lcom/android/mms/ui/MessageListItem;

.field private mSendDiscreetMode:Z

.field private mSendingMessage:Z

.field private mSentMessage:Z

.field private mShouldLoadDraft:Z

.field private mShowDateSwitch:Z

.field private mShowProgressDialogRunnable:Ljava/lang/Runnable;

.field private mShowRecipientsImageButton:Landroid/widget/ImageButton;

.field private mSmileyDialog:Landroid/app/AlertDialog;

.field private mSmsTemplateButton:Landroid/widget/ImageButton;

.field private mStateListener:Landroid/telephony/PhoneStateListener;

.field private mSub1SendButton:Landroid/widget/TextView;

.field private mSub2SendButton:Landroid/widget/TextView;

.field private final mSubjectActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private final mSubjectEditorWatcher:Landroid/text/TextWatcher;

.field private final mSubjectKeyListener:Landroid/view/View$OnKeyListener;

.field private mSubjectTextEditor:Landroid/widget/EditText;

.field private mSwitchToSend:Z

.field private mTargetDataSubscription:I

.field private mTempMmsUri:Landroid/net/Uri;

.field private mTempThreadId:J

.field private mTextCounter:Landroid/widget/TextView;

.field private mTextEditor:Landroid/widget/EditText;

.field private final mTextEditorWatcher:Landroid/text/TextWatcher;

.field private mToastForDraftSave:Z

.field private mTopPanel:Landroid/view/View;

.field private mWaitingForSubActivity:Z

.field private mWorkingMessage:Lcom/android/mms/data/WorkingMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x0

    sput v0, Lcom/android/mms/ui/ComposeMessageActivity;->subSelected:I

    .line 5102
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/ComposeMessageActivity;->mVideoUri:Ljava/lang/String;

    .line 5104
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/ComposeMessageActivity;->mImageUri:Ljava/lang/String;

    .line 5106
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/ComposeMessageActivity;->mAudioUri:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 206
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 352
    iput-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mShowRecipientsImageButton:Landroid/widget/ImageButton;

    .line 394
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSavedScrollPosition:I

    .line 455
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mNeedCheckConversationList:Z

    .line 469
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsAttachmentErrorOnSend:Z

    .line 475
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsWappush:Z

    .line 476
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mHandler:Landroid/os/Handler;

    .line 481
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsPickingContact:Z

    .line 483
    iput-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsPickList:Lcom/android/mms/data/ContactList;

    .line 487
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsAudioPlayerActivityRunning:Z

    .line 491
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsProcessPickedRecipients:Z

    .line 492
    iput v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mExistsRecipientsCount:I

    .line 494
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->isLocked:Z

    .line 497
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mShowDateSwitch:Z

    .line 500
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$1;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->CopyToSimWithToastHandler:Landroid/os/Handler;

    .line 518
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$2;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 529
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$3;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAddAttachmentHandler:Landroid/os/Handler;

    .line 631
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$6;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditorHandler:Landroid/os/Handler;

    .line 752
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$9;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageListItemHandler:Landroid/os/Handler;

    .line 802
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$10;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$10;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMmsSendHandler:Landroid/os/Handler;

    .line 833
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$11;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$11;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectKeyListener:Landroid/view/View$OnKeyListener;

    .line 860
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$12;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$12;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 871
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$13;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$13;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mShowProgressDialogRunnable:Ljava/lang/Runnable;

    .line 879
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$14;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$14;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDataSwitchHandler:Landroid/os/Handler;

    .line 919
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$15;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$15;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDataStateReceiver:Landroid/content/BroadcastReceiver;

    .line 941
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$16;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$16;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMediaStateReceiver:Landroid/content/BroadcastReceiver;

    .line 1405
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$20;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$20;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsWatcher:Landroid/text/TextWatcher;

    .line 1526
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$21;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$21;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 1807
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$22;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$22;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 2749
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.mms.PROGRESS_STATUS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mHttpProgressFilter:Landroid/content/IntentFilter;

    .line 2751
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$26;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$26;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mHttpProgressReceiver:Landroid/content/BroadcastReceiver;

    .line 3076
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$30;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$30;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mStateListener:Landroid/telephony/PhoneStateListener;

    .line 3923
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$37;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$37;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mResetMessageRunnable:Ljava/lang/Runnable;

    .line 4774
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$46;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$46;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    .line 5361
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$56;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$56;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditorWatcher:Landroid/text/TextWatcher;

    .line 5411
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->alreadyMaxSubject:Z

    .line 5412
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$57;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$57;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectEditorWatcher:Landroid/text/TextWatcher;

    .line 5995
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$61;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$61;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    .line 6987
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateSendButtonState()V

    return-void
.end method

.method static synthetic access$10000(Lcom/android/mms/ui/ComposeMessageActivity;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 206
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->smoothScrollToEnd(ZI)V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachFileUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$10102(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mPossiblePendingNotification:Z

    return p1
.end method

.method static synthetic access$10200(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->sanityCheckConversation()V

    return-void
.end method

.method static synthetic access$10300(Lcom/android/mms/ui/ComposeMessageActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSavedScrollPosition:I

    return v0
.end method

.method static synthetic access$10302(Lcom/android/mms/ui/ComposeMessageActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # I

    .prologue
    .line 206
    iput p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSavedScrollPosition:I

    return p1
.end method

.method static synthetic access$10400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    return-object v0
.end method

.method static synthetic access$10500(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mScrollOnSend:Z

    return v0
.end method

.method static synthetic access$10502(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mScrollOnSend:Z

    return p1
.end method

.method static synthetic access$10600(Lcom/android/mms/ui/ComposeMessageActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    iget-wide v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mLastMessageId:J

    return-wide v0
.end method

.method static synthetic access$10602(Lcom/android/mms/ui/ComposeMessageActivity;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # J

    .prologue
    .line 206
    iput-wide p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mLastMessageId:J

    return-wide p1
.end method

.method static synthetic access$10700(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mNeedCheckConversationList:Z

    return v0
.end method

.method static synthetic access$10702(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mNeedCheckConversationList:Z

    return p1
.end method

.method static synthetic access$10800(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSentMessage:Z

    return v0
.end method

.method static synthetic access$10900(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->initRecipientsEditor()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/AttachmentEditor;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    return-object v0
.end method

.method static synthetic access$11000(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->isLocked:Z

    return v0
.end method

.method static synthetic access$11002(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->isLocked:Z

    return p1
.end method

.method static synthetic access$11100(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->exitComposeMessageActivity(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$11200(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateSendFailedNotification()V

    return-void
.end method

.method static synthetic access$11300(Lcom/android/mms/ui/ComposeMessageActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # I

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->startMsgListQuery(I)V

    return-void
.end method

.method static synthetic access$11400(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Landroid/widget/EditText;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 206
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->insertSmiley(Landroid/widget/EditText;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11500(Lcom/android/mms/ui/ComposeMessageActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->handleDataSwitch(Z)V

    return-void
.end method

.method static synthetic access$11600(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsDataSwitching:Z

    return v0
.end method

.method static synthetic access$11602(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsDataSwitching:Z

    return p1
.end method

.method static synthetic access$11700(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->removeDataSwitchTask()V

    return-void
.end method

.method static synthetic access$11900(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->setFontSize()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/ComposeMessageActivity;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # I

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->isAudioPlayerActivityRunning(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Lcom/android/mms/ui/MessageItem;

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->showMessageDetails(Lcom/android/mms/ui/MessageItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1402(Lcom/android/mms/ui/ComposeMessageActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # I

    .prologue
    .line 206
    iput p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mCurrentDataSubscription:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/ComposeMessageActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTargetDataSubscription:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/mms/ui/ComposeMessageActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # I

    .prologue
    .line 206
    iput p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTargetDataSubscription:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageListItem;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedMsgListItem:Lcom/android/mms/ui/MessageListItem;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageListItem;
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Lcom/android/mms/ui/MessageListItem;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedMsgListItem:Lcom/android/mms/ui/MessageListItem;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/ComposeMessageActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->showDataSwitchDialog(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;JZ)Lcom/android/mms/ui/MessageItem;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .param p4, "x3"    # Z

    .prologue
    .line 206
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/ComposeMessageActivity;->getMessageItem(Ljava/lang/String;JZ)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Lcom/android/mms/ui/MessageItem;

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->editMessageItem(Lcom/android/mms/ui/MessageItem;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ComposeMessageActivity;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 206
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->drawBottomPanel()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSwitchToSend:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSwitchToSend:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/mms/ui/ComposeMessageActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->showSubjectEditor(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/mms/ui/ComposeMessageActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->handleDataSwitchDone(Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDataSwitchHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsDataConnecting:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsDataConnecting:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTempMmsUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDataStateReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTempMmsUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->processDataReset()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->handleDataSwitchTimeout()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->handleDataSwitchConnected()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->checkIfAttachFileExsit()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/mms/ui/ComposeMessageActivity;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 206
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->sendMessageWithChooseDialog(ZZ)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/mms/ui/ComposeMessageActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->sendMessage(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->checkForTooManyRecipients()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsProcessPickedRecipients:Z

    return v0
.end method

.method static synthetic access$4700(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/ContactList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Lcom/android/mms/data/ContactList;

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->updateTitle(Lcom/android/mms/data/ContactList;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/ContactList;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsPickList:Lcom/android/mms/data/ContactList;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/ContactList;)Lcom/android/mms/data/ContactList;
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Lcom/android/mms/data/ContactList;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsPickList:Lcom/android/mms/data/ContactList;

    return-object p1
.end method

.method static synthetic access$4900(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/Contact;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Lcom/android/mms/data/Contact;

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->canAddToContacts(Lcom/android/mms/data/Contact;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->editSlideshow()V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAddContactIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$5002(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAddContactIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isCursorValid()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5200(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Landroid/view/ContextMenu;
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 206
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ComposeMessageActivity;->addPositionBasedMenuItems(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/ContactList;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/view/ContextMenu;Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;Lcom/android/mms/ui/MessageItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Landroid/view/ContextMenu;
    .param p2, "x2"    # Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;
    .param p3, "x3"    # Lcom/android/mms/ui/MessageItem;

    .prologue
    .line 206
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ComposeMessageActivity;->addCallAndContactMenuItems(Landroid/view/ContextMenu;Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;Lcom/android/mms/ui/MessageItem;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/mms/ui/ComposeMessageActivity;J)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # J

    .prologue
    .line 206
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->isForwardable(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5600(Lcom/android/mms/ui/ComposeMessageActivity;J)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # J

    .prologue
    .line 206
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->haveSomethingToCopyToSDCard(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5700(Lcom/android/mms/ui/ComposeMessageActivity;J)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # J

    .prologue
    .line 206
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->isDrmRingtoneWithRights(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5800(Lcom/android/mms/ui/ComposeMessageActivity;J)I
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # J

    .prologue
    .line 206
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->getDrmMimeMenuStringRsrc(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$5900(Lcom/android/mms/ui/ComposeMessageActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hasIccCardCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isPreparedForSending()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6000(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getSimName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/mms/ui/ComposeMessageActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    iget-wide v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTempThreadId:J

    return-wide v0
.end method

.method static synthetic access$6102(Lcom/android/mms/ui/ComposeMessageActivity;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # J

    .prologue
    .line 206
    iput-wide p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTempThreadId:J

    return-wide p1
.end method

.method static synthetic access$6200(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->copyToClipboard(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Lcom/android/mms/ui/MessageItem;

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->forwardMessage(Lcom/android/mms/ui/MessageItem;)V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Lcom/android/mms/ui/MessageItem;

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->resendMessage(Lcom/android/mms/ui/MessageItem;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Landroid/content/DialogInterface$OnClickListener;
    .param p2, "x2"    # Z

    .prologue
    .line 206
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/mms/ui/ComposeMessageActivity;JLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;

    .prologue
    .line 206
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ComposeMessageActivity;->showDeliveryReport(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/mms/ui/ComposeMessageActivity;J)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # J

    .prologue
    .line 206
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->copyMedia(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6800(Lcom/android/mms/ui/ComposeMessageActivity;J)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # J

    .prologue
    .line 206
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->saveRingtone(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6900(Lcom/android/mms/ui/ComposeMessageActivity;JZ)I
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z

    .prologue
    .line 206
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ComposeMessageActivity;->getDrmMimeSavedStringRsrc(JZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmSendMessageIfNeeded()V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Lcom/android/mms/ui/MessageItem;
    .param p2, "x2"    # Z

    .prologue
    .line 206
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->lockMessage(Lcom/android/mms/ui/MessageItem;Z)V

    return-void
.end method

.method static synthetic access$7100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->CopyToSimWithToastHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Lcom/android/mms/ui/MessageItem;
    .param p2, "x2"    # I

    .prologue
    .line 206
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->copyToSim(Lcom/android/mms/ui/MessageItem;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7300(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isSubjectEditorVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7400(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/RecipientsEditor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Lcom/android/mms/ui/RecipientsEditor;

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->validRecipient(Lcom/android/mms/ui/RecipientsEditor;)V

    return-void
.end method

.method static synthetic access$7500(Lcom/android/mms/ui/ComposeMessageActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # I

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->loadMessagesAndDraft(I)V

    return-void
.end method

.method static synthetic access$7700(Lcom/android/mms/ui/ComposeMessageActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->drawTopPanel(Z)V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/mms/ui/ComposeMessageActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->toastConvertInfo(Z)V

    return-void
.end method

.method static synthetic access$7900(Lcom/android/mms/ui/ComposeMessageActivity;Z)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->showSmsOrMmsSendButton(Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/ComposeMessageActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # I

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->viewMmsMessageAttachment(I)V

    return-void
.end method

.method static synthetic access$8000(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->resetMessage()V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->startMsgListQuery()V

    return-void
.end method

.method static synthetic access$8300(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateThreadIdIfRunning()V

    return-void
.end method

.method static synthetic access$8400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageItem;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mEditMessageItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method static synthetic access$8402(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/ui/MessageItem;
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Lcom/android/mms/ui/MessageItem;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mEditMessageItem:Lcom/android/mms/ui/MessageItem;

    return-object p1
.end method

.method static synthetic access$8500(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsAttachmentErrorOnSend:Z

    return v0
.end method

.method static synthetic access$8502(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsAttachmentErrorOnSend:Z

    return p1
.end method

.method static synthetic access$8600(Lcom/android/mms/ui/ComposeMessageActivity;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 206
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->handleAddAttachmentError(II)V

    return-void
.end method

.method static synthetic access$8700(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->goToConversationList()V

    return-void
.end method

.method static synthetic access$8800(Lcom/android/mms/ui/ComposeMessageActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # I

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->batchMoveToSim(I)V

    return-void
.end method

.method static synthetic access$8900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentTypeSelectorAdapter:Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/ComposeMessageActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->showAddAttachmentDialog(Z)V

    return-void
.end method

.method static synthetic access$9000(Lcom/android/mms/ui/ComposeMessageActivity;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 206
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->addAttachment(IZ)V

    return-void
.end method

.method static synthetic access$9100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/text/TextWatcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsWatcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method static synthetic access$9200(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isMsgSizeExceedDlgPopupTimesDue()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9300(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # Z

    .prologue
    .line 206
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->addImage(Landroid/net/Uri;Z)V

    return-void
.end method

.method static synthetic access$9400(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # Z

    .prologue
    .line 206
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->addVideo(Landroid/net/Uri;Z)V

    return-void
.end method

.method static synthetic access$9500(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/net/Uri;
    .param p3, "x3"    # Z

    .prologue
    .line 206
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ComposeMessageActivity;->addAttachment(Ljava/lang/String;Landroid/net/Uri;Z)V

    return-void
.end method

.method static synthetic access$9600(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSmsTemplateButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$9700(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/CharSequence;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 206
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/ComposeMessageActivity;->updateCounter(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method static synthetic access$9800(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->alreadyMaxSubject:Z

    return v0
.end method

.method static synthetic access$9802(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->alreadyMaxSubject:Z

    return p1
.end method

.method static synthetic access$9900(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessagesAndDraftLoaded:Z

    return v0
.end method

.method private addAttachment(IZ)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 4323
    .line 4324
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    .line 4325
    if-eqz p2, :cond_2

    if-eqz v2, :cond_2

    .line 4326
    invoke-static {v2}, Lcom/android/mms/data/WorkingMessage;->removeThumbnailsFromCache(Lcom/android/mms/model/SlideshowModel;)V

    .line 4327
    invoke-virtual {v2, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 4328
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v0

    .line 4330
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 4391
    :goto_1
    return-void

    .line 4332
    :pswitch_0
    const/16 v0, 0x64

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->selectImage(Landroid/content/Context;I)V

    goto :goto_1

    .line 4336
    :pswitch_1
    const/16 v0, 0x65

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->capturePicture(Landroid/app/Activity;I)V

    goto :goto_1

    .line 4341
    :pswitch_2
    const/16 v0, 0x66

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->selectVideo(Landroid/content/Context;I)V

    goto :goto_1

    .line 4345
    :pswitch_3
    invoke-static {v2, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->computeAttachmentSizeLimit(Lcom/android/mms/model/SlideshowModel;I)J

    move-result-wide v2

    .line 4346
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 4347
    const/16 v0, 0x67

    invoke-static {p0, v0, v2, v3}, Lcom/android/mms/ui/MessageUtils;->recordVideo(Landroid/app/Activity;IJ)V

    goto :goto_1

    .line 4349
    :cond_0
    const v0, 0x7f0b0050

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 4357
    :pswitch_4
    const/16 v0, 0x68

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->selectAudio(Landroid/app/Activity;I)V

    goto :goto_1

    .line 4361
    :pswitch_5
    invoke-static {v2, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->computeAttachmentSizeLimit(Lcom/android/mms/model/SlideshowModel;I)J

    move-result-wide v0

    .line 4362
    const/16 v2, 0x69

    invoke-static {p0, v2, v0, v1}, Lcom/android/mms/ui/MessageUtils;->recordSound(Landroid/app/Activity;IJ)V

    goto :goto_1

    .line 4366
    :pswitch_6
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->editSlideshow()V

    goto :goto_1

    .line 4370
    :pswitch_7
    if-eqz p2, :cond_1

    const/16 v0, 0x70

    :goto_2
    invoke-direct {p0, v3, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->pickContacts(II)V

    goto :goto_1

    :cond_1
    const/16 v0, 0x6e

    goto :goto_2

    .line 4376
    :pswitch_8
    const/4 v0, 0x2

    const/16 v1, 0x6f

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->pickContacts(II)V

    goto :goto_1

    .line 4380
    :pswitch_9
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EVENT_PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4381
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4382
    const-string v1, "key_restore_view"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4383
    const/16 v1, 0x71

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 4386
    :pswitch_a
    const/16 v0, 0x72

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->selectVcalender(Landroid/content/Context;I)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0

    .line 4330
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private addAttachment(Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 3

    .prologue
    .line 5109
    if-eqz p2, :cond_2

    .line 5115
    const-string v0, "*/*"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 5116
    const-string v1, "image/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/mms/ui/ComposeMessageActivity;->mImageUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-eqz v0, :cond_3

    invoke-direct {p0, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->isImageFile(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5119
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/android/mms/ui/ComposeMessageActivity;->addImage(Landroid/net/Uri;Z)V

    .line 5142
    :cond_2
    :goto_0
    return-void

    .line 5120
    :cond_3
    const-string v1, "video/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/mms/ui/ComposeMessageActivity;->mVideoUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    if-eqz v0, :cond_6

    invoke-direct {p0, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->isVideoFile(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5123
    :cond_5
    invoke-direct {p0, p2, p3}, Lcom/android/mms/ui/ComposeMessageActivity;->addVideo(Landroid/net/Uri;Z)V

    goto :goto_0

    .line 5124
    :cond_6
    const-string v1, "audio/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/mms/ui/ComposeMessageActivity;->mAudioUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_7
    if-eqz v0, :cond_8

    invoke-direct {p0, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->isAudioFile(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    const-string v0, "ogg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5129
    :cond_9
    invoke-direct {p0, p2, p3}, Lcom/android/mms/ui/ComposeMessageActivity;->addAudio(Landroid/net/Uri;Z)V

    goto :goto_0

    .line 5131
    :cond_a
    const-string v0, "text/x-vcard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5132
    invoke-direct {p0, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->addVcard(Landroid/net/Uri;)V

    goto :goto_0

    .line 5133
    :cond_b
    const-string v0, "text/x-vCalendar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5134
    invoke-direct {p0, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->addVCalender(Landroid/net/Uri;)V

    goto :goto_0

    .line 5138
    :cond_c
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAddAttachmentHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-static {v0, v1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5139
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAddAttachmentHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private addAudio(Landroid/net/Uri;Z)V
    .locals 2

    .prologue
    .line 4929
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "baijianhua  addAudio "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 4930
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/mms/data/WorkingMessage;->setAttachment(ILandroid/net/Uri;Z)I

    move-result v0

    .line 4931
    const v1, 0x7f0b00f3

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->handleAddAttachmentError(II)V

    .line 4932
    return-void
.end method

.method private final addCallAndContactMenuItems(Landroid/view/ContextMenu;Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;Lcom/android/mms/ui/MessageItem;)V
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1690
    iget-object v0, p3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1760
    :cond_0
    return-void

    .line 1693
    :cond_1
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1694
    const/16 v1, 0xf

    invoke-static {v0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 1695
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v1

    const-class v5, Landroid/text/style/URLSpan;

    invoke-virtual {v0, v3, v1, v5}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->extractUris([Landroid/text/style/URLSpan;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1699
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1700
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1701
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1703
    :cond_2
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1705
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 1706
    if-ltz v5, :cond_9

    .line 1707
    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1708
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    .line 1714
    :goto_2
    const-string v5, "mailto"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1715
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getContactUriForEmail(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1716
    const v5, 0x7f0b0003

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "%s"

    invoke-virtual {v5, v6, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 1718
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mailto:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v6, v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1720
    const/high16 v7, 0x80000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1721
    const/16 v7, 0x17

    invoke-interface {p1, v3, v7, v3, v5}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, p2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move v5, v4

    move-object v6, v2

    move-object v7, v0

    move v0, v3

    .line 1732
    :goto_3
    if-eqz v5, :cond_8

    if-nez v7, :cond_8

    if-nez v0, :cond_8

    .line 1733
    invoke-static {v1}, Lcom/android/mms/ui/ConversationList;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1735
    const v5, 0x7f0b0006

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v1, v6, v3

    invoke-virtual {p0, v5, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1737
    const/16 v5, 0x1b

    invoke-interface {p1, v3, v5, v3, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, p2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 1724
    :cond_4
    const-string v5, "tel"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1725
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getContactUriForPhoneNumber(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move v5, v4

    move-object v6, v2

    move-object v7, v0

    move v0, v3

    goto :goto_3

    .line 1726
    :cond_5
    const-string v5, "http"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "https"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1727
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v5, v4

    move-object v6, v0

    move-object v7, v2

    move v0, v4

    .line 1728
    goto :goto_3

    :cond_7
    move v0, v3

    move v5, v3

    move-object v6, v2

    move-object v7, v2

    .line 1730
    goto :goto_3

    .line 1740
    :cond_8
    if-eqz v0, :cond_3

    .line 1741
    const v0, 0x7f0b018c

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v6, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1743
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1744
    const-string v5, "copyurl"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1745
    const/16 v5, 0x23

    invoke-interface {p1, v3, v5, v3, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_9
    move-object v1, v0

    move-object v0, v2

    goto/16 :goto_2
.end method

.method private addImage(Landroid/net/Uri;Z)V
    .locals 3

    .prologue
    const/4 v2, -0x4

    .line 4881
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addImage: append="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 4890
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/mms/data/WorkingMessage;->setAttachment(ILandroid/net/Uri;Z)I

    move-result v0

    .line 4892
    if-eq v0, v2, :cond_0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRestrictedMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4894
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4895
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resize image "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 4897
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditorHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    invoke-static {p0, p1, v0, v1, p2}, Lcom/android/mms/ui/MessageUtils;->resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;Z)V

    .line 4910
    :goto_0
    return-void

    .line 4902
    :cond_2
    if-ne v0, v2, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->isRestrictedMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4906
    const/4 v0, -0x5

    .line 4909
    :cond_3
    const v1, 0x7f0b00f4

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->handleAddAttachmentError(II)V

    goto :goto_0
.end method

.method private addImageAsync(Landroid/net/Uri;Z)V
    .locals 4

    .prologue
    .line 4871
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getAsyncDialog()Lcom/android/mms/ui/AsyncDialog;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$48;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity$48;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;Z)V

    const/4 v2, 0x0

    const v3, 0x7f0b0069

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/AsyncDialog;->runAsync(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    .line 4877
    return-void
.end method

.method private addPositionBasedMenuItems(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2

    .prologue
    .line 1623
    :try_start_0
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1628
    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 1630
    invoke-direct {p0, p1, p2, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->addUriSpecificMenuItems(Landroid/view/ContextMenu;Landroid/view/View;I)V

    .line 1631
    :goto_0
    return-void

    .line 1624
    :catch_0
    move-exception v0

    .line 1625
    const-string v0, "Mms/compose"

    const-string v1, "bad menuInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private addRecipientsListeners()V
    .locals 0

    .prologue
    .line 6488
    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 6489
    return-void
.end method

.method private addUriSpecificMenuItems(Landroid/view/ContextMenu;Landroid/view/View;I)V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 1677
    check-cast p2, Landroid/widget/ListView;

    invoke-direct {p0, p2, p3}, Lcom/android/mms/ui/ComposeMessageActivity;->getSelectedUriFromMessageList(Landroid/widget/ListView;I)Landroid/net/Uri;

    move-result-object v0

    .line 1679
    if-eqz v0, :cond_0

    .line 1680
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1681
    const-string v0, "android.intent.category.SELECTED_ALTERNATIVE"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1682
    new-instance v4, Landroid/content/ComponentName;

    const-class v0, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v4, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v0, p1

    move v2, v1

    move v3, v1

    move v7, v1

    move-object v8, v5

    invoke-interface/range {v0 .. v8}, Landroid/view/ContextMenu;->addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I

    .line 1686
    :cond_0
    return-void
.end method

.method private addVCalender(Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 4978
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/mms/data/WorkingMessage;->setAttachment(ILandroid/net/Uri;Z)I

    move-result v0

    .line 4979
    const v1, 0x7f0b01b1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->handleAddAttachmentError(II)V

    .line 4980
    return-void
.end method

.method private addVcard(Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 4971
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/mms/data/WorkingMessage;->setAttachment(ILandroid/net/Uri;Z)I

    move-result v0

    .line 4972
    const v1, 0x7f0b0171

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->handleAddAttachmentError(II)V

    .line 4973
    return-void
.end method

.method private addVideo(Landroid/net/Uri;Z)V
    .locals 2

    .prologue
    .line 4922
    if-eqz p1, :cond_0

    .line 4923
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/mms/data/WorkingMessage;->setAttachment(ILandroid/net/Uri;Z)I

    move-result v0

    .line 4924
    const v1, 0x7f0b00f5

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->handleAddAttachmentError(II)V

    .line 4926
    :cond_0
    return-void
.end method

.method private addVideoAsync(Landroid/net/Uri;Z)V
    .locals 4

    .prologue
    .line 4913
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getAsyncDialog()Lcom/android/mms/ui/AsyncDialog;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$49;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity$49;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;Z)V

    const/4 v2, 0x0

    const v3, 0x7f0b0069

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/AsyncDialog;->runAsync(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    .line 4919
    return-void
.end method

.method private asyncAddVcard(Landroid/net/Uri;)V
    .locals 7

    .prologue
    .line 4937
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 4938
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 4939
    const v0, 0x7f0b01e2

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 4940
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 4941
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 4943
    new-instance v5, Lcom/android/mms/ui/ComposeMessageActivity$50;

    invoke-direct {v5, p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity$50;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/app/ProgressDialog;)V

    .line 4949
    const-wide/16 v0, 0x3e8

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4950
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$51;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageActivity$51;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;Landroid/app/ProgressDialog;Landroid/os/Handler;Ljava/lang/Runnable;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 4968
    return-void
.end method

.method private batchDeleteSms()V
    .locals 3

    .prologue
    .line 6878
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6879
    const-class v1, Lcom/android/mms/ui/SmsSelectorActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 6880
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 6882
    const-string v1, "title"

    const v2, 0x7f0b00b0

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6883
    const-string v1, "sms_flag"

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6884
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6885
    const/16 v1, 0x76

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 6886
    return-void
.end method

.method private batchMoveToSim(I)V
    .locals 6

    .prologue
    .line 6867
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6868
    const-class v1, Lcom/android/mms/ui/SmsSelectorActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 6869
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 6870
    const-string v1, "subscription"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6871
    const-string v1, "title"

    const v2, 0x7f0b01cc

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getSimName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6872
    const-string v1, "sms_flag"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6873
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6874
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    .line 6875
    return-void
.end method

.method private buildAddAddressToContactMenuItem(Landroid/view/Menu;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4114
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 4115
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->canAddToContacts(Lcom/android/mms/data/Contact;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4116
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 4117
    const/16 v1, 0x1b

    const v2, 0x7f0b007b

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x1080033

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 4124
    :cond_1
    return-void
.end method

.method private canAddToContacts(Lcom/android/mms/data/Contact;)Z
    .locals 4
    .param p1, "contact"    # Lcom/android/mms/data/Contact;

    .prologue
    const/4 v2, 0x0

    .line 1594
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1595
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1596
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1597
    .local v0, "c":C
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->isSpecialChar(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1612
    .end local v0    # "c":C
    :cond_0
    :goto_0
    return v2

    .line 1601
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1602
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1603
    .restart local v0    # "c":C
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->isSpecialChar(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1607
    .end local v0    # "c":C
    :cond_2
    invoke-static {v1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v1}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->isMe()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1612
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static cancelFailedDownloadNotification(Landroid/content/Intent;Landroid/content/Context;)Z
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 3032
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->isFailedToDownload(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3034
    const/16 v0, 0x213

    invoke-static {p1, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 3036
    const/4 v0, 0x1

    .line 3038
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static cancelFailedToDeliverNotification(Landroid/content/Intent;Landroid/content/Context;)Z
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 3022
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->isFailedToDeliver(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3024
    const/16 v0, 0x315

    invoke-static {p1, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 3026
    const/4 v0, 0x1

    .line 3028
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkForTooManyRecipients()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1484
    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v3

    .line 1485
    const v0, 0x7fffffff

    if-eq v3, v0, :cond_0

    .line 1486
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->recipientCount()I

    move-result v4

    .line 1487
    if-le v4, v3, :cond_1

    move v0, v1

    .line 1489
    :goto_0
    iget v5, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mLastRecipientCount:I

    if-eq v4, v5, :cond_0

    .line 1492
    iput v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mLastRecipientCount:I

    .line 1493
    if-eqz v0, :cond_0

    .line 1494
    const v0, 0x7f0b0067

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-virtual {p0, v0, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1496
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1501
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 1487
    goto :goto_0
.end method

.method private checkIfAttachFileExsit()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 6850
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachFileUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 6851
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachFileUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6852
    const-string v0, "Mms/compose"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attach path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachFileUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " host = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachFileUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6853
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachFileUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6854
    const-string v0, "Mms/compose"

    const-string v1, "set attachment null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6855
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v3, v4, v3}, Lcom/android/mms/data/WorkingMessage;->setAttachment(ILandroid/net/Uri;Z)I

    .line 6865
    :cond_0
    :goto_0
    return-void

    .line 6858
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachFileUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6859
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6860
    :cond_2
    const-string v0, "Mms/compose"

    const-string v1, "set attachment null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6861
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v3, v4, v3}, Lcom/android/mms/data/WorkingMessage;->setAttachment(ILandroid/net/Uri;Z)I

    goto :goto_0
.end method

.method private checkPendingNotification()V
    .locals 3

    .prologue
    .line 6009
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mPossiblePendingNotification:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6010
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->hasUnreadMessages()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6011
    const-string v0, "Mms/compose"

    const-string v1, "handle read report"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6013
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6014
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6015
    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->handleReadReport(Landroid/content/Context;Ljava/util/Collection;ILjava/lang/Runnable;)V

    .line 6018
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->markAsRead()V

    .line 6019
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mPossiblePendingNotification:Z

    .line 6021
    :cond_1
    return-void
.end method

.method public static computeAttachmentSizeLimit(Lcom/android/mms/model/SlideshowModel;I)J
    .locals 4
    .param p0, "slideShow"    # Lcom/android/mms/model/SlideshowModel;
    .param p1, "currentSlideSize"    # I

    .prologue
    .line 4395
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v2

    add-int/lit16 v2, v2, -0x400

    int-to-long v0, v2

    .line 4396
    .local v0, "sizeLimit":J
    if-eqz p0, :cond_0

    .line 4397
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 4404
    int-to-long v2, p1

    add-long/2addr v0, v2

    .line 4406
    :cond_0
    return-wide v0
.end method

.method private confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 3

    .prologue
    .line 5526
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5527
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 5528
    if-eqz p2, :cond_0

    const v0, 0x7f0b00ac

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 5530
    const v0, 0x7f0b00b0

    invoke-virtual {v1, v0, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5531
    const v0, 0x7f0b007e

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5532
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 5533
    return-void

    .line 5528
    :cond_0
    const v0, 0x7f0b00ab

    goto :goto_0
.end method

.method private confirmDeleteThread(J)V
    .locals 2
    .param p1, "threadId"    # J

    .prologue
    .line 4310
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    const/16 v1, 0x70a

    invoke-static {v0, p1, p2, v1}, Lcom/android/mms/data/Conversation;->startQueryHaveLockedMessages(Landroid/content/AsyncQueryHandler;JI)V

    .line 4312
    return-void
.end method

.method private confirmSendMessageIfNeeded()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1360
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    .line 1362
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1364
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 1365
    invoke-direct {p0, v2, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->sendMessageWithChooseDialog(ZZ)V

    .line 1382
    :goto_0
    return-void

    .line 1367
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->sendMessage(Z)V

    goto :goto_0

    .line 1372
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/RecipientsEditor;->hasInvalidRecipient(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1373
    const-string v0, "Trace"

    const-string v1, "baijianhua hasInvalidRecipient"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->showInvalidRecipientDialog()V

    goto :goto_0

    .line 1376
    :cond_2
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1377
    invoke-direct {p0, v2, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->sendMessageWithChooseDialog(ZZ)V

    goto :goto_0

    .line 1379
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->sendMessage(Z)V

    goto :goto_0
.end method

.method private copyMedia(J)Z
    .locals 13

    .prologue
    const v12, 0x7f0b01e7

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 2567
    .line 2568
    const/4 v0, 0x0

    .line 2572
    :try_start_0
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/mms/model/SlideshowModel;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v7, v0

    .line 2577
    :goto_0
    if-nez v7, :cond_0

    move v0, v2

    .line 2608
    :goto_1
    return v0

    .line 2574
    :catch_0
    move-exception v1

    .line 2575
    const-string v1, "Mms/compose"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyMedia can\'t load pdu body: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v0

    goto :goto_0

    .line 2581
    :cond_0
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v8

    move v4, v2

    move v1, v2

    move v0, v2

    move v3, v5

    .line 2582
    :goto_2
    if-ge v4, v8, :cond_3

    .line 2583
    invoke-virtual {v7, v4}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v9

    .line 2586
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v9, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->copyPart(Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;)Z

    move-result v6

    and-int/2addr v6, v3

    .line 2587
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v9}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/lang/String;-><init>([B)V

    .line 2588
    const-string v9, "Mms/compose"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "copyMedia type = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2589
    invoke-static {v3}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2590
    add-int/lit8 v0, v0, 0x1

    .line 2592
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->isSaveToDownload(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2593
    add-int/lit8 v1, v1, 0x1

    .line 2582
    :cond_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v6

    goto :goto_2

    .line 2596
    :cond_3
    if-eqz v3, :cond_4

    if-lez v0, :cond_4

    .line 2597
    new-array v0, v5, [Ljava/lang/Object;

    sget-object v4, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    aput-object v4, v0, v2

    invoke-virtual {p0, v12, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2598
    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2600
    :cond_4
    if-eqz v3, :cond_5

    if-lez v1, :cond_5

    .line 2601
    new-array v0, v5, [Ljava/lang/Object;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    aput-object v1, v0, v2

    invoke-virtual {p0, v12, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2602
    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2604
    :cond_5
    if-nez v3, :cond_6

    .line 2605
    const v0, 0x7f0b010d

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_6
    move v0, v3

    .line 2608
    goto/16 :goto_1
.end method

.method private copyPart(Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;)Z
    .locals 12

    .prologue
    .line 2612
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v5

    .line 2613
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 2615
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2616
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 2617
    const-string v3, "application/oct-stream"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ".vcf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2618
    const-string v1, "text/x-vCard"

    .line 2622
    :cond_0
    invoke-static {v1}, Lcom/android/mms/drm/DrmUtils;->isDrmType(Ljava/lang/String;)Z

    move-result v7

    .line 2623
    if-eqz v7, :cond_12

    .line 2624
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/MmsApp;->getDrmManagerClient()Landroid/drm/DrmManagerClient;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 2627
    :goto_0
    invoke-static {v3}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v3}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v3}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "application/ogg"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "text/x-vCard"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2632
    const/4 v1, 0x1

    .line 2729
    :cond_1
    :goto_1
    return v1

    .line 2637
    :cond_2
    const/4 v2, 0x0

    .line 2638
    const/4 v4, 0x0

    .line 2640
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2641
    :try_start_1
    instance-of v1, v2, Ljava/io/FileInputStream;

    if-eqz v1, :cond_11

    .line 2642
    move-object v0, v2

    check-cast v0, Ljava/io/FileInputStream;

    move-object v1, v0

    .line 2644
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v5

    .line 2645
    if-nez v5, :cond_3

    .line 2646
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v5

    .line 2648
    :cond_3
    if-nez v5, :cond_4

    .line 2649
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v5

    .line 2653
    :cond_4
    if-nez v5, :cond_6

    .line 2661
    :goto_2
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2662
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 2668
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    sget-object v5, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    :goto_3
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2673
    const/16 v5, 0x2e

    invoke-virtual {v6, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    const/4 v5, -0x1

    if-ne v9, v5, :cond_9

    .line 2675
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2680
    :goto_4
    if-eqz v7, :cond_10

    .line 2681
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/android/mms/drm/DrmUtils;->getConvertExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2683
    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->getUniqueDestination(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 2686
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 2687
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_a

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_a

    .line 2688
    const-string v1, "Mms/compose"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MMS] copyPart: mkdirs for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " failed!"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2689
    const/4 v1, 0x0

    .line 2710
    if-eqz v2, :cond_5

    .line 2712
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 2719
    :cond_5
    if-eqz v4, :cond_1

    .line 2721
    :try_start_3
    throw v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 2722
    :catch_0
    move-exception v1

    .line 2724
    const-string v2, "Mms/compose"

    const-string v3, "IOException caught while closing stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2725
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 2659
    :cond_6
    :try_start_4
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v5}, Ljava/lang/String;-><init>([B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 2705
    :catch_1
    move-exception v1

    move-object v3, v2

    move-object v2, v4

    .line 2707
    :goto_6
    :try_start_5
    const-string v4, "Mms/compose"

    const-string v5, "IOException caught while opening or reading stream"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2708
    const/4 v1, 0x0

    .line 2710
    if-eqz v3, :cond_7

    .line 2712
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 2719
    :cond_7
    if-eqz v2, :cond_1

    .line 2721
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_1

    .line 2722
    :catch_2
    move-exception v1

    .line 2724
    const-string v2, "Mms/compose"

    const-string v3, "IOException caught while closing stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2725
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 2668
    :cond_8
    :try_start_8
    sget-object v5, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    goto/16 :goto_3

    .line 2677
    :cond_9
    add-int/lit8 v5, v9, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v6, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 2678
    const/4 v10, 0x0

    invoke-virtual {v6, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v6

    goto/16 :goto_4

    .line 2713
    :catch_3
    move-exception v1

    .line 2715
    const-string v2, "Mms/compose"

    const-string v3, "IOException caught while closing stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2716
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 2692
    :cond_a
    :try_start_9
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2694
    const/16 v4, 0x1f40

    :try_start_a
    new-array v4, v4, [B

    .line 2696
    :goto_7
    invoke-virtual {v1, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_b

    .line 2697
    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_7

    .line 2705
    :catch_4
    move-exception v1

    move-object v11, v3

    move-object v3, v2

    move-object v2, v11

    goto :goto_6

    .line 2702
    :cond_b
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 2710
    :goto_8
    if-eqz v2, :cond_c

    .line 2712
    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    .line 2719
    :cond_c
    if-eqz v3, :cond_d

    .line 2721
    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 2729
    :cond_d
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 2713
    :catch_5
    move-exception v1

    .line 2715
    const-string v2, "Mms/compose"

    const-string v3, "IOException caught while closing stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2716
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 2722
    :catch_6
    move-exception v1

    .line 2724
    const-string v2, "Mms/compose"

    const-string v3, "IOException caught while closing stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2725
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 2713
    :catch_7
    move-exception v1

    .line 2715
    const-string v2, "Mms/compose"

    const-string v3, "IOException caught while closing stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2716
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 2710
    :catchall_0
    move-exception v1

    :goto_9
    if-eqz v2, :cond_e

    .line 2712
    :try_start_d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 2719
    :cond_e
    if-eqz v4, :cond_f

    .line 2721
    :try_start_e
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    .line 2725
    :cond_f
    throw v1

    .line 2713
    :catch_8
    move-exception v1

    .line 2715
    const-string v2, "Mms/compose"

    const-string v3, "IOException caught while closing stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2716
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 2722
    :catch_9
    move-exception v1

    .line 2724
    const-string v2, "Mms/compose"

    const-string v3, "IOException caught while closing stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2725
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 2710
    :catchall_1
    move-exception v1

    move-object v4, v3

    goto :goto_9

    :catchall_2
    move-exception v1

    move-object v4, v2

    move-object v2, v3

    goto :goto_9

    .line 2705
    :catch_a
    move-exception v1

    move-object v3, v2

    move-object v2, v4

    goto/16 :goto_6

    :cond_10
    move-object v3, v5

    goto/16 :goto_5

    :cond_11
    move-object v3, v4

    goto :goto_8

    :cond_12
    move-object v3, v1

    goto/16 :goto_0
.end method

.method private copyToClipboard(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 2032
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 2033
    const/4 v1, 0x0

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 2034
    return-void
.end method

.method private copyToSim(Lcom/android/mms/ui/MessageItem;I)Z
    .locals 13

    .prologue
    const/4 v12, 0x5

    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 2327
    iget v9, p1, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    .line 2328
    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    .line 2329
    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    .line 2330
    iget-wide v3, p1, Lcom/android/mms/ui/MessageItem;->mDate:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    iget-wide v4, p1, Lcom/android/mms/ui/MessageItem;->mDate:J

    .line 2332
    :goto_0
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2335
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v7, v8

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2336
    invoke-static {v9}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2337
    const/4 v3, 0x0

    move v6, p2

    invoke-static/range {v0 .. v6}, Landroid/telephony/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJI)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v2

    .line 2339
    const-string v3, "Trace"

    const-string v6, "MessageUtils.copySmsToSim if"

    new-instance v11, Ljava/lang/RuntimeException;

    invoke-direct {v11}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v3, v6, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2341
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2342
    invoke-static {}, Landroid/telephony/MSimSmsManager;->getDefault()Landroid/telephony/MSimSmsManager;

    move-result-object v3

    iget-object v2, v2, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    invoke-virtual {v3, v0, v2, v12, p2}, Landroid/telephony/MSimSmsManager;->copyMessageToIcc([B[BII)Z

    move-result v2

    and-int/2addr v2, v7

    .line 2363
    :goto_2
    if-nez v2, :cond_4

    .line 2368
    :goto_3
    return v2

    .line 2330
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    goto :goto_0

    .line 2345
    :cond_1
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v3

    iget-object v2, v2, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    invoke-virtual {v3, v0, v2, v12}, Landroid/telephony/SmsManager;->copyMessageToIcc([B[BI)Z

    move-result v2

    and-int/2addr v2, v7

    goto :goto_2

    .line 2350
    :cond_2
    invoke-static {v1, v2, v4, v5, p2}, Lcom/android/mms/ui/MessageUtils;->getDeliveryPdu(Ljava/lang/String;Ljava/lang/String;JI)[B

    move-result-object v2

    .line 2351
    const-string v3, "Trace"

    const-string v6, "MessageUtils.copySmsToSim else"

    new-instance v11, Ljava/lang/RuntimeException;

    invoke-direct {v11}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v3, v6, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2353
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2354
    invoke-static {}, Landroid/telephony/MSimSmsManager;->getDefault()Landroid/telephony/MSimSmsManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v8, p2}, Landroid/telephony/MSimSmsManager;->copyMessageToIcc([B[BII)Z

    move-result v2

    and-int/2addr v2, v7

    goto :goto_2

    .line 2357
    :cond_3
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v8}, Landroid/telephony/SmsManager;->copyMessageToIcc([B[BI)Z

    move-result v2

    and-int/2addr v2, v7

    goto :goto_2

    :cond_4
    move v7, v2

    .line 2364
    goto :goto_1

    :cond_5
    move v2, v7

    goto :goto_3
.end method

.method public static createIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "threadId"    # J

    .prologue
    .line 6496
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6498
    .local v0, "intent":Landroid/content/Intent;
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    .line 6499
    invoke-static {p1, p2}, Lcom/android/mms/data/Conversation;->getUri(J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 6502
    :cond_0
    return-object v0
.end method

.method private dialRecipient()V
    .locals 5

    .prologue
    .line 4004
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientCallable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4005
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 4006
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4007
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    .line 4009
    :cond_0
    return-void
.end method

.method private drawBottomPanel()V
    .locals 6

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 5154
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->resetCounter()V

    .line 5156
    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsWappush:Z

    if-eqz v1, :cond_0

    .line 5157
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBottomPanel:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5158
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/AttachmentEditor;->requestFocus()Z

    .line 5188
    :goto_0
    return-void

    .line 5162
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5163
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBottomPanel:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5164
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->showSubjectEditor(Z)V

    .line 5165
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/AttachmentEditor;->requestFocus()Z

    goto :goto_0

    .line 5172
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBottomPanel:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 5175
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v3, Lcom/android/mms/ui/ComposeMessageActivity$MmsLengthFilter;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v4

    invoke-direct {v3, p0, v4}, Lcom/android/mms/ui/ComposeMessageActivity$MmsLengthFilter;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 5176
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5177
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 5180
    .local v0, "text":Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    .line 5181
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 5184
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 5186
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private drawTopPanel(Z)V
    .locals 4
    .param p1, "showSubjectEditor"    # Z

    .prologue
    const/4 v2, 0x0

    .line 5198
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/AttachmentEditor;->update(Lcom/android/mms/data/WorkingMessage;)Z

    move-result v0

    .line 5199
    .local v0, "showingAttachment":Z
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditorScrollView:Landroid/view/View;

    if-eqz v0, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5200
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->showSubjectEditor(Z)V

    .line 5202
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->invalidateOptionsMenu()V

    .line 5203
    return-void

    .line 5199
    :cond_2
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private editMessageItem(Lcom/android/mms/ui/MessageItem;)V
    .locals 2
    .param p1, "msgItem"    # Lcom/android/mms/ui/MessageItem;

    .prologue
    .line 1942
    const-string v0, "sms"

    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1943
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->editSmsMessageItem(Lcom/android/mms/ui/MessageItem;)V

    .line 1967
    :goto_0
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 1969
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->initRecipientsEditor()V

    .line 1971
    :cond_0
    :goto_1
    return-void

    .line 1953
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isPreparedForSending()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1958
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->sendMessage(Z)V

    .line 1961
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mEditMessageItem:Lcom/android/mms/ui/MessageItem;

    goto :goto_1

    .line 1964
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->editMmsMessageItem(Lcom/android/mms/ui/MessageItem;)V

    goto :goto_0
.end method

.method private editMmsMessageItem(Lcom/android/mms/ui/MessageItem;)V
    .locals 4
    .param p1, "msgItem"    # Lcom/android/mms/ui/MessageItem;

    .prologue
    const/4 v3, 0x0

    .line 2007
    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-static {p0, v1}, Lcom/android/mms/data/WorkingMessage;->load(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    .line 2008
    .local v0, "newWorkingMessage":Lcom/android/mms/data/WorkingMessage;
    if-nez v0, :cond_1

    .line 2029
    :cond_0
    :goto_0
    return-void

    .line 2013
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->discard()V

    .line 2015
    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 2016
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1, v2}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 2017
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->invalidateOptionsMenu()V

    .line 2019
    invoke-direct {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->drawTopPanel(Z)V

    .line 2024
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 2026
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2027
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->showSubjectEditor(Z)V

    goto :goto_0
.end method

.method private editSlideshow()V
    .locals 4

    .prologue
    .line 594
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getAsyncDialog()Lcom/android/mms/ui/AsyncDialog;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$4;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$4;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$5;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageActivity$5;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    const v3, 0x7f0b006b

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/AsyncDialog;->runAsync(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    .line 614
    return-void
.end method

.method private editSmsMessageItem(Lcom/android/mms/ui/MessageItem;)V
    .locals 8
    .param p1, "msgItem"    # Lcom/android/mms/ui/MessageItem;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1981
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    monitor-enter v3

    .line 1982
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v2

    if-gt v2, v7, :cond_0

    .line 1983
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    .line 1984
    const-wide/16 v4, -0x2

    invoke-static {v4, v5}, Lcom/android/mms/transaction/MessagingNotification;->setCurrentlyDisplayedThreadId(J)V

    .line 1987
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1989
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1990
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, v2, v1, v6, v6}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1993
    .local v0, "count":I
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 1998
    if-lez v0, :cond_1

    .line 1999
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v2

    if-ne v2, v7, :cond_1

    .line 2000
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v2, v6}, Lcom/android/mms/ui/MessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 2003
    :cond_1
    return-void

    .line 1987
    .end local v0    # "count":I
    .end local v1    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private exitComposeMessageActivity(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "exit"    # Ljava/lang/Runnable;

    .prologue
    .line 3785
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3786
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 3787
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->discard()V

    .line 3788
    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$34;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$34;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageActivity$34;->start()V

    .line 3817
    :goto_0
    return-void

    .line 3802
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3804
    const/4 v0, -0x2

    .line 3805
    .local v0, "validNum":I
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3806
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/RecipientsEditor;->hasValidRecipient(Z)I

    move-result v0

    .line 3809
    :cond_1
    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$DiscardDraftListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity$DiscardDraftListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V

    invoke-static {p0, v1, v0}, Lcom/android/mms/ui/MessageUtils;->showDiscardDraftConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;I)V

    goto :goto_0

    .line 3815
    .end local v0    # "validNum":I
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mToastForDraftSave:Z

    .line 3816
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private forwardMessage(Lcom/android/mms/ui/MessageItem;)V
    .locals 4

    .prologue
    .line 2048
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRestrictedMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->isValidForForward(Lcom/android/mms/ui/MessageItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2049
    const v0, 0x7f0b0167

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2124
    :goto_0
    return-void

    .line 2052
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTempThreadId:J

    .line 2058
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getAsyncDialog()Lcom/android/mms/ui/AsyncDialog;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$23;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$23;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V

    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$24;

    invoke-direct {v2, p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$24;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V

    const v3, 0x7f0b006b

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/AsyncDialog;->runAsync(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    goto :goto_0
.end method

.method private getBody(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 6506
    if-nez p1, :cond_1

    .line 6522
    :cond_0
    :goto_0
    return-object v0

    .line 6509
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 6510
    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6513
    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 6514
    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 6515
    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 6516
    const-string v5, "body="

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6518
    const/4 v5, 0x5

    :try_start_0
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 6519
    :catch_0
    move-exception v4

    .line 6515
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private getContactUriForEmail(Ljava/lang/String;)Landroid/net/Uri;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1763
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "contact_id"

    aput-object v0, v3, v5

    const-string v0, "display_name"

    aput-object v0, v3, v6

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1767
    if-eqz v1, :cond_1

    .line 1769
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1770
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1771
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1772
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 1776
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1779
    :cond_1
    :goto_0
    return-object v4

    .line 1776
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getContactUriForPhoneNumber(Ljava/lang/String;)Landroid/net/Uri;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1783
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 1784
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1785
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 1804
    :cond_0
    :goto_0
    return-object v3

    .line 1788
    :cond_1
    new-array v2, v6, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v4

    .line 1789
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1790
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1792
    if-eqz v1, :cond_2

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ge v0, v6, :cond_3

    .line 1798
    :cond_2
    if-eqz v1, :cond_0

    .line 1799
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1793
    :cond_3
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1794
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1795
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 1798
    if-eqz v1, :cond_0

    .line 1799
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1798
    :cond_4
    if-eqz v1, :cond_0

    .line 1799
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1798
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_5

    .line 1799
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1800
    :cond_5
    throw v0
.end method

.method private getDrmMimeMenuStringRsrc(J)I
    .locals 1

    .prologue
    .line 2537
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->isDrmRingtoneWithRights(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2538
    const v0, 0x7f0b010e

    .line 2540
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDrmMimeSavedStringRsrc(JZ)I
    .locals 1

    .prologue
    .line 2544
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->isDrmRingtoneWithRights(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2545
    if-eqz p3, :cond_0

    const v0, 0x7f0b010f

    .line 2547
    :goto_0
    return v0

    .line 2545
    :cond_0
    const v0, 0x7f0b0110

    goto :goto_0

    .line 2547
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMessageDate(Landroid/net/Uri;)J
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 5901
    if-eqz p1, :cond_1

    .line 5902
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    new-array v3, v7, [Ljava/lang/String;

    const-string v0, "date"

    aput-object v0, v3, v2

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 5904
    if-eqz v2, :cond_1

    .line 5906
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v7, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5907
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    const-wide/16 v3, 0x3e8

    mul-long/2addr v0, v3

    .line 5910
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 5914
    :goto_0
    return-wide v0

    .line 5910
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 5914
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 5910
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getMessageItem(Ljava/lang/String;JZ)Lcom/android/mms/ui/MessageItem;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "msgId"    # J
    .param p4, "createFromCursorIfNotInCache"    # Z

    .prologue
    .line 961
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMultiSimName(I)Ljava/lang/String;
    .locals 2
    .param p1, "subscription"    # I

    .prologue
    .line 1209
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->MULTI_SIM_NAME:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRecipients()Lcom/android/mms/data/ContactList;
    .locals 1

    .prologue
    .line 2785
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2786
    sget-object v0, Lcom/android/mms/ui/ComposeMessageActivity;->sEmptyContactList:Lcom/android/mms/data/ContactList;

    if-nez v0, :cond_0

    .line 2787
    new-instance v0, Lcom/android/mms/data/ContactList;

    invoke-direct {v0}, Lcom/android/mms/data/ContactList;-><init>()V

    sput-object v0, Lcom/android/mms/ui/ComposeMessageActivity;->sEmptyContactList:Lcom/android/mms/data/ContactList;

    .line 2789
    :cond_0
    sget-object v0, Lcom/android/mms/ui/ComposeMessageActivity;->sEmptyContactList:Lcom/android/mms/data/ContactList;

    .line 2791
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    goto :goto_0
.end method

.method private getResourcesString(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # I
    .param p2, "mediaName"    # Ljava/lang/String;

    .prologue
    .line 5145
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 5146
    .local v0, "r":Landroid/content/res/Resources;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getSelectedUriFromMessageList(Landroid/widget/ListView;I)Landroid/net/Uri;
    .locals 6

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 1635
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageListItem;

    .line 1636
    if-nez v0, :cond_0

    move-object v0, v1

    .line 1673
    :goto_0
    return-object v0

    .line 1651
    :cond_0
    const v3, 0x7f0a0055

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1652
    if-eqz v0, :cond_2

    .line 1653
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 1654
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .line 1655
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    move v5, v0

    move-object v0, v3

    move v3, v2

    move v2, v5

    .line 1660
    :goto_1
    if-eq v3, v2, :cond_1

    .line 1661
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1662
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1664
    check-cast v0, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/URLSpan;

    invoke-interface {v0, v4, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 1667
    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1668
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 1673
    goto :goto_0

    :cond_2
    move v3, v2

    move-object v0, v1

    goto :goto_1
.end method

.method private getSimName()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7079
    const-string v0, ""

    .line 7080
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7081
    invoke-static {p0, v2}, Lcom/android/mms/ui/MessageUtils;->isSimActivated(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0, v3}, Lcom/android/mms/ui/MessageUtils;->isSimActivated(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7082
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/telephony/MSimTelephonyManager;->getCurrentPhoneType(I)I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 7083
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UIM/SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7099
    :cond_0
    :goto_0
    return-object v0

    .line 7084
    :cond_1
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/telephony/MSimTelephonyManager;->getCurrentPhoneType(I)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 7085
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "USIM/SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7088
    :cond_2
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/telephony/MSimTelephonyManager;->getCurrentPhoneType(I)I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 7089
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7091
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7095
    :cond_4
    invoke-static {p0, v2}, Lcom/android/mms/ui/MessageUtils;->isSimActivated(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7096
    const-string v0, "UIM"

    goto :goto_0
.end method

.method private getUniqueDestination(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .prologue
    .line 2733
    new-instance v1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2735
    const/4 v0, 0x2

    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2736
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2735
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2738
    :cond_0
    return-object v1
.end method

.method private goToConversationList()V
    .locals 2

    .prologue
    .line 3827
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->finish()V

    .line 3828
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3829
    const-class v1, Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3830
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3831
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3832
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    .line 3833
    return-void
.end method

.method private handleAddAttachmentError(II)V
    .locals 3

    .prologue
    .line 4808
    if-nez p1, :cond_0

    .line 4860
    :goto_0
    return-void

    .line 4811
    :cond_0
    const-string v0, "Mms/compose"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAddAttachmentError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4813
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$47;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/mms/ui/ComposeMessageActivity$47;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;II)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private handleDataSwitch(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 6595
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 6596
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 6597
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0b0159

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 6598
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0b015c

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 6604
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$66;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$66;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 6629
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 6630
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 6632
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mCurrentDataSubscription:I

    invoke-static {v0}, Lcom/android/mms/MmsConfig;->backupDataSubscription(I)V

    .line 6635
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$DataSwitchAsyncTask;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$DataSwitchAsyncTask;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDataSwitchTask:Lcom/android/mms/ui/ComposeMessageActivity$DataSwitchAsyncTask;

    .line 6636
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDataSwitchTask:Lcom/android/mms/ui/ComposeMessageActivity$DataSwitchAsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$DataSwitchAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 6637
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsDataSwitching:Z

    .line 6638
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDataSwitchHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 6639
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDataSwitchHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3a98

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 6641
    return-void
.end method

.method private handleDataSwitchConnected()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 6657
    const-string v0, "Mms/compose"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDataSwitchConnected mIsReceiveMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsReceiveMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6658
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDataSwitchHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6659
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsReceiveMode:Z

    if-eqz v0, :cond_1

    .line 6660
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedMsgListItem:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListItem;->startDownload()V

    .line 6667
    :goto_0
    iput-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsDataConnecting:Z

    .line 6668
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedMsgListItem:Lcom/android/mms/ui/MessageListItem;

    .line 6669
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDataStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6670
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 6671
    :cond_0
    return-void

    .line 6663
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getDataSubscription()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setCurrentConvSub(I)V

    .line 6664
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->sendMessage(Z)V

    .line 6665
    iput-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSwitchToSend:Z

    goto :goto_0
.end method

.method private handleDataSwitchDone(Z)V
    .locals 4

    .prologue
    .line 6644
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsReceiveMode:Z

    .line 6645
    const-string v0, "Mms/compose"

    const-string v1, "switch Data Subscription successfully"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6646
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDataSwitchHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6647
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0b015d

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 6648
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDataSwitchHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 6650
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 6651
    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6652
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDataStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 6653
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsDataConnecting:Z

    .line 6654
    return-void
.end method

.method private handleDataSwitchTimeout()V
    .locals 2

    .prologue
    .line 6674
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsDataSwitching:Z

    .line 6675
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->removeDataSwitchTask()V

    .line 6676
    const-string v0, "Mms/compose"

    const-string v1, "data switch time out"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6677
    const v0, 0x7f0b015e

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 6678
    return-void
.end method

.method private handleForwardedMessage()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 4990
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 4994
    const-string v0, "forwarded_message"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 5014
    :goto_0
    return v0

    .line 4998
    :cond_0
    const-string v0, "msg_uri"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 5000
    const-string v3, "Mms:app"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5001
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 5004
    :cond_1
    if-eqz v0, :cond_2

    .line 5005
    invoke-static {p0, v0}, Lcom/android/mms/data/WorkingMessage;->load(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 5006
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string v3, "subject"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 5012
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 5014
    const/4 v0, 0x1

    goto :goto_0

    .line 5008
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string v1, "sms_body"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private handleSendIntent()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f0b0069

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 5019
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 5020
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 5021
    if-nez v2, :cond_1

    .line 5084
    :cond_0
    :goto_0
    return v1

    .line 5025
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    .line 5026
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 5027
    const-string v5, "android.intent.action.SEND"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 5028
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5029
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 5030
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getAsyncDialog()Lcom/android/mms/ui/AsyncDialog;

    move-result-object v1

    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$52;

    invoke-direct {v2, p0, v4, v0}, Lcom/android/mms/ui/ComposeMessageActivity$52;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2, v9, v8}, Lcom/android/mms/ui/AsyncDialog;->runAsync(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    move v1, v3

    .line 5036
    goto :goto_0

    .line 5037
    :cond_2
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5038
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    move v1, v3

    .line 5039
    goto :goto_0

    .line 5041
    :cond_3
    const-string v5, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5043
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    .line 5044
    const-string v5, "android.intent.extra.STREAM"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 5045
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    .line 5046
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 5047
    add-int v6, v2, v0

    sget v7, Lcom/android/mms/ui/SlideshowEditor;->MAX_SLIDE_NUM:I

    if-le v6, v7, :cond_5

    .line 5048
    sget v6, Lcom/android/mms/ui/SlideshowEditor;->MAX_SLIDE_NUM:I

    sub-int v0, v6, v0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5050
    const v2, 0x7f0b0068

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    sget v7, Lcom/android/mms/ui/SlideshowEditor;->MAX_SLIDE_NUM:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v3

    invoke-virtual {p0, v2, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 5060
    :goto_2
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getAsyncDialog()Lcom/android/mms/ui/AsyncDialog;

    move-result-object v1

    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$53;

    invoke-direct {v2, p0, v0, v5, v4}, Lcom/android/mms/ui/ComposeMessageActivity$53;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;ILjava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v9, v8}, Lcom/android/mms/ui/AsyncDialog;->runAsync(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    move v1, v3

    .line 5082
    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 5045
    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method private hasIccCardCount()I
    .locals 5

    .prologue
    .line 1343
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    .line 1344
    .local v2, "tm":Landroid/telephony/MSimTelephonyManager;
    const/4 v0, 0x0

    .line 1345
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1347
    invoke-virtual {v2, v1}, Landroid/telephony/MSimTelephonyManager;->getSimState(I)I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 1348
    add-int/lit8 v0, v0, 0x1

    .line 1345
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1352
    :cond_1
    return v0
.end method

.method private haveSomethingToCopyToSDCard(J)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 2397
    const/4 v0, 0x0

    .line 2399
    :try_start_0
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/mms/model/SlideshowModel;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v3, v0

    .line 2404
    :goto_0
    if-nez v3, :cond_0

    .line 2438
    :goto_1
    return v1

    .line 2401
    :catch_0
    move-exception v2

    .line 2402
    const-string v2, "Mms/compose"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "haveSomethingToCopyToSDCard can\'t load pdu body: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v0

    goto :goto_0

    .line 2409
    :cond_0
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v4

    move v2, v1

    .line 2410
    :goto_2
    if-ge v2, v4, :cond_6

    .line 2411
    invoke-virtual {v3, v2}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v5

    .line 2412
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([B)V

    .line 2414
    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v6

    if-eqz v6, :cond_2

    .line 2415
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    .line 2416
    const-string v5, "application/oct-stream"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, ".vcf"

    invoke-virtual {v6, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2417
    const-string v0, "text/x-vCard"

    .line 2420
    :cond_1
    const-string v5, "text/plain"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, ".vcs"

    invoke-virtual {v6, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2421
    const-string v0, "text/x-vCalendar"

    .line 2426
    :cond_2
    const-string v5, "Mms:app"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2427
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CMA] haveSomethingToCopyToSDCard: part["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] contentType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 2430
    :cond_3
    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v0}, Lcom/android/mms/drm/DrmUtils;->isDrmType(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "application/ogg"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "text/x-vCalendar"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v5, "text/x-vCard"

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2434
    :cond_4
    const/4 v0, 0x1

    :goto_3
    move v1, v0

    .line 2438
    goto/16 :goto_1

    .line 2410
    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_2

    :cond_6
    move v0, v1

    goto :goto_3
.end method

.method private hideKeyboard()V
    .locals 3

    .prologue
    .line 5858
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 5860
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 5861
    return-void
.end method

.method private hideOrShowTopPanel()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3116
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isSubjectEditorVisible()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 3117
    .local v0, "anySubViewsVisible":Z
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTopPanel:Landroid/view/View;

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3118
    return-void

    .end local v0    # "anySubViewsVisible":Z
    :cond_1
    move v0, v1

    .line 3116
    goto :goto_0

    .line 3117
    .restart local v0    # "anySubViewsVisible":Z
    :cond_2
    const/16 v1, 0x8

    goto :goto_1
.end method

.method private hideRecipientEditor()V
    .locals 2

    .prologue
    .line 3836
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_0

    .line 3837
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3838
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setVisibility(I)V

    .line 3839
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hideOrShowTopPanel()V

    .line 3841
    :cond_0
    return-void
.end method

.method private initActivityState(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5918
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 5919
    if-eqz p1, :cond_1

    .line 5920
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->setIntent(Landroid/content/Intent;)V

    .line 5921
    const-string v0, "recipients"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5923
    invoke-static {v0, v4, v5}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-static {p0, v0, v4}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Lcom/android/mms/data/ContactList;Z)Lcom/android/mms/data/Conversation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    .line 5926
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->removeRecipientsListeners()V

    .line 5927
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->addRecipientsListeners()V

    .line 5928
    const-string v0, "exit_on_sent"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendDiscreetMode:Z

    .line 5929
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendDiscreetMode:Z

    if-eqz v0, :cond_0

    .line 5930
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v6}, Lcom/android/mms/ui/MessageListView;->setVisibility(I)V

    .line 5932
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, p1}, Lcom/android/mms/data/WorkingMessage;->readStateFromBundle(Landroid/os/Bundle;)V

    .line 5974
    :goto_0
    return-void

    .line 5938
    :cond_1
    const-string v1, "thread_id"

    invoke-virtual {v0, v1, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 5939
    cmp-long v3, v1, v7

    if-lez v3, :cond_4

    .line 5941
    invoke-static {p0, v1, v2, v4}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    .line 5963
    :goto_1
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->addRecipientsListeners()V

    .line 5964
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateThreadIdIfRunning()V

    .line 5966
    const-string v1, "exit_on_sent"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendDiscreetMode:Z

    .line 5967
    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendDiscreetMode:Z

    if-eqz v1, :cond_2

    .line 5968
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v1, v6}, Lcom/android/mms/ui/MessageListView;->setVisibility(I)V

    .line 5970
    :cond_2
    const-string v1, "sms_body"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5971
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string v2, "sms_body"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 5973
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string v2, "subject"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 5943
    :cond_4
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 5944
    if-eqz v1, :cond_5

    .line 5947
    invoke-static {p0, v1, v4}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/data/Conversation;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    .line 5948
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getBody(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 5952
    :cond_5
    const-string v1, "address"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5953
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 5955
    invoke-static {v1, v4, v5}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-static {p0, v1, v4}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Lcom/android/mms/data/ContactList;Z)Lcom/android/mms/data/Conversation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    goto :goto_1

    .line 5959
    :cond_6
    invoke-static {p0}, Lcom/android/mms/data/Conversation;->createNew(Landroid/content/Context;)Lcom/android/mms/data/Conversation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    goto :goto_1
.end method

.method private initFocus()V
    .locals 1

    .prologue
    .line 5977
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsKeyboardOpen:Z

    if-nez v0, :cond_0

    .line 5993
    :goto_0
    return-void

    .line 5984
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5987
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    goto :goto_0

    .line 5992
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0
.end method

.method private initMessageList()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 5586
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v0, :cond_0

    .line 5613
    :goto_0
    return-void

    .line 5590
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "highlight"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5591
    if-nez v0, :cond_1

    move-object v5, v2

    .line 5596
    :goto_1
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const/4 v4, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MessageListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;ZLjava/util/regex/Pattern;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    .line 5597
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->setOnDataSetChangedListener(Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;)V

    .line 5598
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageListItemHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->setMsgListItemHandler(Landroid/os/Handler;)V

    .line 5599
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5600
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v6}, Lcom/android/mms/ui/MessageListView;->setItemsCanFocus(Z)V

    .line 5601
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendDiscreetMode:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    :goto_2
    invoke-virtual {v1, v0}, Lcom/android/mms/ui/MessageListView;->setVisibility(I)V

    .line 5602
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 5603
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$59;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$59;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 5612
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$MessageListListener;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$MessageListListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 5591
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\b"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v5

    goto :goto_1

    :cond_2
    move v0, v6

    .line 5601
    goto :goto_2
.end method

.method private initRecipientsEditor()V
    .locals 9

    .prologue
    const v8, 0x7f0a008d

    const v7, 0x7f0a008c

    const/4 v1, 0x0

    .line 2854
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3015
    :goto_0
    return-void

    .line 2859
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    .line 2860
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->loadRecipientsToCc()V

    .line 2862
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/Conversation;->getRecipientsToCcNumbers(Z)[Ljava/lang/String;

    move-result-object v3

    .line 2863
    array-length v4, v3

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 2864
    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    .line 2863
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2867
    :cond_1
    const v0, 0x7f0a000f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 2868
    if-eqz v0, :cond_2

    .line 2869
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    .line 2870
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/RecipientsEditor;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    .line 2871
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsPicker:Landroid/widget/ImageButton;

    .line 2878
    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    new-instance v3, Lcom/android/mms/ui/ComposeMessageActivity$27;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/ComposeMessageActivity$27;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/RecipientsEditor;->addDrawableTouchedListener(Lcom/android/mms/ui/RecipientsEditor$DrawableTouchedListener;)V

    .line 2964
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsPicker:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2966
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    new-instance v3, Lcom/android/mms/ui/ChipsRecipientAdapter;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/ChipsRecipientAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/RecipientsEditor;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2967
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/RecipientsEditor;->populate(Lcom/android/mms/data/ContactList;)V

    .line 2968
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/RecipientsEditor;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 2969
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/RecipientsEditor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2971
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsWatcher:Landroid/text/TextWatcher;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v2}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 2979
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$28;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageActivity$28;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/RecipientsEditor;->setOnSelectChipRunnable(Ljava/lang/Runnable;)V

    .line 2998
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$29;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageActivity$29;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/RecipientsEditor;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 3011
    const v0, 0x7f0a0010

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsButton:Landroid/view/View;

    .line 3012
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3014
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTopPanel:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 2873
    :cond_2
    invoke-virtual {p0, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/RecipientsEditor;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    .line 2874
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setVisibility(I)V

    .line 2875
    invoke-virtual {p0, v8}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsPicker:Landroid/widget/ImageButton;

    goto :goto_2
.end method

.method private initResourceRefs()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5448
    const v0, 0x7f0a0016

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageListView;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    .line 5449
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 5454
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/MessageListView;->setClipToPadding(Z)V

    .line 5456
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$58;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$58;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setOnSizeChangedListener(Lcom/android/mms/ui/MessageListView$OnSizeChangedListener;)V

    .line 5477
    const v0, 0x7f0a0020

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBottomPanel:Landroid/view/View;

    .line 5478
    const v0, 0x7f0a0015

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    .line 5479
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 5480
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 5486
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$MmsLengthFilter;

    invoke-direct {v2, p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity$MmsLengthFilter;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 5487
    const v0, 0x7f0a0024

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;

    .line 5499
    const v0, 0x7f0a0026

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSub1SendButton:Landroid/widget/TextView;

    .line 5500
    const v0, 0x7f0a0027

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSub2SendButton:Landroid/widget/TextView;

    .line 5501
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSub1SendButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5502
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5503
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSub2SendButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5504
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSub2SendButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5508
    :goto_0
    const v0, 0x7f0a000e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTopPanel:Landroid/view/View;

    .line 5509
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTopPanel:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 5510
    const v0, 0x7f0a0018

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/AttachmentEditor;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    .line 5511
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditorHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/AttachmentEditor;->setHandler(Landroid/os/Handler;)V

    .line 5512
    const v0, 0x7f0a0017

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditorScrollView:Landroid/view/View;

    .line 5513
    const v0, 0x7f0a0023

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSmsTemplateButton:Landroid/widget/ImageButton;

    .line 5514
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSmsTemplateButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5515
    const v0, 0x7f0a0011

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mCallLogButton:Landroid/widget/Button;

    .line 5516
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mCallLogButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5517
    const v0, 0x7f0a0012

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAllButton:Landroid/widget/Button;

    .line 5518
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAllButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5519
    const v0, 0x7f0a0013

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mGroupButton:Landroid/widget/Button;

    .line 5520
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mGroupButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5522
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->setFontSize()V

    .line 5523
    return-void

    .line 5506
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSub1SendButton:Landroid/widget/TextView;

    const v1, 0x7f0b003f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private insertSmiley(Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 2
    .param p1, "edit"    # Landroid/widget/EditText;
    .param p2, "insertText"    # Ljava/lang/String;

    .prologue
    .line 6451
    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 6453
    .local v0, "where":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 6454
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 6458
    :goto_0
    return-void

    .line 6456
    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0
.end method

.method private isAudioFile(Landroid/net/Uri;)Z
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 6563
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 6564
    .local v2, "path":Ljava/lang/String;
    invoke-static {v2}, Landroid/media/MediaFile;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6565
    .local v1, "mimeType":Ljava/lang/String;
    invoke-static {v1}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    .line 6566
    .local v0, "fileType":I
    invoke-static {v0}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v3

    return v3
.end method

.method private isAudioPlayerActivityRunning(I)Z
    .locals 3
    .param p1, "requestCode"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 740
    const/16 v2, 0x8

    if-ne p1, v2, :cond_1

    .line 741
    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsAudioPlayerActivityRunning:Z

    if-eqz v2, :cond_0

    .line 748
    :goto_0
    return v0

    .line 744
    :cond_0
    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsAudioPlayerActivityRunning:Z

    move v0, v1

    .line 745
    goto :goto_0

    :cond_1
    move v0, v1

    .line 748
    goto :goto_0
.end method

.method private isCursorValid()Z
    .locals 4

    .prologue
    .line 967
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 968
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 969
    :cond_0
    const-string v1, "Mms/compose"

    const-string v2, "Bad cursor."

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 970
    const/4 v1, 0x0

    .line 972
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isDrmRingtoneWithRights(J)Z
    .locals 11
    .param p1, "msgId"    # J

    .prologue
    const/4 v7, 0x0

    .line 2478
    const/4 v0, 0x0

    .line 2480
    .local v0, "body":Lcom/google/android/mms/pdu/PduBody;
    :try_start_0
    sget-object v8, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/mms/model/SlideshowModel;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2485
    :goto_0
    if-nez v0, :cond_1

    .line 2503
    :cond_0
    :goto_1
    return v7

    .line 2482
    :catch_0
    move-exception v1

    .line 2483
    .local v1, "e":Lcom/google/android/mms/MmsException;
    const-string v8, "Mms/compose"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isDrmRingtoneWithRights can\'t load pdu body: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2489
    .end local v1    # "e":Lcom/google/android/mms/MmsException;
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v5

    .line 2490
    .local v5, "partNum":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v5, :cond_0

    .line 2491
    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v4

    .line 2492
    .local v4, "part":Lcom/google/android/mms/pdu/PduPart;
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/String;-><init>([B)V

    .line 2494
    .local v6, "type":Ljava/lang/String;
    invoke-static {v6}, Lcom/android/mms/drm/DrmUtils;->isDrmType(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2495
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/MmsApp;->getDrmManagerClient()Landroid/drm/DrmManagerClient;

    move-result-object v8

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 2497
    .local v3, "mimeType":Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x2

    invoke-static {v8, v9}, Lcom/android/mms/drm/DrmUtils;->haveRightsForAction(Landroid/net/Uri;I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2499
    const/4 v7, 0x1

    goto :goto_1

    .line 2490
    .end local v3    # "mimeType":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private isForwardable(J)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 2512
    const/4 v1, 0x0

    .line 2514
    :try_start_0
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/mms/model/SlideshowModel;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 2519
    :goto_0
    if-nez v2, :cond_1

    .line 2533
    :cond_0
    :goto_1
    return v0

    .line 2516
    :catch_0
    move-exception v2

    .line 2517
    const-string v2, "Mms/compose"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDrmMimeType can\'t load pdu body: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    goto :goto_0

    .line 2523
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v3

    move v1, v0

    .line 2524
    :goto_2
    if-ge v1, v3, :cond_3

    .line 2525
    invoke-virtual {v2, v1}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v4

    .line 2526
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    .line 2528
    invoke-static {v5}, Lcom/android/mms/drm/DrmUtils;->isDrmType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/android/mms/drm/DrmUtils;->haveRightsForAction(Landroid/net/Uri;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2524
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2533
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private isImageFile(Landroid/net/Uri;)Z
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 5088
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 5089
    .local v2, "path":Ljava/lang/String;
    invoke-static {v2}, Landroid/media/MediaFile;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5090
    .local v1, "mimeType":Ljava/lang/String;
    invoke-static {v1}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    .line 5091
    .local v0, "fileType":I
    invoke-static {v0}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v3

    return v3
.end method

.method private isMediaExist()Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 5778
    const/4 v0, 0x1

    .line 5779
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5780
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    .line 5781
    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v1, v0

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 5782
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v3, v1

    :cond_0
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/mms/model/MediaModel;

    .line 5783
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5784
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "file://"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5785
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 5786
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5787
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6

    move v6, v7

    .line 5792
    :goto_2
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "content://media"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5793
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 5794
    if-eqz v0, :cond_2

    .line 5795
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    move v6, v7

    .line 5798
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    move v3, v6

    goto :goto_1

    :cond_3
    move v1, v3

    .line 5800
    goto :goto_0

    :cond_4
    move v1, v0

    .line 5805
    :cond_5
    return v1

    :cond_6
    move v6, v3

    goto :goto_2
.end method

.method private isMsgSizeExceedDlgPopupTimesDue()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4863
    iget v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageSizeExceedCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageSizeExceedCounter:I

    .line 4864
    iget v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageSizeExceedCounter:I

    if-ge v0, v1, :cond_0

    .line 4867
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMultiSimEnabled()Z
    .locals 1

    .prologue
    .line 1356
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hasIccCardCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPreparedForSending()Z
    .locals 2

    .prologue
    .line 5688
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->recipientCount()I

    move-result v0

    .line 5690
    .local v0, "recipientCount":I
    if-lez v0, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v1

    if-gt v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isRecipientCallable()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 3999
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 4000
    .local v0, "recipients":Lcom/android/mms/data/ContactList;
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->containsEmail()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isRecipientEmpty()Z
    .locals 2

    .prologue
    .line 3820
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->hasValidRecipient(Z)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->getRecipientCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRecipientsEditorVisible()Z
    .locals 1

    .prologue
    .line 3844
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSaveToDownload(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 2551
    invoke-static {p1}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/ogg"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "text/x-vCard"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2555
    :cond_0
    const/4 v0, 0x1

    .line 2557
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSpecialChar(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 1616
    const/16 v0, 0x2a

    if-eq p1, v0, :cond_0

    const/16 v0, 0x25

    if-eq p1, v0, :cond_0

    const/16 v0, 0x24

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSubjectEditorVisible()Z
    .locals 1

    .prologue
    .line 3849
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidForForward(Lcom/android/mms/ui/MessageItem;)Z
    .locals 2
    .param p1, "msgItem"    # Lcom/android/mms/ui/MessageItem;

    .prologue
    .line 2038
    :try_start_0
    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v1, :cond_0

    .line 2039
    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->checkContentRestriction()V
    :try_end_0
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2045
    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 2041
    :catch_0
    move-exception v0

    .line 2042
    .local v0, "e":Lcom/android/mms/ContentRestrictionException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isVideoFile(Landroid/net/Uri;)Z
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 5095
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 5096
    .local v2, "path":Ljava/lang/String;
    invoke-static {v2}, Landroid/media/MediaFile;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5097
    .local v1, "mimeType":Ljava/lang/String;
    invoke-static {v1}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    .line 5098
    .local v0, "fileType":I
    invoke-static {v0}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v3

    return v3
.end method

.method private launchMultiplePhonePicker()V
    .locals 3

    .prologue
    .line 5306
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.MULTI_PICK"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5307
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientsEditor;->getExsitNumbers()Ljava/lang/String;

    move-result-object v1

    .line 5308
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5309
    const-string v2, "com.android.contacts.extra.PHONE_URIS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5327
    :cond_0
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsPickingContact:Z

    .line 5328
    const/16 v1, 0x6d

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5332
    :goto_0
    return-void

    .line 5329
    :catch_0
    move-exception v0

    .line 5330
    const v0, 0x7f0b0187

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private loadDraft()Z
    .locals 2

    .prologue
    .line 5622
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5623
    const-string v0, "Mms/compose"

    const-string v1, "CMA.loadDraft: called with non-empty working message, bail"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5624
    const/4 v0, 0x0

    .line 5649
    :goto_0
    return v0

    .line 5627
    :cond_0
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5628
    const-string v0, "CMA.loadDraft"

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 5631
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$60;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$60;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-static {p0, v0, v1}, Lcom/android/mms/data/WorkingMessage;->loadDraft(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/Conversation;Ljava/lang/Runnable;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 5647
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 5649
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadMessagesAndDraft(I)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 3409
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendDiscreetMode:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessagesAndDraftLoaded:Z

    if-nez v0, :cond_2

    .line 3410
    const-string v0, "Mms:app"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3411
    const-string v0, "Mms/compose"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "### CMA.loadMessagesAndDraft: flag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3413
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->loadMessageContent()V

    .line 3415
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mShouldLoadDraft:Z

    if-eqz v0, :cond_3

    .line 3416
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->loadDraft()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3417
    const/4 v0, 0x0

    .line 3420
    :goto_0
    if-eqz v0, :cond_1

    .line 3421
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->drawBottomPanel()V

    .line 3423
    :cond_1
    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessagesAndDraftLoaded:Z

    .line 3425
    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private lockMessage(Lcom/android/mms/ui/MessageItem;Z)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 2373
    const-string v0, "sms"

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2374
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 2378
    :goto_0
    iget-wide v2, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 2380
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 2381
    const-string v4, "locked"

    if-eqz p2, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2383
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$25;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity$25;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;Landroid/content/ContentValues;)V

    const-string v2, "ComposeMessageActivity.lockMessage"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2390
    return-void

    .line 2376
    :cond_0
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 2381
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static log(Ljava/lang/String;)V
    .locals 7
    .param p0, "logMsg"    # Ljava/lang/String;

    .prologue
    .line 575
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 576
    .local v0, "current":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    .line 577
    .local v3, "tid":J
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 578
    .local v2, "stack":[Ljava/lang/StackTraceElement;
    const/4 v5, 0x3

    aget-object v5, v2, v5

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    .line 580
    .local v1, "methodName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 581
    const-string v5, "Mms/compose"

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    return-void
.end method

.method private onAddCc()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 6695
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/RecipientsEditor;->constructContactsFromInput(Z)Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, v0}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 6696
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    .line 6697
    if-le v2, v3, :cond_1

    .line 6698
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    new-array v3, v2, [Ljava/lang/String;

    .line 6699
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    new-array v4, v2, [Ljava/lang/String;

    .line 6700
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    new-array v5, v2, [Z

    .line 6701
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2, v0}, Lcom/android/mms/data/Conversation;->getRecipientsToCcNumbers(Z)[Ljava/lang/String;

    move-result-object v6

    .line 6704
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v0

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 6705
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNameAndNumber()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    .line 6706
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 6707
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    aput-boolean v0, v5, v1

    move v1, v2

    goto :goto_0

    .line 6711
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b01b8

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b007d

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$69;

    invoke-direct {v2, p0, v5, v4}, Lcom/android/mms/ui/ComposeMessageActivity$69;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;[Z[Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b007e

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$68;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageActivity$68;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$67;

    invoke-direct {v1, p0, v5}, Lcom/android/mms/ui/ComposeMessageActivity$67;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;[Z)V

    invoke-virtual {v0, v3, v5, v1}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 6796
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 6801
    :goto_1
    return-void

    .line 6798
    :cond_1
    const v0, 0x7f0b01b6

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private onKeyboardStateChanged(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3710
    if-eqz p1, :cond_2

    .line 3711
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_0

    .line 3712
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/RecipientsEditor;->setFocusableInTouchMode(Z)V

    .line 3714
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 3715
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 3717
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 3718
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    const v1, 0x7f0b0049

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 3729
    :goto_0
    return-void

    .line 3720
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_3

    .line 3721
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setFocusable(Z)V

    .line 3723
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    .line 3724
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 3726
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 3727
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    const v1, 0x7f0b004a

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    goto :goto_0
.end method

.method private pickContacts(II)V
    .locals 2

    .prologue
    .line 618
    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    .line 620
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.MULTI_PICK_VCARD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 621
    invoke-virtual {p0, v0, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 629
    :goto_0
    return-void

    .line 625
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/MultiPickContactsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 626
    const-string v1, "mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 627
    invoke-virtual {p0, v0, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private processDataReset()V
    .locals 2

    .prologue
    .line 6845
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$DataResetAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$DataResetAsyncTask;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDataResetTask:Lcom/android/mms/ui/ComposeMessageActivity$DataResetAsyncTask;

    .line 6846
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDataResetTask:Lcom/android/mms/ui/ComposeMessageActivity$DataResetAsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$DataResetAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 6847
    return-void
.end method

.method private processPickResult(Landroid/content/Intent;Landroid/net/Uri;)V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 4689
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "result"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 4690
    invoke-virtual {v5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 4691
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v2

    .line 4693
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v1, :cond_2

    .line 4694
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientsEditor;->getRecipientCount()I

    move-result v1

    add-int/2addr v1, v2

    .line 4697
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v4

    .line 4698
    const v6, 0x7fffffff

    if-eq v4, v6, :cond_1

    if-le v1, v4, :cond_1

    .line 4699
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0067

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-virtual {p0, v3, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 4772
    :goto_2
    return-void

    :cond_0
    move v2, v0

    .line 4691
    goto :goto_0

    .line 4706
    :cond_1
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    .line 4707
    new-instance v8, Landroid/app/ProgressDialog;

    invoke-direct {v8, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 4708
    const v1, 0x7f0b012e

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 4709
    const v1, 0x7f0b012f

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 4710
    invoke-virtual {v8, v7}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 4711
    invoke-virtual {v8, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 4713
    new-instance v7, Lcom/android/mms/ui/ComposeMessageActivity$44;

    invoke-direct {v7, p0, v8}, Lcom/android/mms/ui/ComposeMessageActivity$44;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/app/ProgressDialog;)V

    .line 4721
    const-wide/16 v0, 0x3e8

    invoke-virtual {v6, v7, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4723
    new-instance v9, Ljava/lang/Thread;

    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$45;

    move-object v1, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/mms/ui/ComposeMessageActivity$45;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;ILjava/util/Set;Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/Handler;Ljava/lang/Runnable;Landroid/app/ProgressDialog;)V

    const-string v1, "ComoseMessageActivity.processPickResult"

    invoke-direct {v9, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    goto :goto_2

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private recipientCount()I
    .locals 2

    .prologue
    .line 5703
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5704
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientsEditor;->getRecipientCount()I

    move-result v0

    .line 5708
    .local v0, "recipientCount":I
    :goto_0
    return v0

    .line 5706
    .end local v0    # "recipientCount":I
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    .restart local v0    # "recipientCount":I
    goto :goto_0
.end method

.method private refreshText()V
    .locals 2

    .prologue
    .line 3516
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_0

    .line 3517
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    const v1, 0x7f0b0037

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setHint(I)V

    .line 3519
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mCallLogButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 3520
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mCallLogButton:Landroid/widget/Button;

    const v1, 0x7f0b0178

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 3522
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAllButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 3523
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAllButton:Landroid/widget/Button;

    const v1, 0x7f0b0179

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 3525
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mGroupButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 3526
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mGroupButton:Landroid/widget/Button;

    const v1, 0x7f0b017a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 3528
    :cond_3
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3529
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSub1SendButton:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 3530
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSub1SendButton:Landroid/widget/TextView;

    const v1, 0x7f0b01af

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3532
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSub2SendButton:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 3533
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSub2SendButton:Landroid/widget/TextView;

    const v1, 0x7f0b01b0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3541
    :cond_5
    :goto_0
    return-void

    .line 3536
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSub1SendButton:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 3537
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSub1SendButton:Landroid/widget/TextView;

    const v1, 0x7f0b003f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private removeDataSwitchTask()V
    .locals 2

    .prologue
    .line 6681
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsDataSwitching:Z

    .line 6682
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDataSwitchHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6683
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDataSwitchTask:Lcom/android/mms/ui/ComposeMessageActivity$DataSwitchAsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDataSwitchTask:Lcom/android/mms/ui/ComposeMessageActivity$DataSwitchAsyncTask;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity$DataSwitchAsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6684
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDataSwitchTask:Lcom/android/mms/ui/ComposeMessageActivity$DataSwitchAsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$DataSwitchAsyncTask;->cancel(Z)Z

    .line 6686
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 6687
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 6689
    :cond_1
    return-void
.end method

.method private removeRecipientsListeners()V
    .locals 0

    .prologue
    .line 6492
    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 6493
    return-void
.end method

.method private resendMessage(Lcom/android/mms/ui/MessageItem;)V
    .locals 5
    .param p1, "msgItem"    # Lcom/android/mms/ui/MessageItem;

    .prologue
    const/4 v4, 0x1

    .line 2127
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2130
    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-static {p0, v1}, Lcom/android/mms/data/WorkingMessage;->load(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    .line 2131
    .local v0, "newWorkingMessage":Lcom/android/mms/data/WorkingMessage;
    if-nez v0, :cond_0

    .line 2156
    .end local v0    # "newWorkingMessage":Lcom/android/mms/data/WorkingMessage;
    :goto_0
    return-void

    .line 2135
    .restart local v0    # "newWorkingMessage":Lcom/android/mms/data/WorkingMessage;
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->discard()V

    .line 2137
    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 2138
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1, v2}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 2139
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 2153
    .end local v0    # "newWorkingMessage":Lcom/android/mms/data/WorkingMessage;
    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget v2, p1, Lcom/android/mms/ui/MessageItem;->mSubscription:I

    invoke-virtual {v1, v2}, Lcom/android/mms/data/WorkingMessage;->setCurrentConvSub(I)V

    .line 2155
    invoke-direct {p0, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->sendMessage(Z)V

    goto :goto_0

    .line 2141
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    if-le v1, v4, :cond_2

    .line 2145
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1, v4}, Lcom/android/mms/data/WorkingMessage;->setResendMultiRecipients(Z)V

    .line 2146
    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mResendSmsRecipient:Ljava/lang/String;

    .line 2149
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->editSmsMessageItem(Lcom/android/mms/ui/MessageItem;)V

    goto :goto_1
.end method

.method private resetConfiguration(Landroid/content/res/Configuration;)Z
    .locals 5
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3698
    iget v1, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsKeyboardOpen:Z

    .line 3699
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    move v0, v2

    .line 3700
    .local v0, "isLandscape":Z
    :goto_1
    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsLandscape:Z

    if-eq v1, v0, :cond_2

    .line 3701
    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsLandscape:Z

    .line 3704
    :goto_2
    return v2

    .end local v0    # "isLandscape":Z
    :cond_0
    move v1, v3

    .line 3698
    goto :goto_0

    :cond_1
    move v0, v3

    .line 3699
    goto :goto_1

    .restart local v0    # "isLandscape":Z
    :cond_2
    move v2, v3

    .line 3704
    goto :goto_2
.end method

.method private resetCounter()V
    .locals 2

    .prologue
    .line 976
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 977
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 978
    return-void
.end method

.method private resetMessage()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5809
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5810
    const-string v0, "resetMessage"

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 5814
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/AttachmentEditor;->hideView()V

    .line 5815
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditorScrollView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5818
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->showSubjectEditor(Z)V

    .line 5821
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 5827
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 5830
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/method/TextKeyListener;->clear(Landroid/text/Editable;)V

    .line 5831
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSmsTemplateButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 5833
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->clearConversation(Lcom/android/mms/data/Conversation;Z)V

    .line 5834
    invoke-static {p0}, Lcom/android/mms/data/WorkingMessage;->createEmpty(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 5835
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 5837
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hideRecipientEditor()V

    .line 5838
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->drawBottomPanel()V

    .line 5841
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateSendButtonState()V

    .line 5844
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 5848
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsLandscape:Z

    if-eqz v0, :cond_1

    .line 5849
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hideKeyboard()V

    .line 5852
    :cond_1
    iput v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mLastRecipientCount:I

    .line 5853
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendingMessage:Z

    .line 5854
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->invalidateOptionsMenu()V

    .line 5855
    return-void
.end method

.method private sanityCheckConversation()V
    .locals 2

    .prologue
    .line 3276
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    if-eq v0, v1, :cond_0

    .line 3277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ComposeMessageActivity: mWorkingMessage.mConversation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mConversation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", MISMATCH!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/mms/LogTag;->warnPossibleRecipientMismatch(Ljava/lang/String;Landroid/app/Activity;)V

    .line 3282
    :cond_0
    return-void
.end method

.method private saveDraft(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 5653
    const-string v0, "Mms:app"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5654
    const-string v0, "saveDraft"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5659
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isDiscarded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5685
    :cond_1
    :goto_0
    return-void

    .line 5663
    :cond_2
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWaitingForSubActivity:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->recipientCount()I

    move-result v0

    if-nez v0, :cond_5

    .line 5666
    :cond_3
    const-string v0, "Mms:app"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5667
    const-string v0, "not worth saving, discard WorkingMessage and bail"

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 5669
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->discard()V

    goto :goto_0

    .line 5673
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getStorageMemoryIsFull()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5674
    const v0, 0x7f0b00ed

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 5679
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, p1}, Lcom/android/mms/data/WorkingMessage;->saveDraft(Z)V

    .line 5681
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mToastForDraftSave:Z

    if-eqz v0, :cond_1

    .line 5682
    const v0, 0x7f0b0066

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private saveRingtone(J)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 2446
    const/4 v1, 0x1

    .line 2447
    const/4 v2, 0x0

    .line 2449
    :try_start_0
    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/mms/model/SlideshowModel;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2454
    :goto_0
    if-nez v2, :cond_1

    .line 2469
    :cond_0
    return v0

    .line 2451
    :catch_0
    move-exception v3

    .line 2452
    const-string v3, "Mms/compose"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "copyToDrmProvider can\'t load pdu body: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2458
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v3

    move v7, v0

    move v0, v1

    move v1, v7

    .line 2459
    :goto_1
    if-ge v1, v3, :cond_0

    .line 2460
    invoke-virtual {v2, v1}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v4

    .line 2461
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    .line 2463
    invoke-static {v5}, Lcom/android/mms/drm/DrmUtils;->isDrmType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2466
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->copyPart(Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;)Z

    move-result v4

    and-int/2addr v0, v4

    .line 2459
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private sendMessage(Z)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5712
    if-eqz p1, :cond_0

    .line 5714
    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5715
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5717
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v1, 0x6b

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5775
    :goto_0
    return-void

    .line 5721
    :catch_0
    move-exception v0

    .line 5723
    const-string v1, "Mms/compose"

    const-string v2, "Cannot find EmergencyCallbackModeExitDialog"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5728
    :cond_0
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendingMessage:Z

    if-nez v0, :cond_3

    .line 5730
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v0

    .line 5731
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDebugRecipients:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5732
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getWorkingRecipients()Ljava/lang/String;

    move-result-object v1

    .line 5733
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDebugRecipients:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5734
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ComposeMessageActivity.sendMessage recipients in window: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDebugRecipients:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" differ from recipients from conv: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" and working recipients: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/mms/LogTag;->warnPossibleRecipientMismatch(Ljava/lang/String;Landroid/app/Activity;)V

    .line 5741
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->sanityCheckConversation()V

    .line 5746
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->removeRecipientsListeners()V

    .line 5749
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isMediaExist()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5750
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v0, -0x1

    const v1, 0x7f0b00f4

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->handleAddAttachmentError(II)V

    .line 5751
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v4, v6, v4}, Lcom/android/mms/data/WorkingMessage;->setAttachment(ILandroid/net/Uri;Z)I

    goto :goto_0

    .line 5755
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getResendMultiRecipients()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5757
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mResendSmsRecipient:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->send(Ljava/lang/String;)V

    .line 5762
    :goto_1
    iput-boolean v5, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSentMessage:Z

    .line 5763
    iput-boolean v5, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendingMessage:Z

    .line 5764
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->addRecipientsListeners()V

    .line 5766
    iput-boolean v5, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mScrollOnSend:Z

    .line 5768
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v0

    .line 5769
    invoke-static {v0, v4, v4}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 5770
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateTitle(Lcom/android/mms/data/ContactList;)V

    goto/16 :goto_0

    .line 5759
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDebugRecipients:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->send(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private sendMessageWithChooseDialog(ZZ)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1298
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hasIccCardCount()I

    move-result v0

    if-le v0, v4, :cond_1

    .line 1305
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDataSubscription()I

    move-result v0

    .line 1307
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getCurrentConvSub()I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mShowDateSwitch:Z

    if-eqz v1, :cond_0

    .line 1308
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMmsSendHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->getCurrentConvSub()I

    move-result v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v4, v0, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1310
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMmsSendHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1326
    :goto_0
    return-void

    .line 1317
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->sendMessage(Z)V

    goto :goto_0

    .line 1321
    :cond_1
    const-string v0, "Trace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMessageWithChooseDialog getPreferredSmsSubscription="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/telephony/MSimSmsManager;->getDefault()Landroid/telephony/MSimSmsManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimSmsManager;->getPreferredSmsSubscription()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-static {}, Landroid/telephony/MSimSmsManager;->getDefault()Landroid/telephony/MSimSmsManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MSimSmsManager;->getPreferredSmsSubscription()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setCurrentConvSub(I)V

    .line 1324
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->sendMessage(Z)V

    goto :goto_0
.end method

.method private setFontSize()V
    .locals 5

    .prologue
    const/high16 v4, 0x41c00000

    .line 6888
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getFontSize(Landroid/content/Context;)F

    move-result v0

    .line 6889
    const-string v1, "Trace"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFontSize "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6890
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 6891
    cmpl-float v1, v0, v4

    if-lez v1, :cond_2

    .line 6892
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setTextSize(F)V

    .line 6896
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 6897
    cmpl-float v1, v0, v4

    if-lez v1, :cond_3

    .line 6898
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setTextSize(F)V

    .line 6902
    :cond_1
    :goto_1
    return-void

    .line 6894
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTextSize(F)V

    goto :goto_0

    .line 6900
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTextSize(F)V

    goto :goto_1
.end method

.method private showAddAttachmentDialog(Z)V
    .locals 3

    .prologue
    .line 4410
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4411
    const v1, 0x7f020045

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 4412
    const v1, 0x7f0b0039

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 4414
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentTypeSelectorAdapter:Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;

    if-nez v1, :cond_0

    .line 4415
    new-instance v1, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentTypeSelectorAdapter:Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;

    .line 4418
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentTypeSelectorAdapter:Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;

    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$43;

    invoke-direct {v2, p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$43;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4426
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->attachmentDlg:Landroid/app/AlertDialog;

    .line 4427
    return-void
.end method

.method private showDataSwitchDialog(Z)V
    .locals 3

    .prologue
    .line 6570
    .line 6571
    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$65;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$65;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    .line 6585
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x1040014

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    if-eqz p1, :cond_0

    const v0, 0x7f0b015a

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x1040009

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 6591
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 6592
    return-void

    .line 6585
    :cond_0
    const v0, 0x7f0b0162

    goto :goto_0
.end method

.method private showDeliveryReport(JLjava/lang/String;)V
    .locals 2
    .param p1, "messageId"    # J
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 2742
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/DeliveryReportActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2743
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "message_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2744
    const-string v1, "message_type"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2746
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    .line 2747
    return-void
.end method

.method private showImportTemplateDialog()Landroid/app/Dialog;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 4261
    .line 4262
    const-string v0, "content://com.android.mms.MessageTemplateProvider/messages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 4265
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 4266
    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4267
    const/4 v0, 0x0

    .line 4268
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    new-array v6, v2, [Ljava/lang/String;

    .line 4271
    :goto_0
    const-string v2, "message"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4272
    add-int/lit8 v2, v0, 0x1

    aput-object v3, v6, v0

    .line 4273
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_3

    .line 4276
    :cond_0
    if-eqz v1, :cond_1

    .line 4277
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4281
    :cond_1
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$TemplateSelectListener;

    invoke-direct {v0, p0, v6}, Lcom/android/mms/ui/ComposeMessageActivity$TemplateSelectListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;[Ljava/lang/String;)V

    .line 4282
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0156

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 4276
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_1
    if-eqz v1, :cond_2

    .line 4277
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 4276
    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method private showInvalidRecipientDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1385
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    .line 1386
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/RecipientsEditor;->hasValidRecipient(Z)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 1387
    const v1, 0x7f0b0058

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/RecipientsEditor;->formatInvalidNumbers(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1389
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b005d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0082

    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$SendIgnoreInvalidRecipientListener;

    invoke-direct {v2, p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity$SendIgnoreInvalidRecipientListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b007e

    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;

    invoke-direct {v2, p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mInvalidRecipientDialog:Landroid/app/AlertDialog;

    .line 1403
    :goto_0
    return-void

    .line 1397
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b005e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b005f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b007d

    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;

    invoke-direct {v2, p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mInvalidRecipientDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private showMessageDetails(Lcom/android/mms/ui/MessageItem;)Z
    .locals 5
    .param p1, "msgItem"    # Lcom/android/mms/ui/MessageItem;

    .prologue
    const/4 v2, 0x1

    .line 819
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v3, p1}, Lcom/android/mms/ui/MessageListAdapter;->getCursorForItem(Lcom/android/mms/ui/MessageItem;)Landroid/database/Cursor;

    move-result-object v0

    .line 820
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 821
    const/4 v2, 0x0

    .line 830
    :goto_0
    return v2

    .line 823
    :cond_0
    iget v3, p1, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    invoke-static {p0, v0, v3}, Lcom/android/mms/ui/MessageUtils;->getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    .line 825
    .local v1, "messageDetails":Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0b00b5

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private showSmileyDialog()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 6368
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSmileyDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_3

    .line 6369
    sget-object v4, Lcom/android/mms/util/SmileyParser;->DEFAULT_SMILEY_RES_IDS:[I

    .line 6370
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060001

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 6372
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v2, 0x7f060000

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 6375
    array-length v8, v5

    .line 6377
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    .line 6378
    :goto_0
    if-ge v3, v8, :cond_2

    move v0, v1

    .line 6382
    :goto_1
    if-ge v0, v3, :cond_4

    .line 6383
    aget v9, v4, v3

    aget v10, v4, v0

    if-ne v9, v10, :cond_1

    move v0, v6

    .line 6388
    :goto_2
    if-nez v0, :cond_0

    .line 6389
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6391
    const-string v9, "icon"

    aget v10, v4, v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6392
    const-string v9, "name"

    aget-object v10, v5, v3

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6393
    const-string v9, "text"

    aget-object v10, v7, v3

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6395
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6378
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 6382
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6399
    :cond_2
    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x7f04002d

    new-array v4, v11, [Ljava/lang/String;

    const-string v5, "icon"

    aput-object v5, v4, v1

    const-string v1, "name"

    aput-object v1, v4, v6

    const/4 v1, 0x2

    const-string v5, "text"

    aput-object v5, v4, v1

    new-array v5, v11, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 6405
    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$62;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$62;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 6416
    invoke-virtual {v0, v1}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 6418
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6420
    const v2, 0x7f0b0111

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 6422
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 6423
    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$63;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity$63;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/widget/SimpleAdapter;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6444
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSmileyDialog:Landroid/app/AlertDialog;

    .line 6447
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSmileyDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 6448
    return-void

    :cond_4
    move v0, v1

    goto :goto_2

    .line 6399
    :array_0
    .array-data 4
        0x7f0a00a0
        0x7f0a00a1
        0x7f0a00a2
    .end array-data
.end method

.method private showSmsOrMmsSendButton(Z)Landroid/view/View;
    .locals 1
    .param p1, "isMms"    # Z

    .prologue
    .line 3920
    const/4 v0, 0x0

    return-object v0
.end method

.method private showSubjectEditor(Z)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3085
    const-string v0, "Mms:app"

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3086
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 3089
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    if-nez v0, :cond_2

    .line 3092
    if-nez p1, :cond_1

    .line 3113
    :goto_0
    return-void

    .line 3095
    :cond_1
    const v0, 0x7f0a0014

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    .line 3096
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSubjectLength()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 3100
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectKeyListener:Landroid/view/View$OnKeyListener;

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 3101
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectActionListener:Landroid/widget/TextView$OnEditorActionListener;

    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 3103
    if-eqz p1, :cond_5

    .line 3104
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3109
    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3110
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz p1, :cond_6

    move v0, v2

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 3111
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 3112
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hideOrShowTopPanel()V

    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 3100
    goto :goto_1

    .line 3106
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_2

    .line 3110
    :cond_6
    const/16 v0, 0x8

    goto :goto_3
.end method

.method private smoothScrollToEnd(ZI)V
    .locals 11

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v10, 0x2

    .line 6034
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->getLastVisiblePosition()I

    move-result v5

    .line 6035
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .line 6036
    if-ltz v5, :cond_0

    if-gez v6, :cond_2

    .line 6037
    :cond_0
    const-string v0, "Mms:app"

    invoke-static {v0, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6038
    const-string v0, "Mms/compose"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smoothScrollToEnd: lastItemVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lastItemInList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mMsgListView not ready"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6126
    :cond_1
    :goto_0
    return-void

    .line 6045
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, v5, v2

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6049
    if-eqz v0, :cond_10

    .line 6050
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 6051
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 6054
    :goto_1
    const-string v4, "Mms:app"

    invoke-static {v4, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6055
    const-string v4, "Mms/compose"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "smoothScrollToEnd newPosition: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mLastSmoothScrollPosition: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mLastSmoothScrollPosition:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " first: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageListView;->getFirstVisiblePosition()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " lastItemVisible: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " lastVisibleItemBottom: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " lastVisibleItemBottom + listSizeChange: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int v8, v2, p2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mMsgListView.getHeight() - mMsgListView.getPaddingBottom(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageListView;->getHeight()I

    move-result v8

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageListView;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " listSizeChange: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6079
    :cond_3
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageListView;->getHeight()I

    move-result v7

    .line 6080
    if-le v0, v7, :cond_9

    move v4, v3

    .line 6081
    :goto_2
    if-nez p1, :cond_5

    if-nez p2, :cond_4

    iget v8, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mLastSmoothScrollPosition:I

    if-eq v6, v8, :cond_6

    :cond_4
    add-int/2addr v2, p2

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageListView;->getPaddingBottom()I

    move-result v8

    sub-int v8, v7, v8

    if-gt v2, v8, :cond_6

    :cond_5
    move v1, v3

    .line 6085
    :cond_6
    if-nez v1, :cond_7

    if-eqz v4, :cond_1

    if-ne v6, v5, :cond_1

    .line 6086
    :cond_7
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0xc8

    if-le v1, v2, :cond_b

    .line 6090
    const-string v1, "Mms:app"

    invoke-static {v1, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 6091
    const-string v1, "Mms/compose"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keyboard state changed. setSelection="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6093
    :cond_8
    if-eqz v4, :cond_a

    .line 6098
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    sub-int v0, v7, v0

    invoke-virtual {v1, v6, v0}, Lcom/android/mms/ui/MessageListView;->setSelectionFromTop(II)V

    goto/16 :goto_0

    :cond_9
    move v4, v1

    .line 6080
    goto :goto_2

    .line 6101
    :cond_a
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v6}, Lcom/android/mms/ui/MessageListView;->setSelection(I)V

    goto/16 :goto_0

    .line 6103
    :cond_b
    sub-int v1, v6, v5

    const/16 v2, 0x14

    if-le v1, v2, :cond_d

    .line 6104
    const-string v0, "Mms:app"

    invoke-static {v0, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 6105
    const-string v0, "Mms/compose"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "too many to scroll, setSelection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6107
    :cond_c
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v6}, Lcom/android/mms/ui/MessageListView;->setSelection(I)V

    goto/16 :goto_0

    .line 6109
    :cond_d
    const-string v1, "Mms:app"

    invoke-static {v1, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 6110
    const-string v1, "Mms/compose"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smooth scroll to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6112
    :cond_e
    if-eqz v4, :cond_f

    .line 6118
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    sub-int v0, v7, v0

    invoke-virtual {v1, v6, v0}, Lcom/android/mms/ui/MessageListView;->setSelectionFromTop(II)V

    .line 6123
    :goto_3
    iput v6, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mLastSmoothScrollPosition:I

    goto/16 :goto_0

    .line 6121
    :cond_f
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v6}, Lcom/android/mms/ui/MessageListView;->smoothScrollToPosition(I)V

    goto :goto_3

    :cond_10
    move v0, v1

    move v2, v1

    goto/16 :goto_1
.end method

.method private startMsgListQuery()V
    .locals 1

    .prologue
    .line 5550
    const/16 v0, 0x2537

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->startMsgListQuery(I)V

    .line 5551
    return-void
.end method

.method private startMsgListQuery(I)V
    .locals 8

    .prologue
    .line 5554
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendDiscreetMode:Z

    if-eqz v0, :cond_0

    .line 5583
    :goto_0
    return-void

    .line 5557
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 5559
    if-nez v3, :cond_1

    .line 5560
    const-string v0, "##### startMsgListQuery: conversationUri is null, bail!"

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 5564
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v1

    .line 5565
    const-string v0, "Mms:app"

    const/4 v4, 0x2

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startMsgListQuery for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", threadId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " token: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " mConversation: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 5571
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->cancelOperation(I)V

    .line 5574
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5580
    :catch_0
    move-exception v0

    .line 5581
    invoke-static {p0, v0}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method private toastConvertInfo(Z)V
    .locals 2

    .prologue
    .line 1067
    if-eqz p1, :cond_0

    const v0, 0x7f0b0061

    .line 1069
    :goto_0
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1070
    return-void

    .line 1067
    :cond_0
    const v0, 0x7f0b0062

    goto :goto_0
.end method

.method private updateCounter(Ljava/lang/CharSequence;III)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 981
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 982
    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 986
    if-le p3, p4, :cond_0

    move v0, v1

    .line 987
    :goto_0
    if-nez v0, :cond_1

    .line 988
    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->showSmsOrMmsSendButton(Z)Landroid/view/View;

    .line 1043
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 986
    goto :goto_0

    .line 993
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 994
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 995
    const-string v5, "pref_key_enable_signature"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 996
    const-string v5, "pref_key_edit_signature"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 997
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 998
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1002
    :cond_2
    invoke-static {v0, v2}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v0

    .line 1009
    aget v4, v0, v2

    .line 1010
    const/4 v5, 0x2

    aget v5, v0, v5

    .line 1012
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMultipartSmsEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1015
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-le v4, v1, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v6, v0, v1}, Lcom/android/mms/data/WorkingMessage;->setLengthRequiresMms(ZZ)V

    .line 1025
    :goto_3
    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1033
    :goto_4
    if-eqz v1, :cond_6

    .line 1037
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1038
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1039
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    move v0, v2

    .line 1015
    goto :goto_2

    .line 1017
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsToMmsTextThreshold()I

    move-result v0

    .line 1018
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-lez v0, :cond_5

    if-le v4, v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {v6, v0, v1}, Lcom/android/mms/data/WorkingMessage;->setLengthRequiresMms(ZZ)V

    goto :goto_3

    :cond_5
    move v0, v2

    goto :goto_5

    .line 1041
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_7
    move v1, v2

    goto :goto_4
.end method

.method private updateSendButtonState()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 5864
    .line 5865
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isPreparedForSending()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5869
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 5883
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 5885
    if-ne v3, v1, :cond_4

    move v3, v1

    .line 5886
    :goto_1
    if-eqz v0, :cond_5

    if-nez v3, :cond_5

    move v3, v1

    .line 5887
    :goto_2
    if-eqz v3, :cond_6

    invoke-static {p0, v2}, Lcom/android/mms/ui/MessageUtils;->isSimActivated(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    .line 5889
    :goto_3
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSub1SendButton:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 5890
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSub1SendButton:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 5891
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5892
    if-eqz v3, :cond_7

    invoke-static {p0, v1}, Lcom/android/mms/ui/MessageUtils;->isSimActivated(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 5893
    :goto_4
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSub2SendButton:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 5894
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSub2SendButton:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 5895
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/AttachmentEditor;->setCard1CanSend(Z)V

    .line 5896
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/AttachmentEditor;->setCard2CanSend(Z)V

    .line 5898
    :cond_0
    return-void

    .line 5873
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/AttachmentEditor;->setCanSend(Z)V

    move v0, v1

    goto :goto_0

    .line 5875
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    if-eqz v0, :cond_3

    .line 5876
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/AttachmentEditor;->setCanSend(Z)V

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v3, v2

    .line 5885
    goto :goto_1

    :cond_5
    move v3, v2

    .line 5886
    goto :goto_2

    :cond_6
    move v0, v2

    .line 5887
    goto :goto_3

    :cond_7
    move v1, v2

    .line 5892
    goto :goto_4
.end method

.method private updateSendFailedNotification()V
    .locals 4

    .prologue
    .line 3428
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    .line 3429
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 3441
    :goto_0
    return-void

    .line 3434
    :cond_0
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/mms/ui/ComposeMessageActivity$32;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$32;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;J)V

    const-string v0, "ComposeMessageActivity.updateSendFailedNotification"

    invoke-direct {v2, v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private updateThreadIdIfRunning()V
    .locals 2

    .prologue
    .line 6526
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v0, :cond_0

    .line 6531
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->setCurrentlyDisplayedThreadId(J)V

    .line 6539
    :cond_0
    return-void
.end method

.method private updateTitle(Lcom/android/mms/data/ContactList;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    const v8, 0x7f0c0004

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2795
    .line 2797
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v4

    .line 2799
    packed-switch v4, :pswitch_data_0

    .line 2835
    const-string v0, ", "

    invoke-virtual {p1, v0}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2837
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v1, v8, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move v3, v2

    .line 2842
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MessageListAdapter;->setGroup(Z)V

    .line 2843
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDebugRecipients:Ljava/lang/String;

    .line 2846
    iput v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mExistsRecipientsCount:I

    .line 2847
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    .line 2848
    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 2849
    invoke-virtual {v2, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 2850
    return-void

    .line 2802
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_5

    .line 2803
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2806
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2807
    const v0, 0x7f0b0001

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2810
    :cond_0
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2811
    :cond_1
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2815
    :cond_2
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v5}, Lcom/android/mms/ui/RecipientsEditor;->getRecipientCount()I

    move-result v5

    .line 2816
    if-le v5, v2, :cond_4

    .line 2818
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v1, v8, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move v9, v2

    move-object v2, v1

    move v1, v9

    :goto_2
    move v3, v1

    move-object v1, v2

    .line 2821
    goto :goto_0

    .line 2824
    :pswitch_1
    invoke-virtual {p1, v3}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2826
    invoke-virtual {p1, v3}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 2827
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 2828
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/MmsApp;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v2

    goto/16 :goto_0

    :cond_3
    move-object v0, v2

    goto/16 :goto_0

    :cond_4
    move-object v2, v1

    move v1, v3

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_1

    .line 2799
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private validRecipient(Lcom/android/mms/ui/RecipientsEditor;)V
    .locals 5

    .prologue
    const v4, 0x7f020044

    const/4 v3, 0x0

    .line 7052
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    .line 7053
    invoke-virtual {p1, v0}, Lcom/android/mms/ui/RecipientsEditor;->hasInvalidRecipient(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7054
    invoke-virtual {p1, v0}, Lcom/android/mms/ui/RecipientsEditor;->hasValidRecipient(Z)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_1

    .line 7055
    const v1, 0x7f0b0058

    invoke-virtual {p1, v0}, Lcom/android/mms/ui/RecipientsEditor;->formatInvalidNumbers(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7057
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b005d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0082

    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$SendIgnoreInvalidRecipientListener;

    invoke-direct {v2, p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity$SendIgnoreInvalidRecipientListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b007e

    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;

    invoke-direct {v2, p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 7075
    :cond_0
    :goto_0
    return-void

    .line 7066
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b005e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b005f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b007d

    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;

    invoke-direct {v2, p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private viewMmsMessageAttachment(I)V
    .locals 4

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    .line 696
    if-nez v0, :cond_0

    .line 697
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mWorkingMessage.getSlideshow() == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 699
    :cond_0
    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->isSimple()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 701
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 703
    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->viewSimpleSlideshow(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V

    .line 733
    :goto_0
    return-void

    .line 710
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getAsyncDialog()Lcom/android/mms/ui/AsyncDialog;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$7;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$7;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$8;

    invoke-direct {v2, p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$8;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;I)V

    const v3, 0x7f0b006b

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/AsyncDialog;->runAsync(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    goto :goto_0
.end method


# virtual methods
.method getAsyncDialog()Lcom/android/mms/ui/AsyncDialog;
    .locals 1

    .prologue
    .line 4983
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

    if-nez v0, :cond_0

    .line 4984
    new-instance v0, Lcom/android/mms/ui/AsyncDialog;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/AsyncDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

    .line 4986
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

    return-object v0
.end method

.method public initialize(Landroid/os/Bundle;J)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3122
    invoke-static {p0}, Lcom/android/mms/data/WorkingMessage;->createEmpty(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 3126
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->initActivityState(Landroid/os/Bundle;)V

    .line 3128
    cmp-long v2, p2, v4

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    cmp-long v2, p2, v2

    if-nez v2, :cond_0

    .line 3130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ComposeMessageActivity.initialize:  threadId didn\'t change from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/android/mms/LogTag;->warnPossibleRecipientMismatch(Ljava/lang/String;Landroid/app/Activity;)V

    .line 3134
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "savedInstanceState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " intent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mConversation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 3138
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/android/mms/ui/ComposeMessageActivity;->cancelFailedToDeliverNotification(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3141
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->getMessageDate(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->undeliveredMessageDialog(J)V

    .line 3143
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/android/mms/ui/ComposeMessageActivity;->cancelFailedDownloadNotification(Landroid/content/Intent;Landroid/content/Context;)Z

    .line 3146
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->initMessageList()V

    .line 3148
    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mShouldLoadDraft:Z

    .line 3156
    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->handleSendIntent()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->handleForwardedMessage()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3157
    :cond_2
    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mShouldLoadDraft:Z

    .line 3161
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2, v3}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 3164
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-gtz v2, :cond_6

    .line 3167
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hideRecipientEditor()V

    .line 3168
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->initRecipientsEditor()V

    .line 3173
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateSendButtonState()V

    .line 3175
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->drawTopPanel(Z)V

    .line 3176
    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mShouldLoadDraft:Z

    if-nez v2, :cond_4

    .line 3178
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->drawBottomPanel()V

    .line 3181
    :cond_4
    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsKeyboardOpen:Z

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->onKeyboardStateChanged(Z)V

    .line 3183
    const-string v2, "Mms:app"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update title, mConversation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 3187
    :cond_5
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->updateTitle(Lcom/android/mms/data/ContactList;)V

    .line 3195
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-le v3, v0, :cond_7

    :goto_1
    invoke-virtual {v2, v0}, Lcom/android/mms/ui/MessageListAdapter;->setIsGroupConversation(Z)V

    .line 3196
    return-void

    .line 3170
    :cond_6
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hideRecipientEditor()V

    goto :goto_0

    :cond_7
    move v0, v1

    .line 3195
    goto :goto_1
.end method

.method public loadMessageContent()V
    .locals 0

    .prologue
    .line 3398
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->startMsgListQuery()V

    .line 3399
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateSendFailedNotification()V

    .line 3401
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->drawBottomPanel()V

    .line 3402
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4435
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWaitingForSubActivity:Z

    .line 4436
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mShouldLoadDraft:Z

    .line 4437
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isFakeMmsForDraft()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4440
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft()V

    .line 4443
    :cond_0
    const/16 v0, 0x6d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x74

    if-eq p1, v0, :cond_1

    const/16 v0, 0x73

    if-eq p1, v0, :cond_1

    const/16 v0, 0x75

    if-ne p1, v0, :cond_2

    .line 4447
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v4}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;)V

    .line 4450
    :cond_2
    const/16 v0, 0x76

    if-ne p1, v0, :cond_3

    if-ne p2, v5, :cond_3

    .line 4453
    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mNeedCheckConversationList:Z

    .line 4456
    :cond_3
    const/16 v0, 0x6c

    if-ne p1, v0, :cond_5

    .line 4464
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAddContactIntent:Landroid/content/Intent;

    if-eqz v0, :cond_5

    .line 4465
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAddContactIntent:Landroid/content/Intent;

    const-string v4, "email"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4467
    if-nez v0, :cond_4

    .line 4468
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAddContactIntent:Landroid/content/Intent;

    const-string v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4471
    :cond_4
    if-eqz v0, :cond_5

    .line 4472
    invoke-static {v0, v2}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 4473
    if-eqz v0, :cond_5

    .line 4474
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->reload()V

    .line 4480
    :cond_5
    const/16 v0, 0x8

    if-ne p1, v0, :cond_6

    .line 4483
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsAudioPlayerActivityRunning:Z

    .line 4486
    :cond_6
    if-eq p2, v5, :cond_8

    .line 4673
    :cond_7
    :goto_0
    return-void

    .line 4491
    :cond_8
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 4528
    :pswitch_1
    if-eqz p3, :cond_7

    .line 4529
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->addImageAsync(Landroid/net/Uri;Z)V

    goto :goto_0

    .line 4493
    :pswitch_2
    if-eqz p3, :cond_7

    .line 4494
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachFileUri:Landroid/net/Uri;

    .line 4496
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v0

    .line 4497
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachFileUri:Landroid/net/Uri;

    invoke-static {p0, v3}, Lcom/android/mms/data/WorkingMessage;->load(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    .line 4498
    if-eqz v3, :cond_7

    .line 4499
    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 4500
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3, v4}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 4501
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3, v0, v2}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 4502
    if-eqz v0, :cond_9

    move v0, v1

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->showSubjectEditor(Z)V

    .line 4503
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateThreadIdIfRunning()V

    .line 4504
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->drawTopPanel(Z)V

    .line 4505
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->drawBottomPanel()V

    .line 4506
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateSendButtonState()V

    .line 4507
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->invalidateOptionsMenu()V

    goto :goto_0

    :cond_9
    move v0, v2

    .line 4502
    goto :goto_1

    .line 4517
    :pswitch_3
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/android/mms/TempFileProvider;->getScrapPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4518
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 4521
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/MmsApp;->getThumbnailManager()Lcom/android/mms/util/ThumbnailManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/mms/util/ThumbnailManager;->removeThumbnail(Landroid/net/Uri;)V

    .line 4523
    invoke-direct {p0, v0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->addImageAsync(Landroid/net/Uri;Z)V

    goto :goto_0

    .line 4535
    :pswitch_4
    const-string v0, ".3gp"

    invoke-static {v0, v3, p0}, Lcom/android/mms/TempFileProvider;->renameScrapFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 4537
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/MmsApp;->getThumbnailManager()Lcom/android/mms/util/ThumbnailManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/mms/util/ThumbnailManager;->removeThumbnail(Landroid/net/Uri;)V

    .line 4539
    invoke-direct {p0, v0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->addVideoAsync(Landroid/net/Uri;Z)V

    goto :goto_0

    .line 4543
    :pswitch_5
    if-eqz p3, :cond_7

    .line 4544
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->addVideoAsync(Landroid/net/Uri;Z)V

    goto/16 :goto_0

    .line 4550
    :pswitch_6
    const-string v0, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 4551
    if-nez v0, :cond_b

    .line 4552
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 4557
    :cond_a
    invoke-direct {p0, v0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->addAudio(Landroid/net/Uri;Z)V

    goto/16 :goto_0

    .line 4553
    :cond_b
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto/16 :goto_0

    .line 4562
    :pswitch_7
    if-eqz p3, :cond_7

    .line 4564
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->addAudio(Landroid/net/Uri;Z)V

    goto/16 :goto_0

    .line 4569
    :pswitch_8
    const-string v0, "exit_ecm_result"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 4570
    if-eqz v0, :cond_7

    .line 4571
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->sendMessage(Z)V

    goto/16 :goto_0

    .line 4576
    :pswitch_9
    if-eqz p3, :cond_11

    .line 4577
    const-string v0, "result"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 4578
    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 4579
    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 4581
    :goto_2
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v5, :cond_c

    .line 4582
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v5}, Lcom/android/mms/ui/RecipientsEditor;->getRecipientCount()I

    move-result v5

    add-int/2addr v0, v5

    .line 4584
    :cond_c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v5

    .line 4585
    if-le v0, v5, :cond_e

    .line 4586
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0b0067

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v1

    invoke-virtual {p0, v6, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_d
    move v0, v2

    .line 4579
    goto :goto_2

    .line 4592
    :cond_e
    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 4593
    new-instance v5, Lcom/android/mms/data/ContactList;

    invoke-direct {v5}, Lcom/android/mms/data/ContactList;-><init>()V

    .line 4595
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4596
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 4597
    const-string v6, "number"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 4598
    invoke-virtual {v5, v0}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 4601
    :cond_f
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_10

    .line 4602
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->constructContactsFromInput(Z)Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 4603
    invoke-virtual {v5, v2, v0}, Lcom/android/mms/data/ContactList;->addAll(ILjava/util/Collection;)Z

    .line 4606
    :cond_10
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 4607
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, v5}, Lcom/android/mms/ui/RecipientsEditor;->populate(Lcom/android/mms/data/ContactList;)V

    .line 4608
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 4609
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsWatcher:Landroid/text/TextWatcher;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 4610
    invoke-direct {p0, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->updateTitle(Lcom/android/mms/data/ContactList;)V

    .line 4615
    :cond_11
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;)V

    goto/16 :goto_0

    .line 4620
    :pswitch_a
    if-nez v3, :cond_15

    .line 4621
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 4623
    :goto_4
    if-eqz p3, :cond_12

    .line 4624
    invoke-direct {p0, p3, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->processPickResult(Landroid/content/Intent;Landroid/net/Uri;)V

    .line 4626
    :cond_12
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;)V

    goto/16 :goto_0

    .line 4632
    :pswitch_b
    if-eqz p3, :cond_13

    .line 4633
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->removeAttachment(Z)V

    .line 4634
    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachFileUri:Landroid/net/Uri;

    .line 4637
    :cond_13
    :pswitch_c
    if-eqz p3, :cond_7

    .line 4638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "info"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4639
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1, v0}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 4640
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 4645
    :pswitch_d
    if-eqz p3, :cond_7

    .line 4647
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 4648
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->asyncAddVcard(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 4652
    :pswitch_e
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachFileUri:Landroid/net/Uri;

    .line 4653
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachFileUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->addVCalender(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 4656
    :pswitch_f
    const-string v0, "sms_body"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4657
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2, v1}, Lcom/android/mms/data/WorkingMessage;->removeAttachment(Z)V

    .line 4658
    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachFileUri:Landroid/net/Uri;

    .line 4660
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 4661
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 4662
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_14

    .line 4663
    const-string v2, "\n"

    invoke-interface {v1, v2}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 4665
    :cond_14
    invoke-interface {v1, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4666
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_15
    move-object v0, v3

    goto/16 :goto_4

    .line 4491
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_2
        :pswitch_8
        :pswitch_0
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_b
        :pswitch_f
        :pswitch_e
        :pswitch_a
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public onAttachmentChanged()V
    .locals 1

    .prologue
    .line 3857
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$35;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$35;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3865
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const v1, 0x7f0b00ed

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 5221
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSub1SendButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isPreparedForSending()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5222
    invoke-static {}, Lcom/android/mms/MmsConfig;->getStorageMemoryIsFull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5223
    invoke-static {p0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5303
    :cond_0
    :goto_0
    return-void

    .line 5225
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v6}, Lcom/android/mms/data/WorkingMessage;->setCurrentConvSub(I)V

    .line 5226
    sput v6, Lcom/android/mms/ui/ComposeMessageActivity;->subSelected:I

    .line 5227
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmSendMessageIfNeeded()V

    goto :goto_0

    .line 5229
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSub2SendButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_4

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isPreparedForSending()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5230
    invoke-static {}, Lcom/android/mms/MmsConfig;->getStorageMemoryIsFull()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5231
    invoke-static {p0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 5233
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v7}, Lcom/android/mms/data/WorkingMessage;->setCurrentConvSub(I)V

    .line 5234
    sput v7, Lcom/android/mms/ui/ComposeMessageActivity;->subSelected:I

    .line 5235
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmSendMessageIfNeeded()V

    goto :goto_0

    .line 5237
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsPicker:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_5

    .line 5238
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->launchMultiplePhonePicker()V

    goto :goto_0

    .line 5239
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mCallLogButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_6

    .line 5240
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.MULTI_PICK_CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5241
    const/16 v1, 0x74

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 5243
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAllButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_7

    .line 5244
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.MULTI_PICK_PHONE_AND_EMAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5245
    const-string v1, "vnd.android.cursor.dir/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 5246
    const/16 v1, 0x73

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 5248
    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mGroupButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_a

    .line 5249
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5251
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    .line 5253
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v6

    const-string v3, "title"

    aput-object v3, v2, v7

    const-string v3, "deleted = 0"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 5255
    if-eqz v2, :cond_9

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_9

    .line 5256
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5257
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    move v0, v6

    .line 5258
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_8

    .line 5259
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 5260
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 5258
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    move-object v0, v1

    .line 5266
    :goto_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b017b

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Lcom/android/mms/ui/ComposeMessageActivity$55;

    invoke-direct {v3, p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity$55;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/database/Cursor;)V

    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b014e

    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$54;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageActivity$54;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 5299
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 5263
    :cond_9
    new-array v0, v7, [Ljava/lang/String;

    .line 5264
    const v1, 0x7f0b017c

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    goto :goto_2

    .line 5300
    :cond_a
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSmsTemplateButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_0

    .line 5301
    invoke-virtual {p0, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->showDialog(I)V

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3671
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3673
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->resetConfiguration(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3676
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isSubjectEditorVisible()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->drawTopPanel(Z)V

    .line 3682
    :cond_0
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsKeyboardOpen:Z

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->onKeyboardStateChanged(Z)V

    .line 3686
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mInvalidRecipientDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mInvalidRecipientDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3687
    const-string v0, "Trace"

    const-string v1, "baijianhua onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3688
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mInvalidRecipientDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3689
    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mInvalidRecipientDialog:Landroid/app/AlertDialog;

    .line 3690
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->showInvalidRecipientDialog()V

    .line 3694
    :goto_0
    return-void

    .line 3692
    :cond_1
    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mInvalidRecipientDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3043
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 3045
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->resetConfiguration(Landroid/content/res/Configuration;)Z

    .line 3047
    const v0, 0x7f040004

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->setContentView(I)V

    .line 3048
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->setProgressBarVisibility(Z)V

    .line 3050
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 3054
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->initResourceRefs()V

    .line 3058
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 3059
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    .line 3061
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->initialize(Landroid/os/Bundle;J)V

    .line 3067
    const-string v0, "airplane_mode_on"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3068
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3069
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 3070
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 3075
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 4253
    packed-switch p1, :pswitch_data_0

    .line 4257
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 4255
    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->showImportTemplateDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 4253
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 3659
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3660
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 3661
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 3666
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 3667
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 5336
    if-eqz p3, :cond_0

    .line 5349
    const/4 v0, 0x0

    .line 5358
    :goto_0
    return v0

    .line 5355
    :cond_0
    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsLandscape:Z

    if-eqz v0, :cond_1

    .line 5356
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hideKeyboard()V

    .line 5358
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 3738
    sparse-switch p1, :sswitch_data_0

    .line 3779
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 3740
    :sswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3743
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3749
    if-eqz v0, :cond_0

    .line 3750
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3751
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 3752
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v5, v2, v3, v4, v0}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    .line 3754
    if-eqz v0, :cond_1

    .line 3755
    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V

    .line 3756
    iget-boolean v0, v0, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    invoke-direct {p0, v2, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V

    :cond_1
    move v0, v1

    .line 3758
    goto :goto_0

    .line 3744
    :catch_0
    move-exception v0

    .line 3745
    const-string v1, "Mms/compose"

    const-string v2, "Unexpected ClassCastException."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3746
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 3764
    :sswitch_1
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isPreparedForSending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3765
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmSendMessageIfNeeded()V

    move v0, v1

    .line 3766
    goto :goto_0

    .line 3770
    :sswitch_2
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$33;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$33;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->exitComposeMessageActivity(Ljava/lang/Runnable;)V

    move v0, v1

    .line 3776
    goto :goto_0

    .line 3738
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x17 -> :sswitch_1
        0x42 -> :sswitch_1
        0x43 -> :sswitch_0
    .end sparse-switch
.end method

.method public onMaxPendingMessagesReached()V
    .locals 1

    .prologue
    .line 3973
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->saveDraft(Z)V

    .line 3975
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$39;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$39;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3982
    return-void
.end method

.method public onMessageSent()V
    .locals 2

    .prologue
    .line 3939
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendDiscreetMode:Z

    if-eqz v0, :cond_0

    .line 3940
    const-string v0, "Trace"

    const-string v1, "onMessageSent mExitOnSent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3941
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->finish()V

    .line 3943
    :cond_0
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$38;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$38;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3969
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const-wide/16 v9, 0x0

    const/4 v2, 0x0

    .line 3200
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 3202
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->setIntent(Landroid/content/Intent;)V

    .line 3205
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSentMessage:Z

    .line 3213
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v3

    .line 3214
    const-string v0, "thread_id"

    invoke-virtual {p1, v0, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 3215
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 3218
    cmp-long v0, v5, v9

    if-lez v0, :cond_3

    .line 3219
    invoke-static {p0, v5, v6, v2}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 3239
    :goto_0
    const-string v7, "Mms:app"

    invoke-static {v7, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3240
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onNewIntent: data="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ", thread_id extra is "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", new conversation="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", mConversation="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 3250
    :cond_0
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v5

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v7

    cmp-long v1, v5, v7

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v5

    cmp-long v1, v5, v9

    if-nez v1, :cond_5

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/Conversation;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    .line 3254
    :goto_1
    if-eqz v1, :cond_6

    .line 3255
    const-string v1, "onNewIntent: same conversation"

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 3256
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v1

    cmp-long v1, v1, v9

    if-nez v1, :cond_2

    .line 3257
    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    .line 3258
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 3259
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateThreadIdIfRunning()V

    .line 3260
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->invalidateOptionsMenu()V

    .line 3272
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->loadMessageContent()V

    .line 3273
    return-void

    .line 3221
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v7

    cmp-long v0, v7, v9

    if-nez v0, :cond_4

    .line 3225
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->syncWorkingRecipients()V

    .line 3236
    :cond_4
    invoke-static {p0, v1, v2}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/data/Conversation;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    move v1, v2

    .line 3250
    goto :goto_1

    .line 3263
    :cond_6
    const-string v0, "Mms:app"

    invoke-static {v0, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3264
    const-string v0, "onNewIntent: different conversation"

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 3266
    :cond_7
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->saveDraft(Z)V

    .line 3268
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->initialize(Landroid/os/Bundle;J)V

    goto :goto_2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 4128
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 4248
    :cond_0
    :goto_0
    return v6

    .line 4130
    :sswitch_0
    invoke-direct {p0, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->showSubjectEditor(Z)V

    .line 4131
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string v1, ""

    invoke-virtual {v0, v1, v6}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 4132
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateSendButtonState()V

    .line 4133
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 4136
    :sswitch_1
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->onAddCc()V

    goto :goto_0

    .line 4140
    :sswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->showAddAttachmentDialog(Z)V

    goto :goto_0

    .line 4143
    :sswitch_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->discard()V

    .line 4144
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->removeAttachment(Z)V

    .line 4145
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->finish()V

    goto :goto_0

    .line 4148
    :sswitch_4
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isPreparedForSending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4149
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmSendMessageIfNeeded()V

    goto :goto_0

    .line 4153
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->onSearchRequested()Z

    goto :goto_0

    .line 4156
    :sswitch_6
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmDeleteThread(J)V

    goto :goto_0

    .line 4161
    :sswitch_7
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$41;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$41;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->exitComposeMessageActivity(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4169
    :sswitch_8
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->dialRecipient()V

    goto :goto_0

    .line 4172
    :sswitch_9
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->showSmileyDialog()V

    goto :goto_0

    .line 4175
    :sswitch_a
    invoke-virtual {p0, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->showDialog(I)V

    goto :goto_0

    .line 4179
    :sswitch_b
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/RecipientListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4180
    const-string v1, "thread_id"

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4181
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 4186
    :sswitch_c
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    .line 4187
    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-ne v0, v6, :cond_0

    invoke-virtual {v2, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4188
    invoke-virtual {v2, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 4189
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4190
    const/high16 v0, 0x80000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4191
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 4196
    :sswitch_d
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAddContactIntent:Landroid/content/Intent;

    .line 4197
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAddContactIntent:Landroid/content/Intent;

    const-string v1, "without_sim"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4198
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAddContactIntent:Landroid/content/Intent;

    const/16 v1, 0x6c

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 4201
    :sswitch_e
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4202
    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    goto/16 :goto_0

    .line 4206
    :sswitch_f
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->dump()V

    .line 4207
    invoke-static {}, Lcom/android/mms/data/Conversation;->dump()V

    .line 4208
    invoke-static {p0}, Lcom/android/mms/LogTag;->dumpInternalTables(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 4211
    :sswitch_10
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    .line 4212
    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    move v0, v1

    move v2, v1

    move v3, v1

    .line 4215
    :goto_1
    array-length v5, v4

    if-ge v0, v5, :cond_2

    .line 4216
    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->isSimActivated(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4217
    add-int/lit8 v3, v3, 0x1

    .line 4219
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getMultiSimName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    move v2, v0

    .line 4215
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4222
    :cond_2
    if-le v3, v6, :cond_3

    .line 4223
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b01cc

    new-array v3, v6, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getSimName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$42;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$42;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 4236
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->batchMoveToSim(I)V

    goto/16 :goto_0

    .line 4240
    :sswitch_11
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->batchDeleteSms()V

    goto/16 :goto_0

    .line 4244
    :sswitch_12
    const/16 v0, 0x6e

    invoke-direct {p0, v6, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->pickContacts(II)V

    goto/16 :goto_0

    .line 4128
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_6
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_8
        0x6 -> :sswitch_7
        0x7 -> :sswitch_f
        0x8 -> :sswitch_1
        0x9 -> :sswitch_12
        0xa -> :sswitch_10
        0xb -> :sswitch_11
        0xc -> :sswitch_c
        0x13 -> :sswitch_5
        0x1a -> :sswitch_9
        0x1b -> :sswitch_d
        0x1f -> :sswitch_e
        0x21 -> :sswitch_a
        0x26 -> :sswitch_b
        0x102002c -> :sswitch_7
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 5

    .prologue
    const-wide/16 v0, -0x2

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3546
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 3552
    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->setCurrentlyDisplayedThreadId(J)V

    .line 3559
    iput v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageSizeExceedCounter:I

    .line 3560
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->removeRecipientsListeners()V

    .line 3567
    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->setCurrentlyDisplayedThreadId(J)V

    .line 3571
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->getLastVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_5

    .line 3573
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSavedScrollPosition:I

    .line 3577
    :goto_0
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3578
    const-string v0, "Mms/compose"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause: mSavedScrollPosition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSavedScrollPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3581
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->markAsRead()V

    .line 3582
    iput-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsRunning:Z

    .line 3583
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsDataSwitching:Z

    if-eqz v0, :cond_1

    .line 3584
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->removeDataSwitchTask()V

    .line 3586
    :cond_1
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsDataConnecting:Z

    if-eqz v0, :cond_3

    .line 3587
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    .line 3588
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 3590
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDataSwitchHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3591
    iput-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedMsgListItem:Lcom/android/mms/ui/MessageListItem;

    .line 3592
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDataStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3593
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDataSwitchHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3594
    iput-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsDataConnecting:Z

    .line 3596
    :cond_3
    const-string v0, "Trace"

    const-string v1, " pause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3598
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->attachmentDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->attachmentDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3599
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->attachmentDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3600
    iput-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->attachmentDlg:Landroid/app/AlertDialog;

    .line 3604
    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->removeDialog(I)V

    .line 3605
    return-void

    .line 3575
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSavedScrollPosition:I

    goto :goto_0
.end method

.method public onPreMessageSent()V
    .locals 1

    .prologue
    .line 3932
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mResetMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3933
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7

    .prologue
    const v6, 0x7f0b0007

    const v3, 0x108003c

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4013
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 4015
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 4023
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 4024
    const-string v1, ""

    .line 4025
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 4026
    invoke-virtual {v0, v4}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 4027
    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->isWappush(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsWappush:Z

    .line 4030
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientCallable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsWappush:Z

    if-nez v0, :cond_1

    .line 4031
    const/4 v0, 0x5

    invoke-interface {p1, v4, v0, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020053

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 4034
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4036
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 4040
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsWappush:Z

    if-nez v0, :cond_4

    .line 4041
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isSubjectEditorVisible()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4042
    const v0, 0x7f0b003a

    invoke-interface {p1, v4, v4, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020057

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4045
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4046
    const/16 v0, 0x8

    const v1, 0x7f0b01b9

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 4050
    :cond_3
    const v0, 0x7f0b0039

    invoke-interface {p1, v4, v2, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020052

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0b0039

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 4057
    :cond_4
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isPreparedForSending()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4058
    const/4 v0, 0x4

    const v1, 0x7f0b003f

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080050

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4061
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsWappush:Z

    if-nez v0, :cond_6

    .line 4062
    const/16 v0, 0x1a

    const v1, 0x7f0b0111

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020058

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4064
    const/16 v0, 0x21

    const v1, 0x7f0b0157

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02007e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4068
    :cond_6
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-le v0, v5, :cond_7

    .line 4069
    const/16 v0, 0x26

    const v1, 0x7f0b0112

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 4072
    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_c

    .line 4076
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 4077
    if-eqz v0, :cond_8

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_8

    .line 4078
    const v0, 0x7f0b001d

    invoke-interface {p1, v4, v5, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4081
    const/16 v0, 0xb

    const v1, 0x7f0b00b0

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4088
    :cond_8
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->buildAddAddressToContactMenuItem(Landroid/view/Menu;)V

    .line 4090
    const/16 v0, 0x1f

    const v1, 0x7f0b0005

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080049

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4097
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4098
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-gt v0, v5, :cond_9

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-ne v0, v5, :cond_a

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isValidSimAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4100
    :cond_9
    const/16 v0, 0xa

    const v1, 0x7f0b01cc

    new-array v2, v5, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getSimName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 4105
    :cond_a
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f080000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 4106
    if-eqz v0, :cond_b

    .line 4107
    const/16 v0, 0x9

    const v1, 0x7f0b01ba

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 4109
    :cond_b
    return v5

    .line 4085
    :cond_c
    const/4 v0, 0x3

    const v1, 0x7f0b003b

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onProtocolChanged(Z)V
    .locals 1
    .param p1, "convertToMms"    # Z

    .prologue
    .line 3871
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$36;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$36;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3891
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 3286
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 3293
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isDiscarded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3299
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3303
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->unDiscard()V

    .line 3305
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->sanityCheckConversation()V

    .line 3322
    :cond_0
    :goto_0
    return-void

    .line 3307
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->getRecipientCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 3311
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->goToConversationList()V

    goto :goto_0

    .line 3316
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->loadDraft()Z

    .line 3317
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 3318
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/AttachmentEditor;->update(Lcom/android/mms/data/WorkingMessage;)Z

    .line 3319
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3458
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 3465
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->refreshText()V

    .line 3466
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsPickingContact:Z

    .line 3467
    iput v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageSizeExceedCounter:I

    .line 3468
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->removeRecipientsListeners()V

    .line 3469
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->addRecipientsListeners()V

    .line 3471
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 3472
    const-string v1, ""

    .line 3473
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 3474
    invoke-virtual {v0, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 3475
    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->isWappush(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsWappush:Z

    .line 3477
    :cond_0
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsWappush:Z

    if-eqz v0, :cond_1

    .line 3478
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBottomPanel:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3481
    :cond_1
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update title, mConversation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 3496
    :cond_2
    iput-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsRunning:Z

    .line 3497
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateThreadIdIfRunning()V

    .line 3507
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendDiscreetMode:Z

    if-eqz v0, :cond_3

    .line 3508
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->drawBottomPanel()V

    .line 3512
    :cond_3
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 3445
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 3447
    const-string v0, "recipients"

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3449
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, p1}, Lcom/android/mms/data/WorkingMessage;->writeStateToBundle(Landroid/os/Bundle;)V

    .line 3451
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendDiscreetMode:Z

    if-eqz v0, :cond_0

    .line 3452
    const-string v0, "exit_on_sent"

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendDiscreetMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3454
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 5

    .prologue
    const/16 v0, 0x14

    .line 3326
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 3328
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->initFocus()V

    .line 3331
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mHttpProgressReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mHttpProgressFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3339
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/util/DraftCache;->hasDraft(J)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3350
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 3353
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessagesAndDraftLoaded:Z

    .line 3355
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 3356
    if-eqz v0, :cond_1

    .line 3357
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 3367
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$31;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$31;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3377
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->syncWorkingRecipients()V

    .line 3379
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update title, mConversation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 3383
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateTitle(Lcom/android/mms/data/ContactList;)V

    .line 3385
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 3386
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 3387
    return-void

    .line 3341
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 3347
    const/16 v0, 0x12

    goto :goto_0
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3609
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 3612
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    const/16 v1, 0x2537

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->cancelOperation(I)V

    .line 3615
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/Conversation;->blockMarkAsRead(Z)V

    .line 3617
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v0, :cond_1

    .line 3619
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 3621
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3622
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3625
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 3626
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->cancelBackgroundLoading()V

    .line 3629
    :cond_1
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3630
    const-string v0, "save draft"

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 3633
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->recipientCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 3634
    :cond_3
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3635
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    .line 3636
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/RecipientsEditor;->hasInvalidRecipient(Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3637
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->saveDraft(Z)V

    .line 3646
    :cond_4
    :goto_0
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mShouldLoadDraft:Z

    .line 3649
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mHttpProgressReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3652
    return-void

    .line 3640
    :cond_5
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->saveDraft(Z)V

    goto :goto_0
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 2
    .param p1, "updated"    # Lcom/android/mms/data/Contact;

    .prologue
    .line 6463
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageListItemHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$64;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$64;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/Contact;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6485
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 3733
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->checkPendingNotification()V

    .line 3734
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2

    .prologue
    .line 1049
    if-ltz p2, :cond_0

    .line 1050
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWaitingForSubActivity:Z

    .line 1055
    :cond_0
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsKeyboardOpen:Z

    if-eqz v0, :cond_1

    const-string v0, "com.android.contacts.action.QUICK_CONTACT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1056
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hideKeyboard()V

    .line 1059
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1060
    return-void
.end method

.method undeliveredMessageDialog(J)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 5538
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 5539
    const v0, 0x7f0b001b

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1, p2}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5546
    :goto_0
    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5547
    return-void

    .line 5543
    :cond_0
    const v0, 0x7f0b001c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
