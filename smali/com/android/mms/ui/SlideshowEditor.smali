.class public Lcom/android/mms/ui/SlideshowEditor;
.super Ljava/lang/Object;
.source "SlideshowEditor.java"


# static fields
.field public static final MAX_SLIDE_NUM:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mModel:Lcom/android/mms/model/SlideshowModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const-string v0, "persist.env.c.mms.maxslidenum"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/mms/ui/SlideshowEditor;->MAX_SLIDE_NUM:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "model"    # Lcom/android/mms/model/SlideshowModel;

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowEditor;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    .line 53
    return-void
.end method


# virtual methods
.method public addNewSlide()Z
    .locals 2

    .prologue
    .line 65
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    .line 66
    .local v0, "position":I
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideshowEditor;->addNewSlide(I)Z

    move-result v1

    return v1
.end method

.method public addNewSlide(I)Z
    .locals 8
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 77
    iget-object v5, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    .line 78
    .local v1, "size":I
    sget v5, Lcom/android/mms/ui/SlideshowEditor;->MAX_SLIDE_NUM:I

    if-ge v1, v5, :cond_0

    .line 79
    new-instance v2, Lcom/android/mms/model/SlideModel;

    iget-object v5, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v2, v5}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 82
    .local v2, "slide":Lcom/android/mms/model/SlideModel;
    :try_start_0
    iget-object v5, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V
    :try_end_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    new-instance v3, Lcom/android/mms/model/TextModel;

    iget-object v4, p0, Lcom/android/mms/ui/SlideshowEditor;->mContext:Landroid/content/Context;

    const-string v5, "text/plain"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "text_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".txt"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    .line 90
    .local v3, "text":Lcom/android/mms/model/TextModel;
    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 92
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4, p1, v2}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V

    .line 93
    const/4 v4, 0x1

    .line 96
    .end local v2    # "slide":Lcom/android/mms/model/SlideModel;
    .end local v3    # "text":Lcom/android/mms/model/TextModel;
    :goto_0
    return v4

    .line 83
    .restart local v2    # "slide":Lcom/android/mms/model/SlideModel;
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Lcom/android/mms/ExceedMessageSizeException;
    goto :goto_0

    .line 95
    .end local v0    # "e":Lcom/android/mms/ExceedMessageSizeException;
    .end local v2    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_0
    const-string v5, "Mms:slideshow"

    const-string v6, "The limitation of the number of slides is reached."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public addSlide(ILcom/android/mms/model/SlideModel;)Z
    .locals 3
    .param p1, "position"    # I
    .param p2, "slide"    # Lcom/android/mms/model/SlideModel;

    .prologue
    .line 107
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    .line 108
    .local v0, "size":I
    sget v1, Lcom/android/mms/ui/SlideshowEditor;->MAX_SLIDE_NUM:I

    if-ge v0, v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1, p1, p2}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V

    .line 110
    const/4 v1, 0x1

    .line 113
    :goto_0
    return v1

    .line 112
    :cond_0
    const-string v1, "Mms:slideshow"

    const-string v2, "The limitation of the number of slides is reached."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public changeAudio(ILandroid/net/Uri;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "newAudio"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 210
    new-instance v0, Lcom/android/mms/model/AudioModel;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p2}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 211
    .local v0, "audio":Lcom/android/mms/model/AudioModel;
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 212
    .local v1, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 213
    invoke-virtual {v0}, Lcom/android/mms/model/AudioModel;->getDuration()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideModel;->updateDuration(I)V

    .line 214
    return-void
.end method

