.class Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;
.super Landroid/util/LruCache;
.source "MessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageItemCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/Long;",
        "Lcom/android/mms/ui/MessageItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "maxSize"    # I

    .prologue
    .line 531
    invoke-direct {p0, p1}, Landroid/util/LruCache;-><init>(I)V

    .line 532
    return-void
.end method


# virtual methods
.method protected entryRemoved(ZLjava/lang/Long;Lcom/android/mms/ui/MessageItem;Lcom/android/mms/ui/MessageItem;)V
    .locals 0
    .param p1, "evicted"    # Z
    .param p2, "key"    # Ljava/lang/Long;
    .param p3, "oldValue"    # Lcom/android/mms/ui/MessageItem;
    .param p4, "newValue"    # Lcom/android/mms/ui/MessageItem;

    .prologue
    .line 537
    invoke-virtual {p3}, Lcom/android/mms/ui/MessageItem;->cancelPduLoading()V

    .line 538
    return-void
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Z
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Ljava/lang/Object;

    .prologue
    .line 529
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p3, Lcom/android/mms/ui/MessageItem;

    .end local p3    # "x2":Ljava/lang/Object;
    check-cast p4, Lcom/android/mms/ui/MessageItem;

    .end local p4    # "x3":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;->entryRemoved(ZLjava/lang/Long;Lcom/android/mms/ui/MessageItem;Lcom/android/mms/ui/MessageItem;)V

    return-void
.end method
