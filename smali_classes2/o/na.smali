.class public final synthetic Lo/na;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic d:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;->values()[Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/na;->d:[I

    sget-object v0, Lo/na;->d:[I

    sget-object v1, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;->d:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lo/na;->d:[I

    sget-object v1, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;->f:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    return-void
.end method
