.class public final enum Lcom/netflix/mediaclient/ui/util/CLv2Utils;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/util/CLv2Utils$Activity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/ui/util/CLv2Utils;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Z

.field public static final enum b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

.field private static final synthetic e:[Lcom/netflix/mediaclient/ui/util/CLv2Utils;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 61
    new-instance v0, Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    .line 60
    sget-object v2, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e:[Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    .line 69
    sput-boolean v1, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->a:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;)Lcom/netflix/cl/model/Error;
    .locals 2

    if-eqz p1, :cond_1

    .line 579
    invoke-interface {p1}, Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 581
    invoke-interface {p1}, Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    .line 582
    invoke-static {p0, v0}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e(Ljava/lang/String;Lcom/google/android/gms/common/api/Status;)Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    const-string v1, "credentialExist"

    .line 584
    invoke-interface {p1}, Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;->getCredential()Lcom/google/android/gms/auth/api/credentials/Credential;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    :catch_0
    new-instance p1, Lcom/netflix/cl/model/Debug;

    invoke-direct {p1, v0}, Lcom/netflix/cl/model/Debug;-><init>(Lorg/json/JSONObject;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 590
    :goto_1
    new-instance v0, Lcom/netflix/cl/model/Error;

    invoke-direct {v0, p0, p1}, Lcom/netflix/cl/model/Error;-><init>(Ljava/lang/String;Lcom/netflix/cl/model/Debug;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/google/android/gms/common/api/Status;)Lcom/netflix/cl/model/Error;
    .locals 1

    if-eqz p1, :cond_0

    .line 539
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e(Ljava/lang/String;Lcom/google/android/gms/common/api/Status;)Lorg/json/JSONObject;

    move-result-object p1

    .line 540
    new-instance v0, Lcom/netflix/cl/model/Debug;

    invoke-direct {v0, p1}, Lcom/netflix/cl/model/Debug;-><init>(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 543
    :goto_0
    new-instance p1, Lcom/netflix/cl/model/Error;

    invoke-direct {p1, p0, v0}, Lcom/netflix/cl/model/Error;-><init>(Ljava/lang/String;Lcom/netflix/cl/model/Debug;)V

    return-object p1
.end method

.method public static a(Ljava/lang/String;)Lcom/netflix/cl/model/TrackingInfo;
    .locals 1

    .line 401
    new-instance v0, Lo/acy;

    invoke-direct {v0, p0}, Lo/acy;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/netflix/cl/model/TrackingInfo;Z)Lorg/json/JSONObject;
    .locals 0

    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Lcom/netflix/cl/model/TrackingInfo;Z)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lo/zR;)Lorg/json/JSONObject;
    .locals 0

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->h(Lo/zR;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static a()V
    .locals 1

    .line 199
    new-instance v0, Lcom/netflix/cl/model/event/session/command/android/SystemBackCommand;

    invoke-direct {v0}, Lcom/netflix/cl/model/event/session/command/android/SystemBackCommand;-><init>()V

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e(Lcom/netflix/cl/model/event/session/command/Command;)V

    return-void
.end method

.method public static b(Lcom/netflix/mediaclient/StatusCode;Lorg/json/JSONObject;)Lcom/netflix/cl/model/Error;
    .locals 0

    .line 117
    invoke-static {p0, p1}, Lo/aeu;->c(Lcom/netflix/mediaclient/StatusCode;Lorg/json/JSONObject;)Lcom/netflix/cl/model/Error;

    move-result-object p0

    return-object p0
.end method

.method private b(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;)Lcom/netflix/cl/model/TrackingInfo;
    .locals 2

    .line 492
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const/16 v1, 0xa

    .line 493
    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "videoId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    .line 495
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->getRequestId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "requestId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->getListId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 499
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->getListId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "listId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    :cond_0
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->getTrackId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "trackId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->getListPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "row"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->c()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "rank"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    :cond_1
    invoke-static {v0}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Ljava/util/Map;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p1

    return-object p1
.end method

.method public static b(Ljava/util/Map;)Lcom/netflix/cl/model/TrackingInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/netflix/cl/model/TrackingInfo;"
        }
    .end annotation

    .line 370
    new-instance v0, Lcom/netflix/mediaclient/ui/util/CLv2Utils$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/util/CLv2Utils$2;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method private static synthetic b(Lcom/netflix/cl/model/TrackingInfo;Z)Lorg/json/JSONObject;
    .locals 1

    .line 685
    invoke-interface {p0}, Lcom/netflix/cl/model/TrackingInfo;->toJSONObject()Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "isUIAutoPlay"

    .line 686
    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic b(Lo/zR;)Lorg/json/JSONObject;
    .locals 0

    .line 713
    invoke-interface {p0}, Lo/zR;->toJSONObject()Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .line 623
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    .line 626
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 627
    sget-object v0, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->a(Ljava/lang/String;Lcom/google/android/gms/common/api/Status;)Lcom/netflix/cl/model/Error;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/netflix/cl/ExtLogger;->failedExclusiveAction(Ljava/lang/String;Lcom/netflix/cl/model/Error;)Z

    goto :goto_0

    .line 629
    :cond_0
    sget-object p1, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    invoke-virtual {p1, p0}, Lcom/netflix/cl/ExtLogger;->endExclusiveAction(Ljava/lang/String;)Z

    goto :goto_0

    .line 633
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Status;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 634
    sget-object p1, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    invoke-virtual {p1, p0}, Lcom/netflix/cl/ExtLogger;->cancelExclusiveAction(Ljava/lang/String;)Z

    goto :goto_0

    .line 636
    :cond_2
    sget-object v0, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->a(Ljava/lang/String;Lcom/google/android/gms/common/api/Status;)Lcom/netflix/cl/model/Error;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/netflix/cl/ExtLogger;->failedExclusiveAction(Ljava/lang/String;Lcom/netflix/cl/model/Error;)Z

    :goto_0
    return-void
