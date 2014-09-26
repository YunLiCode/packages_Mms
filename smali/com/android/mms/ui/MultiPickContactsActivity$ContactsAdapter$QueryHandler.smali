.class Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "MultiPickContactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "res"    # Landroid/content/ContentResolver;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter$QueryHandler;->this$1:Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;

    .line 312
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 313
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter$QueryHandler;->this$1:Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;

    # getter for: Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mActivity:Lcom/android/mms/ui/MultiPickContactsActivity;
    invoke-static {v0}, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->access$000(Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;)Lcom/android/mms/ui/MultiPickContactsActivity;

    move-result-object v0

    # invokes: Lcom/android/mms/ui/MultiPickContactsActivity;->init(Landroid/database/Cursor;)V
    invoke-static {v0, p3}, Lcom/android/mms/ui/MultiPickContactsActivity;->access$100(Lcom/android/mms/ui/MultiPickContactsActivity;Landroid/database/Cursor;)V

    .line 318
    return-void
.end method
