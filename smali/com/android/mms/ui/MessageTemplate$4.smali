.class Lcom/android/mms/ui/MessageTemplate$4;
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


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageTemplate;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/mms/ui/MessageTemplate$4;->this$0:Lcom/android/mms/ui/MessageTemplate;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 190
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate$4;->this$0:Lcom/android/mms/ui/MessageTemplate;

    const/4 v1, 0x0

    const/4 v2, 0x0

    # invokes: Lcom/android/mms/ui/MessageTemplate;->createNewMessageDialog(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageTemplate;->access$400(Lcom/android/mms/ui/MessageTemplate;Ljava/lang/String;I)V

    .line 191
    return-void
.end method
