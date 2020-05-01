.class public final enum Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;

.field public static final enum b:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;

.field public static final enum c:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;

.field public static final enum d:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;

.field public static final enum e:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;

.field public static final enum f:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;

.field public static final enum h:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;

.field private static final synthetic j:[Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;

    new-instance v1, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;

    const/4 v2, 0x0

    const-string v3, "PASSED"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;->d:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;

    const/4 v2, 0x1

    const-string v3, "DEVICE_INTEGRITY_FAILED"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;->b:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;

    const/4 v2, 0x2

    const-string v3, "APP_INTEGRITY_FAILED"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;->a:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;

    const/4 v2, 0x3

    const-string v3, "APP_VERSION_IS_OLD"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;->e:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;

    const/4 v2, 0x4

    const-string v3, "OEM_NOT_SUPPORTED"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;->c:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;

    const/4 v2, 0x5

    const-string v3, "ANDROID_TV_OR_STB_OR_CHROMEBOOK"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;->h:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;

    const/4 v2, 0x6

    const-string v3, "UNKNOWN"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;->f:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;->j:[Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 173
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;->j:[Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;

    return-object v0
.end method
