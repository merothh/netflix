.class public final Lo/ListPreference;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/NonSdkApiUsedViolation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ListPreference$StateListAnimator;
    }
.end annotation


# static fields
.field public static final b:Lo/ListPreference$StateListAnimator;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/database/sqlite/SQLiteDatabase;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lo/CheckBoxPreference;

.field private final h:Lo/WebViewMethodCalledOnWrongThreadViolation;

.field private final j:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/ListPreference$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ListPreference$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/ListPreference;->b:Lo/ListPreference$StateListAnimator;

    return-void
.end method

.method public constructor <init>(Lo/CheckBoxPreference;Lo/WebViewMethodCalledOnWrongThreadViolation;J)V
    .locals 1

    const-string v0, "sqliteDb"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ListPreference;->f:Lo/CheckBoxPreference;

    iput-object p2, p0, Lo/ListPreference;->h:Lo/WebViewMethodCalledOnWrongThreadViolation;

    iput-wide p3, p0, Lo/ListPreference;->j:J

    .line 32
    iget-object p1, p0, Lo/ListPreference;->f:Lo/CheckBoxPreference;

    invoke-virtual {p1}, Lo/CheckBoxPreference;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lo/ListPreference;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 35
    iget-object p1, p0, Lo/ListPreference;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 82
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lo/ListPreference;->a:Ljava/util/List;

    .line 83
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lo/ListPreference;->e:Ljava/util/List;

    return-void
.end method

