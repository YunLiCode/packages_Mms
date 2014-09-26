.class Lcom/android/mms/ui/ConversationList$ModeCallback;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeCallback"
.end annotation


# instance fields
.field private mMultiSelectActionBarView:Landroid/view/View;

.field private mSelectedConvCount:Landroid/widget/TextView;

.field private mSelectedThreadIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/mms/ui/ConversationList;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/ConversationList;)V
    .locals 0

    .prologue
    .line 1048
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/ConversationList;Lcom/android/mms/ui/ConversationList$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/mms/ui/ConversationList;
    .param p2, "x1"    # Lcom/android/mms/ui/ConversationList$1;

    .prologue
    .line 1048
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationList$ModeCallback;-><init>(Lcom/android/mms/ui/ConversationList;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1086
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1097
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1088
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mSelectedThreadIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1089
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mSelectedThreadIds:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    # getter for: Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationList;->access$900(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/ConversationList;->confirmDeleteThreads(Ljava/util/Collection;Landroid/content/AsyncQueryHandler;)V

    .line 1091
    :cond_0
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    .line 1086
    :pswitch_data_0
    .packed-switch 0x7f0a00be
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1055
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1056
    .local v0, "inflater":Landroid/view/MenuInflater;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mSelectedThreadIds:Ljava/util/HashSet;

    .line 1057
    const v1, 0x7f0f0001

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1059
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 1060
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040008

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    .line 1063
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v2, 0x7f0a0034

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mSelectedConvCount:Landroid/widget/TextView;

    .line 1066
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 1067
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v2, 0x7f0a0033

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b00b1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1069
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 1102
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ConversationListAdapter;

    .line 1103
    .local v0, "adapter":Lcom/android/mms/ui/ConversationListAdapter;
    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->uncheckAll()V

    .line 1104
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mSelectedThreadIds:Ljava/util/HashSet;

    .line 1105
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 8
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "checked"    # Z

    .prologue
    .line 1110
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationList;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 1111
    .local v3, "listView":Landroid/widget/ListView;
    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    .line 1112
    .local v0, "checkedCount":I
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mSelectedConvCount:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1114
    invoke-virtual {v3, p2}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 1115
    .local v2, "cursor":Landroid/database/Cursor;
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v6, v2}, Lcom/android/mms/data/Conversation;->from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;

    move-result-object v1

    .line 1116
    .local v1, "conv":Lcom/android/mms/data/Conversation;
    invoke-virtual {v1, p5}, Lcom/android/mms/data/Conversation;->setIsChecked(Z)V

    .line 1117
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v4

    .line 1119
    .local v4, "threadId":J
    if-eqz p5, :cond_0

    .line 1120
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mSelectedThreadIds:Ljava/util/HashSet;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1124
    :goto_0
    return-void

    .line 1122
    :cond_0
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mSelectedThreadIds:Ljava/util/HashSet;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1074
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 1075
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040008

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1077
    .local v0, "v":Landroid/view/ViewGroup;
    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 1079
    const v1, 0x7f0a0034

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/ConversationList$ModeCallback;->mSelectedConvCount:Landroid/widget/TextView;

    .line 1081
    .end local v0    # "v":Landroid/view/ViewGroup;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
