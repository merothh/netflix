.class public final enum Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;

.field public static final enum b:Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;

.field public static final enum c:Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;

.field public static final enum d:Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;

.field public static final enum e:Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;

.field private static final synthetic i:[Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;


# instance fields
.field private final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 431
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;

    const/4 v1, 0x0

    const-string v2, "COLD"

    const-string v3, "cold"

    invoke-direct {v0, v2, v1, v3}, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;->e:Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;

    .line 432
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;

    const/4 v2, 0x1

    const-string v3, "WARM"

    const-string v4, "warm"

    invoke-direct {v0, v3, v2, v4}, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;->b:Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;

    .line 433
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;

    const/4 v3, 0x2

    const-string v4, "NETWORKCHANGE"

    const-string v5, "networkchange"

    invoke-direct {v0, v4, v3, v5}, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;->a:Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;

    .line 434
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;

    const/4 v4, 0x3

    const-string v5, "BACKGROUND"

    const-string v6, "background"

    invoke-direct {v0, v5, v4, v6}, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;->d:Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;

    .line 435
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;

    const/4 v5, 0x4

    const-string v6, "CONFIGCHANGE"

    const-string v7, "configchange"

    invoke-direct {v0, v6, v5, v7}, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;->c:Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;

    .line 430
    sget-object v6, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;->e:Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;

    aput-object v6, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;->b:Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;->a:Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;->d:Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;->c:Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;->i:[Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;

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

    .line 439
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 440
    iput-object p3, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;->h:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;
    .locals 1

    .line 430
    const-class v0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;
    .locals 1

    .line 430
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;->i:[Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;->h:Ljava/lang/String;

    return-object v0
.end method
