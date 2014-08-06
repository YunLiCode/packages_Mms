.class Lcom/android/mms/ui/MessageListItem$2$1;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListItem$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/MessageListItem$2;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem$2;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$2$1;->this$1:Lcom/android/mms/ui/MessageListItem$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$2$1;->this$1:Lcom/android/mms/ui/MessageListItem$2;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem$2;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListItem;->multiStartDownload()V

    .line 359
    return-void
.end method
