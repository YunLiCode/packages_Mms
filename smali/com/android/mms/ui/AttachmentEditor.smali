.class public Lcom/android/mms/ui/AttachmentEditor;
.super Landroid/widget/LinearLayout;
.source "AttachmentEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;
    }
.end annotation


# instance fields
.field private mCanSend:Z

.field private mCard1CanSend:Z

.field private mCard1SendButton:Landroid/widget/Button;

.field private mCard2CanSend:Z

.field private mCard2SendButton:Landroid/widget/Button;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPresenter:Lcom/android/mms/ui/Presenter;

.field private mSendButton:Landroid/widget/Button;

.field private mSlideshow:Lcom/android/mms/model/SlideshowModel;

.field private mView:Lcom/android/mms/ui/SlideViewInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    iput-object p1, p0, Lcom/android/mms/ui/AttachmentEditor;->mContext:Landroid/content/Context;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/AttachmentEditor;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/AttachmentEditor;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private createMediaView(IIIIIIII)Lcom/android/mms/ui/SlideViewInterface;
    .locals 5
    .param p1, "stub_view_id"    # I
    .param p2, "real_view_id"    # I
    .param p3, "view_button_id"    # I
    .param p4, "replace_button_id"    # I
    .param p5, "remove_button_id"    # I
    .param p6, "view_message"    # I
    .param p7, "replace_message"    # I
    .param p8, "remove_message"    # I

    .prologue
    .line 260
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/AttachmentEditor;->getStubView(II)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 261
    .local v2, "view":Landroid/widget/LinearLayout;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 263
    invoke-virtual {v2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 264
    .local v3, "viewButton":Landroid/widget/Button;
    invoke-virtual {v2, p4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 265
    .local v1, "replaceButton":Landroid/widget/Button;
    invoke-virtual {v2, p5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 267
    .local v0, "removeButton":Landroid/widget/Button;
    new-instance v4, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;

    invoke-direct {v4, p0, p6}, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;-><init>(Lcom/android/mms/ui/AttachmentEditor;I)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    new-instance v4, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;

    invoke-direct {v4, p0, p7}, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;-><init>(Lcom/android/mms/ui/AttachmentEditor;I)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    new-instance v4, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;

    invoke-direct {v4, p0, p8}, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;-><init>(Lcom/android/mms/ui/AttachmentEditor;I)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    check-cast v2, Lcom/android/mms/ui/SlideViewInterface;

    .end local v2    # "view":Landroid/widget/LinearLayout;
    return-object v2
.end method

.method private createOtherAttachView(Z)Lcom/android/mms/ui/SlideViewInterface;
    .locals 4
    .param p1, "inPortrait"    # Z

    .prologue
    .line 308
    const v2, 0x7f0a001d

    const v3, 0x7f0a007d

    invoke-direct {p0, v2, v3}, Lcom/android/mms/ui/AttachmentEditor;->getStubView(II)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 311
    .local v1, "view":Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 312
    const-string v2, "Trace"

    const-string v3, "createOtherAttachView"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const v2, 0x7f0a0080

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 321
    .local v0, "removeButton":Landroid/widget/Button;
    new-instance v2, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;

    const/16 v3, 0xa

    invoke-direct {v2, p0, v3}, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;-><init>(Lcom/android/mms/ui/AttachmentEditor;I)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    check-cast v1, Lcom/android/mms/ui/SlideViewInterface;

    .end local v1    # "view":Landroid/widget/LinearLayout;
    return-object v1
.end method

.method private createSlideshowView(Z)Lcom/android/mms/ui/SlideViewInterface;
    .locals 8
    .param p1, "inPortrait"    # Z

    .prologue
    const/4 v7, 0x0

    .line 275
    const v4, 0x7f0a001e

    const v5, 0x7f0a0092

    invoke-direct {p0, v4, v5}, Lcom/android/mms/ui/AttachmentEditor;->getStubView(II)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 278
    .local v3, "view":Landroid/widget/LinearLayout;
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 280
    const v4, 0x7f0a0095

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 281
    .local v0, "editBtn":Landroid/widget/Button;
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 282
    const v4, 0x7f0a0097

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/mms/ui/AttachmentEditor;->mCard1SendButton:Landroid/widget/Button;

    .line 283
    iget-object v4, p0, Lcom/android/mms/ui/AttachmentEditor;->mCard1SendButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;

    const/16 v6, 0xd

    invoke-direct {v5, p0, v6}, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;-><init>(Lcom/android/mms/ui/AttachmentEditor;I)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    iget-object v4, p0, Lcom/android/mms/ui/AttachmentEditor;->mCard1SendButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 285
    const v4, 0x7f0a0098

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/mms/ui/AttachmentEditor;->mCard2SendButton:Landroid/widget/Button;

    .line 286
    iget-object v4, p0, Lcom/android/mms/ui/AttachmentEditor;->mCard2SendButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;

    const/16 v6, 0xe

    invoke-direct {v5, p0, v6}, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;-><init>(Lcom/android/mms/ui/AttachmentEditor;I)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    iget-object v4, p0, Lcom/android/mms/ui/AttachmentEditor;->mCard2SendButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 293
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/AttachmentEditor;->updateSendButton()V

    .line 294
    const v4, 0x7f0a0066

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 297
    .local v1, "playBtn":Landroid/widget/ImageButton;
    new-instance v4, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5}, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;-><init>(Lcom/android/mms/ui/AttachmentEditor;I)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    new-instance v4, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;

    const/4 v5, 0x3

    invoke-direct {v4, p0, v5}, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;-><init>(Lcom/android/mms/ui/AttachmentEditor;I)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    const v4, 0x7f0a0099

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 302
    .local v2, "removeButton":Landroid/widget/Button;
    new-instance v4, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;

    const/16 v5, 0xa

    invoke-direct {v4, p0, v5}, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;-><init>(Lcom/android/mms/ui/AttachmentEditor;I)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    check-cast v3, Lcom/android/mms/ui/SlideViewInterface;

    .end local v3    # "view":Landroid/widget/LinearLayout;
    return-object v3

    .line 289
    .end local v1    # "playBtn":Landroid/widget/ImageButton;
    .end local v2    # "removeButton":Landroid/widget/Button;
    .restart local v3    # "view":Landroid/widget/LinearLayout;
    :cond_0
    const v4, 0x7f0a0096

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/mms/ui/AttachmentEditor;->mSendButton:Landroid/widget/Button;

    .line 290
    iget-object v4, p0, Lcom/android/mms/ui/AttachmentEditor;->mSendButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;

    const/4 v6, 0x2

    invoke-direct {v5, p0, v6}, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;-><init>(Lcom/android/mms/ui/AttachmentEditor;I)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    iget-object v4, p0, Lcom/android/mms/ui/AttachmentEditor;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private createView()Lcom/android/mms/ui/SlideViewInterface;
    .locals 11

    .prologue
    const/16 v8, 0xa

    .line 208
    invoke-direct {p0}, Lcom/android/mms/ui/AttachmentEditor;->inPortraitMode()Z

    move-result v9

    .line 209
    .local v9, "inPortrait":Z
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 210
    invoke-direct {p0, v9}, Lcom/android/mms/ui/AttachmentEditor;->createSlideshowView(Z)Lcom/android/mms/ui/SlideViewInterface;

    move-result-object v0

    .line 237
    :goto_0
    return-object v0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->hasOtherAttachModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    invoke-direct {p0, v9}, Lcom/android/mms/ui/AttachmentEditor;->createOtherAttachView(Z)Lcom/android/mms/ui/SlideViewInterface;

    move-result-object v0

    goto :goto_0

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v10

    .line 218
    .local v10, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v10}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    const v1, 0x7f0a0019

    const v2, 0x7f0a004f

    const v3, 0x7f0a0051

    const v4, 0x7f0a0047

    const v5, 0x7f0a0052

    const/16 v6, 0x9

    const/4 v7, 0x4

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/mms/ui/AttachmentEditor;->createMediaView(IIIIIIII)Lcom/android/mms/ui/SlideViewInterface;

    move-result-object v0

    goto :goto_0

    .line 224
    :cond_2
    invoke-virtual {v10}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 225
    const v1, 0x7f0a001a

    const v2, 0x7f0a00a9

    const v3, 0x7f0a00ab

    const v4, 0x7f0a00ac

    const v5, 0x7f0a00ad

    const/4 v6, 0x7

    const/4 v7, 0x5

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/mms/ui/AttachmentEditor;->createMediaView(IIIIIIII)Lcom/android/mms/ui/SlideViewInterface;

    move-result-object v0

    goto :goto_0

    .line 230
    :cond_3
    invoke-virtual {v10}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 231
    const v1, 0x7f0a001b

    const v2, 0x7f0a0003

    const v3, 0x7f0a0008

    const v4, 0x7f0a0009

    const v5, 0x7f0a000a

    const/16 v6, 0x8

    const/4 v7, 0x6

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/mms/ui/AttachmentEditor;->createMediaView(IIIIIIII)Lcom/android/mms/ui/SlideViewInterface;

    move-result-object v0

    goto :goto_0

    .line 236
    :cond_4
    invoke-virtual {v10}, Lcom/android/mms/model/SlideModel;->hasVcard()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 237
    const v1, 0x7f0a001c

    const v2, 0x7f0a00a4

    const v3, 0x7f0a00a6

    const v4, 0x7f0a00a7

    const v5, 0x7f0a00a8

    const/16 v6, 0xb

    const/16 v7, 0xc

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/mms/ui/AttachmentEditor;->createMediaView(IIIIIIII)Lcom/android/mms/ui/SlideViewInterface;

    move-result-object v0

    goto/16 :goto_0

    .line 244
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private getStubView(II)Landroid/view/View;
    .locals 2
    .param p1, "stubId"    # I
    .param p2, "viewId"    # I

    .prologue
    .line 185
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/AttachmentEditor;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 186
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_0

    .line 187
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/AttachmentEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 188
    .local v0, "stub":Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    .line 191
    .end local v0    # "stub":Landroid/view/ViewStub;
    :cond_0
    return-object v1
.end method

.method private inPortraitMode()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 252
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 253
    .local v0, "configuration":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateSendButton()V
    .locals 2

    .prologue
    .line 161
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mCard1SendButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mCard1SendButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mCard1CanSend:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 164
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mCard1SendButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mCard1CanSend:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mCard2SendButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mCard2SendButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mCard2CanSend:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 168
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mCard2SendButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mCard2CanSend:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 176
    :cond_1
    :goto_0
    return-void

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mSendButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mSendButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mCanSend:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 173
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mSendButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mCanSend:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    goto :goto_0
.end method


# virtual methods
.method public hideView()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mView:Lcom/android/mms/ui/SlideViewInterface;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mView:Lcom/android/mms/ui/SlideViewInterface;

    check-cast v0, Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 182
    :cond_0
    return-void
.end method

.method public resetSlideshowImage()V
    .locals 2

    .prologue
    .line 331
    const v1, 0x7f0a0093

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/AttachmentEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 332
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 333
    check-cast v0, Landroid/widget/ImageView;

    .end local v0    # "v":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 335
    :cond_0
    return-void
.end method

.method public setCanSend(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mCanSend:Z

    if-eq v0, p1, :cond_0

    .line 141
    iput-boolean p1, p0, Lcom/android/mms/ui/AttachmentEditor;->mCanSend:Z

    .line 142
    invoke-direct {p0}, Lcom/android/mms/ui/AttachmentEditor;->updateSendButton()V

    .line 144
    :cond_0
    return-void
.end method

.method public setCard1CanSend(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mCard1CanSend:Z

    if-eq v0, p1, :cond_0

    .line 148
    iput-boolean p1, p0, Lcom/android/mms/ui/AttachmentEditor;->mCard1CanSend:Z

    .line 149
    invoke-direct {p0}, Lcom/android/mms/ui/AttachmentEditor;->updateSendButton()V

    .line 151
    :cond_0
    return-void
.end method

.method public setCard2CanSend(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mCard2CanSend:Z

    if-eq v0, p1, :cond_0

    .line 155
    iput-boolean p1, p0, Lcom/android/mms/ui/AttachmentEditor;->mCard2CanSend:Z

    .line 156
    invoke-direct {p0}, Lcom/android/mms/ui/AttachmentEditor;->updateSendButton()V

    .line 158
    :cond_0
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/mms/ui/AttachmentEditor;->mHandler:Landroid/os/Handler;

    .line 137
    return-void
.end method

.method public update(Lcom/android/mms/data/WorkingMessage;)Z
    .locals 8
    .param p1, "msg"    # Lcom/android/mms/data/WorkingMessage;

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 86
    invoke-virtual {p0}, Lcom/android/mms/ui/AttachmentEditor;->hideView()V

    .line 87
    iput-object v7, p0, Lcom/android/mms/ui/AttachmentEditor;->mView:Lcom/android/mms/ui/SlideViewInterface;

    .line 90
    invoke-virtual {p1}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v4

    if-nez v4, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v3

    .line 95
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/AttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 96
    iget-object v4, p0, Lcom/android/mms/ui/AttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v4, :cond_0

    .line 100
    iget-object v3, p0, Lcom/android/mms/ui/AttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v1

    .line 101
    .local v1, "size":I
    if-nez v1, :cond_2

    .line 102
    iget-object v3, p0, Lcom/android/mms/ui/AttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->getTotalMessageSize()I

    move-result v1

    .line 107
    :cond_2
    const-string v2, ""

    .line 108
    .local v2, "sizeInfo":Ljava/lang/String;
    div-int/lit16 v3, v1, 0x400

    if-lez v3, :cond_5

    .line 109
    rem-int/lit16 v3, v1, 0x400

    if-eqz v3, :cond_4

    .line 110
    div-int/lit16 v3, v1, 0x400

    add-int/lit8 v1, v3, 0x1

    .line 114
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "KB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 119
    :goto_2
    const v3, 0x7f0a001f

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/AttachmentEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 120
    .local v0, "mAttachmentSize":Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v4

    div-int/lit16 v4, v4, 0x400

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "KB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    invoke-direct {p0}, Lcom/android/mms/ui/AttachmentEditor;->createView()Lcom/android/mms/ui/SlideViewInterface;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/AttachmentEditor;->mView:Lcom/android/mms/ui/SlideViewInterface;

    .line 124
    iget-object v3, p0, Lcom/android/mms/ui/AttachmentEditor;->mPresenter:Lcom/android/mms/ui/Presenter;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/mms/ui/AttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget-object v4, p0, Lcom/android/mms/ui/AttachmentEditor;->mPresenter:Lcom/android/mms/ui/Presenter;

    invoke-virtual {v4}, Lcom/android/mms/ui/Presenter;->getModel()Lcom/android/mms/model/Model;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 125
    :cond_3
    const-string v3, "MmsThumbnailPresenter"

    iget-object v4, p0, Lcom/android/mms/ui/AttachmentEditor;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/ui/AttachmentEditor;->mView:Lcom/android/mms/ui/SlideViewInterface;

    iget-object v6, p0, Lcom/android/mms/ui/AttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v3, v4, v5, v6}, Lcom/android/mms/ui/PresenterFactory;->getPresenter(Ljava/lang/String;Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)Lcom/android/mms/ui/Presenter;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/AttachmentEditor;->mPresenter:Lcom/android/mms/ui/Presenter;

    .line 131
    :goto_3
    iget-object v3, p0, Lcom/android/mms/ui/AttachmentEditor;->mPresenter:Lcom/android/mms/ui/Presenter;

    invoke-virtual {v3, v7}, Lcom/android/mms/ui/Presenter;->present(Lcom/android/mms/util/ItemLoadedCallback;)V

    .line 132
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 112
    .end local v0    # "mAttachmentSize":Landroid/widget/TextView;
    :cond_4
    div-int/lit16 v1, v1, 0x400

    goto :goto_1

    .line 116
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "B"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 128
    .restart local v0    # "mAttachmentSize":Landroid/widget/TextView;
    :cond_6
    iget-object v3, p0, Lcom/android/mms/ui/AttachmentEditor;->mPresenter:Lcom/android/mms/ui/Presenter;

    iget-object v4, p0, Lcom/android/mms/ui/AttachmentEditor;->mView:Lcom/android/mms/ui/SlideViewInterface;

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/Presenter;->setView(Lcom/android/mms/ui/ViewInterface;)V

    goto :goto_3
.end method
