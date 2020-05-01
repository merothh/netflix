.class public final Lo/WebResourceRequest;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation


# static fields
.field public static final a:Lo/WebResourceRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lo/WebResourceRequest;

    invoke-direct {v0}, Lo/WebResourceRequest;-><init>()V

    sput-object v0, Lo/WebResourceRequest;->a:Lo/WebResourceRequest;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "NetflixLottieHelper"

    .line 25
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic a(Lo/WebResourceRequest;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lo/WebResourceRequest;->e(Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lo/WebResourceRequest;Lo/DESedeKeySpec;)Z
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lo/WebResourceRequest;->c(Lo/DESedeKeySpec;)Z

    move-result p0

    return p0
.end method

.method private final b(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lo/WebResourceError;",
            ">;"
        }
    .end annotation

    const-string v0, "ks"

    const-string v1, "shapes"

    const-string v2, "-"

    const-string v3, "nm"

    .line 112
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    :try_start_0
    const-string v5, "layers"

    move-object/from16 v6, p1

    .line 114
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-nez v5, :cond_0

    return-object v4

    .line 119
    :cond_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_c

    .line 120
    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 122
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 123
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "layerTag"

    .line 124
    invoke-static {v10, v11}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "nflx"

    const/4 v12, 0x0

    const/4 v13, 0x2

    invoke-static {v10, v11, v7, v13, v12}, Lo/anv;->b(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 125
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    check-cast v11, Ljava/util/List;

    .line 126
    move-object v14, v10

    check-cast v14, Ljava/lang/CharSequence;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x6

    const/16 v19, 0x0

    invoke-static/range {v14 .. v19}, Lo/anv;->c(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v14

    .line 127
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    const/4 v12, 0x1

    sub-int/2addr v15, v12

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v16, v15

    check-cast v16, Ljava/lang/CharSequence;

    const-string v15, "*"

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x6

    const/16 v21, 0x0

    invoke-static/range {v16 .. v21}, Lo/anv;->c(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v15

    check-cast v15, Ljava/lang/Iterable;

    .line 216
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 127
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x1

    goto :goto_1

    .line 129
    :cond_1
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 130
    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 131
    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v13, "k"

    if-eqz v15, :cond_2

    :try_start_1
    invoke-virtual {v15, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    if-eqz v15, :cond_2

    const-string v7, "it"

    .line 132
    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    if-eqz v7, :cond_2

    const/4 v15, 0x0

    invoke-virtual {v7, v15}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_2

    const-string v15, "s"

    .line 133
    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_8

    .line 135
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v15

    move-object/from16 v26, v1

    const/4 v1, 0x2

    if-lt v15, v1, :cond_7

    .line 137
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v15, "p"

    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    .line 139
    :goto_3
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    if-eqz v9, :cond_4

    const-string v15, "a"

    invoke-virtual {v9, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    goto :goto_4

    :cond_4
    const/4 v9, 0x0

    :goto_4
    if-eqz v1, :cond_7

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    const-wide/16 v20, 0x0

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    if-eqz v9, :cond_5

    .line 142
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v13

    const/4 v15, 0x2

    if-lt v13, v15, :cond_5

    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v24

    cmpg-double v15, v24, v20

    if-eqz v15, :cond_5

    .line 143
    invoke-virtual {v9, v13}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v27

    div-double v27, v27, v18

    goto :goto_5

    :cond_5
    move-wide/from16 v27, v22

    :goto_5
    if-eqz v9, :cond_6

    .line 146
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v13

    const/4 v15, 0x2

    if-lt v13, v15, :cond_6

    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v29

    cmpg-double v15, v29, v20

    if-eqz v15, :cond_6

    .line 147
    invoke-virtual {v9, v13}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v20

    div-double v22, v20, v18

    :cond_6
    const/4 v9, 0x0

    .line 150
    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v18

    move-object/from16 p1, v10

    mul-double v9, v18, v27

    double-to-int v9, v9

    const/4 v10, 0x1

    .line 151
    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v18

    move-object v7, v5

    move v10, v6

    mul-double v5, v18, v22

    double-to-int v5, v5

    const/4 v6, 0x0

    .line 152
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v18

    div-int/lit8 v6, v9, 0x2

    move-object v13, v7

    int-to-double v6, v6

    sub-double v6, v18, v6

    double-to-int v6, v6

    const/4 v7, 0x1

    .line 153
    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v18

    div-int/lit8 v1, v5, 0x2

    move-object v7, v0

    int-to-double v0, v1

    sub-double v0, v18, v0

    double-to-int v0, v0

    add-int/2addr v9, v6

    add-int/2addr v5, v0

    .line 154
    invoke-virtual {v12, v6, v0, v9, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_7

    :cond_7
    move-object v7, v0

    goto :goto_6

    :cond_8
    move-object v7, v0

    move-object/from16 v26, v1

    :goto_6
    move-object v13, v5

    move-object/from16 p1, v10

    move v10, v6

    :goto_7
    const/4 v0, 0x0

    .line 160
    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 161
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x1

    sub-int/2addr v0, v5

    move-object v5, v1

    const/4 v1, 0x1

    :goto_8
    if-ge v1, v0, :cond_9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 163
    :cond_9
    new-instance v0, Lo/WebResourceError;

    const/4 v1, 0x0

    .line 165
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v20

    const/4 v6, 0x1

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v21

    const/4 v6, 0x2

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v22

    .line 166
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v6

    const/4 v9, 0x4

    if-ge v6, v9, :cond_a

    const/4 v6, -0x1

    const/16 v23, -0x1

    goto :goto_9

    :cond_a
    const/4 v6, 0x3

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    move/from16 v23, v6

    :goto_9
    move-object/from16 v18, v0

    move-object/from16 v19, v5

    move-object/from16 v24, v12

    .line 163
    invoke-direct/range {v18 .. v24}, Lo/WebResourceError;-><init>(Ljava/lang/String;IIIILandroid/graphics/Rect;)V

    const-string v5, "NetflixLottieHelper"

    .line 169
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v9, p1

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_a

    :cond_b
    move-object v7, v0

    move-object/from16 v26, v1

    move-object v13, v5

    move v10, v6

    const/4 v1, 0x0

    :goto_a
    add-int/lit8 v8, v8, 0x1

    move-object v0, v7

    move v6, v10

    move-object v5, v13

    move-object/from16 v1, v26

    const/4 v7, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 175
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    check-cast v0, Ljava/lang/Throwable;

    const-string v2, "field parsing for nflx-* failed on the lottie json while creating tap list"

    invoke-interface {v1, v2, v0}, Lo/SpinnerAdapter;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    invoke-interface {v4}, Ljava/util/List;->clear()V

    :cond_c
    return-object v4
.end method

.method private final c(Lo/DESedeKeySpec;)Z
    .locals 5

    .line 31
    invoke-virtual {p1}, Lo/DESedeKeySpec;->i()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/model/layer/Layer;

    .line 32
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "layer.toString()"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    const-string v2, "nflx-"

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v2, v1, v3, v4}, Lo/anv;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method private final e(Ljava/lang/String;)Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 182
    new-instance v0, Lo/WebResourceRequest$ActionBar;

    invoke-direct {v0, p1}, Lo/WebResourceRequest$ActionBar;-><init>(Ljava/lang/String;)V

    check-cast v0, Lio/reactivex/SingleOnSubscribe;

    invoke-static {v0}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object p1

    .line 212
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "Single.create(SingleOnSu\u2026scribeOn(Schedulers.io())"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public static final synthetic e(Lo/WebResourceRequest;Lorg/json/JSONObject;)Ljava/util/List;
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lo/WebResourceRequest;->b(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final c(Ljava/lang/String;)Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lo/WebStorage;",
            ">;"
        }
    .end annotation

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v0, Lo/WebResourceRequest$TaskDescription;

    invoke-direct {v0, p1}, Lo/WebResourceRequest$TaskDescription;-><init>(Ljava/lang/String;)V

    check-cast v0, Lio/reactivex/SingleOnSubscribe;

    invoke-static {v0}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "Single.create { emitter \u2026              )\n        }"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
