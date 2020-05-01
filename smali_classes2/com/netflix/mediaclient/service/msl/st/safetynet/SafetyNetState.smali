.class public final enum Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

.field public static final enum b:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

.field public static final enum c:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

.field public static final enum d:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

.field public static final enum e:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

.field public static final enum f:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

.field public static final enum g:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

.field public static final enum h:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

.field public static final enum i:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

.field public static final enum j:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

.field public static final enum k:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

.field public static final enum l:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

.field public static final enum m:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

.field public static final enum n:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

.field public static final enum o:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

.field public static final enum r:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

.field private static final synthetic t:[Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 9
    new-instance v0, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    const/4 v1, 0x0

    const-string v2, "NOT_SUPPORTED"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;->d:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    .line 10
    new-instance v0, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    const/4 v2, 0x1

    const-string v3, "DISABLED"

    invoke-direct {v0, v3, v2}, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;->c:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    .line 11
    new-instance v0, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    const/4 v3, 0x2

    const-string v4, "UNDEFINED"

    invoke-direct {v0, v4, v3}, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;->b:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    .line 12
    new-instance v0, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    const/4 v4, 0x3

    const-string v5, "NOT_AVAILABLE"

    invoke-direct {v0, v5, v4}, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;->a:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    .line 13
    new-instance v0, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    const/4 v5, 0x4

    const-string v6, "GETTING_NONCE_FROM_NQ"

    invoke-direct {v0, v6, v5}, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;->e:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    .line 14
    new-instance v0, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    const/4 v6, 0x5

    const-string v7, "ERROR_FAILED_NONCE_FROM_NQ"

    invoke-direct {v0, v7, v6}, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;->h:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    .line 15
    new-instance v0, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    const/4 v7, 0x6

    const-string v8, "RECEIVED_NONCE_FROM_NQ"

    invoke-direct {v0, v8, v7}, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;->j:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    .line 16
    new-instance v0, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    const/4 v8, 0x7

    const-string v9, "ERROR_RECEIVED_EMPTY_NONCE_FROM_NQ"

    invoke-direct {v0, v9, v8}, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;->f:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    .line 17
    new-instance v0, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    const/16 v9, 0x8

    const-string v10, "GETTING_METADATA_FROM_GOOGLE"

    invoke-direct {v0, v10, v9}, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;->g:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    .line 18
    new-instance v0, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    const/16 v10, 0x9

    const-string v11, "ERROR_FAILED_METADATA_FROM_GOOGLE"

    invoke-direct {v0, v11, v10}, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;->i:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    .line 19
    new-instance v0, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    const/16 v11, 0xa

    const-string v12, "ERROR_INTERNAL_ERROR_FROM_GOOGLE"

    invoke-direct {v0, v12, v11}, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;->m:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    .line 20
    new-instance v0, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    const/16 v12, 0xb

    const-string v13, "RECEIVED_METADATA_FROM_GOOGLE"

    invoke-direct {v0, v13, v12}, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;->l:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    .line 21
    new-instance v0, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    const/16 v13, 0xc

    const-string v14, "ERROR_RECEIVED_EMPTY_METADATA_FROM_GOOGLE"

    invoke-direct {v0, v14, v13}, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;->n:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    .line 22
    new-instance v0, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    const/16 v14, 0xd

    const-string v15, "VERIFICATION_IN_PROGRESS"

    invoke-direct {v0, v15, v14}, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;->o:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    .line 23
    new-instance v0, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    const/16 v15, 0xe

    const-string v14, "ERROR_FAILED_VERIFICATION"

    invoke-direct {v0, v14, v15}, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;->k:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    .line 24
    new-instance v0, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    const-string v14, "VERIFICATION_PASS"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15}, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;->r:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    .line 8
    sget-object v14, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;->d:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    aput-object v14, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;->c:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;->b:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;->a:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;->e:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;->h:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;->j:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;->f:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    aput-object v1, v0, v8

    sget-object v1, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;->g:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    aput-object v1, v0, v9

    sget-object v1, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;->i:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    aput-object v1, v0, v10

    sget-object v1, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;->m:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    aput-object v1, v0, v11

    sget-object v1, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;->l:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    aput-object v1, v0, v12

    sget-object v1, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;->n:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    aput-object v1, v0, v13

    sget-object v1, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;->o:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;->k:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;->r:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;->t:[Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;
    .locals 1

    .line 8
    const-class v0, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;
    .locals 1

    .line 8
    sget-object v0, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;->t:[Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetState;

    return-object v0
.end method