.method public static final synthetic a(Lo/ListPreference;Landroid/database/Cursor;I)Ljava/lang/Integer;
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lo/ListPreference;->b(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private final a(Landroid/database/Cursor;I)Ljava/lang/Long;
    .locals 1

    .line 466
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 101
    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public static final synthetic a(Lo/ListPreference;)Lo/CheckBoxPreference;
    .locals 0

    .line 27
    iget-object p0, p0, Lo/ListPreference;->f:Lo/CheckBoxPreference;

    return-object p0
.end method

.method private final b(Landroid/database/Cursor;I)Ljava/lang/Integer;
    .locals 1

    .line 462
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 98
    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public static final synthetic b(Lo/ListPreference;)Lo/WebViewMethodCalledOnWrongThreadViolation;
    .locals 0

    .line 27
    iget-object p0, p0, Lo/ListPreference;->h:Lo/WebViewMethodCalledOnWrongThreadViolation;

    return-object p0
.end method

.method private final b(Ljava/util/List;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;J)V"
        }
    .end annotation

    .line 437
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 438
    iget-object v2, p0, Lo/ListPreference;->f:Lo/CheckBoxPreference;

    .line 904
    invoke-virtual {v2}, Lo/CheckBoxPreference;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 907
    invoke-static {v2}, Lo/CheckBoxPreference;->c(Lo/CheckBoxPreference;)Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lo/ListPreference$TaskDescription;

    move-object v1, v7

    move-wide v4, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lo/ListPreference$TaskDescription;-><init>(Lo/CheckBoxPreference;Landroid/database/sqlite/SQLiteDatabase;JLjava/util/List;)V

    check-cast v7, Ljava/lang/Runnable;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static final synthetic c(Lo/ListPreference;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    .line 27
    iget-object p0, p0, Lo/ListPreference;->c:Landroid/database/sqlite/SQLiteDatabase;

    return-object p0
.end method

.method public static final synthetic c(Lo/ListPreference;Landroid/database/Cursor;I)Ljava/lang/Long;
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lo/ListPreference;->a(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private final c(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 1

    .line 470
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 104
    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final c(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    .line 194
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "SqliteDiskCacheReader.constructQueryString: Wrong argument < 1."

    .line 195
    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    const-string p1, "SELECT path_hashcode, type, expires, timestamp, size, write_time, value FROM falcor_leafs WHERE path = ?"

    goto :goto_0

    .line 198
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",?"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1, p2}, Lo/anv;->a(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public static final synthetic d(Lo/ListPreference;Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lo/ListPreference;->c(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lo/ListPreference;)Ljava/util/List;
    .locals 0

    .line 27
    iget-object p0, p0, Lo/ListPreference;->e:Ljava/util/List;

    return-object p0
.end method

.method private final d(Ljava/lang/String;ILcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;JLjava/lang/String;)Lo/RecommendationInfo;
    .locals 11

    move-object v0, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v1, p9

    .line 342
    sget-object v2, Lo/MultiCheckPreference;->b:[I

    invoke-virtual {p3}, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0x27

    const/4 v6, 0x0

    packed-switch v2, :pswitch_data_0

    .line 403
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 405
    invoke-static {v6, v0, v2}, Lo/PreferenceInflater;->e(ZILjava/lang/Object;)Lo/PreferenceFrameLayout;

    move-result-object v0

    .line 407
    :try_start_0
    invoke-interface {v0, v1}, Lo/PreferenceFrameLayout;->d(Ljava/lang/String;)Lo/RecommendationInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error while parsing json: path: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", error:  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 411
    sget-object v1, Lo/ListPreference;->b:Lo/ListPreference$StateListAnimator;

    check-cast v1, Lo/MessagePdu;

    .line 412
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    .line 413
    sget-object v3, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->c:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    check-cast v2, Ljava/lang/Throwable;

    invoke-interface {v1, v3, v2}, Lo/SpinnerAdapter;->a(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/Throwable;)V

    .line 414
    new-instance v1, Lo/PrintDocumentAdapter;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object p1, v1

    move-object p2, v0

    move-object p3, v2

    move-object p4, v3

    move-object/from16 p5, v4

    move/from16 p6, v5

    move-object/from16 p7, v6

    invoke-direct/range {p1 .. p7}, Lo/PrintDocumentAdapter;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;ILo/amc;)V

    move-object v0, v1

    check-cast v0, Lo/RecommendationInfo;

    goto/16 :goto_5

    .line 417
    :cond_0
    new-instance v0, Lo/PrintDocumentAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xe

    const/4 v5, 0x0

    const-string v6, "leafy object value is null"

    move-object p1, v0

    move-object p2, v6

    move-object p3, v1

    move-object p4, v2

    move-object/from16 p5, v3

    move/from16 p6, v4

    move-object/from16 p7, v5

    invoke-direct/range {p1 .. p7}, Lo/PrintDocumentAdapter;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;ILo/amc;)V

    check-cast v0, Lo/RecommendationInfo;

    goto/16 :goto_5

    .line 395
    :pswitch_1
    new-instance v2, Lo/PrintDocumentAdapter;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "null"

    :goto_0
    invoke-direct {v2, v1, p4, v4, v5}, Lo/PrintDocumentAdapter;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;)V

    move-object v0, v2

    check-cast v0, Lo/RecommendationInfo;

    goto/16 :goto_5

    .line 393
    :pswitch_2
    new-instance v1, Lo/PrintedPdfDocument;

    invoke-direct {v1, p4}, Lo/PrintedPdfDocument;-><init>(Ljava/lang/Long;)V

    move-object v0, v1

    check-cast v0, Lo/RecommendationInfo;

    goto/16 :goto_5

    :pswitch_3
    if-eqz v1, :cond_3

    .line 382
    invoke-static/range {p9 .. p9}, Lo/VolumeInfo;->d(Ljava/lang/String;)Lo/RapporEncoder;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 384
    new-instance v1, Lo/PrinterDiscoverySession;

    invoke-direct {v1, v2, p4, v4, v5}, Lo/PrinterDiscoverySession;-><init>(Lo/RapporEncoder;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;)V

    check-cast v1, Lo/PrintDocumentInfo;

    goto :goto_1

    .line 386
    :cond_2
    new-instance v0, Lo/PrintDocumentAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reference: cannot parse path: \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object p1, v0

    move-object p2, v1

    move-object p3, v2

    move-object p4, v3

    move-object/from16 p5, v4

    move/from16 p6, v5

    move-object/from16 p7, v6

    invoke-direct/range {p1 .. p7}, Lo/PrintDocumentAdapter;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;ILo/amc;)V

    move-object v1, v0

    check-cast v1, Lo/PrintDocumentInfo;

    goto :goto_1

    .line 389
    :cond_3
    new-instance v0, Lo/PrintDocumentAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xe

    const/4 v5, 0x0

    const-string v6, "reference: path is null"

    move-object p1, v0

    move-object p2, v6

    move-object p3, v1

    move-object p4, v2

    move-object/from16 p5, v3

    move/from16 p6, v4

    move-object/from16 p7, v5

    invoke-direct/range {p1 .. p7}, Lo/PrintDocumentAdapter;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;ILo/amc;)V

    move-object v1, v0

    check-cast v1, Lo/PrintDocumentInfo;

    .line 381
    :goto_1
    move-object v0, v1

    check-cast v0, Lo/RecommendationInfo;

    goto/16 :goto_5

    :pswitch_4
    if-eqz v1, :cond_4

    .line 373
    new-instance v2, Lcom/google/gson/JsonParser;

    invoke-direct {v2}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 374
    new-instance v10, Lo/TwoStatePreference;

    const-string v1, "jsonValue"

    invoke-static {v2, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    move-object v1, v10

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    invoke-direct/range {v1 .. v9}, Lo/TwoStatePreference;-><init>(Lcom/google/gson/JsonElement;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZILo/amc;)V

    check-cast v10, Lo/PrintDocumentInfo;

    goto :goto_2

    .line 376
    :cond_4
    new-instance v0, Lo/PrintDocumentAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xe

    const/4 v5, 0x0

    const-string v6, "atom json value cannot be null"

    move-object p1, v0

    move-object p2, v6

    move-object p3, v1

    move-object p4, v2

    move-object/from16 p5, v3

    move/from16 p6, v4

    move-object/from16 p7, v5

    invoke-direct/range {p1 .. p7}, Lo/PrintDocumentAdapter;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;ILo/amc;)V

    move-object v10, v0

    check-cast v10, Lo/PrintDocumentInfo;

    .line 372
    :goto_2
    move-object v0, v10

    check-cast v0, Lo/RecommendationInfo;

    goto/16 :goto_5

    .line 369
    :pswitch_5
    sget-object v0, Lo/PrintJobId;->e:Lo/PrintJobId;

    check-cast v0, Lo/RecommendationInfo;

    goto/16 :goto_5

    :pswitch_6
    if-eqz v1, :cond_5

    .line 366
    invoke-static/range {p9 .. p9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 365
    :cond_5
    new-instance v0, Lo/PrintJobInfo;

    invoke-direct {v0, v6}, Lo/PrintJobInfo;-><init>(Z)V

    check-cast v0, Lo/RecommendationInfo;

    goto/16 :goto_5

    :pswitch_7
    if-eqz v1, :cond_7

    .line 354
    invoke-static/range {p9 .. p9}, Lo/RuntimePermissionPresenterService;->b(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 356
    invoke-static {v0}, Lo/PrintFileDocumentAdapter;->c(Ljava/lang/Number;)Lo/PrinterInfo;

    move-result-object v0

    check-cast v0, Lo/PrintDocumentInfo;

    goto :goto_3

    .line 358
    :cond_6
    new-instance v0, Lo/PrintDocumentAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot parser number from string: \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object p1, v0

    move-object p2, v1

    move-object p3, v2

    move-object p4, v3

    move-object/from16 p5, v4

    move/from16 p6, v5

    move-object/from16 p7, v6

    invoke-direct/range {p1 .. p7}, Lo/PrintDocumentAdapter;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;ILo/amc;)V

    check-cast v0, Lo/PrintDocumentInfo;

    goto :goto_3

    .line 361
    :cond_7
    new-instance v0, Lo/PrintDocumentAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xe

    const/4 v5, 0x0

    const-string v6, "number cannot be null"

    move-object p1, v0

    move-object p2, v6

    move-object p3, v1

    move-object p4, v2

    move-object/from16 p5, v3

    move/from16 p6, v4

    move-object/from16 p7, v5

    invoke-direct/range {p1 .. p7}, Lo/PrintDocumentAdapter;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;ILo/amc;)V

    check-cast v0, Lo/PrintDocumentInfo;

    .line 353
    :goto_3
    check-cast v0, Lo/RecommendationInfo;

    goto :goto_5

    :pswitch_8
    if-eqz v1, :cond_8

    .line 346
    new-instance v0, Lo/PrinterId;

    invoke-direct {v0, v1}, Lo/PrinterId;-><init>(Ljava/lang/String;)V

    check-cast v0, Lo/PrintDocumentInfo;

    goto :goto_4

    .line 348
    :cond_8
    new-instance v0, Lo/PrintDocumentAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xe

    const/4 v5, 0x0

    const-string v6, "string cannot be null"

    move-object p1, v0

    move-object p2, v6

    move-object p3, v1

    move-object p4, v2

    move-object/from16 p5, v3

    move/from16 p6, v4

    move-object/from16 p7, v5

    invoke-direct/range {p1 .. p7}, Lo/PrintDocumentAdapter;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;ILo/amc;)V

    check-cast v0, Lo/PrintDocumentInfo;

    .line 345
    :goto_4
    check-cast v0, Lo/RecommendationInfo;

    :goto_5
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final synthetic e(Lo/ListPreference;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lo/ListPreference;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Lo/ListPreference;)Ljava/util/List;
    .locals 0

    .line 27
    iget-object p0, p0, Lo/ListPreference;->a:Ljava/util/List;

    return-object p0
