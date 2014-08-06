.class Lcom/android/mms/ui/SmsSelectorActivity$SimMessageItem;
.super Ljava/lang/Object;
.source "SmsSelectorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SmsSelectorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SimMessageItem"
.end annotation


# instance fields
.field mAddress:Ljava/lang/String;

.field mBody:Ljava/lang/String;

.field mDate:Ljava/lang/Long;

.field mStatus:I

.field mSubId:I

.field final synthetic this$0:Lcom/android/mms/ui/SmsSelectorActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SmsSelectorActivity;)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Lcom/android/mms/ui/SmsSelectorActivity$SimMessageItem;->this$0:Lcom/android/mms/ui/SmsSelectorActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
