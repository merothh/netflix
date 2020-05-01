.class public final enum Lcom/netflix/mediaclient/servicemgr/ExitPipAction;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/servicemgr/ExitPipAction;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/netflix/mediaclient/servicemgr/ExitPipAction;

.field public static final enum c:Lcom/netflix/mediaclient/servicemgr/ExitPipAction;

.field private static final synthetic e:[Lcom/netflix/mediaclient/servicemgr/ExitPipAction;


# instance fields
.field d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 8
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/ExitPipAction;

    const/4 v1, 0x0

    const-string v2, "CONTINUEPLAY"

    const-string v3, "continueplay"

    invoke-direct {v0, v2, v1, v3}, Lcom/netflix/mediaclient/servicemgr/ExitPipAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/ExitPipAction;->c:Lcom/netflix/mediaclient/servicemgr/ExitPipAction;

    .line 9
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/ExitPipAction;

    const/4 v2, 0x1

    const-string v3, "STOP"

    const-string v4, "endsession"

    invoke-direct {v0, v3, v2, v4}, Lcom/netflix/mediaclient/servicemgr/ExitPipAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/ExitPipAction;->b:Lcom/netflix/mediaclient/servicemgr/ExitPipAction;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/ExitPipAction;

    .line 7
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/ExitPipAction;->c:Lcom/netflix/mediaclient/servicemgr/ExitPipAction;

    aput-object v3, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ExitPipAction;->b:Lcom/netflix/mediaclient/servicemgr/ExitPipAction;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/ExitPipAction;->e:[Lcom/netflix/mediaclient/servicemgr/ExitPipAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput-object p3, p0, Lcom/netflix/mediaclient/servicemgr/ExitPipAction;->d:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/ExitPipAction;
    .locals 1

    .line 7
    const-class v0, Lcom/netflix/mediaclient/servicemgr/ExitPipAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/servicemgr/ExitPipAction;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/ExitPipAction;
    .locals 1

    .line 7
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/ExitPipAction;->e:[Lcom/netflix/mediaclient/servicemgr/ExitPipAction;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/ExitPipAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/ExitPipAction;

    return-object v0
.end method
