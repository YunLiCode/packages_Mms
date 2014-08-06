.class Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter$1;
.super Ljava/lang/Object;
.source "MultiPickContactsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;

.field final synthetic val$groupPosition:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;I)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter$1;->this$1:Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;

    iput p2, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter$1;->val$groupPosition:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 348
    iget-object v1, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter$1;->this$1:Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;

    iget-object v1, v1, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    # getter for: Lcom/android/mms/ui/MultiPickContactsActivity;->mList:Landroid/widget/ExpandableListView;
    invoke-static {v1}, Lcom/android/mms/ui/MultiPickContactsActivity;->access$200(Lcom/android/mms/ui/MultiPickContactsActivity;)Landroid/widget/ExpandableListView;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter$1;->val$groupPosition:I

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v0

    .line 349
    .local v0, "expand":Z
    if-eqz v0, :cond_0

    .line 350
    iget-object v1, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter$1;->this$1:Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;

    iget-object v1, v1, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    # getter for: Lcom/android/mms/ui/MultiPickContactsActivity;->mList:Landroid/widget/ExpandableListView;
    invoke-static {v1}, Lcom/android/mms/ui/MultiPickContactsActivity;->access$200(Lcom/android/mms/ui/MultiPickContactsActivity;)Landroid/widget/ExpandableListView;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter$1;->val$groupPosition:I

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 354
    :goto_0
    return-void

    .line 352
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter$1;->this$1:Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;

    iget-object v1, v1, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    # getter for: Lcom/android/mms/ui/MultiPickContactsActivity;->mList:Landroid/widget/ExpandableListView;
    invoke-static {v1}, Lcom/android/mms/ui/MultiPickContactsActivity;->access$200(Lcom/android/mms/ui/MultiPickContactsActivity;)Landroid/widget/ExpandableListView;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter$1;->val$groupPosition:I

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    goto :goto_0
.end method
