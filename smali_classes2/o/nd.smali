.class public final Lo/nd;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final b:Lo/nd;

.field private static final e:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lo/nd;

    invoke-direct {v0}, Lo/nd;-><init>()V

    sput-object v0, Lo/nd;->b:Lo/nd;

    .line 24
    invoke-static {}, Lo/hd;->a()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lo/nd;->e:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lo/nd;JILjava/lang/Object;)Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 54
    sget-object p1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    sget-wide p2, Lo/nd;->e:J

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lo/nd;->d(J)Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b()Z
    .locals 5

    .line 113
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 115
    invoke-static {}, Lo/hd;->d()Z

    move-result v2

    const-string v3, "SafetyNetHelper"

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    const-string v0, " check is NOT enabled. Skip for now"

    .line 116
    invoke-static {v3, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 121
    :cond_0
    invoke-virtual {p0, v0, v1}, Lo/nd;->d(J)Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;

    move-result-object v0

    .line 122
    sget-object v1, Lo/na;->d:[I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v4, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const-string v0, "Device is SafetyNet NOT approved"

    .line 126
    invoke-static {v3, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const-string v0, "Device is SafetyNet approved, user can proceed"

    .line 124
    invoke-static {v3, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v4
.end method

.method public final c()Lorg/json/JSONObject;
    .locals 9

    .line 140
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 141
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v1

    .line 142
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "certified"

    const-string v4, "SafetyNetHelper"

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "Success!"

    .line 149
    invoke-static {v4, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    const-string v6, "Device is not Google certified, skip"

    const-string v7, "code"

    if-ne v2, v1, :cond_1

    .line 152
    :try_start_1
    invoke-static {v4, v6}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 154
    invoke-virtual {v0, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    const/16 v8, 0x9

    if-ne v8, v1, :cond_2

    .line 156
    invoke-static {v4, v6}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 158
    invoke-virtual {v0, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    :cond_2
    const-string v5, "Device is Google certified, problem with Google Play Services"

    .line 160
    invoke-static {v4, v5}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 162
    invoke-virtual {v0, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_0
    return-object v0
.end method

.method public final d(J)Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;
    .locals 9

    .line 55
    invoke-static {}, Lo/hd;->c()Z

    move-result v0

    const-string v1, "SafetyNetHelper"

    if-eqz v0, :cond_0

    const-string p1, "SafetyNet enforcement is disabled"

    .line 56
    invoke-static {v1, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    sget-object p1, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;->d:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;

    return-object p1

    .line 60
    :cond_0
    invoke-static {}, Lo/aek;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "SafetyNet Amazon device not supported"

    .line 61
    invoke-static {v1, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    sget-object p1, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;->c:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;

    return-object p1

    .line 65
    :cond_1
    invoke-static {}, Lo/adq;->a()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Lo/adq;->h()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Lo/adq;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1

    .line 70
    :cond_2
    const-class v0, Lo/zQ;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zQ;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lo/zQ;->d()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    const-string p1, "SafetyNet cap is null"

    .line 72
    invoke-static {v1, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    sget-object p1, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;->f:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;

    return-object p1

    :cond_4
    const/4 v2, 0x0

    const-string v3, "passed"

    .line 76
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-wide/16 v3, 0x0

    const-string v5, "completionTime"

    .line 77
    invoke-virtual {v0, v5, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    if-eqz v2, :cond_5

    add-long v5, v3, p1

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v2, v5, v7

    if-ltz v2, :cond_5

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SafetyNet passed timeOfLastPassed = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " timeWindowMillis="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    sget-object p1, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;->d:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;

    return-object p1

    :cond_5
    const-string p1, "deviceAttestation"

    .line 82
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_6

    const-string p1, "SafetyNet attestationJson is null"

    .line 84
    invoke-static {v1, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    sget-object p1, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;->f:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;

    return-object p1

    .line 88
    :cond_6
    new-instance p2, Lo/zC;

    invoke-direct {p2, p1}, Lo/zC;-><init>(Lorg/json/JSONObject;)V

    const-string p1, "UNKNOWN"

    .line 89
    invoke-virtual {p2, p1}, Lo/zC;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "deviceAttestations.isAtt\u2026Data.ATTESTATION_UNKNOWN)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "SafetyNet unknown attestation!"

    .line 90
    invoke-static {v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    sget-object p1, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;->f:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;

    return-object p1

    :cond_7
    const-string p1, "BASIC_OS_VERIFIED"

    .line 94
    invoke-virtual {p2, p1}, Lo/zC;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "SafetyNet device is rooted!"

    .line 95
    invoke-static {v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sget-object p1, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;->b:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;

    return-object p1

    :cond_8
    const-string p1, "VENDOR_COMPATIBILITY_TEST"

    .line 99
    invoke-virtual {p2, p1}, Lo/zC;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_9

    const-string p1, "SafetyNet device is not certified!"

    .line 100
    invoke-static {v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    sget-object p1, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;->b:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;

    return-object p1

    :cond_9
    const-string p1, "APPLICATION_VERIFIED"

    .line 104
    invoke-virtual {p2, p1}, Lo/zC;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_a

    const-string p1, "SafetyNet app is not verified!"

    .line 105
    invoke-static {v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    sget-object p1, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;->a:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;

    return-object p1

    :cond_a
    const-string p1, "SafetyNet passed"

    .line 108
    invoke-static {v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    sget-object p1, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;->d:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;

    return-object p1

    :cond_b
    :goto_1
    const-string p1, "SafetyNet AndroidStb and AndroidTv devices are not supported"

    .line 66
    invoke-static {v1, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    sget-object p1, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;->h:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;

    return-object p1
.end method

.method public final e()Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;
    .locals 4

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lo/nd;->a(Lo/nd;JILjava/lang/Object;)Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;

    move-result-object v0

    return-object v0
.end method
