.class public Lcom/android/mms/ui/BasicSlideEditorView;
.super Landroid/widget/LinearLayout;
.source "BasicSlideEditorView.java"

# interfaces
.implements Lcom/android/mms/ui/SlideViewInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;
    }
.end annotation


# instance fields
.field private mAudioNameView:Landroid/widget/TextView;

.field private mAudioView:Landroid/view/View;

.field private mEditText:Landroid/widget/EditText;

.field private mImageView:Landroid/widget/ImageView;

.field private mOnTextChangedListener:Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;

.field private mOnTextChangedListenerEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mOnTextChangedListenerEnabled:Z

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mOnTextChangedListenerEnabled:Z

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/BasicSlideEditorView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/BasicSlideEditorView;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mOnTextChangedListenerEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/BasicSlideEditorView;)Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/BasicSlideEditorView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mOnTextChangedListener:Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;

    return-object v0
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 62
    const v0, 0x7f0a0041

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BasicSlideEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mImageView:Landroid/widget/ImageView;

    .line 63
    const v0, 0x7f0a0042

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BasicSlideEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mAudioView:Landroid/view/View;

    .line 64
    const v0, 0x7f0a0004

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BasicSlideEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mAudioNameView:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f0a0049

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BasicSlideEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mEditText:Landroid/widget/EditText;

    .line 66
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/android/mms/ui/BasicSlideEditorView$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/BasicSlideEditorView$1;-><init>(Lcom/android/mms/ui/BasicSlideEditorView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 83
    return-void
.end method

.method public pauseAudio()V
    .locals 0

    .prologue
    .line 183
    return-void
.end method

.method public pauseVideo()V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 162
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mAudioView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mOnTextChangedListenerEnabled:Z

    .line 164
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mEditText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mOnTextChangedListenerEnabled:Z

    .line 166
    return-void
.end method

.method public seekAudio(I)V
    .locals 0
    .param p1, "seekTo"    # I

    .prologue
    .line 193
    return-void
.end method

.method public seekVideo(I)V
    .locals 0
    .param p1, "seekTo"    # I

    .prologue
    .line 198
    return-void
.end method

.method public setAudio(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
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
    .line 94
    .local p3, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mAudioView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mAudioNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    return-void
.end method

.method public setImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 100
    if-nez p2, :cond_0

    .line 101
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/BasicSlideEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02006a

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v1, "BasicSlideEditorView"

    const-string v2, "setImage: out of memory: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setImageRegionFit(Ljava/lang/String;)V
    .locals 0
    .param p1, "fit"    # Ljava/lang/String;

    .prologue
    .line 112
    return-void
.end method

.method public setImageVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 116
    return-void
.end method

.method public setOnTextChangedListener(Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mOnTextChangedListener:Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;

    .line 174
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mOnTextChangedListenerEnabled:Z

    .line 120
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 124
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mOnTextChangedListenerEnabled:Z

    .line 125
    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 129
    return-void
.end method

.method public setVcard(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .param p1, "lookupUri"    # Landroid/net/Uri;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 202
    return-void
.end method

.method public setVcardVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 206
    return-void
.end method

.method public setVideo(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "video"    # Landroid/net/Uri;

    .prologue
    .line 133
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mContext:Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/android/mms/ui/VideoAttachmentView;->createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 134
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/android/mms/ui/BasicSlideEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02006b

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 138
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v1

    .line 140
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    const-string v2, "BasicSlideEditorView"

    const-string v3, "setVideo: out of memory: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setVideoThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 146
    return-void
.end method

.method public setVideoVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 150
    return-void
.end method

.method public startAudio()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public startVideo()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public stopAudio()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public stopVideo()V
    .locals 0

    .prologue
    .line 158
    return-void
.end method
