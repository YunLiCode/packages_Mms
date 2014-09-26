.class Lcom/android/mms/ui/MessageTemplate$5;
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
    .line 196
    iput-object p1, p0, Lcom/android/mms/ui/MessageTemplate$5;->this$0:Lcom/android/mms/ui/MessageTemplate;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v2, 0x0

    .line 198
    check-cast p1, Landroid/app/Dialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    const v0, 0x7f0a003f

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 199
    .local v7, "et":Landroid/widget/EditText;
    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 201
    .local v8, "newSMSTemp":Ljava/lang/String;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 202
    .local v10, "values":Landroid/content/ContentValues;
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    const-string v0, "message"

    invoke-virtual {v10, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v0, "content://com.android.mms.MessageTemplateProvider/messages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 206
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate$5;->this$0:Lcom/android/mms/ui/MessageTemplate;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageTemplate;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    .line 207
    .local v9, "result":Landroid/net/Uri;
    if-eqz v9, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate$5;->this$0:Lcom/android/mms/ui/MessageTemplate;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/MessageTemplate;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 209
    .local v6, "cur":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate$5;->this$0:Lcom/android/mms/ui/MessageTemplate;

    # getter for: Lcom/android/mms/ui/MessageTemplate;->mAdapterContent:Landroid/widget/SimpleCursorAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/MessageTemplate;->access$100(Lcom/android/mms/ui/MessageTemplate;)Landroid/widget/SimpleCursorAdapter;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method
