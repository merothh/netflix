.class public final enum Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;
.super Ljava/lang/Enum;
.source "IVoip.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;

.field public static final enum CONNECTED:Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;

.field public static final enum CONNECTING:Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;

.field public static final enum ENDED:Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;

    const-string/jumbo v1, "CONNECTING"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;->CONNECTING:Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;

    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;

    const-string/jumbo v1, "CONNECTED"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;->CONNECTED:Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;

    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;

    const-string/jumbo v1, "ENDED"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;->ENDED:Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;->CONNECTING:Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;->CONNECTED:Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;->ENDED:Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;

    return-object v0
.end method
