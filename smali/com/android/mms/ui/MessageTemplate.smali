.class public Lcom/android/mms/ui/MessageTemplate;
.super Landroid/app/Activity;
.source "MessageTemplate.java"


# instance fields
.field private final DBG:Z

.field private editSMSTempClick:Landroid/widget/AdapterView$OnItemClickListener;

.field private editSmsTempClickOK:Landroid/content/DialogInterface$OnClickListener;

.field private mAdapterContent:Landroid/widget/SimpleCursorAdapter;

.field private mEditDlg:Landroid/app/AlertDialog;

.field private mLvContent:Landroid/widget/ListView;

.field private mNewDlg:Landroid/app/AlertDialog;

.field private mNewSmsTemp:Landroid/widget/AdapterView$OnItemClickListener;

.field private menuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field public newSmsTempClickOK:Landroid/content/DialogInterface$OnClickListener;

.field private position:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageTemplate;->DBG:Z

    .line 100
    iput-object v1, p0, Lcom/android/mms/ui/MessageTemplate;->mLvContent:Landroid/widget/ListView;

    .line 101
    iput-object v1, p0, Lcom/android/mms/ui/MessageTemplate;->mAdapterContent:Landroid/widget/SimpleCursorAdapter;

    .line 102
    iput-object v1, p0, Lcom/android/mms/ui/MessageTemplate;->mEditDlg:Landroid/app/AlertDialog;

    .line 103
    iput-object v1, p0, Lcom/android/mms/ui/MessageTemplate;->mNewDlg:Landroid/app/AlertDialog;

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/MessageTemplate;->position:I

    .line 106
    new-instance v0, Lcom/android/mms/ui/MessageTemplate$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageTemplate$1;-><init>(Lcom/android/mms/ui/MessageTemplate;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageTemplate;->menuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 131
    new-instance v0, Lcom/android/mms/ui/MessageTemplate$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageTemplate$2;-><init>(Lcom/android/mms/ui/MessageTemplate;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageTemplate;->editSMSTempClick:Landroid/widget/AdapterView$OnItemClickListener;

    .line 145
    new-instance v0, Lcom/android/mms/ui/MessageTemplate$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageTemplate$3;-><init>(Lcom/android/mms/ui/MessageTemplate;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageTemplate;->editSmsTempClickOK:Landroid/content/DialogInterface$OnClickListener;

    .line 186
    new-instance v0, Lcom/android/mms/ui/MessageTemplate$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageTemplate$4;-><init>(Lcom/android/mms/ui/MessageTemplate;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageTemplate;->mNewSmsTemp:Landroid/widget/AdapterView$OnItemClickListener;

    .line 195
    new-instance v0, Lcom/android/mms/ui/MessageTemplate$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageTemplate$5;-><init>(Lcom/android/mms/ui/MessageTemplate;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageTemplate;->newSmsTempClickOK:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessageTemplate;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/MessageTemplate;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate;->mLvContent:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MessageTemplate;)Landroid/widget/SimpleCursorAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/MessageTemplate;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate;->mAdapterContent:Landroid/widget/SimpleCursorAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MessageTemplate;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/MessageTemplate;

    .prologue
    .line 93
    iget v0, p0, Lcom/android/mms/ui/MessageTemplate;->position:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/mms/ui/MessageTemplate;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/MessageTemplate;
    .param p1, "x1"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/android/mms/ui/MessageTemplate;->position:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MessageTemplate;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/MessageTemplate;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MessageTemplate;->createEditMessageDialog(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MessageTemplate;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/MessageTemplate;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MessageTemplate;->createNewMessageDialog(Ljava/lang/String;I)V

    return-void
.end method

.method private createEditMessageDialog(Ljava/lang/String;I)V
    .locals 7
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "pos"    # I

    .prologue
    .line 357
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 358
    .local v1, "factory":Landroid/view/LayoutInflater;
    const v3, 0x7f040010

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 359
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0a003f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 360
    .local v0, "et":Landroid/widget/EditText;
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    const/4 v4, 0x0

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 362
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 364
    if-eqz p1, :cond_0

    .line 365
    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 367
    :cond_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0b0155

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessageTemplate;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0b007d

    iget-object v5, p0, Lcom/android/mms/ui/MessageTemplate;->editSmsTempClickOK:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0b007e

    new-instance v5, Lcom/android/mms/ui/MessageTemplate$7;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/MessageTemplate$7;-><init>(Lcom/android/mms/ui/MessageTemplate;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/MessageTemplate;->mEditDlg:Landroid/app/AlertDialog;

    .line 376
    iget-object v3, p0, Lcom/android/mms/ui/MessageTemplate;->mEditDlg:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 377
    return-void
.end method

.method private createNewMessageDialog(Ljava/lang/String;I)V
    .locals 7
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "pos"    # I

    .prologue
    .line 334
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 335
    .local v1, "factory":Landroid/view/LayoutInflater;
    const v3, 0x7f040010

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 336
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0a003f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 337
    .local v0, "et":Landroid/widget/EditText;
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    const/4 v4, 0x0

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 339
    if-eqz p1, :cond_0

    .line 340
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 342
    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 344
    :cond_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0b0155

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessageTemplate;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    iget-object v5, p0, Lcom/android/mms/ui/MessageTemplate;->newSmsTempClickOK:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/android/mms/ui/MessageTemplate$6;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/MessageTemplate$6;-><init>(Lcom/android/mms/ui/MessageTemplate;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/MessageTemplate;->mNewDlg:Landroid/app/AlertDialog;

    .line 353
    iget-object v3, p0, Lcom/android/mms/ui/MessageTemplate;->mNewDlg:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 354
    return-void
.end method

.method private hideDialogSoftKeyboard(Landroid/app/Dialog;)V
    .locals 4
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 283
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 284
    const v2, 0x7f0a003f

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 285
    .local v0, "et":Landroid/widget/EditText;
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageTemplate;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 287
    .local v1, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 289
    .end local v0    # "et":Landroid/widget/EditText;
    .end local v1    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method private resumePreviousDialog(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 320
    if-nez p1, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    const-string v0, "new_message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 324
    const-string v0, "new_message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pos"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MessageTemplate;->createNewMessageDialog(Ljava/lang/String;I)V

    .line 327
    :cond_2
    const-string v0, "edit_pos"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    const-string v0, "edit_pos"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MessageTemplate;->position:I

    .line 329
    const-string v0, "edit_message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pos"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MessageTemplate;->createEditMessageDialog(Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 224
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 225
    const v1, 0x7f040017

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageTemplate;->setContentView(I)V

    .line 227
    const v1, 0x7f0a005e

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageTemplate;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ListView;

    .line 228
    .local v12, "lvTitle":Landroid/widget/ListView;
    new-instance v3, Landroid/database/MatrixCursor;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "_id"

    aput-object v4, v1, v2

    const/4 v2, 0x1

    const-string v4, "title"

    aput-object v4, v1, v2

    const/4 v2, 0x2

    const-string v4, "summary"

    aput-object v4, v1, v2

    invoke-direct {v3, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 229
    .local v3, "curTitle":Landroid/database/MatrixCursor;
    const/4 v1, 0x3

    new-array v13, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v13, v1

    const/4 v1, 0x1

    const v2, 0x7f0b0152

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageTemplate;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v13, v1

    const/4 v1, 0x2

    const v2, 0x7f0b0153

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageTemplate;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v13, v1

    .line 231
    .local v13, "obj":[Ljava/lang/Object;
    invoke-virtual {v3, v13}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 233
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x1090004

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v6, "title"

    aput-object v6, v4, v1

    const/4 v1, 0x1

    const-string v6, "summary"

    aput-object v6, v4, v1

    const/4 v1, 0x2

    new-array v5, v1, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 238
    .local v0, "adapterTitle":Landroid/widget/ListAdapter;
    invoke-virtual {v12, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 239
    iget-object v1, p0, Lcom/android/mms/ui/MessageTemplate;->mNewSmsTemp:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v12, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 241
    const v1, 0x7f0a005f

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageTemplate;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageTemplate;->mLvContent:Landroid/widget/ListView;

    .line 242
    const-string v1, "content://com.android.mms.MessageTemplateProvider/messages"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 243
    .local v5, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/mms/ui/MessageTemplate;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 244
    .local v9, "cur":Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 245
    new-instance v6, Landroid/widget/SimpleCursorAdapter;

    const v8, 0x1090003

    const/4 v1, 0x1

    new-array v10, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "message"

    aput-object v2, v10, v1

    const/4 v1, 0x1

    new-array v11, v1, [I

    const/4 v1, 0x0

    const v2, 0x1020014

    aput v2, v11, v1

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v6, p0, Lcom/android/mms/ui/MessageTemplate;->mAdapterContent:Landroid/widget/SimpleCursorAdapter;

    .line 250
    iget-object v1, p0, Lcom/android/mms/ui/MessageTemplate;->mLvContent:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/mms/ui/MessageTemplate;->mAdapterContent:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 251
    iget-object v1, p0, Lcom/android/mms/ui/MessageTemplate;->mLvContent:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/mms/ui/MessageTemplate;->editSMSTempClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 259
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageTemplate;->resumePreviousDialog(Landroid/os/Bundle;)V

    .line 260
    return-void

    .line 255
    :cond_0
    const-string v1, "MessageTemplate"

    const-string v2, "Get message teamplate from content provider failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 233
    nop

    :array_0
    .array-data 4
        0x1020014
        0x1020015
    .end array-data
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v1, 0x0

    .line 217
    const v0, 0x7f0b0156

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 218
    const v0, 0x7f0b0158

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageTemplate;->menuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 220
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 293
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 294
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate;->mEditDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate;->mEditDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 296
    :cond_0
    iput-object v1, p0, Lcom/android/mms/ui/MessageTemplate;->mEditDlg:Landroid/app/AlertDialog;

    .line 297
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate;->mNewDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate;->mNewDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 299
    :cond_1
    iput-object v1, p0, Lcom/android/mms/ui/MessageTemplate;->mNewDlg:Landroid/app/AlertDialog;

    .line 300
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 381
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 383
    const/4 v0, 0x1

    .line 385
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 270
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 271
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate;->mLvContent:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageTemplate;->unregisterForContextMenu(Landroid/view/View;)V

    .line 272
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 264
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 265
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate;->mLvContent:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageTemplate;->registerForContextMenu(Landroid/view/View;)V

    .line 266
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    const v4, 0x7f0a003f

    .line 304
    iget-object v2, p0, Lcom/android/mms/ui/MessageTemplate;->mNewDlg:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessageTemplate;->mNewDlg:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 305
    iget-object v2, p0, Lcom/android/mms/ui/MessageTemplate;->mNewDlg:Landroid/app/AlertDialog;

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 306
    .local v0, "et":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 307
    .local v1, "message":Ljava/lang/String;
    const-string v2, "new_message"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v2, "pos"

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 310
    .end local v0    # "et":Landroid/widget/EditText;
    .end local v1    # "message":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageTemplate;->mEditDlg:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/MessageTemplate;->mEditDlg:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 311
    iget-object v2, p0, Lcom/android/mms/ui/MessageTemplate;->mEditDlg:Landroid/app/AlertDialog;

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 312
    .restart local v0    # "et":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 313
    .restart local v1    # "message":Ljava/lang/String;
    const-string v2, "edit_message"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v2, "edit_pos"

    iget v3, p0, Lcom/android/mms/ui/MessageTemplate;->position:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 315
    const-string v2, "pos"

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 317
    .end local v0    # "et":Landroid/widget/EditText;
    .end local v1    # "message":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 276
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 278
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate;->mNewDlg:Landroid/app/AlertDialog;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageTemplate;->hideDialogSoftKeyboard(Landroid/app/Dialog;)V

    .line 279
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate;->mEditDlg:Landroid/app/AlertDialog;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageTemplate;->hideDialogSoftKeyboard(Landroid/app/Dialog;)V

    .line 280
    return-void
.end method
