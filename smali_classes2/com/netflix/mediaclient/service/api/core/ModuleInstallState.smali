.class public final enum Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;

.field public static final enum b:Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;

.field public static final enum c:Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;

.field public static final enum d:Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;

.field public static final enum e:Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;

.field public static final enum f:Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;

.field public static final enum g:Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;

.field public static final enum h:Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;

.field public static final enum i:Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;

.field public static final enum j:Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;

.field private static final synthetic o:[Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;


# instance fields
.field private final k:Ljava/lang/String;

.field private final n:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 13
    new-instance v0, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;

    const/4 v1, 0x0

    const-string v2, "STATE_FAILED"

    const-string v3, "unknown"

    invoke-direct {v0, v2, v1, v1, v3}, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;->b:Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;

    .line 14
    new-instance v0, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;

    const/4 v2, 0x1

    const-string v3, "STATE_PENDING"

    const-string v4, "pending"

    invoke-direct {v0, v3, v2, v2, v4}, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;->c:Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;

    .line 15
    new-instance v0, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;

    const/16 v3, 0x8

    const/4 v4, 0x2

    const-string v5, "STATE_USER_CONFIRMATION"

    const-string v6, "userConfirmation"

    invoke-direct {v0, v5, v4, v3, v6}, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;->e:Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;

    .line 16
    new-instance v0, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;

    const/4 v5, 0x3

    const-string v6, "STATE_DOWNLOADING"

    const-string v7, "downloading"

    invoke-direct {v0, v6, v5, v4, v7}, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;->a:Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;

    .line 17
    new-instance v0, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;

    const/4 v6, 0x4

    const-string v7, "STATE_DOWNLOADED"

    const-string v8, "downloaded"

    invoke-direct {v0, v7, v6, v5, v8}, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;->d:Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;

    .line 18
    new-instance v0, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;

    const/4 v7, 0x5

    const-string v8, "STATE_INSTALLING"

    const-string v9, "installing"

    invoke-direct {v0, v8, v7, v6, v9}, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;->g:Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;

    .line 19
    new-instance v0, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;

    const/4 v8, 0x6

    const-string v9, "STATE_INSTALLED"

    const-string v10, "installed"

    invoke-direct {v0, v9, v8, v7, v10}, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;->h:Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;

    .line 20
    new-instance v0, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;

    const/16 v9, 0x9

    const/4 v10, 0x7

    const-string v11, "STATE_CANCELING"

    const-string v12, "failed"

    invoke-direct {v0, v11, v10, v9, v12}, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;->j:Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;

    .line 21
    new-instance v0, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;

    const-string v11, "STATE_CANCELED"

    const-string v12, "cancelled"

    invoke-direct {v0, v11, v3, v10, v12}, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;->i:Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;

    .line 24
    new-instance v0, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;

    const-string v11, "STATE_ON_ERROR"

    const/16 v12, 0x6b

    const-string v13, "onError"

    invoke-direct {v0, v11, v9, v12, v13}, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;->f:Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;

    .line 11
    sget-object v11, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;->b:Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;

    aput-object v11, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;->c:Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;->e:Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;->a:Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;->d:Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;->g:Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;->h:Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;

    aput-object v1, v0, v8

    sget-object v1, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;->j:Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;

    aput-object v1, v0, v10

    sget-object v1, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;->i:Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;->f:Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;

    aput-object v1, v0, v9

    sput-object v0, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;->o:[Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput p3, p0, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;->n:I

    .line 36
    iput-object p4, p0, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;->k:Ljava/lang/String;

    return-void
.end method

.method private c()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;->n:I

    return v0
.end method

.method public static e(I)Ljava/lang/String;
    .locals 5

    .line 40
    invoke-static {}, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;->values()[Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 41
    invoke-direct {v3}, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;->c()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 42
    iget-object p0, v3, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;->k:Ljava/lang/String;

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;
    .locals 1

    .line 11
    const-class v0, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;
    .locals 1

    .line 11
    sget-object v0, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;->o:[Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;->k:Ljava/lang/String;

    return-object v0
.end method
