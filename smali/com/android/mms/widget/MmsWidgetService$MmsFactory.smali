.class Lcom/android/mms/widget/MmsWidgetService$MmsFactory;
.super Ljava/lang/Object;
.source "MmsWidgetService.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;
.implements Lcom/android/mms/data/Contact$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/widget/MmsWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MmsFactory"
.end annotation


# static fields
.field private static SENDERS_TEXT_COLOR_READ:I

.field private static SENDERS_TEXT_COLOR_UNREAD:I

.field private static SUBJECT_TEXT_COLOR_READ:I

.field private static SUBJECT_TEXT_COLOR_UNREAD:I


# instance fields
.field private final mAppWidgetId:I

.field private final mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private final mContext:Landroid/content/Context;

.field private mConversationCursor:Landroid/database/Cursor;

.field private mShouldShowViewMore:Z

.field private mUnreadConvCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    .line 80
    const-string v1, "appWidgetId"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mAppWidgetId:I

    .line 82
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 83
    const-string v1, "Mms:widget"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    const-string v1, "MmsWidgetService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MmsFactory intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "widget id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mAppWidgetId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 88
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f070005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->SENDERS_TEXT_COLOR_READ:I

    .line 89
    const v1, 0x7f070006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->SENDERS_TEXT_COLOR_UNREAD:I

    .line 90
    const v1, 0x7f070007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->SUBJECT_TEXT_COLOR_READ:I

    .line 91
    const v1, 0x7f070008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->SUBJECT_TEXT_COLOR_UNREAD:I

    .line 92
    return-void
.end method

.method private addColor(Ljava/lang/CharSequence;I)Landroid/text/SpannableStringBuilder;
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "color"    # I

    .prologue
    .line 195
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 196
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    if-eqz p2, :cond_0

    .line 197
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 200
    :cond_0
    return-object v0
.end method

.method private getConversationCount()I
    .locals 3

    .prologue
    .line 183
    const-string v0, "Mms:widget"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    const-string v0, "MmsWidgetService"

    const-string v1, "getConversationCount"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    # getter for: Lcom/android/mms/widget/MmsWidgetService;->sWidgetLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/mms/widget/MmsWidgetService;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v2, 0x19

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    monitor-exit v1

    return v0

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getViewMoreConversationsView()Landroid/widget/RemoteViews;
    .locals 5

    .prologue
    .line 298
    const-string v0, "Mms:widget"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    const-string v0, "MmsWidgetService"

    const-string v1, "getViewMoreConversationsView"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_0
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040033

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 302
    const v1, 0x7f0a00b8

    iget-object v2, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0136

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 304
    const v1, 0x7f0a00b7

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/mms/ui/ConversationList;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 306
    return-object v0
.end method

.method private onLoadComplete()V
    .locals 4

    .prologue
    const v3, 0x7f0a00b1

    .line 333
    const-string v1, "Mms:widget"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    const-string v1, "MmsWidgetService"

    const-string v2, "onLoadComplete"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_0
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040031

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 338
    .local v0, "remoteViews":Landroid/widget/RemoteViews;
    iget v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mUnreadConvCount:I

    if-lez v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 340
    iget v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mUnreadConvCount:I

    if-lez v1, :cond_1

    .line 341
    iget v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mUnreadConvCount:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 345
    :cond_1
    iget-object v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v2, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mAppWidgetId:I

    invoke-virtual {v1, v2, v0}, Landroid/appwidget/AppWidgetManager;->partiallyUpdateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 346
    return-void

    .line 338
    :cond_2
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private queryAllConversations()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 133
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/data/Conversation;->sAllThreadsUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private queryUnreadCount()I
    .locals 8

    .prologue
    .line 139
    const/4 v6, 0x0

    .line 140
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 142
    .local v7, "unreadCount":I
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/data/Conversation;->sAllThreadsUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    const-string v3, "read=0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 145
    if-eqz v6, :cond_0

    .line 146
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 149
    :cond_0
    if-eqz v6, :cond_1

    .line 150
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 153
    :cond_1
    return v7

    .line 149
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 150
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 149
    :cond_2
    throw v0
.end method


