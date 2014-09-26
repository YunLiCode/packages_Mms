.class public Lcom/android/mms/util/ThumbnailManager$ImageLoaded;
.super Ljava/lang/Object;
.source "ThumbnailManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/ThumbnailManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageLoaded"
.end annotation


# instance fields
.field public final mBitmap:Landroid/graphics/Bitmap;

.field public final mIsVideo:Z

.field public mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Z)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "isVideo"    # Z

    .prologue
    .line 532
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 533
    iput-object p1, p0, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;->mBitmap:Landroid/graphics/Bitmap;

    .line 534
    iput-boolean p2, p0, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;->mIsVideo:Z

    .line 535
    return-void
.end method


# virtual methods
.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 537
    iput-object p1, p0, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;->mUri:Ljava/lang/String;

    .line 538
    return-void
.end method
