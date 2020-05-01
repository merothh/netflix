.class public abstract Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;
.super Ljava/lang/Object;
.source "ConsolidatedLoggingUtils.java"


# static fields
.field private static final JSON_DEBUG_MESSAGE:Ljava/lang/String; = "bodyResponse"

.field protected static final TAG:Ljava/lang/String; = "nf_log"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method protected static addToIntent(Landroid/content/Intent;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/JsonSerializer;)V
    .locals 1

    .prologue
    .line 277
    invoke-static {p2}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->toStringSafely(Lcom/netflix/mediaclient/service/logging/JsonSerializer;)Ljava/lang/String;

    move-result-object v0

    .line 278
    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    :cond_0
    return-void
.end method

.method protected static addToIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/logging/client/model/FalkorPathResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 266
    :try_start_0
    invoke-static {p2}, Lcom/netflix/mediaclient/service/logging/client/model/FalkorPathResult;->createJSONArray(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 267
    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 270
    :catch_0
    move-exception v0

    .line 271
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "addToIntent:: Failed to create JSON string for list of FalkorPathResult "

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static createDebug(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;
    .locals 1

    .prologue
    .line 584
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 585
    const/4 v0, 0x0

    .line 591
    :goto_0
    return-object v0

    .line 588
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;-><init>()V

    .line 589
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->setMessage(Lorg/json/JSONObject;)V

    .line 590
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->setStackTrace(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static createDeepErrorList(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/StatusCode;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 378
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 379
    new-instance v1, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;

    invoke-direct {v1}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;-><init>()V

    .line 380
    invoke-virtual {p0}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;->setErrorCode(Ljava/lang/String;)V

    .line 381
    new-instance v2, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;-><init>()V

    .line 382
    invoke-virtual {v2, p1}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->setStackTrace(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;->setDebug(Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;)V

    .line 384
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    return-object v0
.end method

.method public static createGUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 602
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 603
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createHttpResponse(JI)Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;
    .locals 2

    .prologue
    .line 549
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;-><init>()V

    .line 550
    long-to-int v1, p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->setResponseTime(Ljava/lang/Integer;)V

    .line 551
    const-string/jumbo v1, "text/x-json"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->setMimeType(Ljava/lang/String;)V

    .line 552
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->setContentLength(Ljava/lang/Integer;)V

    .line 554
    return-object v0
.end method

.method public static createSessionLookupKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createUIError(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    .locals 3

    .prologue
    .line 461
    invoke-interface {p0}, Lcom/netflix/mediaclient/android/app/Status;->getError()Lcom/netflix/mediaclient/service/logging/client/model/Error;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 462
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    const-string/jumbo v0, "nf_log"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error message already exist in status object "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->createUIErrorFromError(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    move-result-object v0

    .line 468
    :goto_0
    return-object v0

    .line 467
    :cond_1
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Error message does NOT exist in status object"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-static {p0, p1, p2}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->createUIErrorFromStatus(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    move-result-object v0

    goto :goto_0
.end method

.method private static createUIErrorFromError(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    .locals 2

    .prologue
    .line 390
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    invoke-interface {p0}, Lcom/netflix/mediaclient/android/app/Status;->getError()Lcom/netflix/mediaclient/service/logging/client/model/Error;

    move-result-object v1

    invoke-direct {v0, v1, p2, p1}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/Error;Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;Ljava/lang/String;)V

    return-object v0
.end method

.method private static createUIErrorFromStatus(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    .locals 3

    .prologue
    .line 395
    sget-object v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->serverFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    .line 396
    invoke-interface {p0}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    .line 397
    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->createDeepErrorList(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 398
    sget-object v2, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils$1;->$SwitchMap$com$netflix$mediaclient$StatusCode:[I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 444
    :pswitch_0
    sget-object v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->unknownFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    .line 448
    :goto_0
    new-instance v2, Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    invoke-direct {v2, v0, p2, p1, v1}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/RootCause;Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;Ljava/lang/String;Ljava/util/List;)V

    return-object v2

    .line 402
    :pswitch_1
    sget-object v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->clientFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    goto :goto_0

    .line 406
    :pswitch_2
    sget-object v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->serverResponseBad:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    goto :goto_0

    .line 411
    :pswitch_3
    sget-object v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->clientRequestBad:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    goto :goto_0

    .line 425
    :pswitch_4
    sget-object v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->serverFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    goto :goto_0

    .line 430
    :pswitch_5
    sget-object v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->networkFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    goto :goto_0

    .line 434
    :pswitch_6
    sget-object v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->sslExpiredCert:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    goto :goto_0

    .line 437
    :pswitch_7
    sget-object v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->sslHandshakeFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    goto :goto_0

    .line 440
    :pswitch_8
    sget-object v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->sslUntrustedCert:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    goto :goto_0

    .line 398
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_5
        :pswitch_5
        :pswitch_8
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public static getDisplay(Landroid/content/Context;)Lcom/netflix/mediaclient/service/logging/apm/model/Display;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 338
    if-nez p0, :cond_1

    .line 366
    :cond_0
    :goto_0
    return-object v2

    .line 343
    :cond_1
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 344
    if-eqz v0, :cond_0

    .line 348
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 349
    invoke-virtual {v1}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    .line 350
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 351
    const-string/jumbo v3, "nf_log"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Refresh rate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_2
    const/high16 v3, 0x41200000    # 10.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_3

    .line 355
    const/high16 v0, 0x42700000    # 60.0f

    move v5, v0

    .line 357
    :goto_1
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 358
    invoke-virtual {v1, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 362
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v7, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 366
    new-instance v0, Lcom/netflix/mediaclient/service/logging/apm/model/Display;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/apm/model/Display$Connector;->internal:Lcom/netflix/mediaclient/service/logging/apm/model/Display$Connector;

    iget v3, v4, Landroid/graphics/Point;->x:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/logging/apm/model/Display;-><init>(Lcom/netflix/mediaclient/service/logging/apm/model/Display$Connector;Lcom/netflix/mediaclient/service/logging/apm/model/Display$AspectRatio;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/netflix/mediaclient/service/logging/apm/model/Display$ScanMode;I)V

    move-object v2, v0

    goto :goto_0

    :cond_3
    move v5, v0

    goto :goto_1
.end method

.method protected static getRootCauseFromVolleyNetworkError(Lcom/android/volley/VolleyError;)Lcom/netflix/mediaclient/service/logging/client/model/RootCause;
    .locals 4

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 560
    if-nez v0, :cond_1

    .line 561
    sget-object v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->networkFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    .line 579
    :cond_0
    :goto_0
    return-object v0

    .line 563
    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 566
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 567
    const-string/jumbo v0, "nf_log"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ".next call failed with error ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->networkFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    .line 571
    const-string/jumbo v2, "sslhandshakeexception"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 572
    sget-object v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->sslHandshakeFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    .line 573
    const-string/jumbo v2, "current time"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "validation time"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 574
    sget-object v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->sslExpiredCert:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    goto :goto_0

    .line 575
    :cond_3
    const-string/jumbo v2, "no trusted certificate found"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 576
    sget-object v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->sslUntrustedCert:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    goto :goto_0
.end method

.method protected static isNull(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 293
    if-nez p0, :cond_0

    .line 299
    const/4 v0, 0x1

    .line 302
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static pauseReporting(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 71
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 75
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.LOG_PAUSE_EVENTS_DELIVERY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static resumeReporting(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 88
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 91
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.LOG_PAUSE_EVENTS_DELIVERY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const-string/jumbo v1, "flush"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 94
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static toError(Lcom/android/volley/VolleyError;)Lcom/netflix/mediaclient/service/logging/client/model/Error;
    .locals 5

    .prologue
    .line 480
    new-instance v2, Lcom/netflix/mediaclient/service/logging/client/model/Error;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/logging/client/model/Error;-><init>()V

    .line 482
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    const-string/jumbo v0, "nf_log"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "VolleyError: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 487
    const-string/jumbo v0, "nf_log"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error on response:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget-object v4, v4, Lcom/android/volley/NetworkResponse;->data:[B

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_1
    instance-of v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;

    if-eqz v0, :cond_4

    .line 491
    sget-object v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->serverResponseBad:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/logging/client/model/Error;->setRootCause(Lcom/netflix/mediaclient/service/logging/client/model/RootCause;)V

    .line 503
    :cond_2
    :goto_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Report data request failed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const/4 v0, 0x0

    .line 506
    iget-object v1, p0, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v1, :cond_3

    .line 507
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 509
    :try_start_0
    const-string/jumbo v1, "bodyResponse"

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget-object v4, v4, Lcom/android/volley/NetworkResponse;->data:[B

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    :cond_3
    :goto_1
    new-instance v1, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;

    invoke-direct {v1}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;-><init>()V

    .line 518
    new-instance v3, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;

    invoke-direct {v3}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;-><init>()V

    .line 519
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    .line 520
    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->setStackTrace(Ljava/lang/String;)V

    .line 521
    invoke-virtual {v3, v0}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->setMessage(Lorg/json/JSONObject;)V

    .line 522
    invoke-virtual {v1, v3}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;->setDebug(Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;)V

    .line 523
    if-eqz p0, :cond_7

    iget-object v0, p0, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v0, :cond_7

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget v3, v3, Lcom/android/volley/NetworkResponse;->statusCode:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;->setErrorCode(Ljava/lang/String;)V

    .line 529
    :goto_2
    invoke-virtual {v2, v1}, Lcom/netflix/mediaclient/service/logging/client/model/Error;->addDeepError(Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;)V

    .line 530
    return-object v2

    .line 493
    :cond_4
    instance-of v0, p0, Lcom/android/volley/ServerError;

    if-eqz v0, :cond_5

    .line 494
    sget-object v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->serverFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/logging/client/model/Error;->setRootCause(Lcom/netflix/mediaclient/service/logging/client/model/RootCause;)V

    goto :goto_0

    .line 496
    :cond_5
    instance-of v0, p0, Lcom/android/volley/TimeoutError;

    if-eqz v0, :cond_6

    .line 497
    sget-object v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->tcpConnectionTimeout:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/logging/client/model/Error;->setRootCause(Lcom/netflix/mediaclient/service/logging/client/model/RootCause;)V

    goto :goto_0

    .line 499
    :cond_6
    instance-of v0, p0, Lcom/android/volley/NetworkError;

    if-eqz v0, :cond_2

    .line 500
    invoke-static {p0}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->getRootCauseFromVolleyNetworkError(Lcom/android/volley/VolleyError;)Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/logging/client/model/Error;->setRootCause(Lcom/netflix/mediaclient/service/logging/client/model/RootCause;)V

    goto :goto_0

    .line 511
    :catch_0
    move-exception v1

    .line 512
    const-string/jumbo v3, "nf_log"

    const-string/jumbo v4, "Failed to add body response to JSON object"

    invoke-static {v3, v4, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 526
    :cond_7
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v3, "Network response is not set!"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const-string/jumbo v0, "504"

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;->setErrorCode(Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected static toError(Lcom/android/volley/VolleyError;Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/Error;
    .locals 4

    .prologue
    const/16 v3, 0x1f4

    const/4 v2, 0x0

    .line 99
    .line 100
    if-eqz p0, :cond_3

    iget-object v0, p0, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v0, :cond_3

    .line 102
    iget-object v0, p0, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget v0, v0, Lcom/android/volley/NetworkResponse;->statusCode:I

    .line 103
    const/16 v1, 0x190

    if-lt v0, v1, :cond_0

    if-ge v0, v3, :cond_0

    .line 104
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/Error;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->http4xx:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/client/model/Error;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/RootCause;Ljava/util/List;)V

    .line 116
    :goto_0
    return-object v0

    .line 105
    :cond_0
    if-ne v0, v3, :cond_1

    .line 106
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/Error;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->serverFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/client/model/Error;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/RootCause;Ljava/util/List;)V

    .line 107
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/Error;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->serverFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/client/model/Error;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/RootCause;Ljava/util/List;)V

    goto :goto_0

    .line 108
    :cond_1
    if-le v0, v3, :cond_2

    const/16 v1, 0x258

    if-ge v0, v1, :cond_2

    .line 109
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/Error;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->http5xx:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/client/model/Error;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/RootCause;Ljava/util/List;)V

    goto :goto_0

    .line 111
    :cond_2
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/Error;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->unknownFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/client/model/Error;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/RootCause;Ljava/util/List;)V

    goto :goto_0

    .line 114
    :cond_3
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/Error;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->unknownFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/client/model/Error;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/RootCause;Ljava/util/List;)V

    goto :goto_0
.end method

.method protected static toError(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/Error;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 121
    .line 122
    sget-object v0, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils$1;->$SwitchMap$com$netflix$mediaclient$StatusCode:[I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/StatusCode;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 180
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    const-string/jumbo v0, "nf_log"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Report  generic failure for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", status code not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/Error;

    sget-object v2, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->unknownFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/service/logging/client/model/Error;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/RootCause;Ljava/util/List;)V

    .line 187
    :goto_0
    return-object v0

    .line 125
    :pswitch_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    const-string/jumbo v0, "nf_log"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Report success for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v0, v1

    .line 128
    goto :goto_0

    .line 131
    :pswitch_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    const-string/jumbo v0, "nf_log"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Report network error for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_2
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/Error;

    sget-object v2, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->networkFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/service/logging/client/model/Error;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/RootCause;Ljava/util/List;)V

    goto :goto_0

    .line 138
    :pswitch_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 139
    const-string/jumbo v0, "nf_log"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Report no connectivity for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_3
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/Error;

    sget-object v2, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->tcpNoRouteToHost:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/service/logging/client/model/Error;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/RootCause;Ljava/util/List;)V

    goto :goto_0

    .line 145
    :pswitch_3
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 146
    const-string/jumbo v0, "nf_log"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Report SSL error, no valid certificate for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_4
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/Error;

    sget-object v2, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->sslExpiredCert:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/service/logging/client/model/Error;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/RootCause;Ljava/util/List;)V

    goto/16 :goto_0

    .line 152
    :pswitch_4
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 153
    const-string/jumbo v0, "nf_log"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Report SSL error, date time error for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_5
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/Error;

    sget-object v2, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->sslUntrustedCert:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/service/logging/client/model/Error;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/RootCause;Ljava/util/List;)V

    goto/16 :goto_0

    .line 159
    :pswitch_5
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 160
    const-string/jumbo v0, "nf_log"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Report SSL error, generic for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_6
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/Error;

    sget-object v2, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->sslUntrustedCert:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/service/logging/client/model/Error;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/RootCause;Ljava/util/List;)V

    goto/16 :goto_0

    .line 166
    :pswitch_6
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 167
    const-string/jumbo v0, "nf_log"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Report server error, generic for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_7
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/Error;

    sget-object v2, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->serverFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/service/logging/client/model/Error;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/RootCause;Ljava/util/List;)V

    goto/16 :goto_0

    .line 173
    :pswitch_7
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 174
    const-string/jumbo v0, "nf_log"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Report uknown error for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_8
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/Error;

    sget-object v2, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->unknownFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/service/logging/client/model/Error;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/RootCause;Ljava/util/List;)V

    goto/16 :goto_0

    .line 122
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static toFalkorPathResultList(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/logging/client/model/FalkorPathResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 535
    .line 536
    if-eqz p0, :cond_1

    .line 537
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 539
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 540
    if-eqz p0, :cond_0

    .line 541
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 542
    new-instance v4, Lcom/netflix/mediaclient/service/logging/client/model/FalkorPathResult;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v1, v5}, Lcom/netflix/mediaclient/service/logging/client/model/FalkorPathResult;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 545
    :cond_0
    return-object v2

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected static toStringSafely(Lcom/netflix/mediaclient/service/logging/JsonSerializer;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 308
    if-nez p0, :cond_0

    .line 316
    :goto_0
    return-object v0

    .line 313
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/netflix/mediaclient/service/logging/JsonSerializer;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 314
    :catch_0
    move-exception v1

    .line 315
    const-string/jumbo v2, "nf_log"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "toStringSafely:: Failed to create JSON string for event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static toUIError(Lcom/netflix/mediaclient/StatusCode;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 192
    if-nez p0, :cond_0

    .line 193
    sget-object p0, Lcom/netflix/mediaclient/StatusCode;->UNKNOWN:Lcom/netflix/mediaclient/StatusCode;

    .line 197
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils$1;->$SwitchMap$com$netflix$mediaclient$StatusCode:[I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/StatusCode;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 253
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    const-string/jumbo v0, "nf_log"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Report  generic failure for, status code not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_1
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    sget-object v2, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->unknownFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    invoke-direct {v0, v2, v1, v1, v1}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/RootCause;Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;Ljava/lang/String;Ljava/util/List;)V

    .line 260
    :goto_0
    return-object v0

    .line 200
    :pswitch_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v2, "Report success"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 201
    goto :goto_0

    .line 204
    :pswitch_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 205
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v2, "Report network error for"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_2
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    sget-object v2, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->networkFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    invoke-direct {v0, v2, v1, v1, v1}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/RootCause;Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 211
    :pswitch_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 212
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v2, "Report no connectivity for"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_3
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    sget-object v2, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->tcpNoRouteToHost:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    invoke-direct {v0, v2, v1, v1, v1}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/RootCause;Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 218
    :pswitch_3
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 219
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v2, "Report SSL error, no valid certificate for"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_4
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    sget-object v2, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->sslExpiredCert:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    invoke-direct {v0, v2, v1, v1, v1}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/RootCause;Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 225
    :pswitch_4
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 226
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v2, "Report SSL error, date time error for"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_5
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    sget-object v2, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->sslUntrustedCert:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    invoke-direct {v0, v2, v1, v1, v1}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/RootCause;Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 232
    :pswitch_5
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 233
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v2, "Report SSL error, generic for"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_6
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    sget-object v2, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->sslUntrustedCert:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    invoke-direct {v0, v2, v1, v1, v1}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/RootCause;Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 239
    :pswitch_6
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 240
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v2, "Report server error, generic for"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_7
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    sget-object v2, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->serverFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    invoke-direct {v0, v2, v1, v1, v1}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/RootCause;Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    .line 246
    :pswitch_7
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 247
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v2, "Report uknown error for"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_8
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    sget-object v2, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->unknownFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    invoke-direct {v0, v2, v1, v1, v1}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/RootCause;Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
