.class public final Lo/PreferenceDataStore;
.super Lo/Preference;
.source ""

# interfaces
.implements Lo/SqliteObjectLeakedViolation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/PreferenceDataStore$Activity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Preference<",
        "Lkotlin/Triple<",
        "+",
        "Ljava/lang/String;",
        "+",
        "Lo/RecommendationInfo;",
        "+",
        "Ljava/lang/Long;",
        ">;>;",
        "Lo/SqliteObjectLeakedViolation;"
    }
.end annotation


# static fields
.field public static final e:Lo/PreferenceDataStore$Activity;


# instance fields
.field private final a:Lo/WebViewMethodCalledOnWrongThreadViolation;

.field private final d:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/PreferenceDataStore$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/PreferenceDataStore$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/PreferenceDataStore;->e:Lo/PreferenceDataStore$Activity;

    return-void
.end method

.method public constructor <init>(Lo/CheckBoxPreference;Lcom/google/gson/Gson;Lo/WebViewMethodCalledOnWrongThreadViolation;J)V
    .locals 1

    const-string v0, "sqliteDb"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gson"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "diskCacheConfig"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "INSERT OR REPLACE INTO falcor_leafs(path, path_hashcode, type, expires, timestamp, size, write_time, access_time, value) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?)"

    .line 32
    invoke-direct {p0, p1, v0, p4, p5}, Lo/Preference;-><init>(Lo/CheckBoxPreference;Ljava/lang/String;J)V

    iput-object p2, p0, Lo/PreferenceDataStore;->d:Lcom/google/gson/Gson;

    iput-object p3, p0, Lo/PreferenceDataStore;->a:Lo/WebViewMethodCalledOnWrongThreadViolation;

    return-void
.end method

.method private final c(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Long;)V
    .locals 2

    if-eqz p3, :cond_0

    .line 59
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    :goto_0
    return-void
.end method

