.class public final enum Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/servicemgr/IPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InAppWidevineInstallationState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;

.field public static final enum b:Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;

.field public static final enum c:Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;

.field public static final enum d:Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;

.field public static final enum e:Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;

.field public static final enum f:Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;

.field private static final synthetic g:[Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;

.field public static final enum h:Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;

.field public static final enum j:Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 177
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;

    const/4 v1, 0x0

    const-string v2, "PRE_INSTALLED"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;->b:Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;

    .line 178
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;

    const/4 v2, 0x1

    const-string v3, "STARTED"

    invoke-direct {v0, v3, v2}, Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;->d:Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;

    .line 179
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;

    const/4 v3, 0x2

    const-string v4, "FAILED"

    invoke-direct {v0, v4, v3}, Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;->a:Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;

    .line 180
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;

    const/4 v4, 0x3

    const-string v5, "INSTALLED"

    invoke-direct {v0, v5, v4}, Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;->c:Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;

    .line 181
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;

    const/4 v5, 0x4

    const-string v6, "CANCELED"

    invoke-direct {v0, v6, v5}, Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;->e:Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;

    .line 182
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;

    const/4 v6, 0x5

    const-string v7, "NOT_SUPPORTED"

    invoke-direct {v0, v7, v6}, Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;->f:Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;

    .line 183
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;

    const/4 v7, 0x6

    const-string v8, "NOT_INSTALLED"

    invoke-direct {v0, v8, v7}, Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;->j:Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;

    .line 184
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;

    const/4 v8, 0x7

    const-string v9, "UNKNOWN"

    invoke-direct {v0, v9, v8}, Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;->h:Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;

    .line 176
    sget-object v9, Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;->b:Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;

    aput-object v9, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;->d:Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;->a:Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;->c:Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;->e:Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;->f:Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;->j:Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;->h:Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;

    aput-object v1, v0, v8

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;->g:[Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 176
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;
    .locals 1

    .line 176
    const-class v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;
    .locals 1

    .line 176
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;->g:[Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;

    return-object v0
.end method
