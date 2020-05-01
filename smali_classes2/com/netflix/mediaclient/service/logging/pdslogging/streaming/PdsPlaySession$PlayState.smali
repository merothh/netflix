.class final enum Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PlayState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;

.field public static final enum b:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;

.field private static final synthetic c:[Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;

.field public static final enum d:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;

.field public static final enum e:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 110
    new-instance v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;

    const/4 v1, 0x0

    const-string v2, "STARTING"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;->e:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;

    .line 111
    new-instance v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;

    const/4 v2, 0x1

    const-string v3, "PLAYING"

    invoke-direct {v0, v3, v2}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;->a:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;

    .line 112
    new-instance v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;

    const/4 v3, 0x2

    const-string v4, "PAUSED"

    invoke-direct {v0, v4, v3}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;->b:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;

    .line 113
    new-instance v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;

    const/4 v4, 0x3

    const-string v5, "STOPPED"

    invoke-direct {v0, v5, v4}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;->d:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;

    .line 109
    sget-object v5, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;->e:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;

    aput-object v5, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;->a:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;->b:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;->d:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;->c:[Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;
    .locals 1

    .line 109
    const-class v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;
    .locals 1

    .line 109
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;->c:[Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;

    return-object v0
.end method
