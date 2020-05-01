.class public final Lcom/netflix/partner/PServiceCardEventHandler;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/partner/PServiceCardEventHandler$StateListAnimator;,
        Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;,
        Lcom/netflix/partner/PServiceCardEventHandler$ActionBar;
    }
.end annotation


# static fields
.field public static final a:Lcom/netflix/partner/PServiceCardEventHandler$ActionBar;

# The value of this static final field might be set in the static constructor
.field private static final e:Ljava/lang/String; = "nf_partner_PServiceCardEventHandle"


# instance fields
.field private b:Ljava/lang/Long;

.field private c:J

.field private final d:Lo/aiC;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/netflix/partner/PServiceCardEventHandler$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/partner/PServiceCardEventHandler$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/partner/PServiceCardEventHandler;->a:Lcom/netflix/partner/PServiceCardEventHandler$ActionBar;

    const-string v0, "nf_partner_PServiceCardEventHandle"

    .line 268
    sput-object v0, Lcom/netflix/partner/PServiceCardEventHandler;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lo/aiC;

    invoke-direct {v0}, Lo/aiC;-><init>()V

    iput-object v0, p0, Lcom/netflix/partner/PServiceCardEventHandler;->d:Lo/aiC;

    const-wide/16 v0, 0x0

    .line 36
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/partner/PServiceCardEventHandler;->b:Ljava/lang/Long;

    return-void
.end method

.method private final a(I)Lcom/netflix/cl/model/android/MinusOneRequestType;
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 264
    sget-object p1, Lcom/netflix/cl/model/android/MinusOneRequestType;->entry:Lcom/netflix/cl/model/android/MinusOneRequestType;

    goto :goto_0

    .line 263
    :pswitch_0
    sget-object p1, Lcom/netflix/cl/model/android/MinusOneRequestType;->userDeleteCard:Lcom/netflix/cl/model/android/MinusOneRequestType;

    goto :goto_0

    .line 262
    :pswitch_1
    sget-object p1, Lcom/netflix/cl/model/android/MinusOneRequestType;->userHideCard:Lcom/netflix/cl/model/android/MinusOneRequestType;

    goto :goto_0

    .line 261
    :pswitch_2
    sget-object p1, Lcom/netflix/cl/model/android/MinusOneRequestType;->impression:Lcom/netflix/cl/model/android/MinusOneRequestType;

    goto :goto_0

    .line 260
    :pswitch_3
    sget-object p1, Lcom/netflix/cl/model/android/MinusOneRequestType;->userRefresh:Lcom/netflix/cl/model/android/MinusOneRequestType;

    goto :goto_0

    .line 259
    :pswitch_4
    sget-object p1, Lcom/netflix/cl/model/android/MinusOneRequestType;->entry:Lcom/netflix/cl/model/android/MinusOneRequestType;

    goto :goto_0

    .line 258
    :pswitch_5
    sget-object p1, Lcom/netflix/cl/model/android/MinusOneRequestType;->warmup:Lcom/netflix/cl/model/android/MinusOneRequestType;

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final synthetic a()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lcom/netflix/partner/PServiceCardEventHandler;->e:Ljava/lang/String;

    return-object v0
.end method