.end method

.method public static b(ZLcom/netflix/cl/model/AppView;Lo/zR;Lcom/netflix/cl/model/context/CLContext;Z)V
    .locals 0

    .line 282
    invoke-static {p2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e(Lo/zR;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p2

    invoke-static {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e(ZLcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;Lcom/netflix/cl/model/context/CLContext;Z)V

    return-void
.end method

.method public static b(ZLjava/lang/String;Lo/Bv;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/netflix/cl/model/context/CLContext;ILcom/netflix/cl/model/AppView;)V
    .locals 23
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    move-object/from16 v3, p8

    if-eqz v1, :cond_0

    .line 217
    :try_start_0
    new-instance v13, Lo/afI;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object v4, v13

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v8, p4

    move/from16 v9, p7

    move-object/from16 v12, p5

    invoke-direct/range {v4 .. v12}, Lo/afI;-><init>(Ljava/lang/String;Lo/Bv;ILjava/lang/String;IJLorg/json/JSONObject;)V

    .line 217
    invoke-static {v0, v3, v13, v2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->c(ZLcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;Lcom/netflix/cl/model/context/CLContext;)V

    goto :goto_1

    .line 221
    :cond_0
    new-instance v4, Lo/afI;

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-object v14, v4

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move/from16 v19, p7

    move-object/from16 v22, p5

    invoke-direct/range {v14 .. v22}, Lo/afI;-><init>(Ljava/lang/String;Lo/Bv;ILjava/lang/String;IJLorg/json/JSONObject;)V

    .line 221
    invoke-static {v0, v3, v4, v2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->c(ZLcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;Lcom/netflix/cl/model/context/CLContext;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 225
    :goto_0
    instance-of v0, v0, Ljava/lang/NumberFormatException;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->a:Z

    if-nez v0, :cond_1

    .line 226
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid video id format : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " found in "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 227
    sput-boolean v0, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->a:Z

    :cond_1
    :goto_1
    return-void
.end method

.method public static c(Lcom/netflix/mediaclient/StatusCode;)Lcom/netflix/cl/model/Error;
    .locals 1

    const/4 v0, 0x0

    .line 105
    invoke-static {p0, v0}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Lcom/netflix/mediaclient/StatusCode;Lorg/json/JSONObject;)Lcom/netflix/cl/model/Error;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/cl/model/Error;
    .locals 1

    if-eqz p0, :cond_1

    .line 88
    invoke-interface {p0}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    invoke-interface {p0}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p0

    goto :goto_1

    .line 89
    :cond_1
    :goto_0
    sget-object p0, Lcom/netflix/mediaclient/StatusCode;->a:Lcom/netflix/mediaclient/StatusCode;

    .line 94
    :goto_1
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->c(Lcom/netflix/mediaclient/StatusCode;)Lcom/netflix/cl/model/Error;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcom/netflix/cl/model/TrackingInfo;Z)Lcom/netflix/cl/model/TrackingInfo;
    .locals 3

    .line 677
    :try_start_0
    invoke-interface {p0}, Lcom/netflix/cl/model/TrackingInfo;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 678
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "SPY-18265: inputTrackingInfo.toJSONObject() is null"

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 681
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    const-string v2, "SPY-18265: JSONException"

    invoke-interface {v1, v2, v0}, Lo/SpinnerAdapter;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 683
    :cond_0
    :goto_0
    new-instance v0, Lo/acx;

    invoke-direct {v0, p0, p1}, Lo/acx;-><init>(Lcom/netflix/cl/model/TrackingInfo;Z)V

    return-object v0
.end method

.method public static c(Lorg/json/JSONObject;)Lcom/netflix/cl/model/TrackingInfo;
    .locals 1

    .line 337
    new-instance v0, Lcom/netflix/mediaclient/ui/util/CLv2Utils$5;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/util/CLv2Utils$5;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public static c(Lorg/json/JSONObject;Lcom/netflix/cl/util/ExtCLUtils$DebugSessionType;)Lcom/netflix/cl/model/event/session/DebugSession;
    .locals 1

    if-nez p0, :cond_0

    .line 721
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    :try_start_0
    const-string v0, "type"

    .line 725
    invoke-virtual {p1}, Lcom/netflix/cl/util/ExtCLUtils$DebugSessionType;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 728
    :catch_0
    new-instance p1, Lcom/netflix/cl/model/event/session/DebugSession;

    invoke-direct {p1, p0}, Lcom/netflix/cl/model/event/session/DebugSession;-><init>(Lorg/json/JSONObject;)V

    return-object p1
.end method

.method public static synthetic c(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lo/zR;)Lorg/json/JSONObject;
    .locals 0

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Lo/zR;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static c()V
    .locals 1

    .line 192
    new-instance v0, Lcom/netflix/cl/model/event/session/command/BackCommand;

    invoke-direct {v0}, Lcom/netflix/cl/model/event/session/command/BackCommand;-><init>()V

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e(Lcom/netflix/cl/model/event/session/command/Command;)V

    return-void
.end method

.method public static c(Ljava/lang/Long;Ljava/lang/String;Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    .line 602
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p1, p0}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    goto :goto_0

    .line 605
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Status;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 606
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p1, p0}, Lcom/netflix/cl/Logger;->cancelSession(Ljava/lang/Long;)Z

    goto :goto_0

    .line 608
    :cond_1
    sget-object v0, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->a(Ljava/lang/String;Lcom/google/android/gms/common/api/Status;)Lcom/netflix/cl/model/Error;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/netflix/cl/ExtLogger;->failedAction(Ljava/lang/Long;Lcom/netflix/cl/model/Error;)Z

    :goto_0
    return-void
.end method

.method public static c(ZLcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;Lcom/netflix/cl/model/context/CLContext;)V
    .locals 1

    const/4 v0, 0x1

    .line 332
    invoke-static {p0, p1, p2, p3, v0}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e(ZLcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;Lcom/netflix/cl/model/context/CLContext;Z)V

    return-void
.end method

.method public static d(Lo/zR;)Lcom/netflix/cl/model/TrackingInfo;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 704
    :cond_0
    new-instance v0, Lo/acA;

    invoke-direct {v0, p0}, Lo/acA;-><init>(Lo/zR;)V

    return-object v0
.end method

.method private static synthetic d(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    if-eqz p0, :cond_0

    .line 403
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(FZ)V
    .locals 2

    .line 691
    new-instance v0, Lcom/netflix/cl/model/context/Volume;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/netflix/cl/model/context/Volume;-><init>(Ljava/lang/Boolean;Ljava/lang/Float;)V

    .line 692
    sget-object p0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p0, v0}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    .line 693
    sget-object p0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance p1, Lcom/netflix/cl/model/event/discrete/VolumeChanged;

    invoke-direct {p1}, Lcom/netflix/cl/model/event/discrete/VolumeChanged;-><init>()V

    invoke-virtual {p0, p1}, Lcom/netflix/cl/Logger;->logEvent(Lcom/netflix/cl/model/event/discrete/DiscreteEvent;)V

    .line 694
    sget-object p0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v0}, Lcom/netflix/cl/model/context/Volume;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/cl/Logger;->removeContext(Ljava/lang/Long;)Z

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;)V
    .locals 2

    .line 651
    invoke-interface {p2}, Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    .line 652
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    .line 655
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 656
    sget-object v0, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->a(Ljava/lang/String;Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;)Lcom/netflix/cl/model/Error;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/netflix/cl/ExtLogger;->failedExclusiveAction(Ljava/lang/String;Lcom/netflix/cl/model/Error;)Z

    goto :goto_0

    .line 658
    :cond_0
    sget-object p1, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    invoke-virtual {p1, p0}, Lcom/netflix/cl/ExtLogger;->endExclusiveAction(Ljava/lang/String;)Z

    goto :goto_0

    .line 662
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 663
    sget-object p1, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    invoke-virtual {p1, p0}, Lcom/netflix/cl/ExtLogger;->cancelExclusiveAction(Ljava/lang/String;)Z

    goto :goto_0

    .line 665
    :cond_2
    sget-object v0, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->a(Ljava/lang/String;Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;)Lcom/netflix/cl/model/Error;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/netflix/cl/ExtLogger;->failedExclusiveAction(Ljava/lang/String;Lcom/netflix/cl/model/Error;)Z

    :goto_0
    return-void
.end method

.method public static d(ZLjava/lang/String;Lo/Bv;Ljava/util/List;Ljava/util/List;Lorg/json/JSONObject;Lcom/netflix/cl/model/context/CLContext;ILcom/netflix/cl/model/AppView;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lo/Bv;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            "Lcom/netflix/cl/model/context/CLContext;",
            "I",
            "Lcom/netflix/cl/model/AppView;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    move/from16 v12, p7

    .line 250
    :goto_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 252
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v2, :cond_0

    .line 253
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :cond_0
    move-object v7, v3

    .line 256
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    move v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move v10, v12

    move-object/from16 v11, p8

    invoke-static/range {v3 .. v11}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(ZLjava/lang/String;Lo/Bv;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/netflix/cl/model/context/CLContext;ILcom/netflix/cl/model/AppView;)V

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    move v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    .line 261
    invoke-static/range {v3 .. v11}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(ZLjava/lang/String;Lo/Bv;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/netflix/cl/model/context/CLContext;ILcom/netflix/cl/model/AppView;)V

    :cond_2
    return-void
.end method

.method public static e(Lo/zR;)Lcom/netflix/cl/model/TrackingInfo;
    .locals 1

    .line 712
    new-instance v0, Lo/acF;

    invoke-direct {v0, p0}, Lo/acF;-><init>(Lo/zR;)V

    return-object v0
.end method

.method private static e(Ljava/lang/String;Lcom/google/android/gms/common/api/Status;)Lorg/json/JSONObject;
    .locals 2

    .line 549
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "api"

    .line 551
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "statusCode"

    .line 552
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 553
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p0, "statusMessage"

    .line 554
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string p0, "hasResolution"

    .line 556
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->hasResolution()Z

    move-result v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p0, "canceled"

    .line 557
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isCanceled()Z

    move-result v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p0, "interrupted"

    .line 558
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isInterrupted()Z

    move-result v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const/4 p0, 0x4

    .line 560
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result p1

    if-ne p0, p1, :cond_1

    const-string p0, "signInRequied"

    const/4 p1, 0x1

    .line 561
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-object v0
.end method

.method public static e(Lcom/netflix/cl/model/event/session/command/Command;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 184
    :cond_0
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v0, p0}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p0

    .line 185
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v0, p0}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    return-void
.end method

.method public static e(ZLcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;Lcom/netflix/cl/model/context/CLContext;Z)V
    .locals 1

    if-eqz p3, :cond_0

    .line 301
    sget-object p4, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p4, p3}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    .line 320
    :cond_0
    sget-object p4, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v0, Lcom/netflix/cl/model/event/discrete/Presented;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {v0, p1, p0, p2}, Lcom/netflix/cl/model/event/discrete/Presented;-><init>(Lcom/netflix/cl/model/AppView;Ljava/lang/Boolean;Lcom/netflix/cl/model/TrackingInfo;)V

    invoke-virtual {p4, v0}, Lcom/netflix/cl/Logger;->logEvent(Lcom/netflix/cl/model/event/discrete/DiscreteEvent;)V

    if-eqz p3, :cond_1

    .line 323
    sget-object p0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p3}, Lcom/netflix/cl/model/context/CLContext;->getId()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/cl/Logger;->removeContext(Ljava/lang/Long;)Z

    :cond_1
    return-void
