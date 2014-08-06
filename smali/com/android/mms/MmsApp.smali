.class public Lcom/android/mms/MmsApp;
.super Landroid/app/Application;
.source "MmsApp.java"


# static fields
.field private static sMmsApp:Lcom/android/mms/MmsApp;


# instance fields
.field mBroadcaster:Landroid/os/Broadcaster;

.field private mCountryDetector:Landroid/location/CountryDetector;

.field private mCountryIso:Ljava/lang/String;

.field private mCountryListener:Landroid/location/CountryListener;

.field private mDrmManagerClient:Landroid/drm/DrmManagerClient;

.field private mPduLoaderManager:Lcom/android/mms/util/PduLoaderManager;

.field private mRecentSuggestions:Landroid/provider/SearchRecentSuggestions;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mThumbnailManager:Lcom/android/mms/util/ThumbnailManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/mms/MmsApp;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/MmsApp;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/mms/MmsApp;->mCountryIso:Ljava/lang/String;

    return-object p1
.end method

.method private activePendingMessages()V
    .locals 4

    .prologue
    .line 117
    invoke-static {p0}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->wakeUpService(Landroid/content/Context;)V

    .line 120
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.transaction.SEND_INACTIVE_MESSAGE"

    const/4 v2, 0x0

    const-class v3, Lcom/android/mms/transaction/SmsReceiver;

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/MmsApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 124
    return-void
.end method

.method public static declared-synchronized getApplication()Lcom/android/mms/MmsApp;
    .locals 2

    .prologue
    .line 127
    const-class v0, Lcom/android/mms/MmsApp;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public broadcastEvent(I)V
    .locals 4
    .param p1, "what"    # I

    .prologue
    .line 208
    const-string v1, "Mms"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    const-string v1, "Mms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcasting  event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 212
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/mms/MmsApp;->mBroadcaster:Landroid/os/Broadcaster;

    invoke-virtual {v1, v0}, Landroid/os/Broadcaster;->broadcast(Landroid/os/Message;)V

    .line 213
    return-void
.end method

.method public getCurrentCountryIso()Ljava/lang/String;
    .locals 2

    .prologue
    .line 183
    iget-object v1, p0, Lcom/android/mms/MmsApp;->mCountryIso:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/android/mms/MmsApp;->mCountryDetector:Landroid/location/CountryDetector;

    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    .line 185
    .local v0, "country":Landroid/location/Country;
    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/MmsApp;->mCountryIso:Ljava/lang/String;

    .line 189
    .end local v0    # "country":Landroid/location/Country;
    :cond_0
    iget-object v1, p0, Lcom/android/mms/MmsApp;->mCountryIso:Ljava/lang/String;

    return-object v1
.end method

.method public getDrmManagerClient()Landroid/drm/DrmManagerClient;
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Landroid/drm/DrmManagerClient;

    invoke-virtual {p0}, Lcom/android/mms/MmsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/MmsApp;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    return-object v0
.end method

.method public getPduLoaderManager()Lcom/android/mms/util/PduLoaderManager;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mPduLoaderManager:Lcom/android/mms/util/PduLoaderManager;

    return-object v0
.end method

.method public getRecentSuggestions()Landroid/provider/SearchRecentSuggestions;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mRecentSuggestions:Landroid/provider/SearchRecentSuggestions;

    return-object v0
.end method

