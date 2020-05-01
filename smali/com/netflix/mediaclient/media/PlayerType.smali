.class public final enum Lcom/netflix/mediaclient/media/PlayerType;
.super Ljava/lang/Enum;
.source "PlayerType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/media/PlayerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/media/PlayerType;

.field public static final enum device10:Lcom/netflix/mediaclient/media/PlayerType;

.field public static final enum device11:Lcom/netflix/mediaclient/media/PlayerType;

.field public static final enum device12:Lcom/netflix/mediaclient/media/PlayerType;

.field public static final enum device7:Lcom/netflix/mediaclient/media/PlayerType;

.field public static final enum device8:Lcom/netflix/mediaclient/media/PlayerType;


# instance fields
.field private description:Ljava/lang/String;

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/netflix/mediaclient/media/PlayerType;

    const-string/jumbo v1, "device7"

    const/4 v2, 0x7

    const-string/jumbo v3, "XAL"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/netflix/mediaclient/media/PlayerType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/media/PlayerType;->device7:Lcom/netflix/mediaclient/media/PlayerType;

    new-instance v0, Lcom/netflix/mediaclient/media/PlayerType;

    const-string/jumbo v1, "device8"

    const/16 v2, 0x8

    const-string/jumbo v3, "XAL Main Profile"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/netflix/mediaclient/media/PlayerType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/media/PlayerType;->device8:Lcom/netflix/mediaclient/media/PlayerType;

    new-instance v0, Lcom/netflix/mediaclient/media/PlayerType;

    const-string/jumbo v1, "device10"

    const/16 v2, 0xa

    const-string/jumbo v3, "JPlayer"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/netflix/mediaclient/media/PlayerType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/media/PlayerType;->device10:Lcom/netflix/mediaclient/media/PlayerType;

    new-instance v0, Lcom/netflix/mediaclient/media/PlayerType;

    const-string/jumbo v1, "device11"

    const/16 v2, 0xb

    const-string/jumbo v3, "JPlayer Base"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/netflix/mediaclient/media/PlayerType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/media/PlayerType;->device11:Lcom/netflix/mediaclient/media/PlayerType;

    new-instance v0, Lcom/netflix/mediaclient/media/PlayerType;

    const-string/jumbo v1, "device12"

    const/16 v2, 0xc

    const-string/jumbo v3, "JPlayer2"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/netflix/mediaclient/media/PlayerType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/media/PlayerType;->device12:Lcom/netflix/mediaclient/media/PlayerType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/netflix/mediaclient/media/PlayerType;

    sget-object v1, Lcom/netflix/mediaclient/media/PlayerType;->device7:Lcom/netflix/mediaclient/media/PlayerType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/media/PlayerType;->device8:Lcom/netflix/mediaclient/media/PlayerType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/media/PlayerType;->device10:Lcom/netflix/mediaclient/media/PlayerType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/media/PlayerType;->device11:Lcom/netflix/mediaclient/media/PlayerType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/media/PlayerType;->device12:Lcom/netflix/mediaclient/media/PlayerType;

    aput-object v1, v0, v8

    sput-object v0, Lcom/netflix/mediaclient/media/PlayerType;->$VALUES:[Lcom/netflix/mediaclient/media/PlayerType;

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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/netflix/mediaclient/media/PlayerType;->value:I

    iput-object p4, p0, Lcom/netflix/mediaclient/media/PlayerType;->description:Ljava/lang/String;

    return-void
.end method

.method public static mapPlayerTypeForLogging(Lcom/netflix/mediaclient/media/PlayerType;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/media/PlayerType;->device7:Lcom/netflix/mediaclient/media/PlayerType;

    if-ne p0, v0, :cond_0

    const-string/jumbo v0, "XAL"

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/media/PlayerType;->device8:Lcom/netflix/mediaclient/media/PlayerType;

    if-ne p0, v0, :cond_1

    const-string/jumbo v0, "XALMP"

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/media/PlayerType;->device10:Lcom/netflix/mediaclient/media/PlayerType;

    if-ne p0, v0, :cond_2

    const-string/jumbo v0, "JPLAYER"

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/media/PlayerType;->device11:Lcom/netflix/mediaclient/media/PlayerType;

    if-ne p0, v0, :cond_3

    const-string/jumbo v0, "JPLAYERBASE"

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/media/PlayerType;->device12:Lcom/netflix/mediaclient/media/PlayerType;

    if-ne p0, v0, :cond_4

    const-string/jumbo v0, "JPLAYER2"

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "N/A"

    goto :goto_0
.end method

.method public static toPlayerType(I)Lcom/netflix/mediaclient/media/PlayerType;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/media/PlayerType;->values()[Lcom/netflix/mediaclient/media/PlayerType;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/media/PlayerType;->values()[Lcom/netflix/mediaclient/media/PlayerType;

    move-result-object v1

    aget-object v1, v1, v0

    iget v1, v1, Lcom/netflix/mediaclient/media/PlayerType;->value:I

    if-ne v1, p0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/media/PlayerType;->values()[Lcom/netflix/mediaclient/media/PlayerType;

    move-result-object v1

    aget-object v0, v1, v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/media/PlayerType;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/media/PlayerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/media/PlayerType;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/media/PlayerType;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/media/PlayerType;->$VALUES:[Lcom/netflix/mediaclient/media/PlayerType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/media/PlayerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/media/PlayerType;

    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/PlayerType;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/media/PlayerType;->value:I

    return v0
.end method
