.class public final enum Lcom/netflix/mediaclient/service/player/PlayerTestInterface$StreamSelectorType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/player/PlayerTestInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StreamSelectorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/player/PlayerTestInterface$StreamSelectorType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/service/player/PlayerTestInterface$StreamSelectorType;

.field public static final enum b:Lcom/netflix/mediaclient/service/player/PlayerTestInterface$StreamSelectorType;

.field public static final enum c:Lcom/netflix/mediaclient/service/player/PlayerTestInterface$StreamSelectorType;

.field public static final enum d:Lcom/netflix/mediaclient/service/player/PlayerTestInterface$StreamSelectorType;

.field public static final enum e:Lcom/netflix/mediaclient/service/player/PlayerTestInterface$StreamSelectorType;

.field private static final synthetic j:[Lcom/netflix/mediaclient/service/player/PlayerTestInterface$StreamSelectorType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 7
    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerTestInterface$StreamSelectorType;

    const/4 v1, 0x0

    const-string v2, "DEFAULT"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/service/player/PlayerTestInterface$StreamSelectorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/PlayerTestInterface$StreamSelectorType;->e:Lcom/netflix/mediaclient/service/player/PlayerTestInterface$StreamSelectorType;

    .line 8
    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerTestInterface$StreamSelectorType;

    const/4 v2, 0x1

    const-string v3, "RAMP_DOWN_BITRATE"

    invoke-direct {v0, v3, v2}, Lcom/netflix/mediaclient/service/player/PlayerTestInterface$StreamSelectorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/PlayerTestInterface$StreamSelectorType;->b:Lcom/netflix/mediaclient/service/player/PlayerTestInterface$StreamSelectorType;

    .line 9
    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerTestInterface$StreamSelectorType;

    const/4 v3, 0x2

    const-string v4, "RAMP_UP_BITRATE"

    invoke-direct {v0, v4, v3}, Lcom/netflix/mediaclient/service/player/PlayerTestInterface$StreamSelectorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/PlayerTestInterface$StreamSelectorType;->c:Lcom/netflix/mediaclient/service/player/PlayerTestInterface$StreamSelectorType;

    .line 10
    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerTestInterface$StreamSelectorType;

    const/4 v4, 0x3

    const-string v5, "RAMP_UP_DOWN_BITRATE"

    invoke-direct {v0, v5, v4}, Lcom/netflix/mediaclient/service/player/PlayerTestInterface$StreamSelectorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/PlayerTestInterface$StreamSelectorType;->d:Lcom/netflix/mediaclient/service/player/PlayerTestInterface$StreamSelectorType;

    .line 11
    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerTestInterface$StreamSelectorType;

    const/4 v5, 0x4

    const-string v6, "RANDOM"

    invoke-direct {v0, v6, v5}, Lcom/netflix/mediaclient/service/player/PlayerTestInterface$StreamSelectorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/PlayerTestInterface$StreamSelectorType;->a:Lcom/netflix/mediaclient/service/player/PlayerTestInterface$StreamSelectorType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/netflix/mediaclient/service/player/PlayerTestInterface$StreamSelectorType;

    .line 6
    sget-object v6, Lcom/netflix/mediaclient/service/player/PlayerTestInterface$StreamSelectorType;->e:Lcom/netflix/mediaclient/service/player/PlayerTestInterface$StreamSelectorType;

    aput-object v6, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/service/player/PlayerTestInterface$StreamSelectorType;->b:Lcom/netflix/mediaclient/service/player/PlayerTestInterface$StreamSelectorType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/player/PlayerTestInterface$StreamSelectorType;->c:Lcom/netflix/mediaclient/service/player/PlayerTestInterface$StreamSelectorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/player/PlayerTestInterface$StreamSelectorType;->d:Lcom/netflix/mediaclient/service/player/PlayerTestInterface$StreamSelectorType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/player/PlayerTestInterface$StreamSelectorType;->a:Lcom/netflix/mediaclient/service/player/PlayerTestInterface$StreamSelectorType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/netflix/mediaclient/service/player/PlayerTestInterface$StreamSelectorType;->j:[Lcom/netflix/mediaclient/service/player/PlayerTestInterface$StreamSelectorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/PlayerTestInterface$StreamSelectorType;
    .locals 1

    .line 6
    const-class v0, Lcom/netflix/mediaclient/service/player/PlayerTestInterface$StreamSelectorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/player/PlayerTestInterface$StreamSelectorType;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/player/PlayerTestInterface$StreamSelectorType;
    .locals 1

    .line 6
    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerTestInterface$StreamSelectorType;->j:[Lcom/netflix/mediaclient/service/player/PlayerTestInterface$StreamSelectorType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/player/PlayerTestInterface$StreamSelectorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/player/PlayerTestInterface$StreamSelectorType;

    return-object v0
.end method