.end method

.method private final e(Ljava/util/List;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;J)V"
        }
    .end annotation

    .line 424
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 425
    iget-object v2, p0, Lo/ListPreference;->f:Lo/CheckBoxPreference;

    .line 870
    invoke-virtual {v2}, Lo/CheckBoxPreference;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 873
    invoke-static {v2}, Lo/CheckBoxPreference;->c(Lo/CheckBoxPreference;)Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lo/ListPreference$Application;

    move-object v1, v7

    move-wide v4, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lo/ListPreference$Application;-><init>(Lo/CheckBoxPreference;Landroid/database/sqlite/SQLiteDatabase;JLjava/util/List;)V

    check-cast v7, Ljava/lang/Runnable;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 452
    iget-object v0, p0, Lo/ListPreference;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 455
    :cond_0
    iget-object v0, p0, Lo/ListPreference;->a:Ljava/util/List;

    iget-wide v1, p0, Lo/ListPreference;->j:J

    invoke-direct {p0, v0, v1, v2}, Lo/ListPreference;->b(Ljava/util/List;J)V

    .line 456
    iget-object v0, p0, Lo/ListPreference;->e:Ljava/util/List;

    iget-wide v1, p0, Lo/ListPreference;->j:J

    invoke-direct {p0, v0, v1, v2}, Lo/ListPreference;->e(Ljava/util/List;J)V

    .line 458
    iget-object v0, p0, Lo/ListPreference;->f:Lo/CheckBoxPreference;

    iget-object v1, p0, Lo/ListPreference;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1}, Lo/CheckBoxPreference;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public e(Ljava/util/List;Lo/IntentReceiverLeakedViolation;)Ljava/util/Map;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lo/IntentReceiverLeakedViolation;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/RecommendationInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "paths"

    invoke-static {v0, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iget-wide v10, v1, Lo/ListPreference;->j:J

    .line 474
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v2, Ljava/util/Map;

    .line 476
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    const/4 v12, 0x1

    xor-int/2addr v3, v12

    if-eqz v3, :cond_a

    .line 477
    invoke-static/range {p0 .. p0}, Lo/ListPreference;->a(Lo/ListPreference;)Lo/CheckBoxPreference;

    invoke-static/range {p0 .. p0}, Lo/ListPreference;->c(Lo/ListPreference;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    sget-object v4, Lo/ListPreference;->b:Lo/ListPreference$StateListAnimator;

    check-cast v4, Lo/MessagePdu;

    const/4 v13, 0x0

    const/4 v14, 0x0

    if-eqz v3, :cond_1

    :try_start_0
    const-string v4, "SELECT path_hashcode, type, expires, timestamp, size, write_time, value, path FROM falcor_leafs WHERE path IN (?"

    .line 482
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v1, v4, v5}, Lo/ListPreference;->e(Lo/ListPreference;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 483
    check-cast v0, Ljava/util/Collection;

    new-array v5, v13, [Ljava/lang/String;

    .line 485
    invoke-interface {v0, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, [Ljava/lang/String;

    .line 481
    invoke-virtual {v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 485
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 498
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v3

    sget-object v4, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->c:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {v3, v4, v0}, Lo/SpinnerAdapter;->a(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/Throwable;)V

    :cond_1
    move-object v0, v14

    :goto_0
    if-eqz v0, :cond_a

    .line 500
    move-object v15, v0

    check-cast v15, Ljava/io/Closeable;

    move-object v8, v14

    check-cast v8, Ljava/lang/Throwable;

    :try_start_1
    move-object v9, v15

    check-cast v9, Landroid/database/Cursor;

    .line 502
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_9

    .line 503
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->isLast()Z

    move-result v3

    if-nez v3, :cond_9

    .line 504
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    const/4 v3, 0x7

    .line 505
    invoke-static {v1, v9, v3}, Lo/ListPreference;->d(Lo/ListPreference;Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 514
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    const/4 v3, 0x2

    .line 516
    invoke-static {v1, v0, v3}, Lo/ListPreference;->c(Lo/ListPreference;Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v20

    const/4 v3, 0x5

    .line 517
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    if-eqz v20, :cond_3

    .line 519
    sget-object v3, Lo/PrintService;->c:Lo/PrintService$TaskDescription;

    .line 520
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 p1, v6

    move-wide v6, v10

    move-object v13, v8

    move-object/from16 v27, v9

    move-wide/from16 v8, v23

    .line 519
    invoke-virtual/range {v3 .. v9}, Lo/PrintService$TaskDescription;->c(JJJ)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 526
    invoke-static/range {p0 .. p0}, Lo/ListPreference;->d(Lo/ListPreference;)Ljava/util/List;

    move-result-object v3

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_2

    .line 527
    invoke-interface/range {p2 .. p2}, Lo/IntentReceiverLeakedViolation;->c()V

    :cond_2
    move-object/from16 v3, p1

    move-object v4, v14

    goto :goto_4

    :cond_3
    move-object/from16 p1, v6

    move-object v13, v8

    move-object/from16 v27, v9

    .line 531
    :cond_4
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x3

    .line 532
    invoke-static {v1, v0, v4}, Lo/ListPreference;->c(Lo/ListPreference;Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v21

    const/4 v4, 0x4

    .line 533
    invoke-static {v1, v0, v4}, Lo/ListPreference;->a(Lo/ListPreference;Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object v22

    .line 535
    invoke-static {v3}, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;->b(I)Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

    move-result-object v3

    .line 537
    invoke-static/range {p0 .. p0}, Lo/ListPreference;->b(Lo/ListPreference;)Lo/WebViewMethodCalledOnWrongThreadViolation;

    move-result-object v4

    invoke-virtual {v4}, Lo/WebViewMethodCalledOnWrongThreadViolation;->c()Z

    move-result v4

    const/4 v5, 0x6

    if-nez v4, :cond_7

    .line 541
    invoke-static {v1, v0, v5}, Lo/ListPreference;->d(Lo/ListPreference;Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v25

    const-string v4, "type"

    .line 545
    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 550
    move-object/from16 v16, v1

    check-cast v16, Lo/ListPreference;

    move-object/from16 v17, p1

    move/from16 v18, v26

    move-object/from16 v19, v3

    .line 116
    invoke-direct/range {v16 .. v25}, Lo/ListPreference;->d(Ljava/lang/String;ILcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;JLjava/lang/String;)Lo/RecommendationInfo;

    move-result-object v4

    .line 118
    instance-of v5, v4, Lo/PrintDocumentAdapter;

    if-eqz v5, :cond_5

    sget-object v5, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;->f:Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

    if-eq v3, v5, :cond_5

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_6

    .line 558
    invoke-static/range {p0 .. p0}, Lo/ListPreference;->d(Lo/ListPreference;)Ljava/util/List;

    move-result-object v3

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 561
    :cond_6
    invoke-static/range {p0 .. p0}, Lo/ListPreference;->e(Lo/ListPreference;)Ljava/util/List;

    move-result-object v3

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    move-object/from16 v3, p1

    .line 507
    :goto_4
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 538
    :cond_7
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getBlob(I)[B

    const-string v0, "need to implement"

    .line 539
    new-instance v2, Lkotlin/NotImplementedError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "An operation is not implemented: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    :cond_8
    move-object v13, v8

    move-object/from16 v27, v9

    :goto_5
    move-object v8, v13

    move-object/from16 v9, v27

    const/4 v13, 0x0

    goto/16 :goto_1

    :cond_9
    move-object v13, v8

    .line 564
    sget-object v0, Lo/akj;->a:Lo/akj;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 500
    invoke-static {v15, v13}, Lo/aly;->e(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    invoke-static {v15, v2}, Lo/aly;->e(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    :cond_a
    :goto_6
    return-object v2
.end method
