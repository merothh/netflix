.class public final enum Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RegistryState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;

.field public static final enum b:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;

.field public static final enum c:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;

.field public static final enum d:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;

.field private static final synthetic e:[Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 115
    new-instance v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;

    const/4 v1, 0x0

    const-string v2, "NOT_READY"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;->b:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;

    .line 116
    new-instance v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;

    const/4 v2, 0x1

    const-string v3, "SUCCESS"

    invoke-direct {v0, v3, v2}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;->a:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;

    .line 117
    new-instance v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;

    const/4 v3, 0x2

    const-string v4, "STORAGE_ERROR"

    invoke-direct {v0, v4, v3}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;->d:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;

    .line 118
    new-instance v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;

    const/4 v4, 0x3

    const-string v5, "SQL_DB_ERROR"

    invoke-direct {v0, v5, v4}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;->c:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;

    .line 114
    sget-object v5, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;->b:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;

    aput-object v5, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;->a:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;->d:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;->c:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;->e:[Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 114
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;
    .locals 1

    .line 114
    const-class v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;
    .locals 1

    .line 114
    sget-object v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;->e:[Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;

    return-object v0
.end method
