.class Lcom/android/mms/ui/MessageTemplate$1;
.super Ljava/lang/Object;
.source "MessageTemplate.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageTemplate;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageTemplate;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/mms/ui/MessageTemplate$1;->this$0:Lcom/android/mms/ui/MessageTemplate;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 11
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 110
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v8

    check-cast v8, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 112
    .local v8, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-wide v3, v8, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    long-to-int v6, v3

    .line 113
    .local v6, "_id":I
    if-ltz v6, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate$1;->this$0:Lcom/android/mms/ui/MessageTemplate;

    # getter for: Lcom/android/mms/ui/MessageTemplate;->mLvContent:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/mms/ui/MessageTemplate;->access$000(Lcom/android/mms/ui/MessageTemplate;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-lt v6, v0, :cond_2

    .line 115
    :cond_0
    const-string v0, "MessageTemplate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id error. _id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MessageTemplate$1;->this$0:Lcom/android/mms/ui/MessageTemplate;

    # getter for: Lcom/android/mms/ui/MessageTemplate;->mLvContent:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/mms/ui/MessageTemplate;->access$000(Lcom/android/mms/ui/MessageTemplate;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_1
    :goto_0
    return v10

    .line 119
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.mms.MessageTemplateProvider/messages/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 120
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate$1;->this$0:Lcom/android/mms/ui/MessageTemplate;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageTemplate;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 121
    .local v9, "result":I
    if-nez v9, :cond_1

    .line 122
    const-string v0, "content://com.android.mms.MessageTemplateProvider/messages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 123
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate$1;->this$0:Lcom/android/mms/ui/MessageTemplate;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/MessageTemplate;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 124
    .local v7, "cur":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 125
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate$1;->this$0:Lcom/android/mms/ui/MessageTemplate;

    # getter for: Lcom/android/mms/ui/MessageTemplate;->mAdapterContent:Landroid/widget/SimpleCursorAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/MessageTemplate;->access$100(Lcom/android/mms/ui/MessageTemplate;)Landroid/widget/SimpleCursorAdapter;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method
