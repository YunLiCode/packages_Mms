.class public Lcom/android/mms/drm/DrmUtils;
.super Ljava/lang/Object;
.source "DrmUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static getConvertExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "mimetype"    # Ljava/lang/String;

    .prologue
    .line 37
    const-string v0, ".fl"

    return-object v0
.end method

.method public static haveRightsForAction(Landroid/net/Uri;I)Z
    .locals 5
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "action"    # I

    .prologue
    const/4 v2, 0x1

    .line 64
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/MmsApp;->getDrmManagerClient()Landroid/drm/DrmManagerClient;

    move-result-object v1

    .line 68
    .local v1, "drmManagerClient":Landroid/drm/DrmManagerClient;
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 69
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 70
    .local v0, "check":I
    if-nez v0, :cond_1

    .line 76
    .end local v0    # "check":I
    :cond_0
    :goto_0
    return v2

    .line 70
    .restart local v0    # "check":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 74
    .end local v0    # "check":I
    :catchall_0
    move-exception v2

    throw v2

    .line 72
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static isDrmType(Ljava/lang/String;)Z
    .locals 5
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 41
    const/4 v2, 0x0

    .line 42
    .local v2, "result":Z
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/MmsApp;->getDrmManagerClient()Landroid/drm/DrmManagerClient;

    move-result-object v0

    .line 43
    .local v0, "drmManagerClient":Landroid/drm/DrmManagerClient;
    if-eqz v0, :cond_0

    .line 45
    :try_start_0
    const-string v3, ""

    invoke-virtual {v0, v3, p0}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_0

    .line 46
    const/4 v2, 0x1

    .line 54
    :cond_0
    :goto_0
    return v2

    .line 48
    :catch_0
    move-exception v1

    .line 49
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    const-string v3, "DrmUtils"

    const-string v4, "canHandle called with wrong parameters"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 50
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 51
    .local v1, "ex":Ljava/lang/IllegalStateException;
    const-string v3, "DrmUtils"

    const-string v4, "DrmManagerClient didn\'t initialize properly"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
