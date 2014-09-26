.class public Lcom/android/mms/ui/ComposeMessageActivity$MessageListListener;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessageListListener"
.end annotation


# instance fields
.field private mode:I

.field private oldDist:F

.field private textSize:F

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 1

    .prologue
    .line 6914
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MessageListListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6910
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$MessageListListener;->mode:I

    .line 6915
    invoke-virtual {p1}, Lcom/android/mms/ui/ComposeMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->getFontSize(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$MessageListListener;->textSize:F

    .line 6916
    return-void
.end method

.method private setListItemFontSize(F)V
    .locals 3
    .param p1, "size"    # F

    .prologue
    .line 6979
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MessageListListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6981
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->KEY_FONT_SIZE:Ljava/lang/String;

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$MessageListListener;->textSize:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 6982
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 6983
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MessageListListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->setFontSize()V
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$11900(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 6984
    return-void
.end method

.method private spacing(Landroid/view/MotionEvent;)F
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 6972
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float v0, v2, v3

    .line 6973
    .local v0, "x":F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float v1, v2, v3

    .line 6974
    .local v1, "y":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    return v2
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x2

    const/high16 v5, 0x42000000

    const/high16 v4, 0x41900000

    const/high16 v2, 0x3f000000

    const/4 v3, 0x0

    .line 6922
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    .line 6967
    :cond_0
    :goto_0
    :pswitch_0
    return v3

    .line 6925
    :pswitch_1
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MessageListListener;->mode:I

    goto :goto_0

    .line 6928
    :pswitch_2
    iput v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$MessageListListener;->mode:I

    goto :goto_0

    .line 6931
    :pswitch_3
    iput v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$MessageListListener;->mode:I

    goto :goto_0

    .line 6934
    :pswitch_4
    invoke-direct {p0, p2}, Lcom/android/mms/ui/ComposeMessageActivity$MessageListListener;->spacing(Landroid/view/MotionEvent;)F

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MessageListListener;->oldDist:F

    .line 6935
    iget v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MessageListListener;->oldDist:F

    const/high16 v2, 0x41200000

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 6937
    iput v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$MessageListListener;->mode:I

    goto :goto_0

    .line 6941
    :pswitch_5
    iget v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MessageListListener;->mode:I

    if-ne v1, v6, :cond_0

    .line 6943
    invoke-direct {p0, p2}, Lcom/android/mms/ui/ComposeMessageActivity$MessageListListener;->spacing(Landroid/view/MotionEvent;)F

    move-result v0

    .line 6944
    .local v0, "newDist":F
    iget v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MessageListListener;->oldDist:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    .line 6946
    iget v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MessageListListener;->textSize:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MessageListListener;->textSize:F

    .line 6947
    iget v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MessageListListener;->textSize:F

    cmpl-float v1, v1, v5

    if-lez v1, :cond_1

    .line 6949
    iput v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$MessageListListener;->textSize:F

    .line 6951
    :cond_1
    iget v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MessageListListener;->textSize:F

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$MessageListListener;->setListItemFontSize(F)V

    .line 6952
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MessageListListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListAdapter;->notifyDataSetChanged()V

    .line 6954
    :cond_2
    iget v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MessageListListener;->oldDist:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 6956
    iget v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MessageListListener;->textSize:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MessageListListener;->textSize:F

    .line 6957
    iget v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MessageListListener;->textSize:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_3

    .line 6959
    iput v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$MessageListListener;->textSize:F

    .line 6961
    :cond_3
    iget v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MessageListListener;->textSize:F

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$MessageListListener;->setListItemFontSize(F)V

    .line 6962
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MessageListListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 6922
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