.end method

.method private static synthetic h(Lo/zR;)Lorg/json/JSONObject;
    .locals 0

    .line 705
    invoke-interface {p0}, Lo/zR;->toJSONObject()Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/util/CLv2Utils;
    .locals 1

    .line 60
    const-class v0, Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/util/CLv2Utils;
    .locals 1

    .line 60
    sget-object v0, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e:[Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/util/CLv2Utils;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/netflix/cl/model/TrackingInfo;
    .locals 2

    .line 511
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "trackId"

    .line 512
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0xa

    .line 513
    invoke-static {p2, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "videoId"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    const-string p1, "row"

    .line 515
    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p4, :cond_1

    const-string p1, "rank"

    .line 518
    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    :cond_1
    invoke-static {v0}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Ljava/util/Map;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/netflix/cl/model/TrackingInfo;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/cl/model/AppView;)V
    .locals 0

    monitor-enter p0

    if-eqz p2, :cond_0

    goto :goto_0

    .line 463
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p2

    .line 464
    :goto_0
    new-instance p1, Lcom/netflix/cl/model/event/session/Focus;

    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    sget-object p4, Lcom/netflix/cl/model/AppView;->addToMyListButton:Lcom/netflix/cl/model/AppView;

    :goto_1
    invoke-direct {p1, p4, p2}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    new-instance p2, Lcom/netflix/cl/model/event/session/command/AddToPlaylistCommand;

    invoke-direct {p2}, Lcom/netflix/cl/model/event/session/command/AddToPlaylistCommand;-><init>()V

    new-instance p3, Lcom/netflix/cl/model/event/session/action/AddToPlaylist;

    invoke-direct {p3}, Lcom/netflix/cl/model/event/session/action/AddToPlaylist;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;Lcom/netflix/cl/model/event/session/action/Action;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 411
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Lcom/netflix/cl/model/event/session/Focus;ZZ)V
    .locals 3

    monitor-enter p0

    .line 450
    :try_start_0
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/context/GestureInput;

    if-eqz p3, :cond_0

    sget-object p3, Lcom/netflix/cl/model/GestureInputKind;->doubleTap:Lcom/netflix/cl/model/GestureInputKind;

    goto :goto_0

    :cond_0
    sget-object p3, Lcom/netflix/cl/model/GestureInputKind;->tap:Lcom/netflix/cl/model/GestureInputKind;

    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 451
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v1, p3, v2}, Lcom/netflix/cl/model/context/GestureInput;-><init>(Lcom/netflix/cl/model/GestureInputKind;Ljava/lang/Float;)V

    .line 450
    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    move-result-wide v0

    .line 453
    sget-object p3, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p3, p1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    .line 454
    sget-object p3, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    if-eqz p2, :cond_1

    new-instance p2, Lcom/netflix/cl/model/event/session/command/SkipBackCommand;

    invoke-direct {p2}, Lcom/netflix/cl/model/event/session/command/SkipBackCommand;-><init>()V

    goto :goto_1

    :cond_1
    new-instance p2, Lcom/netflix/cl/model/event/session/command/SkipAheadCommand;

    invoke-direct {p2}, Lcom/netflix/cl/model/event/session/command/SkipAheadCommand;-><init>()V

    :goto_1
    invoke-virtual {p3, p2}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p2

    .line 455
    sget-object p3, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p3, p2}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 456
    sget-object p2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p2, p1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 458
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netflix/cl/Logger;->removeContext(Ljava/lang/Long;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Ljava/lang/String;Lcom/netflix/cl/model/TrackingInfo;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/cl/model/AppView;)V
    .locals 0

    monitor-enter p0

    if-eqz p2, :cond_0

    goto :goto_0

    .line 479
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p2

    .line 480
    :goto_0
    new-instance p1, Lcom/netflix/cl/model/event/session/Focus;

    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    sget-object p4, Lcom/netflix/cl/model/AppView;->removeFromMyListButton:Lcom/netflix/cl/model/AppView;

    :goto_1
    invoke-direct {p1, p4, p2}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    new-instance p2, Lcom/netflix/cl/model/event/session/command/RemoveFromPlaylistCommand;

    invoke-direct {p2}, Lcom/netflix/cl/model/event/session/command/RemoveFromPlaylistCommand;-><init>()V

    new-instance p3, Lcom/netflix/cl/model/event/session/action/RemoveFromPlaylist;

    invoke-direct {p3}, Lcom/netflix/cl/model/event/session/action/RemoveFromPlaylist;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;Lcom/netflix/cl/model/event/session/action/Action;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;Lcom/netflix/cl/model/context/CLContext;)V
    .locals 2

    monitor-enter p0

    .line 425
    :try_start_0
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v0, p3}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    move-result-wide v0

    .line 426
    sget-object p3, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p3, p1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    .line 427
    sget-object p3, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p3, p2}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p2

    .line 428
    sget-object p3, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p3, p2}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 429
    sget-object p2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p2, p1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 430
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netflix/cl/Logger;->removeContext(Ljava/lang/Long;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;Z)V
    .locals 1

    monitor-enter p0

    .line 415
    :try_start_0
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v0, p1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    .line 416
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v0, p2}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p2

    if-eqz p3, :cond_0

    .line 418
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object p3

    invoke-virtual {p3}, Lcom/netflix/mediaclient/NetflixApplication;->M()Lo/afH;

    move-result-object p3

    invoke-virtual {p3}, Lo/afH;->b()V

    .line 420
    :cond_0
    sget-object p3, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p3, p2}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 421
    sget-object p2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p2, p1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;Lcom/netflix/cl/model/event/session/action/Action;)V
    .locals 1

    monitor-enter p0

    .line 439
    :try_start_0
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v0, p1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    .line 440
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v0, p2}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p2

    .line 441
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v0, p3}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p3

    .line 444
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v0, p2}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 445
    sget-object p2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p2, p1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 446
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p1, p3}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