.method public changeDuration(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "dur"    # I

    .prologue
    .line 240
    if-ltz p2, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/mms/model/SlideModel;->setDuration(I)V

    .line 243
    :cond_0
    return-void
.end method

.method public changeImage(ILandroid/net/Uri;)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "newImage"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    new-instance v1, Lcom/android/mms/model/ImageModel;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v3

    invoke-direct {v1, v2, p2, v3}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 207
    return-void
.end method

.method public changeLayout(I)V
    .locals 1
    .param p1, "layout"    # I

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/model/LayoutModel;->changeTo(I)V

    .line 247
    return-void
.end method

.method public changeText(ILjava/lang/String;)V
    .locals 11
    .param p1, "position"    # I
    .param p2, "newText"    # Ljava/lang/String;

    .prologue
    .line 162
    if-eqz p2, :cond_0

    .line 163
    iget-object v7, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    .line 164
    .local v5, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v6

    .line 166
    .local v6, "text":Lcom/android/mms/model/TextModel;
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    array-length v3, v7

    .line 167
    .local v3, "newLength":I
    if-nez v6, :cond_1

    .line 168
    const/4 v4, 0x0

    .line 169
    .local v4, "oldLength":I
    new-instance v6, Lcom/android/mms/model/TextModel;

    .end local v6    # "text":Lcom/android/mms/model/TextModel;
    iget-object v7, p0, Lcom/android/mms/ui/SlideshowEditor;->mContext:Landroid/content/Context;

    const-string v8, "text/plain"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "text_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".txt"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v10}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v10

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    .line 173
    .restart local v6    # "text":Lcom/android/mms/model/TextModel;
    invoke-virtual {v5, v6}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 175
    :try_start_0
    iget-object v7, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7, v3}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 176
    invoke-virtual {v5, v3}, Lcom/android/mms/model/SlideModel;->increaseSlideSize(I)V

    .line 177
    invoke-virtual {v5, v3}, Lcom/android/mms/model/SlideModel;->increaseMessageSize(I)V

    .line 178
    invoke-virtual {v6, p2}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .end local v3    # "newLength":I
    .end local v4    # "oldLength":I
    .end local v5    # "slide":Lcom/android/mms/model/SlideModel;
    .end local v6    # "text":Lcom/android/mms/model/TextModel;
    :cond_0
    :goto_0
    return-void

    .line 179
    .restart local v3    # "newLength":I
    .restart local v4    # "oldLength":I
    .restart local v5    # "slide":Lcom/android/mms/model/SlideModel;
    .restart local v6    # "text":Lcom/android/mms/model/TextModel;
    :catch_0
    move-exception v2

    .line 180
    .local v2, "e":Lcom/android/mms/ExceedMessageSizeException;
    const-string v7, ""

    invoke-virtual {v6, v7}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    .line 181
    throw v2

    .line 183
    .end local v2    # "e":Lcom/android/mms/ExceedMessageSizeException;
    .end local v4    # "oldLength":I
    :cond_1
    invoke-virtual {v6}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 184
    invoke-virtual {v6}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "currentText":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    array-length v4, v7

    .line 186
    .restart local v4    # "oldLength":I
    sub-int v0, v3, v4

    .line 187
    .local v0, "addSize":I
    if-lez v0, :cond_2

    .line 189
    :try_start_1
    iget-object v7, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7, v0}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 190
    iget-object v7, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7, v0}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V
    :try_end_1
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 198
    :goto_1
    invoke-virtual {v6, p2}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 191
    :catch_1
    move-exception v2

    .line 192
    .restart local v2    # "e":Lcom/android/mms/ExceedMessageSizeException;
    invoke-virtual {v6, v1}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    .line 193
    throw v2

    .line 196
    .end local v2    # "e":Lcom/android/mms/ExceedMessageSizeException;
    :cond_2
    iget-object v7, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    neg-int v8, v0

    invoke-virtual {v7, v8}, Lcom/android/mms/model/SlideshowModel;->decreaseMessageSize(I)V

    goto :goto_1
.end method

.method public changeVcard(ILandroid/net/Uri;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "newVcard"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 225
    new-instance v1, Lcom/android/mms/model/VcardModel;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditor;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p2}, Lcom/android/mms/model/VcardModel;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 226
    .local v1, "vCard":Lcom/android/mms/model/VcardModel;
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 227
    .local v0, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 228
    invoke-virtual {v1}, Lcom/android/mms/model/VcardModel;->getDuration()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/mms/model/SlideModel;->updateDuration(I)V

    .line 229
    return-void
.end method

.method public changeVideo(ILandroid/net/Uri;)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "newVideo"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 217
    new-instance v1, Lcom/android/mms/model/VideoModel;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v3

    invoke-direct {v1, v2, p2, v3}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 219
    .local v1, "video":Lcom/android/mms/model/VideoModel;
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 220
    .local v0, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 221
    invoke-virtual {v1}, Lcom/android/mms/model/VideoModel;->getDuration()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/mms/model/SlideModel;->updateDuration(I)V

    .line 222
    return-void
.end method

.method public moveSlideDown(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, p1}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V

    .line 237
    return-void
.end method

.method public moveSlideUp(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, p1}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V

    .line 233
    return-void
.end method

.method public removeAllSlides()V
    .locals 1

    .prologue
    .line 130
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideshowEditor;->removeSlide(I)V

    goto :goto_0

    .line 133
    :cond_0
    return-void
.end method

.method public removeAudio(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->removeAudio()Z

    move-result v0

    return v0
.end method

.method public removeImage(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->removeImage()Z

    move-result v0

    return v0
.end method

.method public removeSlide(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 124
    return-void
.end method

.method public removeVcard(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->removeVcard()Z

    move-result v0

    return v0
.end method

.method public removeVideo(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->removeVideo()Z

    move-result v0

    return v0
.end method

.method public setSlideshow(Lcom/android/mms/model/SlideshowModel;)V
    .locals 0
    .param p1, "model"    # Lcom/android/mms/model/SlideshowModel;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    .line 57
    return-void
.end method
