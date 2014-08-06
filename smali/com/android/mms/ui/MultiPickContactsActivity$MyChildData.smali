.class Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;
.super Ljava/lang/Object;
.source "MultiPickContactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MultiPickContactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyChildData"
.end annotation


# instance fields
.field mChildPosition:I

.field mContactId:J

.field mCount:I

.field mMimeType:Ljava/lang/String;

.field mValue:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/ui/MultiPickContactsActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MultiPickContactsActivity;JI)V
    .locals 0
    .param p2, "contactId"    # J
    .param p4, "childPosition"    # I

    .prologue
    .line 511
    iput-object p1, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 512
    iput-wide p2, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mContactId:J

    .line 513
    iput p4, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mChildPosition:I

    .line 514
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 518
    instance-of v1, p1, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 519
    check-cast v0, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;

    .line 520
    .local v0, "temp":Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;
    iget-wide v1, v0, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mContactId:J

    iget-wide v3, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mContactId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget v1, v0, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mChildPosition:I

    iget v2, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mChildPosition:I

    if-ne v1, v2, :cond_0

    .line 522
    const/4 v1, 0x1

    .line 525
    .end local v0    # "temp":Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