.method private final c(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;JLjava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    .line 186
    invoke-virtual {p1, v0, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    int-to-long v0, p2

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    int-to-long p2, p3

    const/4 v0, 0x3

    .line 188
    invoke-virtual {p1, v0, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 p2, 0x4

    .line 189
    invoke-direct {p0, p1, p2, p4}, Lo/PreferenceDataStore;->c(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Long;)V

    const/4 p2, 0x5

    .line 190
    invoke-direct {p0, p1, p2, p5}, Lo/PreferenceDataStore;->c(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Long;)V

    if-eqz p6, :cond_0

    .line 191
    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long p2, p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 p3, 0x6

    invoke-direct {p0, p1, p3, p2}, Lo/PreferenceDataStore;->c(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Long;)V

    const/4 p2, 0x7

    .line 192
    invoke-virtual {p1, p2, p7, p8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 p2, 0x8

    .line 193
    invoke-virtual {p1, p2, p7, p8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 194
    instance-of p2, p9, [B

    const/16 p3, 0x9

    if-eqz p2, :cond_1

    iget-object p2, p0, Lo/PreferenceDataStore;->a:Lo/WebViewMethodCalledOnWrongThreadViolation;

    invoke-virtual {p2}, Lo/WebViewMethodCalledOnWrongThreadViolation;->c()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 195
    check-cast p9, [B

    invoke-virtual {p1, p3, p9}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    goto :goto_1

    .line 196
    :cond_1
    instance-of p2, p9, Ljava/lang/String;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lo/PreferenceDataStore;->a:Lo/WebViewMethodCalledOnWrongThreadViolation;

    invoke-virtual {p2}, Lo/WebViewMethodCalledOnWrongThreadViolation;->c()Z

    move-result p2

    if-nez p2, :cond_2

    .line 197
    check-cast p9, Ljava/lang/String;

    invoke-virtual {p1, p3, p9}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    if-nez p9, :cond_3

    .line 199
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 203
    :goto_1
    sget-object p2, Lo/PreferenceDataStore;->e:Lo/PreferenceDataStore$Activity;

    check-cast p2, Lo/MessagePdu;

    .line 204
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    return-void

    .line 201
    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unsupported value type: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method private final d(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Lo/RecommendationInfo;JLjava/lang/Long;)V
    .locals 23

    move-object/from16 v10, p0

    move-object/from16 v7, p2

    move-object/from16 v0, p3

    const/4 v8, 0x0

    .line 72
    move-object v9, v8

    check-cast v9, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

    .line 73
    move-object v1, v8

    check-cast v1, Ljava/lang/Long;

    .line 75
    move-object v2, v8

    check-cast v2, Ljava/lang/Integer;

    .line 77
    instance-of v3, v0, Lo/PrintDocumentInfo;

    if-eqz v3, :cond_0

    .line 78
    move-object v1, v0

    check-cast v1, Lo/PrintDocumentInfo;

    invoke-virtual {v1}, Lo/PrintDocumentInfo;->d()Ljava/lang/Long;

    move-result-object v2

    .line 79
    invoke-virtual {v1}, Lo/PrintDocumentInfo;->c()Ljava/lang/Long;

    move-result-object v3

    .line 80
    invoke-virtual {v1}, Lo/PrintDocumentInfo;->i()Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v20, v1

    move-object v1, v2

    move-object/from16 v19, v3

    goto :goto_0

    :cond_0
    move-object/from16 v19, v1

    move-object/from16 v20, v2

    :goto_0
    if-eqz p6, :cond_1

    move-object/from16 v1, p6

    :cond_1
    if-eqz v1, :cond_2

    .line 87
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_2

    .line 90
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    neg-long v1, v1

    add-long v1, p4, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_2
    move-object/from16 v21, v1

    .line 94
    instance-of v1, v0, Lo/PrintJobInfo;

    if-eqz v1, :cond_3

    .line 95
    sget-object v9, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;->c:Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

    .line 96
    check-cast v0, Lo/PrintJobInfo;

    invoke-virtual {v0}, Lo/PrintJobInfo;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object/from16 v22, v9

    move-object v9, v0

    move-object/from16 v0, v22

    goto/16 :goto_9

    .line 98
    :cond_3
    instance-of v1, v0, Lo/PrintServicesLoader;

    if-eqz v1, :cond_4

    .line 99
    sget-object v9, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;->e:Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

    .line 100
    invoke-virtual/range {p3 .. p3}, Lo/RecommendationInfo;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 102
    :cond_4
    instance-of v1, v0, Lo/PrintManager;

    if-eqz v1, :cond_5

    .line 103
    sget-object v9, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;->e:Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

    .line 104
    invoke-virtual/range {p3 .. p3}, Lo/RecommendationInfo;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 106
    :cond_5
    instance-of v1, v0, Lo/PrintServiceRecommendationsLoader;

    if-eqz v1, :cond_6

    .line 107
    sget-object v9, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;->e:Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

    .line 108
    check-cast v0, Lo/PrintServiceRecommendationsLoader;

    invoke-virtual {v0}, Lo/PrintServiceRecommendationsLoader;->g()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0}, Lo/RuntimePermissionPresenterService;->e(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 110
    :cond_6
    instance-of v1, v0, Lo/PrinterId;

    if-eqz v1, :cond_7

    .line 111
    sget-object v9, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;->a:Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

    .line 112
    check-cast v0, Lo/PrinterId;

    invoke-virtual {v0}, Lo/PrinterId;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 114
    :cond_7
    instance-of v1, v0, Lo/TwoStatePreference;

    if-eqz v1, :cond_8

    .line 115
    sget-object v9, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;->d:Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

    .line 116
    check-cast v0, Lo/TwoStatePreference;

    invoke-virtual {v0}, Lo/TwoStatePreference;->a()Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 118
    :cond_8
    instance-of v1, v0, Lo/PrinterDiscoverySession;

    if-eqz v1, :cond_9

    .line 119
    sget-object v9, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;->g:Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

    .line 120
    check-cast v0, Lo/PrinterDiscoverySession;

    invoke-virtual {v0}, Lo/PrinterDiscoverySession;->j()Lo/RapporEncoder;

    move-result-object v0

    invoke-static {v0}, Lo/VolumeInfo;->a(Lo/RapporEncoder;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 122
    :cond_9
    instance-of v1, v0, Lo/PrintDocumentAdapter;

    if-eqz v1, :cond_a

    .line 123
    sget-object v9, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;->f:Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

    .line 124
    check-cast v0, Lo/PrintDocumentAdapter;

    invoke-virtual {v0}, Lo/PrintDocumentAdapter;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 126
    :cond_a
    instance-of v1, v0, Lo/PrintJobId;

    if-eqz v1, :cond_c

    .line 127
    sget-object v9, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;->b:Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

    :cond_b
    :goto_2
    move-object v0, v9

    move-object v9, v8

    goto/16 :goto_9

    .line 130
    :cond_c
    instance-of v1, v0, Lo/PrintedPdfDocument;

    if-eqz v1, :cond_d

    .line 131
    sget-object v9, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;->h:Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

    goto :goto_2

    .line 134
    :cond_d
    instance-of v1, v0, Lo/PrintJob;

    const/16 v11, 0x2e

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v1, :cond_11

    .line 135
    iget-object v1, v10, Lo/PreferenceDataStore;->a:Lo/WebViewMethodCalledOnWrongThreadViolation;

    invoke-virtual {v1}, Lo/WebViewMethodCalledOnWrongThreadViolation;->d()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 136
    sget-object v9, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;->i:Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

    .line 138
    iget-object v12, v10, Lo/PreferenceDataStore;->d:Lcom/google/gson/Gson;

    const/4 v13, 0x1

    const/4 v14, 0x0

    .line 141
    sget-object v15, Lcom/netflix/falcor/impl/parser/JsonGraphFormat;->a:Lcom/netflix/falcor/impl/parser/JsonGraphFormat;

    const/16 v16, 0x0

    const/16 v17, 0x10

    const/16 v18, 0x0

    move-object/from16 v11, p3

    .line 137
    invoke-static/range {v11 .. v18}, Lo/LongitudinalReportingConfig;->b(Lo/RecommendationInfo;Lcom/google/gson/Gson;ZZLcom/netflix/falcor/impl/parser/JsonGraphFormat;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 144
    :cond_e
    check-cast v0, Ljava/util/Map;

    .line 215
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lo/RecommendationInfo;

    .line 145
    move-object v0, v7

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_4

    :cond_f
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_5

    :cond_10
    move-object v2, v1

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    .line 146
    invoke-direct/range {v0 .. v6}, Lo/PreferenceDataStore;->d(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Lo/RecommendationInfo;JLjava/lang/Long;)V

    goto :goto_3

    .line 151
    :cond_11
    instance-of v1, v0, Lo/VolumePreference;

    if-eqz v1, :cond_17

    .line 152
    iget-object v1, v10, Lo/PreferenceDataStore;->a:Lo/WebViewMethodCalledOnWrongThreadViolation;

    invoke-virtual {v1}, Lo/WebViewMethodCalledOnWrongThreadViolation;->d()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 153
    sget-object v9, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;->i:Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

    .line 155
    iget-object v12, v10, Lo/PreferenceDataStore;->d:Lcom/google/gson/Gson;

    const/4 v13, 0x1

    const/4 v14, 0x0

    .line 158
    sget-object v15, Lcom/netflix/falcor/impl/parser/JsonGraphFormat;->a:Lcom/netflix/falcor/impl/parser/JsonGraphFormat;

    const/16 v16, 0x0

    const/16 v17, 0x10

    const/16 v18, 0x0

    move-object/from16 v11, p3

    .line 154
    invoke-static/range {v11 .. v18}, Lo/LongitudinalReportingConfig;->b(Lo/RecommendationInfo;Lcom/google/gson/Gson;ZZLcom/netflix/falcor/impl/parser/JsonGraphFormat;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 161
    :cond_12
    check-cast v0, Ljava/lang/Iterable;

    .line 218
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const/4 v0, 0x0

    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v15, v0, 0x1

    if-gez v0, :cond_13

    invoke-static {}, Lo/akz;->c()V

    :cond_13
    move-object v3, v1

    check-cast v3, Lo/RecommendationInfo;

    .line 162
    move-object v1, v7

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_14

    const/4 v1, 0x1

    goto :goto_7

    :cond_14
    const/4 v1, 0x0

    :goto_7
    if-eqz v1, :cond_15

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_15
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_8
    move-object v2, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    .line 163
    invoke-direct/range {v0 .. v6}, Lo/PreferenceDataStore;->d(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Lo/RecommendationInfo;JLjava/lang/Long;)V

    move v0, v15

    goto :goto_6

    :goto_9
    if-eqz v0, :cond_16

    .line 171
    sget-object v1, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;->b:Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

    if-eq v0, v1, :cond_16

    .line 172
    iget v3, v0, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;->j:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, v21

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-wide/from16 v7, p4

    invoke-direct/range {v0 .. v9}, Lo/PreferenceDataStore;->c(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;JLjava/lang/Object;)V

    :cond_16
    return-void

    .line 152
    :cond_17
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method


# virtual methods
.method protected a(Landroid/database/sqlite/SQLiteStatement;Lkotlin/Triple;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteStatement;",
            "Lkotlin/Triple<",
            "Ljava/lang/String;",
            "+",
            "Lo/RecommendationInfo;",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    const-string v0, "statement"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "record"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    sget-object v0, Lo/PreferenceDataStore;->e:Lo/PreferenceDataStore$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 54
    invoke-virtual {p2}, Lkotlin/Triple;->b()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2}, Lkotlin/Triple;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lo/RecommendationInfo;

    invoke-virtual {p2}, Lkotlin/Triple;->e()Ljava/lang/Object;

    move-result-object p2

    move-object v7, p2

    check-cast v7, Ljava/lang/Long;

    move-object v1, p0

    move-object v2, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v7}, Lo/PreferenceDataStore;->d(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Lo/RecommendationInfo;JLjava/lang/Long;)V

    return-void
.end method

.method public synthetic c(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;J)V
    .locals 0

    .line 27
    check-cast p2, Lkotlin/Triple;

    invoke-virtual {p0, p1, p2, p3, p4}, Lo/PreferenceDataStore;->a(Landroid/database/sqlite/SQLiteStatement;Lkotlin/Triple;J)V

    return-void
.end method

.method public e(Ljava/lang/String;Lo/RecommendationInfo;Ljava/lang/Long;)V
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jsonGraphValue"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance v0, Lkotlin/Triple;

    invoke-direct {v0, p1, p2, p3}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lo/PreferenceDataStore;->d(Ljava/lang/Object;)V

    return-void
.end method
