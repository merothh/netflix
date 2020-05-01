.class public final Lo/WebSettings;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation


# static fields
.field public static final d:Lo/WebSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lo/WebSettings;

    invoke-direct {v0}, Lo/WebSettings;-><init>()V

    sput-object v0, Lo/WebSettings;->d:Lo/WebSettings;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "NetflixLottieHelperV2"

    .line 26
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic a(Lo/WebSettings;Lo/DHParameterSpec;)Lio/reactivex/Single;
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lo/WebSettings;->b(Lo/DHParameterSpec;)Lio/reactivex/Single;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lo/WebSettings;Ljava/io/InputStream;Lorg/json/JSONObject;)Lkotlin/Triple;
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lo/WebSettings;->c(Ljava/io/InputStream;Lorg/json/JSONObject;)Lkotlin/Triple;

    move-result-object p0

    return-object p0
.end method

.method private final a(Lorg/json/JSONObject;)Lo/WebResourceError;
    .locals 24

    move-object/from16 v0, p1

    .line 145
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    const-string v2, "nm"

    .line 146
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "layer.getString(\"nm\")"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;

    const-string v2, "-"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lo/anv;->c(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 147
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/CharSequence;

    const-string v4, "*"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lo/anv;->c(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 211
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 147
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 149
    :cond_0
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    const-string v4, "shapes"

    .line 150
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-eqz v6, :cond_6

    .line 151
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const-string v6, "k"

    const/4 v9, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v10, "it"

    .line 152
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v10, "s"

    .line 153
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v9

    :goto_1
    if-eqz v4, :cond_6

    .line 155
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v10, v7, :cond_6

    const-string v10, "ks"

    .line 157
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    if-eqz v11, :cond_2

    const-string v12, "p"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    if-eqz v11, :cond_2

    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    goto :goto_2

    :cond_2
    move-object v11, v9

    .line 159
    :goto_2
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v10, "a"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    :cond_3
    if-eqz v11, :cond_6

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    const-wide/16 v16, 0x0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    if-eqz v9, :cond_4

    .line 162
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v0, v7, :cond_4

    invoke-virtual {v9, v8}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v20

    cmpg-double v0, v20, v16

    if-eqz v0, :cond_4

    .line 163
    invoke-virtual {v9, v8}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v20

    div-double v20, v20, v14

    goto :goto_3

    :cond_4
    move-wide/from16 v20, v18

    :goto_3
    if-eqz v9, :cond_5

    .line 166
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v0, v7, :cond_5

    invoke-virtual {v9, v5}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v22

    cmpg-double v0, v22, v16

    if-eqz v0, :cond_5

    .line 167
    invoke-virtual {v9, v5}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v9

    div-double v18, v9, v14

    .line 170
    :cond_5
    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v9

    mul-double v9, v9, v20

    double-to-int v0, v9

    .line 171
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v9

    mul-double v9, v9, v18

    double-to-int v4, v9

    .line 172
    invoke-virtual {v11, v8}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v9

    div-int/lit8 v6, v0, 0x2

    int-to-double v14, v6

    sub-double/2addr v9, v14

    double-to-int v6, v9

    .line 173
    invoke-virtual {v11, v5}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v9

    div-int/lit8 v11, v4, 0x2

    int-to-double v11, v11

    sub-double/2addr v9, v11

    double-to-int v9, v9

    add-int/2addr v0, v6

    add-int/2addr v4, v9

    .line 174
    invoke-virtual {v13, v6, v9, v0, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 180
    :cond_6
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 181
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v5

    move-object v6, v0

    const/4 v0, 0x1

    :goto_4
    if-ge v0, v4, :cond_7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 183
    :cond_7
    new-instance v0, Lo/WebResourceError;

    .line 185
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v9

    .line 186
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v10

    .line 187
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v11

    .line 188
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_8

    const/4 v1, -0x1

    const/4 v12, -0x1

    goto :goto_5

    :cond_8
    const/4 v2, 0x3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    move v12, v1

    :goto_5
    move-object v7, v0

    move-object v8, v6

    .line 183
    invoke-direct/range {v7 .. v13}, Lo/WebResourceError;-><init>(Ljava/lang/String;IIIILandroid/graphics/Rect;)V

    return-object v0
.end method

.method private final b(Lo/DHParameterSpec;)Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/DHParameterSpec<",
            "Lo/DESedeKeySpec;",
            ">;)",
            "Lio/reactivex/Single<",
            "Lo/DESedeKeySpec;",
            ">;"
        }
    .end annotation

    .line 194
    new-instance v0, Lo/WebSettings$Application;

    invoke-direct {v0, p1}, Lo/WebSettings$Application;-><init>(Lo/DHParameterSpec;)V

    check-cast v0, Lio/reactivex/SingleOnSubscribe;

    invoke-static {v0}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "Single.create { emitter \u2026\n            })\n        }"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final b(Lorg/json/JSONObject;)Lkotlin/Triple;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lkotlin/Triple<",
            "Ljava/util/List<",
            "Lo/WebResourceError;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "nm"

    const-string v1, "h"

    const-string v2, "w"

    .line 116
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    :try_start_0
    const-string v4, "layers"

    .line 118
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 124
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_2

    .line 125
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 127
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 128
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "layerTag"

    .line 129
    invoke-static {v9, v10}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "nflx"

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-static {v9, v10, v6, v11, v12}, Lo/anv;->b(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "layer"

    .line 130
    invoke-static {v8, v9}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v8}, Lo/WebSettings;->a(Lorg/json/JSONObject;)Lo/WebResourceError;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 118
    :cond_1
    new-instance v0, Lkotlin/Triple;

    .line 120
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 121
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 118
    invoke-direct {v0, v3, v4, v5}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 135
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v4

    .line 137
    check-cast v0, Ljava/lang/Throwable;

    const-string v5, "field parsing for nflx-* failed on the lottie json while creating tap list"

    .line 135
    invoke-interface {v4, v5, v0}, Lo/SpinnerAdapter;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 141
    :cond_2
    new-instance v0, Lkotlin/Triple;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v3, v2, p1}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private final c(Ljava/io/InputStream;Lorg/json/JSONObject;)Lkotlin/Triple;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lorg/json/JSONObject;",
            ")",
            "Lkotlin/Triple<",
            "Ljava/util/List<",
            "Lo/WebResourceError;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 102
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 104
    invoke-static {p1}, Lo/alv;->b(Ljava/io/InputStream;)[B

    move-result-object p1

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    const-string v3, "Charset.forName(\"UTF-8\")"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 103
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-string v4, "jsonObject"

    .line 107
    invoke-virtual {p2, v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 109
    invoke-direct {p0, p1}, Lo/WebSettings;->b(Lorg/json/JSONObject;)Lkotlin/Triple;

    move-result-object p1

    .line 110
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, v2

    const-string v2, "tagListCreation"

    invoke-virtual {p2, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-object p1
.end method


# virtual methods
.method public final e(Ljava/lang/String;Z)Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lio/reactivex/Single<",
            "Lo/WebStorage;",
            ">;"
        }
    .end annotation

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v0, Lo/WebSettings$StateListAnimator;

    invoke-direct {v0, p1, p2}, Lo/WebSettings$StateListAnimator;-><init>(Ljava/lang/String;Z)V

    check-cast v0, Lio/reactivex/SingleOnSubscribe;

    invoke-static {v0}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object p1

    .line 94
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    const-string p2, "Single.create<NetflixLot\u2026scribeOn(Schedulers.io())"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
