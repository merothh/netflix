.class public final Lo/Tn$Application;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Tn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 290
    invoke-direct {p0}, Lo/Tn$Application;-><init>()V

    return-void
.end method

.method private final c(Landroid/os/Bundle;Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "fallback"

    .line 366
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    move-object v0, p0

    check-cast v0, Lo/Tn$Application;

    invoke-virtual {v0, p2}, Lo/Tn$Application;->a(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object p2

    const-string v0, "choices"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/netflix/mediaclient/servicemgr/PlayContext;Ljava/lang/String;I)Lcom/netflix/cl/model/TrackingInfo;
    .locals 2

    const-string v0, "causeOfUpgrade"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_0

    .line 413
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->getTrackId()I

    move-result p1

    const-string v1, "trackId"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    const-string p1, "upgradeType"

    .line 415
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "currentPlanId"

    .line 416
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 417
    new-instance p1, Lo/Tn$Application$TaskDescription;

    invoke-direct {p1, v0}, Lo/Tn$Application$TaskDescription;-><init>(Lorg/json/JSONObject;)V

    check-cast p1, Lcom/netflix/cl/model/TrackingInfo;

    return-object p1
.end method

.method public final a(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/netflix/mediaclient/ui/player/PlanChoice;",
            ">;"
        }
    .end annotation

    const-string v0, "extraInfo"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "choices"

    .line 372
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 373
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 374
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 375
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-lez v4, :cond_2

    .line 376
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-static {v3, v2}, Lo/amG;->b(II)Lo/amD;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 424
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    check-cast v4, Lo/akG;

    invoke-virtual {v4}, Lo/akG;->c()I

    move-result v4

    .line 377
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->J()Lcom/google/gson/Gson;

    move-result-object v5

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-class v6, Lcom/netflix/mediaclient/ui/player/PlanChoice;

    invoke-virtual {v5, v4, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netflix/mediaclient/ui/player/PlanChoice;

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 426
    :cond_1
    move-object v2, v3

    check-cast v2, Ljava/util/ArrayList;

    .line 380
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Time to gson Plan Choices: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PlanUpgradeDialogFragment"

    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public final b(Lo/sY;Lcom/netflix/mediaclient/servicemgr/PlayContext;)Lo/Tn;
    .locals 6

    const-string v0, "error"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playContext"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    new-instance v0, Lo/To;

    invoke-direct {v0}, Lo/To;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 322
    invoke-virtual {v0, v1, v2}, Lo/To;->setStyle(II)V

    .line 324
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 325
    check-cast p2, Landroid/os/Parcelable;

    const-string v2, "play_context"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 327
    invoke-virtual {p1}, Lo/sY;->f()Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "error.extraInfo"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "currentViewings"

    .line 328
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 330
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 331
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 332
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 333
    invoke-static {p2}, Lo/BadParcelableException;->c(Lorg/json/JSONArray;)Ljava/util/Iterator;

    move-result-object p2

    .line 422
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    const-string v5, "device"

    .line 334
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "video"

    .line 335
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p2, "devices"

    .line 338
    invoke-virtual {v1, p2, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string p2, "streams"

    .line 339
    invoke-virtual {v1, p2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 342
    :cond_1
    move-object p2, p0

    check-cast p2, Lo/Tn$Application;

    invoke-direct {p2, v1, p1}, Lo/Tn$Application;->c(Landroid/os/Bundle;Lorg/json/JSONObject;)V

    .line 343
    invoke-virtual {v0, v1}, Lo/To;->setArguments(Landroid/os/Bundle;)V

    .line 345
    check-cast v0, Lo/Tn;

    return-object v0
.end method

.method public final d(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/ui/player/PlanChoice;",
            ">;)I"
        }
    .end annotation

    const-string v0, "choices"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 388
    check-cast p1, Ljava/lang/Iterable;

    .line 427
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/player/PlanChoice;

    .line 389
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlanChoice;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "CURRENT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 390
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlanChoice;->d()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final e(Ljava/util/List;)Lcom/netflix/mediaclient/ui/player/PlanChoice;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/ui/player/PlanChoice;",
            ">;)",
            "Lcom/netflix/mediaclient/ui/player/PlanChoice;"
        }
    .end annotation

    const-string v0, "choices"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 401
    check-cast p1, Ljava/lang/Iterable;

    .line 429
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/player/PlanChoice;

    .line 402
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlanChoice;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "IMMEDIATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return-object v0

    .line 406
    :cond_1
    sget-object p1, Lcom/netflix/mediaclient/ui/player/PlanChoice;->c:Lcom/netflix/mediaclient/ui/player/PlanChoice$ActionBar;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlanChoice$ActionBar;->e()Lcom/netflix/mediaclient/ui/player/PlanChoice;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lorg/json/JSONObject;Lcom/netflix/mediaclient/servicemgr/PlayContext;)Lo/Tn;
    .locals 3

    const-string v0, "extraInfo"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playContext"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    new-instance v0, Lo/Tl;

    invoke-direct {v0}, Lo/Tl;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 354
    invoke-virtual {v0, v1, v2}, Lo/Tl;->setStyle(II)V

    .line 356
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 357
    check-cast p2, Landroid/os/Parcelable;

    const-string v2, "play_context"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 359
    move-object p2, p0

    check-cast p2, Lo/Tn$Application;

    invoke-direct {p2, v1, p1}, Lo/Tn$Application;->c(Landroid/os/Bundle;Lorg/json/JSONObject;)V

    .line 360
    invoke-virtual {v0, v1}, Lo/Tl;->setArguments(Landroid/os/Bundle;)V

    .line 362
    check-cast v0, Lo/Tn;

    return-object v0
.end method