.method public getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/android/mms/MmsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/mms/MmsApp;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public getThumbnailManager()Lcom/android/mms/util/ThumbnailManager;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mThumbnailManager:Lcom/android/mms/util/ThumbnailManager;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 153
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/layout/LayoutManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 154
    return-void
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 67
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 69
    const-string v1, "Mms:strictmode"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 77
    :cond_0
    sput-object p0, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;

    .line 79
    new-instance v1, Landroid/os/Broadcaster;

    invoke-direct {v1}, Landroid/os/Broadcaster;-><init>()V

    iput-object v1, p0, Lcom/android/mms/MmsApp;->mBroadcaster:Landroid/os/Broadcaster;

    .line 81
    const v1, 0x7f050001

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 84
    const-string v1, "country_detector"

    invoke-virtual {p0, v1}, Lcom/android/mms/MmsApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector;

    iput-object v1, p0, Lcom/android/mms/MmsApp;->mCountryDetector:Landroid/location/CountryDetector;

    .line 85
    new-instance v1, Lcom/android/mms/MmsApp$1;

    invoke-direct {v1, p0}, Lcom/android/mms/MmsApp$1;-><init>(Lcom/android/mms/MmsApp;)V

    iput-object v1, p0, Lcom/android/mms/MmsApp;->mCountryListener:Landroid/location/CountryListener;

    .line 91
    iget-object v1, p0, Lcom/android/mms/MmsApp;->mCountryDetector:Landroid/location/CountryDetector;

    iget-object v2, p0, Lcom/android/mms/MmsApp;->mCountryListener:Landroid/location/CountryListener;

    invoke-virtual {p0}, Lcom/android/mms/MmsApp;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/location/CountryDetector;->addCountryListener(Landroid/location/CountryListener;Landroid/os/Looper;)V

    .line 92
    iget-object v1, p0, Lcom/android/mms/MmsApp;->mCountryDetector:Landroid/location/CountryDetector;

    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/MmsApp;->mCountryIso:Ljava/lang/String;

    .line 94
    invoke-virtual {p0}, Lcom/android/mms/MmsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 95
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/mms/util/PduLoaderManager;

    invoke-direct {v1, v0}, Lcom/android/mms/util/PduLoaderManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/MmsApp;->mPduLoaderManager:Lcom/android/mms/util/PduLoaderManager;

    .line 96
    new-instance v1, Lcom/android/mms/util/ThumbnailManager;

    invoke-direct {v1, v0}, Lcom/android/mms/util/ThumbnailManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/MmsApp;->mThumbnailManager:Lcom/android/mms/util/ThumbnailManager;

    .line 98
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->init(Landroid/content/Context;)V

    .line 99
    invoke-static {p0}, Lcom/android/mms/data/Contact;->init(Landroid/content/Context;)V

    .line 100
    invoke-static {p0}, Lcom/android/mms/util/DraftCache;->init(Landroid/content/Context;)V

    .line 101
    invoke-static {p0}, Lcom/android/mms/data/Conversation;->init(Landroid/content/Context;)V

    .line 102
    invoke-static {p0}, Lcom/android/mms/util/DownloadManager;->init(Landroid/content/Context;)V

    .line 103
    invoke-static {p0}, Lcom/android/mms/util/RateController;->init(Landroid/content/Context;)V

    .line 104
    invoke-static {p0}, Lcom/android/mms/layout/LayoutManager;->init(Landroid/content/Context;)V

    .line 105
    invoke-static {p0}, Lcom/android/mms/util/SmileyParser;->init(Landroid/content/Context;)V

    .line 106
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->init(Landroid/content/Context;)V

    .line 108
    invoke-direct {p0}, Lcom/android/mms/MmsApp;->activePendingMessages()V

    .line 109
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 139
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mPduLoaderManager:Lcom/android/mms/util/PduLoaderManager;

    invoke-virtual {v0}, Lcom/android/mms/util/PduLoaderManager;->onLowMemory()V

    .line 140
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mThumbnailManager:Lcom/android/mms/util/ThumbnailManager;

    invoke-virtual {v0}, Lcom/android/mms/util/ThumbnailManager;->onLowMemory()V

    .line 141
    return-void
.end method

.method public onTerminate()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mCountryDetector:Landroid/location/CountryDetector;

    iget-object v1, p0, Lcom/android/mms/MmsApp;->mCountryListener:Landroid/location/CountryListener;

    invoke-virtual {v0, v1}, Landroid/location/CountryDetector;->removeCountryListener(Landroid/location/CountryListener;)V

    .line 133
    return-void
.end method

.method public registerForBroadcastEvent(ILandroid/os/Handler;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "target"    # Landroid/os/Handler;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mBroadcaster:Landroid/os/Broadcaster;

    invoke-virtual {v0, p1, p2, p1}, Landroid/os/Broadcaster;->request(ILandroid/os/Handler;I)V

    .line 201
    return-void
.end method

.method public unregisterForBroadcastEvent(ILandroid/os/Handler;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "target"    # Landroid/os/Handler;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mBroadcaster:Landroid/os/Broadcaster;

    invoke-virtual {v0, p1, p2, p1}, Landroid/os/Broadcaster;->cancelRequest(ILandroid/os/Handler;I)V

    .line 205
    return-void
.end method