# virtual methods
.method public getCount()I
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 163
    const-string v3, "Mms:widget"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 164
    const-string v3, "MmsWidgetService"

    const-string v4, "getCount"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_0
    # getter for: Lcom/android/mms/widget/MmsWidgetService;->sWidgetLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/mms/widget/MmsWidgetService;->access$000()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 167
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    if-nez v3, :cond_1

    .line 168
    monitor-exit v4

    .line 172
    :goto_0
    return v1

    .line 170
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->getConversationCount()I

    move-result v0

    .line 171
    .local v0, "count":I
    iget-object v3, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    move v3, v2

    :goto_1
    iput-boolean v3, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mShouldShowViewMore:Z

    .line 172
    iget-boolean v3, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mShouldShowViewMore:Z

    if-eqz v3, :cond_2

    move v1, v2

    :cond_2
    add-int/2addr v1, v0

    monitor-exit v4

    goto :goto_0

    .line 173
    .end local v0    # "count":I
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "count":I
    :cond_3
    move v3, v1

    .line 171
    goto :goto_1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 324
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 4

    .prologue
    .line 311
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040033

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 312
    .local v0, "view":Landroid/widget/RemoteViews;
    const v1, 0x7f0a00b8

    iget-object v2, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    const v3, 0x7f0b00b3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 314
    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 13
    .param p1, "position"    # I

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 208
    const-string v10, "Mms:widget"

    const/4 v11, 0x2

    invoke-static {v10, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 209
    const-string v10, "MmsWidgetService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getViewAt position: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_0
    # getter for: Lcom/android/mms/widget/MmsWidgetService;->sWidgetLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/mms/widget/MmsWidgetService;->access$000()Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 213
    :try_start_0
    iget-object v11, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    if-eqz v11, :cond_1

    iget-boolean v11, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mShouldShowViewMore:Z

    if-eqz v11, :cond_2

    invoke-direct {p0}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->getConversationCount()I

    move-result v11

    if-lt p1, v11, :cond_2

    .line 215
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->getViewMoreConversationsView()Landroid/widget/RemoteViews;

    move-result-object v7

    monitor-exit v10

    .line 289
    :goto_0
    return-object v7

    .line 218
    :cond_2
    iget-object v11, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    invoke-interface {v11, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v11

    if-nez v11, :cond_3

    .line 221
    const-string v8, "MmsWidgetService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to move to position: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-direct {p0}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->getViewMoreConversationsView()Landroid/widget/RemoteViews;

    move-result-object v7

    monitor-exit v10

    goto :goto_0

    .line 290
    :catchall_0
    move-exception v8

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 225
    :cond_3
    :try_start_1
    iget-object v11, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    invoke-static {v11, v12}, Lcom/android/mms/data/Conversation;->from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;

    move-result-object v3

    .line 228
    .local v3, "conv":Lcom/android/mms/data/Conversation;
    new-instance v7, Landroid/widget/RemoteViews;

    iget-object v11, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const v12, 0x7f040032

    invoke-direct {v7, v11, v12}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 231
    .local v7, "remoteViews":Landroid/widget/RemoteViews;
    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->hasUnreadMessages()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 232
    const v11, 0x7f0a00b5

    const/4 v12, 0x0

    invoke-virtual {v7, v11, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 233
    const v11, 0x7f0a00b6

    const/16 v12, 0x8

    invoke-virtual {v7, v11, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 238
    :goto_1
    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->hasAttachment()Z

    move-result v5

    .line 239
    .local v5, "hasAttachment":Z
    const v11, 0x7f0a0032

    if-eqz v5, :cond_7

    :goto_2
    invoke-virtual {v7, v11, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 243
    const v9, 0x7f0a0030

    iget-object v8, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getDate()J

    move-result-wide v11

    invoke-static {v8, v11, v12}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->hasUnreadMessages()Z

    move-result v8

    if-eqz v8, :cond_8

    sget v8, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->SUBJECT_TEXT_COLOR_UNREAD:I

    :goto_3
    invoke-direct {p0, v11, v8}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->addColor(Ljava/lang/CharSequence;I)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 249
    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->hasUnreadMessages()Z

    move-result v8

    if-eqz v8, :cond_9

    sget v2, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->SENDERS_TEXT_COLOR_UNREAD:I

    .line 251
    .local v2, "color":I
    :goto_4
    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v2}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->addColor(Ljava/lang/CharSequence;I)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 254
    .local v4, "from":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->hasDraft()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 255
    iget-object v8, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0130

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 256
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 257
    .local v0, "before":I
    iget-object v8, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b000f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 258
    new-instance v8, Landroid/text/style/TextAppearanceSpan;

    iget-object v9, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    const v11, 0x1030046

    invoke-direct {v8, v9, v11, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    const/16 v11, 0x11

    invoke-virtual {v4, v8, v0, v9, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 261
    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    iget-object v9, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f0200c7

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-direct {v8, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    const/16 v11, 0x11

    invoke-virtual {v4, v8, v0, v9, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 267
    .end local v0    # "before":I
    :cond_4
    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->hasUnreadMessages()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 268
    sget-object v8, Lcom/android/mms/ui/ConversationListItem;->STYLE_BOLD:Landroid/text/style/StyleSpan;

    const/4 v9, 0x0

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    const/16 v12, 0x11

    invoke-virtual {v4, v8, v9, v11, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 271
    :cond_5
    const v8, 0x7f0a002f

    invoke-virtual {v7, v8, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 276
    invoke-static {}, Lcom/android/mms/util/SmileyParser;->getInstance()Lcom/android/mms/util/SmileyParser;

    move-result-object v6

    .line 277
    .local v6, "parser":Lcom/android/mms/util/SmileyParser;
    const v9, 0x7f0a0014

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getSnippet()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->hasUnreadMessages()Z

    move-result v8

    if-eqz v8, :cond_a

    sget v8, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->SUBJECT_TEXT_COLOR_UNREAD:I

    :goto_5
    invoke-direct {p0, v11, v8}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->addColor(Ljava/lang/CharSequence;I)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 283
    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 284
    .local v1, "clickIntent":Landroid/content/Intent;
    const-string v8, "vnd.android-dir/mms-sms"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    const-string v8, "thread_id"

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v11

    invoke-virtual {v1, v8, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 287
    const v8, 0x7f0a00b4

    invoke-virtual {v7, v8, v1}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 289
    monitor-exit v10

    goto/16 :goto_0

    .line 235
    .end local v1    # "clickIntent":Landroid/content/Intent;
    .end local v2    # "color":I
    .end local v4    # "from":Landroid/text/SpannableStringBuilder;
    .end local v5    # "hasAttachment":Z
    .end local v6    # "parser":Lcom/android/mms/util/SmileyParser;
    :cond_6
    const v11, 0x7f0a00b5

    const/16 v12, 0x8

    invoke-virtual {v7, v11, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 236
    const v11, 0x7f0a00b6

    const/4 v12, 0x0

    invoke-virtual {v7, v11, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_1

    .restart local v5    # "hasAttachment":Z
    :cond_7
    move v8, v9

    .line 239
    goto/16 :goto_2

    .line 243
    :cond_8
    sget v8, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->SUBJECT_TEXT_COLOR_READ:I

    goto/16 :goto_3

    .line 249
    :cond_9
    sget v2, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->SENDERS_TEXT_COLOR_READ:I

    goto/16 :goto_4

    .line 277
    .restart local v2    # "color":I
    .restart local v4    # "from":Landroid/text/SpannableStringBuilder;
    .restart local v6    # "parser":Lcom/android/mms/util/SmileyParser;
    :cond_a
    sget v8, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->SUBJECT_TEXT_COLOR_READ:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 329
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 96
    const-string v0, "Mms:widget"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const-string v0, "MmsWidgetService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 100
    return-void
.end method

.method public onDataSetChanged()V
    .locals 2

    .prologue
    .line 118
    const-string v0, "Mms:widget"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const-string v0, "MmsWidgetService"

    const-string v1, "onDataSetChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_0
    # getter for: Lcom/android/mms/widget/MmsWidgetService;->sWidgetLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/mms/widget/MmsWidgetService;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    .line 126
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->queryAllConversations()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    .line 127
    invoke-direct {p0}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->queryUnreadCount()I

    move-result v0

    iput v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mUnreadConvCount:I

    .line 128
    invoke-direct {p0}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->onLoadComplete()V

    .line 129
    monitor-exit v1

    .line 130
    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 104
    const-string v0, "Mms:widget"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    const-string v0, "MmsWidgetService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    # getter for: Lcom/android/mms/widget/MmsWidgetService;->sWidgetLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/mms/widget/MmsWidgetService;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    .line 112
    :cond_1
    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 113
    monitor-exit v1

    .line 114
    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 3
    .param p1, "updated"    # Lcom/android/mms/data/Contact;

    .prologue
    .line 349
    const-string v0, "Mms:widget"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    const-string v0, "MmsWidgetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdate from Contact: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mAppWidgetId:I

    const v2, 0x7f0a00b3

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 353
    return-void
.end method
