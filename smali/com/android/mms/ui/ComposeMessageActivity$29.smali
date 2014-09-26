.class Lcom/android/mms/ui/ComposeMessageActivity$29;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->initRecipientsEditor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0

    .prologue
    .line 2998
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$29;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 3001
    if-nez p2, :cond_0

    move-object v0, p1

    .line 3002
    check-cast v0, Lcom/android/mms/ui/RecipientsEditor;

    .line 3005
    .local v0, "editor":Lcom/android/mms/ui/RecipientsEditor;
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$29;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->validRecipient(Lcom/android/mms/ui/RecipientsEditor;)V
    invoke-static {v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7400(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/RecipientsEditor;)V

    .line 3007
    .end local v0    # "editor":Lcom/android/mms/ui/RecipientsEditor;
    :cond_0
    return-void
.end method
