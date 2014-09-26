.class public Lcom/android/mms/ui/OtherAttachmentView;
.super Landroid/widget/LinearLayout;
.source "OtherAttachmentView.java"

# interfaces
.implements Lcom/android/mms/ui/SlideViewInterface;


# instance fields
.field private mAttachImageView:Landroid/widget/ImageView;

.field private mAttachNameView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 57
    const v0, 0x7f0a0067

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/OtherAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/OtherAttachmentView;->mAttachNameView:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f0a0065

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/OtherAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/OtherAttachmentView;->mAttachImageView:Landroid/widget/ImageView;

    .line 59
    return-void
.end method

.method public pauseAudio()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public pauseVideo()V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 119
    iget-object v0, p0, Lcom/android/mms/ui/OtherAttachmentView;->mAttachImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/android/mms/ui/OtherAttachmentView;->mAttachNameView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    return-void
.end method

.method public seekAudio(I)V
    .locals 0
    .param p1, "seekTo"    # I

    .prologue
    .line 151
    return-void
.end method

.method public seekVideo(I)V
    .locals 0
    .param p1, "seekTo"    # I

    .prologue
    .line 156
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
    .line 86
    .local p3, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    return-void
.end method

.method public setImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 81
    return-void
.end method

.method public setImageRegionFit(Ljava/lang/String;)V
    .locals 0
    .param p1, "fit"    # Ljava/lang/String;

    .prologue
    .line 91
    return-void
.end method

.method public setImageVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 96
    return-void
.end method

.method public setOtherAttach(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    const/4 v1, 0x0

    .line 72
    iget-object v0, p0, Lcom/android/mms/ui/OtherAttachmentView;->mAttachImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    iget-object v0, p0, Lcom/android/mms/ui/OtherAttachmentView;->mAttachImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/android/mms/ui/OtherAttachmentView;->mAttachNameView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/android/mms/ui/OtherAttachmentView;->mAttachNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 101
    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 106
    return-void
.end method

.method public setVcard(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .param p1, "lookupUri"    # Landroid/net/Uri;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 159
    return-void
.end method

.method public setVcardVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 162
    return-void
.end method

.method public setVideo(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "video"    # Landroid/net/Uri;

    .prologue
    .line 111
    return-void
.end method

.method public setVideoThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 165
    return-void
.end method

.method public setVideoVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 116
    return-void
.end method

.method public startAudio()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public startVideo()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public stopAudio()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public stopVideo()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method
