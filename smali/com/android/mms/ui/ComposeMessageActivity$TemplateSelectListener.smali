.class Lcom/android/mms/ui/ComposeMessageActivity$TemplateSelectListener;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TemplateSelectListener"
.end annotation


# instance fields
.field private mTempArray:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;[Ljava/lang/String;)V
    .locals 0
    .param p2, "tempArray"    # [Ljava/lang/String;

    .prologue
    .line 4291
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$TemplateSelectListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4292
    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$TemplateSelectListener;->mTempArray:[Ljava/lang/String;

    .line 4293
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 4299
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$TemplateSelectListener;->mTempArray:[Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$TemplateSelectListener;->mTempArray:[Ljava/lang/String;

    array-length v2, v2

    if-le v2, p2, :cond_0

    .line 4300
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$TemplateSelectListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2500(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v0

    .line 4301
    .local v0, "et":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    .line 4302
    .local v1, "index":I
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$TemplateSelectListener;->mTempArray:[Ljava/lang/String;

    aget-object v3, v3, p2

    invoke-interface {v2, v1, v3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 4305
    .end local v0    # "et":Landroid/widget/EditText;
    .end local v1    # "index":I
    :cond_0
    return-void
.end method