.method private final b(Lorg/json/JSONObject;)Lcom/netflix/cl/model/android/MinusOneCardInfo;
    .locals 12

    const/4 v0, 0x0

    .line 180
    move-object v1, v0

    check-cast v1, Lcom/netflix/cl/model/android/MinusOneCardInfo;

    const-string v2, "cardType"

    .line 182
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 183
    invoke-static {v3, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/netflix/partner/PServiceCardEventHandler;->e(Ljava/lang/String;)Lcom/netflix/cl/model/android/MinusOneCardType;

    move-result-object v2

    const-string v3, "listName"

    .line 185
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 187
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v5, "videoImpressions"

    .line 189
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    .line 191
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_1

    .line 192
    invoke-virtual {p1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "videoId"

    .line 193
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "trackingInfo"

    .line 194
    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 195
    new-instance v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    move-object v11, v0

    check-cast v11, Lcom/netflix/cl/model/TrackingInfo;

    iput-object v11, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->d:Ljava/lang/Object;

    if-eqz v8, :cond_0

    .line 198
    new-instance v11, Lcom/netflix/partner/PServiceCardEventHandler$Activity;

    invoke-direct {v11, v10, v8}, Lcom/netflix/partner/PServiceCardEventHandler$Activity;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lorg/json/JSONObject;)V

    check-cast v11, Lcom/netflix/cl/model/TrackingInfo;

    iput-object v11, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->d:Ljava/lang/Object;

    .line 201
    :cond_0
    new-instance v8, Lcom/netflix/cl/model/android/MinusOneVideoInfo;

    iget-object v10, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->d:Ljava/lang/Object;

    check-cast v10, Lcom/netflix/cl/model/TrackingInfo;

    invoke-direct {v8, v9, v10}, Lcom/netflix/cl/model/android/MinusOneVideoInfo;-><init>(Ljava/lang/String;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 202
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 206
    :cond_1
    check-cast v4, Ljava/util/Collection;

    new-array p1, v5, [Lcom/netflix/cl/model/android/MinusOneVideoInfo;

    .line 313
    invoke-interface {v4, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, [Lcom/netflix/cl/model/android/MinusOneVideoInfo;

    .line 206
    new-instance v0, Lcom/netflix/cl/model/android/MinusOneCardInfo;

    invoke-direct {v0, v2, v3, p1}, Lcom/netflix/cl/model/android/MinusOneCardInfo;-><init>(Lcom/netflix/cl/model/android/MinusOneCardType;Ljava/lang/String;[Lcom/netflix/cl/model/android/MinusOneVideoInfo;)V

    goto :goto_1

    .line 313
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-object v0, v1

    :goto_1
    return-object v0
.end method

.method private final b(I)V
    .locals 7

    .line 150
    sget-object v0, Lcom/netflix/partner/PServiceCardEventHandler;->e:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "sending error response to partner code: %s"

    invoke-static {v0, v2, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v0, 0x0

    .line 152
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/netflix/partner/PServiceCardEventHandler;->c(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 154
    sget-object v1, Lcom/netflix/partner/PServiceCardEventHandler;->e:Ljava/lang/String;

    check-cast v0, Ljava/lang/Throwable;

    const-string v2, "could not send error result "

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    :goto_0
    iget-object v0, p0, Lcom/netflix/partner/PServiceCardEventHandler;->b:Ljava/lang/Long;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 157
    iget-wide v2, p0, Lcom/netflix/partner/PServiceCardEventHandler;->c:J

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/netflix/partner/PServiceCardEventHandler;->d(JJLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final synthetic b(Lcom/netflix/partner/PServiceCardEventHandler;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/netflix/partner/PServiceCardEventHandler;->b(I)V

    return-void
.end method

.method private final c(Landroid/content/Context;I)Ljava/lang/Long;
    .locals 7

    const/4 v0, 0x0

    const-string v1, "partner_curr_card_log"

    .line 219
    invoke-static {p1, v1, v0}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 221
    move-object v1, v0

    check-cast v1, Lorg/json/JSONObject;

    .line 223
    :try_start_0
    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    nop

    .line 229
    :cond_0
    :goto_0
    sget-object v2, Lcom/netflix/partner/PServiceCardEventHandler;->e:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const-string v6, "startClLogForMinusOneRequest:: jCardInfo: %s"

    invoke-static {v2, v6, v4}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-nez v1, :cond_1

    .line 231
    sget-object p1, Lcom/netflix/partner/PServiceCardEventHandler;->e:Ljava/lang/String;

    const-string p2, "startClLogForMinusOneRequest:: No saved JSON!"

    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 235
    :cond_1
    invoke-direct {p0, v1}, Lcom/netflix/partner/PServiceCardEventHandler;->b(Lorg/json/JSONObject;)Lcom/netflix/cl/model/android/MinusOneCardInfo;

    move-result-object v1

    if-nez v1, :cond_2

    .line 237
    sget-object p2, Lcom/netflix/partner/PServiceCardEventHandler;->e:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v5

    const-string p1, "startClLogForMinusOneRequest:: minusOneCardInfo not found from JSON %s!"

    invoke-static {p2, p1, v1}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v0

    .line 241
    :cond_2
    new-instance p1, Lcom/netflix/cl/model/event/session/action/android/MinusOneRequest;

    invoke-direct {p0, p2}, Lcom/netflix/partner/PServiceCardEventHandler;->a(I)Lcom/netflix/cl/model/android/MinusOneRequestType;

    move-result-object p2

    new-instance v0, Lcom/netflix/partner/PServiceCardEventHandler$StateListAnimator;

    invoke-direct {v0}, Lcom/netflix/partner/PServiceCardEventHandler$StateListAnimator;-><init>()V

    check-cast v0, Lcom/netflix/cl/model/TrackingInfo;

    invoke-direct {p1, v1, p2, v0}, Lcom/netflix/cl/model/event/session/action/android/MinusOneRequest;-><init>(Lcom/netflix/cl/model/android/MinusOneCardInfo;Lcom/netflix/cl/model/android/MinusOneRequestType;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 242
    sget-object p2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    check-cast p1, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {p2, p1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method private final c(ILjava/lang/String;)V
    .locals 4

    .line 164
    iget-object v0, p0, Lcom/netflix/partner/PServiceCardEventHandler;->d:Lo/aiC;

    invoke-virtual {v0}, Lo/aiC;->e()Ljava/util/List;

    move-result-object v0

    .line 166
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/aiq;

    .line 167
    sget-object v2, Lcom/netflix/partner/PServiceCardEventHandler;->e:Ljava/lang/String;

    const-string v3, "sending card... "

    invoke-static {v2, v3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-interface {v1, p1, p2}, Lo/aiq;->d(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final d(JJLjava/lang/String;)V
    .locals 1

    .line 174
    sget-object v0, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    new-instance p4, Lcom/netflix/cl/model/Error;

    invoke-direct {p4, p5}, Lcom/netflix/cl/model/Error;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3, p4}, Lcom/netflix/cl/ExtLogger;->failedAction(Ljava/lang/Long;Lcom/netflix/cl/model/Error;)Z

    .line 175
    sget-object p3, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/netflix/cl/Logger;->removeContext(Ljava/lang/Long;)Z

    return-void
.end method

.method public static final synthetic d(Lcom/netflix/partner/PServiceCardEventHandler;ILjava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/netflix/partner/PServiceCardEventHandler;->c(ILjava/lang/String;)V

    return-void
.end method

.method private final e(Ljava/lang/String;)Lcom/netflix/cl/model/android/MinusOneCardType;
    .locals 8

    .line 272
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    sget-object p1, Lcom/netflix/cl/model/android/MinusOneCardType;->single32:Lcom/netflix/cl/model/android/MinusOneCardType;

    return-object p1

    .line 276
    :cond_0
    sget-object v0, Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;->a:Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;

    invoke-virtual {v0}, Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;->e()Ljava/lang/String;

    move-result-object v0

    .line 314
    check-cast p1, Ljava/lang/CharSequence;

    .line 316
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v1

    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_0
    const/16 v6, 0x20

    if-gt v1, v4, :cond_6

    if-nez v5, :cond_1

    move v7, v1

    goto :goto_1

    :cond_1
    move v7, v4

    .line 321
    :goto_1
    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-gt v7, v6, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    if-nez v5, :cond_4

    if-nez v7, :cond_3

    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-nez v7, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_6
    :goto_3
    add-int/2addr v4, v2

    .line 336
    invoke-interface {p1, v1, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 314
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 276
    invoke-static {v0, v1}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 277
    sget-object p1, Lcom/netflix/cl/model/android/MinusOneCardType;->single32:Lcom/netflix/cl/model/android/MinusOneCardType;

    goto/16 :goto_14

    .line 278
    :cond_7
    sget-object v0, Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;->b:Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;

    invoke-virtual {v0}, Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;->e()Ljava/lang/String;

    move-result-object v0

    .line 339
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, v2

    move v4, v1

    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_4
    if-gt v1, v4, :cond_d

    if-nez v5, :cond_8

    move v7, v1

    goto :goto_5

    :cond_8
    move v7, v4

    .line 344
    :goto_5
    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-gt v7, v6, :cond_9

    const/4 v7, 0x1

    goto :goto_6

    :cond_9
    const/4 v7, 0x0

    :goto_6
    if-nez v5, :cond_b

    if-nez v7, :cond_a

    const/4 v5, 0x1

    goto :goto_4

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_b
    if-nez v7, :cond_c

    goto :goto_7

    :cond_c
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    :cond_d
    :goto_7
    add-int/2addr v4, v2

    .line 359
    invoke-interface {p1, v1, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 337
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 278
    invoke-static {v0, v1}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 279
    sget-object p1, Lcom/netflix/cl/model/android/MinusOneCardType;->onePlus:Lcom/netflix/cl/model/android/MinusOneCardType;

    goto/16 :goto_14

    .line 280
    :cond_e
    sget-object v0, Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;->d:Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;

    invoke-virtual {v0}, Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;->e()Ljava/lang/String;

    move-result-object v0

    .line 362
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, v2

    move v4, v1

    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_8
    if-gt v1, v4, :cond_14

    if-nez v5, :cond_f

    move v7, v1

    goto :goto_9

    :cond_f
    move v7, v4

    .line 367
    :goto_9
    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-gt v7, v6, :cond_10

    const/4 v7, 0x1

    goto :goto_a

    :cond_10
    const/4 v7, 0x0

    :goto_a
    if-nez v5, :cond_12

    if-nez v7, :cond_11

    const/4 v5, 0x1

    goto :goto_8

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_12
    if-nez v7, :cond_13

    goto :goto_b

    :cond_13
    add-int/lit8 v4, v4, -0x1

    goto :goto_8

    :cond_14
    :goto_b
    add-int/2addr v4, v2

    .line 382
    invoke-interface {p1, v1, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 360
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 280
    invoke-static {v0, v1}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 281
    sget-object p1, Lcom/netflix/cl/model/android/MinusOneCardType;->full32:Lcom/netflix/cl/model/android/MinusOneCardType;

    goto/16 :goto_14

    .line 282
    :cond_15
    sget-object v0, Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;->c:Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;

    invoke-virtual {v0}, Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;->e()Ljava/lang/String;

    move-result-object v0

    .line 385
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, v2

    move v4, v1

    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_c
    if-gt v1, v4, :cond_1b

    if-nez v5, :cond_16

    move v7, v1

    goto :goto_d

    :cond_16
    move v7, v4

    .line 390
    :goto_d
    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-gt v7, v6, :cond_17

    const/4 v7, 0x1

    goto :goto_e

    :cond_17
    const/4 v7, 0x0

    :goto_e
    if-nez v5, :cond_19

    if-nez v7, :cond_18

    const/4 v5, 0x1

    goto :goto_c

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_19
    if-nez v7, :cond_1a

    goto :goto_f

    :cond_1a
    add-int/lit8 v4, v4, -0x1

    goto :goto_c

    :cond_1b
    :goto_f
    add-int/2addr v4, v2

    .line 405
    invoke-interface {p1, v1, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 383
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 282
    invoke-static {v0, v1}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 283
    sget-object p1, Lcom/netflix/cl/model/android/MinusOneCardType;->full34:Lcom/netflix/cl/model/android/MinusOneCardType;

    goto :goto_14

    .line 284
    :cond_1c
    sget-object v0, Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;->e:Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;

    invoke-virtual {v0}, Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;->e()Ljava/lang/String;

    move-result-object v0

    .line 408
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, v2

    move v4, v1

    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_10
    if-gt v1, v4, :cond_22

    if-nez v5, :cond_1d

    move v7, v1

    goto :goto_11

    :cond_1d
    move v7, v4

    .line 413
    :goto_11
    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-gt v7, v6, :cond_1e

    const/4 v7, 0x1

    goto :goto_12

    :cond_1e
    const/4 v7, 0x0

    :goto_12
    if-nez v5, :cond_20

    if-nez v7, :cond_1f

    const/4 v5, 0x1

    goto :goto_10

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_20
    if-nez v7, :cond_21

    goto :goto_13

    :cond_21
    add-int/lit8 v4, v4, -0x1

    goto :goto_10

    :cond_22
    :goto_13
    add-int/2addr v4, v2

    .line 428
    invoke-interface {p1, v1, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 406
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 284
    invoke-static {v0, p1}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 285
    sget-object p1, Lcom/netflix/cl/model/android/MinusOneCardType;->full33:Lcom/netflix/cl/model/android/MinusOneCardType;

    goto :goto_14

    .line 287
    :cond_23
    sget-object p1, Lcom/netflix/cl/model/android/MinusOneCardType;->single32:Lcom/netflix/cl/model/android/MinusOneCardType;

    :goto_14
    return-object p1
.end method

.method private final e(ILo/aiq;)V
    .locals 4

    .line 141
    sget-object v0, Lcom/netflix/partner/PServiceCardEventHandler;->e:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "sending single error response to partner code: %s"

    invoke-static {v0, v2, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 143
    :try_start_0
    invoke-interface {p2, p1, v0}, Lo/aiq;->d(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 145
    sget-object p2, Lcom/netflix/partner/PServiceCardEventHandler;->e:Ljava/lang/String;

    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "could not send error result "

    invoke-static {p2, v0, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final e(Landroid/content/Context;ILjava/lang/String;ZZLo/aiq;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/netflix/partner/PServiceCardEventHandler;->d:Lo/aiC;

    invoke-virtual {v0}, Lo/aiC;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 50
    iget-object v0, p0, Lcom/netflix/partner/PServiceCardEventHandler;->d:Lo/aiC;

    invoke-virtual {v0}, Lo/aiC;->d()J

    move-result-wide v2

    const/16 v0, 0x4e20

    int-to-long v4, v0

    .line 52
    invoke-static {v4, v5, v2, v3}, Lo/aeC;->a(JJ)Z

    move-result v0

    const/16 v2, -0x9

    if-eqz v0, :cond_0

    .line 54
    invoke-direct {p0, v2}, Lcom/netflix/partner/PServiceCardEventHandler;->b(I)V

    .line 56
    iget-object v0, p0, Lcom/netflix/partner/PServiceCardEventHandler;->b:Ljava/lang/Long;

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    .line 57
    iget-wide v3, p0, Lcom/netflix/partner/PServiceCardEventHandler;->c:J

    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->cY:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v0, "StatusCode.ALREADY_IN_QUEUE.toString()"

    invoke-static {v7, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/netflix/partner/PServiceCardEventHandler;->d(JJLjava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_0
    sget-object p1, Lcom/netflix/partner/PServiceCardEventHandler;->e:Ljava/lang/String;

    const-string p2, "previous card event still in progress.. stashing"

    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-direct {p0, v2, p6}, Lcom/netflix/partner/PServiceCardEventHandler;->e(ILo/aiq;)V

    return-void

    .line 67
    :cond_1
    :goto_0
    sget-object v0, Lcom/netflix/partner/PServiceCardEventHandler;->e:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Object;

    .line 68
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-direct {p0, p2}, Lcom/netflix/partner/PServiceCardEventHandler;->a(I)Lcom/netflix/cl/model/android/MinusOneRequestType;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const-string v6, "cardEvent: %s(%s), partnerCardImpression: %s"

    .line 67
    invoke-static {v0, v6, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 69
    sget-object v0, Lo/aiG;->b:Lo/aiG;

    sget-object v3, Lcom/netflix/cl/model/android/PartnerInputSource;->bixbyHome:Lcom/netflix/cl/model/android/PartnerInputSource;

    invoke-virtual {v0, p1, v3}, Lo/aiG;->d(Landroid/content/Context;Lcom/netflix/cl/model/android/PartnerInputSource;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/netflix/partner/PServiceCardEventHandler;->c:J

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/netflix/partner/PServiceCardEventHandler;->c(Landroid/content/Context;I)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_1

    :cond_2
    const-wide/16 v6, 0x0

    :goto_1
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/partner/PServiceCardEventHandler;->b:Ljava/lang/Long;

    .line 72
    iget-object v0, p0, Lcom/netflix/partner/PServiceCardEventHandler;->d:Lo/aiC;

    invoke-virtual {v0, p6}, Lo/aiC;->e(Lo/aiq;)V

    if-nez p6, :cond_4

    .line 78
    sget-object p1, Lcom/netflix/partner/PServiceCardEventHandler;->e:Ljava/lang/String;

    const-string p2, "cardEvent: partner callback null "

    invoke-static {p1, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object p1, p0, Lcom/netflix/partner/PServiceCardEventHandler;->b:Ljava/lang/Long;

    if-eqz p1, :cond_3

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    .line 80
    iget-wide v1, p0, Lcom/netflix/partner/PServiceCardEventHandler;->c:J

    sget-object p1, Lcom/netflix/mediaclient/StatusCode;->bQ:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/StatusCode;->toString()Ljava/lang/String;

    move-result-object v5

    const-string p1, "StatusCode.INT_ERR_CB_NULL.toString()"

    invoke-static {v5, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/netflix/partner/PServiceCardEventHandler;->d(JJLjava/lang/String;)V

    :cond_3
    return-void

    .line 86
    :cond_4
    sget-object p6, Lo/nd;->b:Lo/nd;

    invoke-virtual {p6}, Lo/nd;->b()Z

    move-result p6

    if-nez p6, :cond_5

    sget-object p6, Lo/aiG;->b:Lo/aiG;

    invoke-virtual {p6}, Lo/aiG;->e()Z

    move-result p6

    if-nez p6, :cond_5

    .line 87
    sget-object p1, Lcom/netflix/partner/PServiceCardEventHandler;->e:Ljava/lang/String;

    const-string p2, "cardEvent functionality not supported on device - safetynet failure"

    invoke-static {p1, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x8

    .line 88
    invoke-direct {p0, p1}, Lcom/netflix/partner/PServiceCardEventHandler;->b(I)V

    return-void

    :cond_5
    if-eqz p5, :cond_6

    .line 93
    sget-object p1, Lcom/netflix/partner/PServiceCardEventHandler;->e:Ljava/lang/String;

    const-string p2, "card functionality not supported on device - config blocked"

    invoke-static {p1, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    .line 94
    invoke-direct {p0, p1}, Lcom/netflix/partner/PServiceCardEventHandler;->b(I)V

    return-void

    :cond_6
    const/4 p5, 0x0

    .line 99
    check-cast p5, Ljava/lang/reflect/Constructor;

    .line 100
    const-class p5, Lo/bY;

    invoke-static {p5}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lo/bY;

    sget-object p6, Lo/bY$TaskDescription;->e:Lo/bY$TaskDescription;

    invoke-interface {p5, p6}, Lo/bY;->b(Lo/bY$TaskDescription;)Z

    move-result p5

    if-eqz p5, :cond_8

    const/4 p5, -0x4

    :try_start_0
    const-string p6, "com.netflix.partner.card.PCardDataHandler"

    .line 102
    invoke-static {p6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p6

    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/Class;

    .line 103
    const-class v6, Landroid/content/Context;

    aput-object v6, v3, v5

    .line 104
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v1

    .line 105
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v4

    .line 106
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v2

    .line 103
    invoke-virtual {p6, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p6

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v5

    .line 110
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v1

    .line 111
    iget-wide v5, p0, Lcom/netflix/partner/PServiceCardEventHandler;->c:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v4

    .line 112
    iget-object p1, p0, Lcom/netflix/partner/PServiceCardEventHandler;->b:Ljava/lang/Long;

    aput-object p1, v0, v2

    .line 108
    invoke-virtual {p6, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7

    check-cast p1, Lo/ait;

    .line 115
    new-instance p4, Lcom/netflix/partner/PServiceCardEventHandler$Application;

    invoke-direct {p4, p0}, Lcom/netflix/partner/PServiceCardEventHandler$Application;-><init>(Lcom/netflix/partner/PServiceCardEventHandler;)V

    check-cast p4, Lo/ait$StateListAnimator;

    invoke-interface {p1, p2, p3, p4}, Lo/ait;->handleCardEvent(ILjava/lang/String;Lo/ait$StateListAnimator;)V

    goto :goto_2

    .line 108
    :cond_7
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.netflix.partner.PCardDataHandlerInterface"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 128
    sget-object p2, Lcom/netflix/partner/PServiceCardEventHandler;->e:Ljava/lang/String;

    check-cast p1, Ljava/lang/Throwable;

    const-string p3, "Exception"

    invoke-static {p2, p3, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    invoke-direct {p0, p5}, Lcom/netflix/partner/PServiceCardEventHandler;->b(I)V

    goto :goto_2

    :catch_1
    move-exception p1

    .line 125
    sget-object p2, Lcom/netflix/partner/PServiceCardEventHandler;->e:Ljava/lang/String;

    check-cast p1, Ljava/lang/Throwable;

    const-string p3, "NoSuchMethodException"

    invoke-static {p2, p3, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    invoke-direct {p0, p5}, Lcom/netflix/partner/PServiceCardEventHandler;->b(I)V

    goto :goto_2

    .line 133
    :cond_8
    sget-object p2, Lcom/netflix/partner/PServiceCardEventHandler;->e:Ljava/lang/String;

    const-string p3, "module not present, cant handle the query"

    invoke-static {p2, p3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    sget-object p2, Lo/aiG;->b:Lo/aiG;

    invoke-virtual {p2, p1}, Lo/aiG;->a(Landroid/content/Context;)V

    const/4 p1, -0x7

    .line 135
    invoke-direct {p0, p1}, Lcom/netflix/partner/PServiceCardEventHandler;->b(I)V

    :goto_2
    return-void
.end method
