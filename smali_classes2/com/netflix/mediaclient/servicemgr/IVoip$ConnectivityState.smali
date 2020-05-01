.class public final enum Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/servicemgr/IVoip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectivityState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

.field public static final enum b:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

.field private static final synthetic c:[Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

.field public static final enum d:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

.field public static final enum e:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 251
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    const/4 v1, 0x0

    const-string v2, "NO_CONNECTION"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;->d:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    .line 252
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    const/4 v2, 0x1

    const-string v3, "RED"

    invoke-direct {v0, v3, v2}, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;->a:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    .line 253
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    const/4 v3, 0x2

    const-string v4, "YELLOW"

    invoke-direct {v0, v4, v3}, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;->b:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    .line 254
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    const/4 v4, 0x3

    const-string v5, "GREEN"

    invoke-direct {v0, v5, v4}, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;->e:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    .line 250
    sget-object v5, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;->d:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    aput-object v5, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;->a:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;->b:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;->e:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;->c:[Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 250
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;
    .locals 1

    .line 250
    const-class v0, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;
    .locals 1

    .line 250
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;->c:[Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    return-object v0
.end method
