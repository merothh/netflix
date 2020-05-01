.class public final enum Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/pservice/PDiskData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

.field public static final enum b:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

.field public static final enum c:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

.field public static final enum d:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

.field public static final enum e:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

.field private static final synthetic i:[Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;


# instance fields
.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 123
    new-instance v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    const/4 v1, 0x0

    const-string v2, "HORIZONTAL_ART"

    const-string v3, "horizontalArt"

    invoke-direct {v0, v2, v1, v3}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->b:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    .line 124
    new-instance v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    const/4 v2, 0x1

    const-string v3, "TRICKPLAY"

    const-string v4, "trickplay"

    invoke-direct {v0, v3, v2, v4}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->d:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    .line 125
    new-instance v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    const/4 v3, 0x2

    const-string v4, "TITLE_CARD"

    const-string v5, "titleCard"

    invoke-direct {v0, v4, v3, v5}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->e:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    .line 126
    new-instance v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    const/4 v4, 0x3

    const-string v5, "BOXART"

    const-string v6, "boxart"

    invoke-direct {v0, v5, v4, v6}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->c:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    .line 127
    new-instance v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    const/4 v5, 0x4

    const-string v6, "UNKNOWN"

    const-string v7, ""

    invoke-direct {v0, v6, v5, v7}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->a:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    .line 122
    sget-object v6, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->b:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    aput-object v6, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->d:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->e:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->c:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->a:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->i:[Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

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

    .line 131
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 132
    iput-object p3, p0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->h:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;
    .locals 1

    .line 122
    const-class v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;
    .locals 1

    .line 122
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->i:[Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    return-object v0
.end method
