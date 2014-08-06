.class Lcom/android/mms/ui/MessageTemplate$3;
.super Ljava/lang/Object;
.source "MessageTemplate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 145
    iput-object p1, p0, Lcom/android/mms/ui/MessageTemplate$3;->this$0:Lcom/android/mms/ui/MessageTemplate;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    .line 148
    check-cast p1, Landroid/app/Dialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    const v0, 0x7f0a003f

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 149
    .local v7, "et":Landroid/widget/EditText;
    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 151
    .local v8, "newSMSTemp":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate$3;->this$0:Lcom/android/mms/ui/MessageTemplate;

    # getter for: Lcom/android/mms/ui/MessageTemplate;->position:I
    invoke-static {v0}, Lcom/android/mms/ui/MessageTemplate;->access$200(Lcom/android/mms/ui/MessageTemplate;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate$3;->this$0:Lcom/android/mms/ui/MessageTemplate;

    # getter for: Lcom/android/mms/ui/MessageTemplate;->position:I
    invoke-static {v0}, Lcom/android/mms/ui/MessageTemplate;->access$200(Lcom/android/mms/ui/MessageTemplate;)I

    move-result v0

    iget-object v3, p0, Lcom/android/mms/ui/MessageTemplate$3;->this$0:Lcom/android/mms/ui/MessageTemplate;

    # getter for: Lcom/android/mms/ui/MessageTemplate;->mLvContent:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/mms/ui/MessageTemplate;->access$000(Lcom/android/mms/ui/MessageTemplate;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    if-lt v0, v3, :cond_2

    .line 153
    :cond_0
    const-string v0, "MessageTemplate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postion error. position:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MessageTemplate$3;->this$0:Lcom/android/mms/ui/MessageTemplate;

    # getter for: Lcom/android/mms/ui/MessageTemplate;->position:I
    invoke-static {v3}, Lcom/android/mms/ui/MessageTemplate;->access$200(Lcom/android/mms/ui/MessageTemplate;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MessageTemplate$3;->this$0:Lcom/android/mms/ui/MessageTemplate;

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

    .line 182
    :cond_1
    :goto_0
    return-void

    .line 158
    :cond_2
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.mms.MessageTemplateProvider/messages/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/mms/ui/MessageTemplate$3;->this$0:Lcom/android/mms/ui/MessageTemplate;

    # getter for: Lcom/android/mms/ui/MessageTemplate;->position:I
    invoke-static {v3}, Lcom/android/mms/ui/MessageTemplate;->access$200(Lcom/android/mms/ui/MessageTemplate;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 160
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate$3;->this$0:Lcom/android/mms/ui/MessageTemplate;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageTemplate;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 162
    .local v9, "result":I
    if-nez v9, :cond_1

    .line 163
    const-string v0, "content://com.android.mms.MessageTemplateProvider/messages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 164
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate$3;->this$0:Lcom/android/mms/ui/MessageTemplate;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/MessageTemplate;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 165
    .local v6, "cur":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 166
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate$3;->this$0:Lcom/android/mms/ui/MessageTemplate;

    # getter for: Lcom/android/mms/ui/MessageTemplate;->mAdapterContent:Landroid/widget/SimpleCursorAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/MessageTemplate;->access$100(Lcom/android/mms/ui/MessageTemplate;)Landroid/widget/SimpleCursorAdapter;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 171
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "cur":Landroid/database/Cursor;
    .end local v9    # "result":I
    :cond_3
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 172
    .local v10, "values":Landroid/content/ContentValues;
    const-string v0, "message"

    invoke-virtual {v10, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v0, "_id"

    iget-object v3, p0, Lcom/android/mms/ui/MessageTemplate$3;->this$0:Lcom/android/mms/ui/MessageTemplate;

    # getter for: Lcom/android/mms/ui/MessageTemplate;->position:I
    invoke-static {v3}, Lcom/android/mms/ui/MessageTemplate;->access$200(Lcom/android/mms/ui/MessageTemplate;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 174
    const-string v0, "content://com.android.mms.MessageTemplateProvider/messages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 175
    .restart local v1    # "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate$3;->this$0:Lcom/android/mms/ui/MessageTemplate;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageTemplate;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v10, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 177
    .restart local v9    # "result":I
    if-nez v9, :cond_1

    .line 178
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate$3;->this$0:Lcom/android/mms/ui/MessageTemplate;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/MessageTemplate;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 179
    .restart local v6    # "cur":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 180
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate$3;->this$0:Lcom/android/mms/ui/MessageTemplate;

    # getter for: Lcom/android/mms/ui/MessageTemplate;->mAdapterContent:Landroid/widget/SimpleCursorAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/MessageTemplate;->access$100(Lcom/android/mms/ui/MessageTemplate;)Landroid/widget/SimpleCursorAdapter;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto/16 :goto_0
.end method
