.class public Lcom/android/mms/ui/AudioAttachmentView;
.super Landroid/widget/LinearLayout;
.source "AudioAttachmentView.java"

# interfaces
.implements Lcom/android/mms/ui/SlideViewInterface;


# instance fields
.field private mAlbumView:Landroid/widget/TextView;

.field private mArtistView:Landroid/widget/TextView;

.field private mAudioUri:Landroid/net/Uri;

.field private mErrorMsgView:Landroid/widget/TextView;

.field private mIsPlaying:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mNameView:Landroid/widget/TextView;

.field private final mRes:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mRes:Landroid/content/res/Resources;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mRes:Landroid/content/res/Resources;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/AudioAttachmentView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/AudioAttachmentView;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/mms/ui/AudioAttachmentView;->onPlaybackError()V

    return-void
.end method

.method private cleanupMediaPlayer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    iput-object v1, p0, Lcom/android/mms/ui/AudioAttachmentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 86
    :cond_0
    return-void

    .line 83
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/android/mms/ui/AudioAttachmentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    throw v0
.end method

.method private onPlaybackError()V
    .locals 2

    .prologue
    .line 72
    const-string v0, "AudioAttachmentView"

    const-string v1, "Error occurred while playing audio."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/AudioAttachmentView;->showErrorMessage(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/mms/ui/AudioAttachmentView;->stopAudio()V

    .line 75
    return-void
.end method

.method private showErrorMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mErrorMsgView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mErrorMsgView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 65
    const v0, 0x7f0a0004

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/AudioAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mNameView:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f0a0005

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/AudioAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mAlbumView:Landroid/widget/TextView;

    .line 67
    const v0, 0x7f0a0006

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/AudioAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mArtistView:Landroid/widget/TextView;

    .line 68
    const v0, 0x7f0a0007

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/AudioAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mErrorMsgView:Landroid/widget/TextView;

    .line 69
    return-void
.end method

.method public pauseAudio()V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method public pauseVideo()V
    .locals 0

    .prologue
    .line 204
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 178
    monitor-enter p0

    .line 179
    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mIsPlaying:Z

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/android/mms/ui/AudioAttachmentView;->stopAudio()V

    .line 182
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mErrorMsgView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    return-void

    .line 182
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public seekAudio(I)V
    .locals 0
    .param p1, "seekTo"    # I

    .prologue
    .line 209
    return-void
.end method

.method public seekVideo(I)V
    .locals 0
    .param p1, "seekTo"    # I

    .prologue
    .line 214
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
    .line 117
    .local p3, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    monitor-enter p0

    .line 118
    :try_start_0
    iput-object p1, p0, Lcom/android/mms/ui/AudioAttachmentView;->mAudioUri:Landroid/net/Uri;

    .line 119
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v1, p0, Lcom/android/mms/ui/AudioAttachmentView;->mAlbumView:Landroid/widget/TextView;

    const-string v0, "album"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v1, p0, Lcom/android/mms/ui/AudioAttachmentView;->mArtistView:Landroid/widget/TextView;

    const-string v0, "artist"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    return-void

    .line 119
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 129
    return-void
.end method

.method public setImageRegionFit(Ljava/lang/String;)V
    .locals 0
    .param p1, "fit"    # Ljava/lang/String;

    .prologue
    .line 134
    return-void
.end method

.method public setImageVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 139
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 144
    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 149
    return-void
.end method

.method public setVcard(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .param p1, "lookupUri"    # Landroid/net/Uri;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 218
    return-void
.end method

.method public setVcardVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 222
    return-void
.end method

.method public setVideo(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "video"    # Landroid/net/Uri;

    .prologue
    .line 154
    return-void
.end method

.method public setVideoThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 157
    return-void
.end method

.method public setVideoVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 162
    return-void
.end method

.method public declared-synchronized startAudio()V
    .locals 2

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mIsPlaying:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mAudioUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/AudioAttachmentView;->mAudioUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 91
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 93
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/android/mms/ui/AudioAttachmentView$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/AudioAttachmentView$1;-><init>(Lcom/android/mms/ui/AudioAttachmentView;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 98
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/android/mms/ui/AudioAttachmentView$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/AudioAttachmentView$2;-><init>(Lcom/android/mms/ui/AudioAttachmentView;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mIsPlaying:Z

    .line 106
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_0
    monitor-exit p0

    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startVideo()V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method public declared-synchronized stopAudio()V
    .locals 2

    .prologue
    .line 166
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/AudioAttachmentView;->cleanupMediaPlayer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mIsPlaying:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 170
    monitor-exit p0

    return-void

    .line 168
    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lcom/android/mms/ui/AudioAttachmentView;->mIsPlaying:Z

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 166
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopVideo()V
    .locals 0

    .prologue
    .line 175
    return-void
.end method
