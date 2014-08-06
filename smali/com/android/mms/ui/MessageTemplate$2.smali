.class Lcom/android/mms/ui/MessageTemplate$2;
.super Ljava/lang/Object;
.source "MessageTemplate.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

.field private title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageTemplate;)V
    .locals 1

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/mms/ui/MessageTemplate$2;->this$0:Lcom/android/mms/ui/MessageTemplate;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessageTemplate$2;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/mms/ui/MessageTemplate$2;->this$0:Lcom/android/mms/ui/MessageTemplate;

    # getter for: Lcom/android/mms/ui/MessageTemplate;->mAdapterContent:Landroid/widget/SimpleCursorAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/MessageTemplate;->access$100(Lcom/android/mms/ui/MessageTemplate;)Landroid/widget/SimpleCursorAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SimpleCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 138
    .local v0, "cur":Landroid/database/Cursor;
    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 139
    const-string v1, "message"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageTemplate$2;->title:Ljava/lang/String;

    .line 140
    iget-object v1, p0, Lcom/android/mms/ui/MessageTemplate$2;->this$0:Lcom/android/mms/ui/MessageTemplate;

    # setter for: Lcom/android/mms/ui/MessageTemplate;->position:I
    invoke-static {v1, p3}, Lcom/android/mms/ui/MessageTemplate;->access$202(Lcom/android/mms/ui/MessageTemplate;I)I

    .line 141
    iget-object v1, p0, Lcom/android/mms/ui/MessageTemplate$2;->this$0:Lcom/android/mms/ui/MessageTemplate;

    iget-object v2, p0, Lcom/android/mms/ui/MessageTemplate$2;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/mms/ui/MessageTemplate$2;->title:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    # invokes: Lcom/android/mms/ui/MessageTemplate;->createEditMessageDialog(Ljava/lang/String;I)V
    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/MessageTemplate;->access$300(Lcom/android/mms/ui/MessageTemplate;Ljava/lang/String;I)V

    .line 142
    return-void
.end method
