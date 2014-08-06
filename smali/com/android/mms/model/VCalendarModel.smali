.class public Lcom/android/mms/model/VCalendarModel;
.super Lcom/android/mms/model/OtherAttachModel;
.source "VCalendarModel.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "slideshow"    # Lcom/android/mms/model/SlideshowModel;

    .prologue
    .line 57
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/model/OtherAttachModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;)V

    .line 58
    return-void
.end method


# virtual methods
.method public initModelFromSqlUri()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method
