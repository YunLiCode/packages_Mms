.class public Lcom/android/mms/ui/MessageUtils;
.super Ljava/lang/Object;
.source "MessageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;
    }
.end annotation


# static fields
.field public static KEY_FONT_SIZE:Ljava/lang/String;

.field private static final NUMERIC_CHARS_SUGAR:[C

.field private static numericSugarMap:Ljava/util/HashMap;

.field private static sLocalNumber:Ljava/lang/String;

.field private static sNoSubjectStrings:[Ljava/lang/String;

.field private static final sRecipientAddress:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sVideoDuration:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v2, 0xb

    .line 142
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->sRecipientAddress:Ljava/util/Map;

    .line 146
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->sVideoDuration:[I

    .line 153
    new-array v0, v2, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->NUMERIC_CHARS_SUGAR:[C

    .line 157
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/android/mms/ui/MessageUtils;->NUMERIC_CHARS_SUGAR:[C

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->numericSugarMap:Ljava/util/HashMap;

    .line 165
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->NUMERIC_CHARS_SUGAR:[C

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 166
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->numericSugarMap:Ljava/util/HashMap;

    sget-object v2, Lcom/android/mms/ui/MessageUtils;->NUMERIC_CHARS_SUGAR:[C

    aget-char v2, v2, v0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/MessageUtils;->NUMERIC_CHARS_SUGAR:[C

    aget-char v3, v3, v0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1591
    :cond_0
    const-string v0, "pref_key_font_size"

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->KEY_FONT_SIZE:Ljava/lang/String;

    return-void

    .line 146
    :array_0
    .array-data 4
        0x0
        0x5
        0xa
        0xf
        0x14
        0x1e
        0x28
        0x32
        0x3c
        0x5a
        0x78
    .end array-data

    .line 153
    :array_1
    .array-data 2
        0x2ds
        0x2es
        0x2cs
        0x28s
        0x29s
        0x20s
        0x2fs
        0x5cs
        0x2as
        0x23s
        0x2bs
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 171
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 173
    return-void
.end method

.method public static capturePicture(Landroid/app/Activity;I)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I

    .prologue
    .line 681
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 682
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "output"

    sget-object v2, Lcom/android/mms/TempFileProvider;->SCRAP_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 683
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 684
    return-void
.end method

.method public static cleanseMmsSubject(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 183
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 197
    .end local p1    # "subject":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 186
    .restart local p1    # "subject":Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/android/mms/ui/MessageUtils;->sNoSubjectStrings:[Ljava/lang/String;

    if-nez v2, :cond_2

    .line 187
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/mms/ui/MessageUtils;->sNoSubjectStrings:[Ljava/lang/String;

    .line 191
    :cond_2
    sget-object v2, Lcom/android/mms/ui/MessageUtils;->sNoSubjectStrings:[Ljava/lang/String;

    array-length v1, v2

    .line 192
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 193
    sget-object v2, Lcom/android/mms/ui/MessageUtils;->sNoSubjectStrings:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 194
    const/4 p1, 0x0

    goto :goto_0

    .line 192
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static confirmReadReportDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 2

    .prologue
    .line 1026
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1027
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1028
    const v1, 0x7f0b00f6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1029
    const v1, 0x7f0b00f7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1030
    const v1, 0x7f0b007d

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1031
    const v1, 0x7f0b007e

    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1032
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1033
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1034
    return-void
.end method

.method public static copySmsToSim(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;JII)Z
    .locals 12

    .prologue
    .line 1600
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1601
    const/4 v3, 0x0

    .line 1647
    :cond_0
    :goto_0
    return v3

    .line 1603
    :cond_1
    invoke-static {p2}, Lcom/android/mms/ui/MessageUtils;->isValidSimAddress(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1604
    const/4 v3, 0x0

    goto :goto_0

    .line 1606
    :cond_2
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1607
    const/4 v3, 0x1

    .line 1608
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v10, v3

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1609
    invoke-static {p1}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1611
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v4, p2

    move-wide/from16 v7, p4

    move/from16 v9, p7

    invoke-static/range {v3 .. v9}, Landroid/telephony/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJI)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v3

    .line 1613
    const/4 v4, -0x1

    move/from16 v0, p6

    if-ne v0, v4, :cond_3

    .line 1614
    const/16 p6, 0x5

    .line 1616
    :cond_3
    const-string v4, "Trace"

    const-string v5, "MessageUtils.copySmsToSim if"

    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v4, v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1618
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1619
    invoke-static {}, Landroid/telephony/MSimSmsManager;->getDefault()Landroid/telephony/MSimSmsManager;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v3, v3, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    move/from16 v0, p6

    move/from16 v1, p7

    invoke-virtual {v4, v5, v3, v0, v1}, Landroid/telephony/MSimSmsManager;->copyMessageToIcc([B[BII)Z

    move-result v3

    and-int/2addr v3, v10

    .line 1643
    :goto_2
    if-eqz v3, :cond_0

    move v10, v3

    .line 1644
    goto :goto_1

    .line 1622
    :cond_4
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v3, v3, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    move/from16 v0, p6

    invoke-virtual {v4, v5, v3, v0}, Landroid/telephony/SmsManager;->copyMessageToIcc([B[BI)Z

    move-result v3

    and-int/2addr v3, v10

    goto :goto_2

    .line 1627
    :cond_5
    move-wide/from16 v0, p4

    move/from16 v2, p7

    invoke-static {p2, v5, v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->getDeliveryPdu(Ljava/lang/String;Ljava/lang/String;JI)[B

    move-result-object v3

    .line 1629
    const/4 v4, -0x1

    move/from16 v0, p6

    if-ne v0, v4, :cond_6

    .line 1630
    const/16 p6, 0x1

    .line 1632
    :cond_6
    const-string v4, "Trace"

    const-string v5, "MessageUtils.copySmsToSim else"

    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v4, v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1634
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1635
    invoke-static {}, Landroid/telephony/MSimSmsManager;->getDefault()Landroid/telephony/MSimSmsManager;

    move-result-object v4

    const/4 v5, 0x0

    move/from16 v0, p6

    move/from16 v1, p7

    invoke-virtual {v4, v5, v3, v0, v1}, Landroid/telephony/MSimSmsManager;->copyMessageToIcc([B[BII)Z

    move-result v3

    and-int/2addr v3, v10

    goto :goto_2

    .line 1638
    :cond_7
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v4

    const/4 v5, 0x0

    move/from16 v0, p6

    invoke-virtual {v4, v5, v3, v0}, Landroid/telephony/SmsManager;->copyMessageToIcc([B[BI)Z

    move-result v3

    and-int/2addr v3, v10

    goto :goto_2

    :cond_8
    move v3, v10

    goto/16 :goto_0
.end method

.method public static copySmsToSim(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;I)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msgItem"    # Lcom/android/mms/ui/MessageItem;
    .param p2, "subscription"    # I

    .prologue
    .line 1661
    iget v1, p1, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    .line 1662
    .local v1, "boxId":I
    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    .line 1663
    .local v2, "address":Ljava/lang/String;
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1664
    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    .line 1665
    .local v3, "text":Ljava/lang/String;
    iget-wide v6, p1, Lcom/android/mms/ui/MessageItem;->mDate:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_0

    iget-wide v4, p1, Lcom/android/mms/ui/MessageItem;->mDate:J

    .line 1666
    .local v4, "timestamp":J
    :goto_0
    const/4 v6, -0x1

    move-object v0, p0

    move v7, p2

    invoke-static/range {v0 .. v7}, Lcom/android/mms/ui/MessageUtils;->copySmsToSim(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;JII)Z

    move-result v0

    return v0

    .line 1665
    .end local v4    # "timestamp":J
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    goto :goto_0
.end method

.method private static encodeUCS2(Ljava/lang/String;[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1483
    const-string v0, "utf-16be"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 1485
    if-eqz p1, :cond_0

    .line 1487
    array-length v0, p1

    array-length v2, v1

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    .line 1489
    array-length v2, p1

    int-to-byte v2, v2

    aput-byte v2, v0, v4

    .line 1490
    array-length v2, p1

    invoke-static {p1, v4, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1491
    array-length v2, p1

    add-int/lit8 v2, v2, 0x1

    array-length v3, v1

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1496
    :goto_0
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [B

    .line 1497
    array-length v2, v0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 1498
    array-length v2, v0

    invoke-static {v0, v4, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1499
    return-object v1

    :cond_0
    move-object v0, v1

    .line 1494
    goto :goto_0
.end method

.method private static extractEncStr(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Lcom/google/android/mms/pdu/EncodedStringValue;

    .prologue
    .line 1051
    if-eqz p1, :cond_0

    .line 1052
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    .line 1054
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columnRawBytes"    # I
    .param p2, "columnCharset"    # I

    .prologue
    .line 1038
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1039
    .local v1, "rawBytes":Ljava/lang/String;
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1041
    .local v0, "charset":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1042
    const-string v1, ""

    .line 1046
    .end local v1    # "rawBytes":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 1043
    .restart local v1    # "rawBytes":Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_0

    .line 1046
    new-instance v2, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-static {v1}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static extractUris([Landroid/text/style/URLSpan;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "spans"    # [Landroid/text/style/URLSpan;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/text/style/URLSpan;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1059
    array-length v2, p0

    .line 1060
    .local v2, "size":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1062
    .local v0, "accumulator":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1063
    aget-object v3, p0, v1

    invoke-virtual {v3}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1062
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1065
    :cond_0
    return-object v0
.end method

.method public static formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "when"    # J

    .prologue
    .line 577
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "when"    # J
    .param p3, "fullFormat"    # Z

    .prologue
    .line 581
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 582
    .local v2, "then":Landroid/text/format/Time;
    invoke-virtual {v2, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 583
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 584
    .local v1, "now":Landroid/text/format/Time;
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 587
    const v0, 0x80b00

    .line 592
    .local v0, "format_flags":I
    iget v3, v2, Landroid/text/format/Time;->year:I

    iget v4, v1, Landroid/text/format/Time;->year:I

    if-eq v3, v4, :cond_1

    .line 593
    or-int/lit8 v0, v0, 0x14

    .line 605
    :goto_0
    if-eqz p3, :cond_0

    .line 606
    or-int/lit8 v0, v0, 0x11

    .line 609
    :cond_0
    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 594
    :cond_1
    iget v3, v2, Landroid/text/format/Time;->yearDay:I

    iget v4, v1, Landroid/text/format/Time;->yearDay:I

    if-eq v3, v4, :cond_2

    .line 596
    or-int/lit8 v0, v0, 0x10

    goto :goto_0

    .line 599
    :cond_2
    or-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getAttachmentType(Lcom/android/mms/model/SlideshowModel;)I
    .locals 6
    .param p0, "model"    # Lcom/android/mms/model/SlideshowModel;

    .prologue
    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 528
    if-nez p0, :cond_1

    .line 529
    sget v2, Lcom/android/mms/ui/MessageItem;->ATTACHMENT_TYPE_NOT_LOADED:I

    .line 573
    :cond_0
    :goto_0
    return v2

    .line 532
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->hasOtherAttachModel()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 533
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->hasVCalendar()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 534
    const/4 v2, 0x6

    goto :goto_0

    .line 538
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    .line 539
    .local v0, "numberOfSlides":I
    if-gt v0, v3, :cond_0

    .line 541
    if-ne v0, v3, :cond_9

    .line 543
    invoke-virtual {p0, v4}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 544
    .local v1, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 545
    const/4 v2, 0x2

    goto :goto_0

    .line 548
    :cond_3
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v5

    if-nez v5, :cond_0

    .line 552
    :cond_4
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 553
    const/4 v2, 0x3

    goto :goto_0

    .line 556
    :cond_5
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    .line 557
    goto :goto_0

    .line 560
    :cond_6
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasVcard()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 561
    const/4 v2, 0x5

    goto :goto_0

    .line 564
    :cond_7
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v4

    .line 565
    goto :goto_0

    :cond_8
    move v2, v4

    .line 570
    goto :goto_0

    .line 573
    .end local v1    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_9
    sget v2, Lcom/android/mms/ui/MessageItem;->ATTACHMENT_TYPE_NOT_LOADED:I

    goto :goto_0
.end method

.method private static getCDMADeliveryPdu(Ljava/lang/String;Ljava/lang/String;J)[B
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 1781
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v1

    .line 1783
    if-nez v1, :cond_1

    .line 1840
    :cond_0
    :goto_0
    return-object v0

    .line 1785
    :cond_1
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .line 1786
    iput v6, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 1788
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getNextMessageId()I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 1790
    iput-boolean v5, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    .line 1791
    iput-boolean v5, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    .line 1792
    iput-boolean v5, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    .line 1793
    iput-boolean v5, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    .line 1794
    invoke-static {p2, p3}, Lcom/android/mms/ui/MessageUtils;->getTimeStamp(J)[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->fromByteArray([B)Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    .line 1795
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 1796
    iput-object p1, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1797
    iput-object v0, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1798
    iput-object v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 1800
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object v2

    .line 1801
    if-eqz v2, :cond_0

    .line 1803
    const/16 v3, 0x1002

    .line 1810
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v4}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 1811
    iput v5, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 1812
    iput v3, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 1813
    iput-object v1, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 1814
    iput v6, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    .line 1815
    iput-object v2, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 1817
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x64

    invoke-direct {v3, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1818
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1819
    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v5, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1820
    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1821
    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1822
    iget v4, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v5, v4}, Ljava/io/DataOutputStream;->write(I)V

    .line 1823
    iget v4, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v5, v4}, Ljava/io/DataOutputStream;->write(I)V

    .line 1824
    iget v4, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v5, v4}, Ljava/io/DataOutputStream;->write(I)V

    .line 1825
    iget v4, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v5, v4}, Ljava/io/DataOutputStream;->write(I)V

    .line 1826
    iget v4, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v5, v4}, Ljava/io/DataOutputStream;->write(I)V

    .line 1827
    iget-object v4, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    const/4 v6, 0x0

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v1, v1

    invoke-virtual {v5, v4, v6, v1}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1829
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 1830
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 1831
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 1832
    array-length v1, v2

    invoke-virtual {v5, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 1833
    const/4 v1, 0x0

    array-length v4, v2

    invoke-virtual {v5, v2, v1, v4}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1834
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V

    .line 1836
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    .line 1837
    :catch_0
    move-exception v1

    .line 1838
    const-string v2, "Mms"

    const-string v3, "creating cdmaPdu failed: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public static getDeliveryPdu(Ljava/lang/String;Ljava/lang/String;JI)[B
    .locals 1
    .param p0, "destinationAddress"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "date"    # J
    .param p4, "subscription"    # I

    .prologue
    .line 1673
    invoke-static {p4}, Lcom/android/mms/ui/MessageUtils;->isCDMAActive(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1674
    invoke-static {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageUtils;->getCDMADeliveryPdu(Ljava/lang/String;Ljava/lang/String;J)[B

    move-result-object v0

    .line 1676
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageUtils;->getGSMDeliveryPdu(Ljava/lang/String;Ljava/lang/String;J)[B

    move-result-object v0

    goto :goto_0
.end method

.method private static getDeliveryPduHeader(Ljava/lang/String;B)Ljava/io/ByteArrayOutputStream;
    .locals 6
    .param p0, "destinationAddress"    # Ljava/lang/String;
    .param p1, "mtiByte"    # B

    .prologue
    const/4 v3, 0x0

    .line 1460
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xb4

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1462
    .local v0, "bo":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1465
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 1469
    .local v1, "daBytes":[B
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v4, v2, 0x2

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xf0

    const/16 v5, 0xf0

    if-ne v2, v5, :cond_0

    const/4 v2, 0x1

    :goto_0
    sub-int v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1473
    array-length v2, v1

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1476
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1477
    return-object v0

    :cond_0
    move v2, v3

    .line 1469
    goto :goto_0
.end method

.method public static getFontSize(Landroid/content/Context;)F
    .locals 3

    .prologue
    .line 1594
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1595
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->KEY_FONT_SIZE:Ljava/lang/String;

    const/high16 v2, 0x41900000

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 1596
    return v0
.end method

.method public static getGSMDeliveryPdu(Ljava/lang/String;Ljava/lang/String;J)[B
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1682
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    move-object v0, v2

    .line 1742
    :goto_0
    return-object v0

    .line 1686
    :cond_1
    const/4 v3, 0x0

    .line 1689
    if-eqz v2, :cond_2

    const/16 v0, 0x40

    :goto_1
    or-int/lit8 v0, v0, 0x0

    int-to-byte v0, v0

    .line 1690
    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->getDeliveryPduHeader(Ljava/lang/String;B)Ljava/io/ByteArrayOutputStream;

    move-result-object v5

    .line 1699
    const/4 v0, 0x0

    const/4 v6, 0x0

    :try_start_0
    invoke-static {p1, v3, v0, v6}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move v3, v4

    .line 1722
    :goto_2
    if-ne v3, v4, :cond_4

    .line 1723
    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xa0

    if-le v3, v4, :cond_3

    move-object v0, v2

    .line 1725
    goto :goto_0

    :cond_2
    move v0, v1

    .line 1689
    goto :goto_1

    .line 1709
    :catch_0
    move-exception v0

    .line 1713
    :try_start_1
    invoke-static {p1, v3}, Lcom/android/mms/ui/MessageUtils;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 1714
    const/4 v3, 0x3

    goto :goto_2

    .line 1715
    :catch_1
    move-exception v0

    .line 1716
    const-string v1, "GSM"

    const-string v3, "Implausible UnsupportedEncodingException "

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v2

    .line 1718
    goto :goto_0

    .line 1727
    :cond_3
    invoke-virtual {v5, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1737
    :goto_3
    invoke-static {p2, p3}, Lcom/android/mms/ui/MessageUtils;->getGSMTimeStamp(J)[B

    move-result-object v2

    .line 1738
    array-length v3, v2

    invoke-virtual {v5, v2, v1, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1739
    const/16 v2, 0x23

    invoke-virtual {v5, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1741
    array-length v2, v0

    invoke-virtual {v5, v0, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1742
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0

    .line 1729
    :cond_4
    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x8c

    if-le v3, v4, :cond_5

    move-object v0, v2

    .line 1731
    goto :goto_0

    .line 1735
    :cond_5
    const/16 v2, 0xb

    invoke-virtual {v5, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_3
.end method

.method private static getGSMTimeStamp(J)[B
    .locals 2

    .prologue
    .line 1746
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1747
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1748
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->gsmHexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 1749
    return-object v0
.end method

.method public static getLocalNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 908
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sLocalNumber:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 909
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->sLocalNumber:Ljava/lang/String;

    .line 911
    :cond_0
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sLocalNumber:Ljava/lang/String;

    return-object v0
.end method

.method private static getMesageClassString(Landroid/content/Context;[B)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # [B

    .prologue
    .line 327
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 328
    .local v0, "messageClass":Ljava/lang/String;
    const-string v1, ""

    .line 329
    .local v1, "result":Ljava/lang/String;
    const-string v2, "personal"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 330
    const v2, 0x7f0b01c8

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 338
    :goto_0
    return-object v1

    .line 331
    :cond_0
    const-string v2, "advertisement"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 332
    const v2, 0x7f0b01c9

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 333
    :cond_1
    const-string v2, "informational"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 334
    const v2, 0x7f0b01ca

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 336
    :cond_2
    const v2, 0x7f0b01cb

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "size"    # I

    .prologue
    .line 201
    if-nez p1, :cond_0

    .line 202
    const/4 v1, 0x0

    .line 218
    :goto_0
    return-object v1

    .line 205
    :cond_0
    const-string v1, "mms"

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    const/16 v1, 0x12

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 207
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    .line 214
    :pswitch_0
    const-string v1, "Mms"

    const-string v2, "No details could be retrieved."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const-string v1, ""

    goto :goto_0

    .line 209
    :pswitch_1
    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->getNotificationIndDetails(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 212
    :pswitch_2
    invoke-static {p0, p1, p2}, Lcom/android/mms/ui/MessageUtils;->getMultimediaMessageDetails(Landroid/content/Context;Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 218
    .end local v0    # "type":I
    :cond_1
    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->getTextMessageDetails(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getMode(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1588
    const/4 v0, 0x1

    return v0
.end method

.method public static getMultiSimName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1570
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_2

    .line 1571
    :cond_0
    const/4 v0, 0x0

    .line 1582
    :cond_1
    :goto_0
    return-object v0

    .line 1573
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->MULTI_SIM_NAME:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1575
    if-nez v0, :cond_1

    .line 1576
    if-nez p1, :cond_3

    .line 1577
    const v0, 0x7f0b0188

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1578
    :cond_3
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 1579
    const v0, 0x7f0b0189

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getMultimediaMessageDetails(Landroid/content/Context;Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "size"    # I

    .prologue
    .line 344
    const/16 v19, 0x12

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 345
    .local v17, "type":I
    const/16 v19, 0x82

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 346
    invoke-static/range {p0 .. p1}, Lcom/android/mms/ui/MessageUtils;->getNotificationIndDetails(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v19

    .line 442
    :goto_0
    return-object v19

    .line 349
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 350
    .local v6, "details":Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 352
    .local v13, "res":Landroid/content/res/Resources;
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 353
    .local v9, "id":J
    sget-object v19, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v19

    invoke-static {v0, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18

    .line 357
    .local v18, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v11

    check-cast v11, Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    .local v11, "msg":Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    const v19, 0x7f0b00b6

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    const v19, 0x7f0b00b8

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    instance-of v0, v11, Lcom/google/android/mms/pdu/RetrieveConf;

    move/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v19, v11

    .line 370
    check-cast v19, Lcom/google/android/mms/pdu/RetrieveConf;

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/mms/pdu/RetrieveConf;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->extractEncStr(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v8

    .line 371
    .local v8, "from":Ljava/lang/String;
    const/16 v19, 0xa

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 372
    const v19, 0x7f0b00ba

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_5

    .end local v8    # "from":Ljava/lang/String;
    :goto_1
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    :cond_1
    instance-of v0, v11, Lcom/google/android/mms/pdu/SendReq;

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 379
    const/16 v19, 0xa

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 380
    const v19, 0x7f0b00bb

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v16

    .line 382
    .local v16, "to":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v16, :cond_6

    .line 383
    invoke-static/range {v16 .. v16}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    move-object/from16 v19, v11

    .line 389
    check-cast v19, Lcom/google/android/mms/pdu/SendReq;

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/mms/pdu/SendReq;->getBcc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v4

    .line 390
    .local v4, "bccValues":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v4, :cond_2

    array-length v0, v4

    move/from16 v19, v0

    if-lez v19, :cond_2

    .line 391
    const/16 v19, 0xa

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 392
    const v19, 0x7f0b00bc

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-static {v4}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    move-object/from16 v19, v11

    .line 396
    check-cast v19, Lcom/google/android/mms/pdu/SendReq;

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/mms/pdu/SendReq;->getCc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    .line 397
    .local v5, "ccValues":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v5, :cond_3

    array-length v0, v5

    move/from16 v19, v0

    if-lez v19, :cond_3

    .line 398
    const/16 v19, 0xa

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 399
    const v19, 0x7f0b00bd

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    invoke-static {v5}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .end local v4    # "bccValues":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v5    # "ccValues":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v16    # "to":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_3
    const/16 v19, 0xa

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 406
    const/16 v19, 0x13

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 407
    .local v12, "msgBox":I
    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v12, v0, :cond_7

    .line 408
    const v19, 0x7f0b00c0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    :goto_3
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getDate()J

    move-result-wide v19

    const-wide/16 v21, 0x3e8

    mul-long v19, v19, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    const/16 v19, 0xa

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 420
    const v19, 0x7f0b00c1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v15

    .line 423
    .local v15, "subject":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v15, :cond_4

    .line 424
    invoke-virtual {v15}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v14

    .line 426
    .local v14, "subStr":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v19

    add-int p2, p2, v19

    .line 427
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .end local v14    # "subStr":Ljava/lang/String;
    :cond_4
    const/16 v19, 0xa

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 432
    const v19, 0x7f0b00c3

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getPriority()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->getPriorityDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    const/16 v19, 0xa

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 437
    const v19, 0x7f0b00c2

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    add-int/lit8 v19, p2, -0x1

    move/from16 v0, v19

    div-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 440
    const-string v19, " KB"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_0

    .line 359
    .end local v11    # "msg":Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .end local v12    # "msgBox":I
    .end local v15    # "subject":Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_0
    move-exception v7

    .line 360
    .local v7, "e":Lcom/google/android/mms/MmsException;
    const-string v19, "Mms"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Failed to load the message: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 361
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0b00b4

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_0

    .line 373
    .end local v7    # "e":Lcom/google/android/mms/MmsException;
    .restart local v8    # "from":Ljava/lang/String;
    .restart local v11    # "msg":Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :cond_5
    const v19, 0x7f0b007c

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 386
    .end local v8    # "from":Ljava/lang/String;
    .restart local v16    # "to":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_6
    const-string v19, "Mms"

    const-string v20, "recipient list is empty!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 409
    .end local v16    # "to":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v12    # "msgBox":I
    :cond_7
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v12, v0, :cond_8

    .line 410
    const v19, 0x7f0b00bf

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 412
    :cond_8
    const v19, 0x7f0b00be

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3
.end method

.method private static declared-synchronized getNextMessageId()I
    .locals 4

    .prologue
    .line 1844
    const-class v1, Lcom/android/mms/ui/MessageUtils;

    monitor-enter v1

    :try_start_0
    const-string v0, "persist.radio.cdma.msgid"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1845
    const v2, 0xffff

    rem-int v2, v0, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1846
    const-string v3, "persist.radio.cdma.msgid"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1847
    monitor-exit v1

    return v0

    .line 1844
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getNotificationIndDetails(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .local v1, "details":Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 226
    .local v7, "res":Landroid/content/res/Resources;
    const/4 v10, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 227
    .local v4, "id":J
    sget-object v10, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v10, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 231
    .local v9, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v6

    check-cast v6, Lcom/google/android/mms/pdu/NotificationInd;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    .local v6, "nInd":Lcom/google/android/mms/pdu/NotificationInd;
    const v10, 0x7f0b00b6

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    const v10, 0x7f0b00b9

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v6}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/android/mms/ui/MessageUtils;->extractEncStr(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v3

    .line 244
    .local v3, "from":Ljava/lang/String;
    const/16 v10, 0xa

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 245
    const v10, 0x7f0b00ba

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .end local v3    # "from":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    const/16 v10, 0xa

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 251
    const v10, 0x7f0b0017

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/NotificationInd;->getExpiry()J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    mul-long/2addr v13, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14, v15}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v7, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    const/16 v10, 0xa

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 258
    const v10, 0x7f0b00c1

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v6}, Lcom/google/android/mms/pdu/NotificationInd;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v8

    .line 261
    .local v8, "subject":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v8, :cond_0

    .line 262
    invoke-virtual {v8}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    :cond_0
    const/16 v10, 0xa

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 267
    const v10, 0x7f0b00c7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v6}, Lcom/google/android/mms/pdu/NotificationInd;->getMessageClass()[B

    move-result-object v10

    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/android/mms/ui/MessageUtils;->getMesageClassString(Landroid/content/Context;[B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    const/16 v10, 0xa

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 272
    const v10, 0x7f0b00c2

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v6}, Lcom/google/android/mms/pdu/NotificationInd;->getMessageSize()J

    move-result-wide v10

    const-wide/16 v12, 0x3ff

    add-long/2addr v10, v12

    const-wide/16 v12, 0x400

    div-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    const v10, 0x7f0b0019

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .end local v6    # "nInd":Lcom/google/android/mms/pdu/NotificationInd;
    .end local v8    # "subject":Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_1
    return-object v10

    .line 233
    :catch_0
    move-exception v2

    .line 234
    .local v2, "e":Lcom/google/android/mms/MmsException;
    const-string v10, "Mms"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to load the message: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b00b4

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 246
    .end local v2    # "e":Lcom/google/android/mms/MmsException;
    .restart local v3    # "from":Ljava/lang/String;
    .restart local v6    # "nInd":Lcom/google/android/mms/pdu/NotificationInd;
    :cond_1
    const v10, 0x7f0b007c

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public static getNotificationIndDownloadDetails(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msgItem"    # Lcom/android/mms/ui/MessageItem;

    .prologue
    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    .local v1, "details":Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 291
    .local v7, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    .line 292
    .local v4, "id":J
    sget-object v9, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 296
    .local v8, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v6

    check-cast v6, Lcom/google/android/mms/pdu/NotificationInd;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    .local v6, "nInd":Lcom/google/android/mms/pdu/NotificationInd;
    invoke-virtual {v6}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/android/mms/ui/MessageUtils;->extractEncStr(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v3

    .line 304
    .local v3, "from":Ljava/lang/String;
    const v9, 0x7f0b0020

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .end local v3    # "from":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    const/16 v9, 0xa

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 310
    const v9, 0x7f0b00c2

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {v6}, Lcom/google/android/mms/pdu/NotificationInd;->getMessageSize()J

    move-result-wide v9

    const-wide/16 v11, 0x3ff

    add-long/2addr v9, v11

    const-wide/16 v11, 0x400

    div-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    const v9, 0x7f0b0019

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    const/16 v9, 0xa

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 317
    const v9, 0x7f0b0017

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/NotificationInd;->getExpiry()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13, v14}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .end local v6    # "nInd":Lcom/google/android/mms/pdu/NotificationInd;
    :goto_1
    return-object v9

    .line 298
    :catch_0
    move-exception v2

    .line 299
    .local v2, "e":Lcom/google/android/mms/MmsException;
    const-string v9, "Mms"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to load the message: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 300
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b00b4

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 305
    .end local v2    # "e":Lcom/google/android/mms/MmsException;
    .restart local v3    # "from":Ljava/lang/String;
    .restart local v6    # "nInd":Lcom/google/android/mms/pdu/NotificationInd;
    :cond_0
    const v9, 0x7f0b007c

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method

.method private static getPriorityDescription(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "PriorityValue"    # I

    .prologue
    .line 515
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 516
    .local v0, "res":Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_0

    .line 523
    :pswitch_0
    const v1, 0x7f0b00c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 518
    :pswitch_1
    const v1, 0x7f0b00c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 520
    :pswitch_2
    const v1, 0x7f0b00c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 516
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getSubIdFromMsgId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1548
    const-string v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSubIdFromMsgId() : msgId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1553
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "sub_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1555
    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1556
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 1559
    :goto_0
    if-eqz v1, :cond_0

    .line 1560
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1563
    :cond_0
    return v0

    .line 1559
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_1
    if-eqz v1, :cond_1

    .line 1560
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 1559
    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_2
    move v0, v7

    goto :goto_0
.end method

.method private static getTextMessageDetails(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x3

    const/4 v7, 0x1

    .line 446
    const-string v5, "Mms"

    const-string v6, "getTextMessageDetails"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 449
    .local v2, "details":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 452
    .local v3, "res":Landroid/content/res/Resources;
    const v5, 0x7f0b00b6

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    const v5, 0x7f0b00b7

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 457
    const/16 v5, 0x9

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 458
    .local v4, "smsType":I
    invoke-static {v4}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 459
    const v5, 0x7f0b00bb

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    :goto_0
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 478
    if-ne v4, v8, :cond_1

    .line 479
    const v5, 0x7f0b00c0

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    :goto_1
    const/4 v5, 0x6

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 487
    .local v0, "date":J
    invoke-static {p0, v0, v1, v7}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 461
    .end local v0    # "date":J
    :cond_0
    const v5, 0x7f0b00ba

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 480
    :cond_1
    if-ne v4, v7, :cond_2

    .line 481
    const v5, 0x7f0b00bf

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 483
    :cond_2
    const v5, 0x7f0b00be

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static getTimeStamp(J)[B
    .locals 2

    .prologue
    .line 1851
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1852
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1853
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 1854
    return-object v0
.end method

.method public static getVideoCaptureDurationLimit(J)I
    .locals 7
    .param p0, "bytesAvailable"    # J

    .prologue
    const/4 v4, 0x0

    .line 688
    invoke-static {v4}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 689
    .local v0, "camcorder":Landroid/media/CamcorderProfile;
    if-nez v0, :cond_1

    .line 701
    :cond_0
    :goto_0
    return v4

    .line 692
    :cond_1
    const-wide/16 v5, 0x8

    mul-long/2addr p0, v5

    .line 693
    iget v5, v0, Landroid/media/CamcorderProfile;->audioBitRate:I

    iget v6, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    add-int/2addr v5, v6

    int-to-long v5, v5

    div-long v2, p0, v5

    .line 696
    .local v2, "seconds":J
    sget-object v5, Lcom/android/mms/ui/MessageUtils;->sVideoDuration:[I

    array-length v5, v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_0

    .line 697
    sget-object v5, Lcom/android/mms/ui/MessageUtils;->sVideoDuration:[I

    aget v5, v5, v1

    int-to-long v5, v5

    cmp-long v5, v2, v5

    if-ltz v5, :cond_2

    .line 698
    sget-object v4, Lcom/android/mms/ui/MessageUtils;->sVideoDuration:[I

    aget v4, v4, v1

    goto :goto_0

    .line 696
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public static gsmHexStringToBytes(Ljava/lang/String;)[B
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1763
    if-nez p0, :cond_1

    const/4 v1, 0x0

    .line 1774
    :cond_0
    return-object v1

    .line 1765
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1767
    .local v2, "sz":I
    div-int/lit8 v3, v2, 0x2

    new-array v1, v3, [B

    .line 1769
    .local v1, "ret":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1770
    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->hexCharToInt(C)I

    move-result v4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->hexCharToInt(C)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1769
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public static handleReadReport(Landroid/content/Context;Ljava/util/Collection;ILjava/lang/Runnable;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;I",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v11, 0x1

    const/4 v4, 0x0

    .line 934
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v0, "m_type = 132 AND read = 0 AND rr = 128"

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 940
    if-eqz p1, :cond_6

    .line 942
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 943
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v5, v0, [Ljava/lang/String;

    .line 946
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v4

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 947
    if-lez v1, :cond_0

    .line 948
    const-string v0, " OR "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 950
    :cond_0
    const-string v0, "thread_id"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, "=?"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 951
    add-int/lit8 v0, v1, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v1

    move v1, v0

    goto :goto_0

    .line 953
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 955
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 958
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v3, v4

    const-string v0, "m_id"

    aput-object v0, v3, v11

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 962
    if-nez v1, :cond_2

    .line 1021
    :goto_2
    return-void

    .line 966
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 968
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_4

    .line 969
    if-eqz p3, :cond_3

    .line 970
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 980
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 975
    :cond_4
    :goto_3
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 976
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 977
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2}, Lcom/android/mms/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 980
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 983
    new-instance v1, Lcom/android/mms/ui/MessageUtils$6;

    invoke-direct {v1, v0, p0, p2, p3}, Lcom/android/mms/ui/MessageUtils$6;-><init>(Ljava/util/Map;Landroid/content/Context;ILjava/lang/Runnable;)V

    .line 998
    new-instance v0, Lcom/android/mms/ui/MessageUtils$7;

    invoke-direct {v0, p3}, Lcom/android/mms/ui/MessageUtils$7;-><init>(Ljava/lang/Runnable;)V

    .line 1008
    new-instance v2, Lcom/android/mms/ui/MessageUtils$8;

    invoke-direct {v2, p3}, Lcom/android/mms/ui/MessageUtils$8;-><init>(Ljava/lang/Runnable;)V

    .line 1018
    invoke-static {p0, v1, v0, v2}, Lcom/android/mms/ui/MessageUtils;->confirmReadReportDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_2

    :cond_6
    move-object v5, v6

    goto :goto_1
.end method

.method static hexCharToInt(C)I
    .locals 3

    .prologue
    .line 1753
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    .line 1755
    :goto_0
    return v0

    .line 1754
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 1755
    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 1757
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid hex char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isAlias(Ljava/lang/String;)Z
    .locals 5
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1152
    invoke-static {}, Lcom/android/mms/MmsConfig;->isAliasEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1172
    :cond_0
    :goto_0
    return v3

    .line 1156
    :cond_1
    if-nez p0, :cond_3

    move v2, v3

    .line 1158
    .local v2, "len":I
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAliasMinChars()I

    move-result v4

    if-lt v2, v4, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getAliasMaxChars()I

    move-result v4

    if-gt v2, v4, :cond_0

    .line 1162
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1165
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_4

    .line 1166
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1167
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_2

    const/16 v4, 0x2e

    if-ne v0, v4, :cond_0

    .line 1165
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1156
    .end local v0    # "c":C
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_1

    .line 1172
    .restart local v1    # "i":I
    .restart local v2    # "len":I
    :cond_4
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private static isCDMAActive(I)Z
    .locals 3
    .param p0, "subscription"    # I

    .prologue
    .line 1250
    const/4 v1, 0x0

    .line 1251
    .local v1, "isCDMA":Z
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/telephony/MSimTelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    .line 1254
    .local v0, "activePhone":I
    :goto_0
    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    .line 1255
    const/4 v1, 0x1

    .line 1257
    :cond_0
    return v1

    .line 1251
    .end local v0    # "activePhone":I
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    goto :goto_0
.end method

.method public static isSimActivated(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subscription"    # I

    .prologue
    .line 1858
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1859
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/MSimTelephonyManager;->hasIccCard(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1860
    const/4 v0, 0x0

    .line 1879
    :goto_0
    return v0

    .line 1877
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1879
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    goto :goto_0
.end method

.method public static isValidMmsAddress(Ljava/lang/String;)Z
    .locals 3
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1211
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 1215
    :cond_0
    :goto_0
    return v1

    .line 1214
    :cond_1
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->parseMmsAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1215
    .local v0, "retVal":Ljava/lang/String;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isValidSimAddress(Ljava/lang/String;)Z
    .locals 1
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 1541
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWappush(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 1885
    .line 1886
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 1887
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v3, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1888
    invoke-virtual {v2}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v4

    move v0, v1

    .line 1889
    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_1

    .line 1890
    aget-object v5, v4, v0

    invoke-virtual {v2, v5}, Landroid/content/res/AssetManager;->setLocale(Ljava/lang/String;)V

    .line 1891
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b01aa

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1892
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b018a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1893
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1894
    :cond_0
    const/4 v1, 0x1

    .line 1898
    :cond_1
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1899
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1900
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1902
    :cond_2
    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->setLocale(Ljava/lang/String;)V

    .line 1904
    return v1

    .line 1889
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static launchSlideshowActivity(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 2

    .prologue
    .line 1125
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1126
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1127
    if-lez p2, :cond_0

    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 1128
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1133
    :goto_0
    return-void

    .line 1130
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1246
    const-string v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MsgUtils] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    return-void
.end method

.method public static parseMmsAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 1226
    invoke-static {p0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1242
    .end local p0    # "address":Ljava/lang/String;
    .local v0, "retVal":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 1231
    .end local v0    # "retVal":Ljava/lang/String;
    .restart local p0    # "address":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->parsePhoneNumberForMms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1232
    .restart local v0    # "retVal":Ljava/lang/String;
    if-eqz v0, :cond_2

    move-object p0, v0

    .line 1233
    goto :goto_0

    .line 1237
    :cond_2
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1242
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private static parsePhoneNumberForMms(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 1181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1182
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1184
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 1185
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1188
    .local v1, "c":C
    const/16 v4, 0x2b

    if-ne v1, v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 1189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1184
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1193
    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1198
    :cond_2
    sget-object v4, Lcom/android/mms/ui/MessageUtils;->numericSugarMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1199
    const/4 v4, 0x0

    .line 1204
    .end local v1    # "c":C
    :goto_2
    return-object v4

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method

.method public static recordSound(Landroid/app/Activity;IJ)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I
    .param p2, "sizeLimit"    # J

    .prologue
    .line 652
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 653
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "audio/amr"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 654
    const-string v1, "com.android.soundrecorder"

    const-string v2, "com.android.soundrecorder.SoundRecorder"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 656
    const-string v1, "android.provider.MediaStore.extra.MAX_BYTES"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 657
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 658
    return-void
.end method

.method public static recordVideo(Landroid/app/Activity;IJ)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I
    .param p2, "sizeLimit"    # J

    .prologue
    .line 663
    long-to-float v2, p2

    const v3, 0x3f59999a

    mul-float/2addr v2, v3

    float-to-long p2, v2

    .line 665
    invoke-static {p2, p3}, Lcom/android/mms/ui/MessageUtils;->getVideoCaptureDurationLimit(J)I

    move-result v0

    .line 667
    .local v0, "durationLimit":I
    const-string v2, "Mms:app"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 668
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recordVideo: durationLimit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sizeLimit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->log(Ljava/lang/String;)V

    .line 672
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 673
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.videoQuality"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 674
    const-string v2, "android.intent.extra.sizeLimit"

    invoke-virtual {v1, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 675
    const-string v2, "android.intent.extra.durationLimit"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 676
    const-string v2, "output"

    sget-object v3, Lcom/android/mms/TempFileProvider;->SCRAP_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 677
    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 678
    return-void
.end method

.method public static resizeImage(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;ZLjava/lang/Runnable;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imageUri"    # Landroid/net/Uri;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "cb"    # Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;
    .param p4, "append"    # Z
    .param p5, "showProgress"    # Ljava/lang/Runnable;

    .prologue
    .line 854
    :try_start_0
    new-instance v1, Lcom/android/mms/ui/UriImage;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 855
    .local v1, "image":Lcom/android/mms/ui/UriImage;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageWidth()I

    move-result v4

    .line 856
    .local v4, "widthLimit":I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageHeight()I

    move-result v0

    .line 860
    .local v0, "heightLimit":I
    invoke-virtual {v1}, Lcom/android/mms/ui/UriImage;->getHeight()I

    move-result v5

    invoke-virtual {v1}, Lcom/android/mms/ui/UriImage;->getWidth()I

    move-result v6

    if-le v5, v6, :cond_0

    .line 861
    move v3, v4

    .line 862
    .local v3, "temp":I
    move v4, v0

    .line 863
    move v0, v3

    .line 866
    .end local v3    # "temp":I
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v5

    add-int/lit16 v5, v5, -0x1388

    invoke-virtual {v1, v4, v0, v5}, Lcom/android/mms/ui/UriImage;->getResizedImageAsPart(III)Lcom/google/android/mms/pdu/PduPart;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 871
    .local v2, "part":Lcom/google/android/mms/pdu/PduPart;
    if-eqz p5, :cond_1

    .line 872
    invoke-virtual {p2, p5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 876
    :cond_1
    new-instance v5, Lcom/android/mms/ui/MessageUtils$5;

    invoke-direct {v5, p3, v2, p4}, Lcom/android/mms/ui/MessageUtils$5;-><init>(Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;Lcom/google/android/mms/pdu/PduPart;Z)V

    invoke-virtual {p2, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 882
    return-void

    .line 871
    .end local v0    # "heightLimit":I
    .end local v1    # "image":Lcom/android/mms/ui/UriImage;
    .end local v2    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v4    # "widthLimit":I
    :catchall_0
    move-exception v5

    if-eqz p5, :cond_2

    .line 872
    invoke-virtual {p2, p5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    throw v5
.end method

.method public static resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;Z)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imageUri"    # Landroid/net/Uri;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "cb"    # Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;
    .param p4, "append"    # Z

    .prologue
    .line 830
    new-instance v6, Lcom/android/mms/ui/MessageUtils$3;

    invoke-direct {v6, p0}, Lcom/android/mms/ui/MessageUtils$3;-><init>(Landroid/content/Context;)V

    .line 837
    .local v6, "showProgress":Ljava/lang/Runnable;
    const-wide/16 v0, 0x3e8

    invoke-virtual {p2, v6, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 839
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/android/mms/ui/MessageUtils$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MessageUtils$4;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;ZLjava/lang/Runnable;)V

    const-string v1, "MessageUtils.resizeImageAsync"

    invoke-direct {v7, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 845
    return-void
.end method

.method public static selectAudio(Landroid/app/Activity;I)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I

    .prologue
    .line 617
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/String;

    .line 618
    .local v3, "items":[Ljava/lang/String;
    const/4 v4, 0x0

    const v5, 0x7f0b0109

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 619
    const/4 v4, 0x1

    const v5, 0x7f0b010a

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 620
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v4, 0x1090003

    const v5, 0x1020014

    invoke-direct {v0, p0, v4, v5, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 622
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 623
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0b0108

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/mms/ui/MessageUtils$1;

    invoke-direct {v5, p0, p1}, Lcom/android/mms/ui/MessageUtils$1;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {v4, v0, v5}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 648
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 649
    return-void
.end method

.method public static selectImage(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I

    .prologue
    .line 709
    const-string v0, "image/*"

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/mms/ui/MessageUtils;->selectMediaByType(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 710
    return-void
.end method

.method private static selectMediaByType(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "localFilesOnly"    # Z

    .prologue
    .line 718
    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 720
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 722
    .local v0, "innerIntent":Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 723
    if-eqz p3, :cond_0

    .line 724
    const-string v2, "android.intent.extra.LOCAL_ONLY"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 727
    :cond_0
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 729
    .local v1, "wrapperIntent":Landroid/content/Intent;
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 731
    .end local v0    # "innerIntent":Landroid/content/Intent;
    .end local v1    # "wrapperIntent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public static selectVcalender(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I

    .prologue
    .line 713
    const-string v0, "text/x-vCalendar"

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/mms/ui/MessageUtils;->selectMediaByType(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 714
    return-void
.end method

.method public static selectVideo(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I

    .prologue
    .line 705
    const-string v0, "video/*"

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/android/mms/ui/MessageUtils;->selectMediaByType(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 706
    return-void
.end method

.method public static showDiscardDraftConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p2, "validNum"    # I

    .prologue
    const v1, 0x7f0b0166

    const v2, 0x7f0b0165

    .line 889
    const v0, 0x7f0b0057

    .line 890
    .local v0, "msgId":I
    const/4 v3, -0x2

    if-eq v3, p2, :cond_0

    .line 891
    if-lez p2, :cond_1

    move v0, v1

    .line 896
    :cond_0
    :goto_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1010355

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0b0056

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    if-lez p2, :cond_2

    :goto_1
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b007d

    invoke-virtual {v1, v2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b007e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 905
    return-void

    :cond_1
    move v0, v2

    .line 891
    goto :goto_0

    :cond_2
    move v1, v2

    .line 896
    goto :goto_1
.end method

.method public static showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 786
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 803
    :goto_0
    return-void

    .line 789
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 791
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f02007a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 792
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 793
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 794
    const v1, 0x104000a

    new-instance v2, Lcom/android/mms/ui/MessageUtils$2;

    invoke-direct {v2}, Lcom/android/mms/ui/MessageUtils$2;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 802
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public static viewMmsMessageAttachment(Landroid/app/Activity;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;ILcom/android/mms/ui/AsyncDialog;)V
    .locals 3

    .prologue
    .line 1087
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 1088
    :goto_0
    if-eqz v0, :cond_1

    .line 1090
    invoke-static {p0, p2}, Lcom/android/mms/ui/MessageUtils;->viewSimpleSlideshow(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V

    .line 1121
    :goto_1
    return-void

    .line 1087
    :cond_0
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->isSimple()Z

    move-result v0

    goto :goto_0

    .line 1096
    :cond_1
    new-instance v0, Lcom/android/mms/ui/MessageUtils$9;

    invoke-direct {v0, p2, p0, p1}, Lcom/android/mms/ui/MessageUtils$9;-><init>(Lcom/android/mms/model/SlideshowModel;Landroid/app/Activity;Landroid/net/Uri;)V

    new-instance v1, Lcom/android/mms/ui/MessageUtils$10;

    invoke-direct {v1, p0, p1, p3}, Lcom/android/mms/ui/MessageUtils$10;-><init>(Landroid/app/Activity;Landroid/net/Uri;I)V

    const v2, 0x7f0b006b

    invoke-virtual {p4, v0, v1, v2}, Lcom/android/mms/ui/AsyncDialog;->runAsync(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    goto :goto_1
.end method

.method public static viewMmsMessageAttachment(Landroid/app/Activity;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;Lcom/android/mms/ui/AsyncDialog;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "msgUri"    # Landroid/net/Uri;
    .param p2, "slideshow"    # Lcom/android/mms/model/SlideshowModel;
    .param p3, "asyncDialog"    # Lcom/android/mms/ui/AsyncDialog;

    .prologue
    .line 1082
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/app/Activity;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;ILcom/android/mms/ui/AsyncDialog;)V

    .line 1083
    return-void
.end method

.method public static viewSimpleSlideshow(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slideshow"    # Lcom/android/mms/model/SlideshowModel;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 734
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->isSimple()Z

    move-result v6

    if-nez v6, :cond_0

    .line 735
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "viewSimpleSlideshow() called on a non-simple slideshow"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 738
    :cond_0
    invoke-virtual {p1, v7}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    .line 739
    .local v5, "slide":Lcom/android/mms/model/SlideModel;
    const/4 v4, 0x0

    .line 740
    .local v4, "mm":Lcom/android/mms/model/MediaModel;
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 741
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v4

    .line 764
    :cond_1
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 765
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 766
    const-string v6, "SingleItemOnly"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 769
    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 771
    .local v0, "contentType":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/android/mms/model/RegionMediaModel;->isImage()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "application/oct-stream"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 772
    const-string v0, "image/*"

    .line 775
    :cond_2
    :try_start_0
    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 776
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 782
    .end local v0    # "contentType":Ljava/lang/String;
    :goto_1
    return-void

    .line 742
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 743
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v4

    goto :goto_0

    .line 744
    :cond_4
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->hasVcard()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 745
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->getVcard()Lcom/android/mms/model/VcardModel;

    move-result-object v4

    move-object v6, v4

    .line 746
    check-cast v6, Lcom/android/mms/model/VcardModel;

    invoke-virtual {v6}, Lcom/android/mms/model/VcardModel;->getLookupUri()Ljava/lang/String;

    move-result-object v3

    .line 748
    .local v3, "lookupUri":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 750
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "attachment"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 752
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 759
    :goto_2
    const-string v6, "VIEW_VCARD_FROM_MMS"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 760
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 755
    :cond_5
    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v6

    const-string v7, "text/x-vCard"

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 756
    invoke-virtual {v2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_2

    .line 777
    .end local v3    # "lookupUri":Ljava/lang/String;
    .restart local v0    # "contentType":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 778
    .local v1, "ex":Landroid/content/ActivityNotFoundException;
    const v6, 0x7f0b01eb

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
