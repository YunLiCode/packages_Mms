.class Lcom/android/mms/ui/MessageListItem$12;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListItem;->setOnClickListener(Lcom/android/mms/ui/MessageItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;

.field final synthetic val$msgItem:Lcom/android/mms/ui/MessageItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V
    .locals 0

    .prologue
    .line 959
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$12;->this$0:Lcom/android/mms/ui/MessageListItem;

    iput-object p2, p0, Lcom/android/mms/ui/MessageListItem$12;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 962
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$12;->this$0:Lcom/android/mms/ui/MessageListItem;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$12;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    const/4 v2, 0x4

    # invokes: Lcom/android/mms/ui/MessageListItem;->sendMessage(Lcom/android/mms/ui/MessageItem;I)V
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageListItem;->access$900(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;I)V

    .line 963
    return-void
.end method
