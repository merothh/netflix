.class synthetic Lcom/netflix/mediaclient/service/user/UserAgentImpl$29;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/user/UserAgentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 287
    invoke-static {}, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;->values()[Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$29;->c:[I

    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$29;->c:[I

    sget-object v1, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;->d:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$29;->c:[I

    sget-object v1, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;->b:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$29;->c:[I

    sget-object v1, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;->a:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$29;->c:[I

    sget-object v1, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;->e:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$29;->c:[I

    sget-object v1, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;->c:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$29;->c:[I

    sget-object v1, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;->h:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$29;->c:[I

    sget-object v1, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;->f:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    return-void
.end method
