.class public final enum Lcom/netflix/mediaclient/service/net/LogMobileType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/net/LogMobileType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/service/net/LogMobileType;

.field public static final enum b:Lcom/netflix/mediaclient/service/net/LogMobileType;

.field public static final enum c:Lcom/netflix/mediaclient/service/net/LogMobileType;

.field public static final enum d:Lcom/netflix/mediaclient/service/net/LogMobileType;

.field public static final enum e:Lcom/netflix/mediaclient/service/net/LogMobileType;

.field public static final enum f:Lcom/netflix/mediaclient/service/net/LogMobileType;

.field public static final enum i:Lcom/netflix/mediaclient/service/net/LogMobileType;

.field private static final synthetic j:[Lcom/netflix/mediaclient/service/net/LogMobileType;


# instance fields
.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 28
    new-instance v0, Lcom/netflix/mediaclient/service/net/LogMobileType;

    const/4 v1, 0x0

    const-string v2, "_2G"

    const-string v3, "2g"

    invoke-direct {v0, v2, v1, v3}, Lcom/netflix/mediaclient/service/net/LogMobileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/net/LogMobileType;->a:Lcom/netflix/mediaclient/service/net/LogMobileType;

    .line 29
    new-instance v0, Lcom/netflix/mediaclient/service/net/LogMobileType;

    const/4 v2, 0x1

    const-string v3, "_3G"

    const-string v4, "3g"

    invoke-direct {v0, v3, v2, v4}, Lcom/netflix/mediaclient/service/net/LogMobileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/net/LogMobileType;->d:Lcom/netflix/mediaclient/service/net/LogMobileType;

    .line 30
    new-instance v0, Lcom/netflix/mediaclient/service/net/LogMobileType;

    const/4 v3, 0x2

    const-string v4, "_4G"

    const-string v5, "4g"

    invoke-direct {v0, v4, v3, v5}, Lcom/netflix/mediaclient/service/net/LogMobileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/net/LogMobileType;->c:Lcom/netflix/mediaclient/service/net/LogMobileType;

    .line 31
    new-instance v0, Lcom/netflix/mediaclient/service/net/LogMobileType;

    const/4 v4, 0x3

    const-string v5, "WIFI"

    const-string v6, "wifi"

    invoke-direct {v0, v5, v4, v6}, Lcom/netflix/mediaclient/service/net/LogMobileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/net/LogMobileType;->e:Lcom/netflix/mediaclient/service/net/LogMobileType;

    .line 32
    new-instance v0, Lcom/netflix/mediaclient/service/net/LogMobileType;

    const/4 v5, 0x4

    const-string v6, "Ethernet"

    const-string v7, "ethernet"

    invoke-direct {v0, v6, v5, v7}, Lcom/netflix/mediaclient/service/net/LogMobileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/net/LogMobileType;->b:Lcom/netflix/mediaclient/service/net/LogMobileType;

    .line 33
    new-instance v0, Lcom/netflix/mediaclient/service/net/LogMobileType;

    const/4 v6, 0x5

    const-string v7, "MOBILE"

    const-string v8, "mobile"

    invoke-direct {v0, v7, v6, v8}, Lcom/netflix/mediaclient/service/net/LogMobileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/net/LogMobileType;->f:Lcom/netflix/mediaclient/service/net/LogMobileType;

    .line 34
    new-instance v0, Lcom/netflix/mediaclient/service/net/LogMobileType;

    const/4 v7, 0x6

    const-string v8, "UKNOWN"

    const-string v9, "uknown"

    invoke-direct {v0, v8, v7, v9}, Lcom/netflix/mediaclient/service/net/LogMobileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/net/LogMobileType;->i:Lcom/netflix/mediaclient/service/net/LogMobileType;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/netflix/mediaclient/service/net/LogMobileType;

    .line 26
    sget-object v8, Lcom/netflix/mediaclient/service/net/LogMobileType;->a:Lcom/netflix/mediaclient/service/net/LogMobileType;

    aput-object v8, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/service/net/LogMobileType;->d:Lcom/netflix/mediaclient/service/net/LogMobileType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/net/LogMobileType;->c:Lcom/netflix/mediaclient/service/net/LogMobileType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/net/LogMobileType;->e:Lcom/netflix/mediaclient/service/net/LogMobileType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/net/LogMobileType;->b:Lcom/netflix/mediaclient/service/net/LogMobileType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/service/net/LogMobileType;->f:Lcom/netflix/mediaclient/service/net/LogMobileType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/service/net/LogMobileType;->i:Lcom/netflix/mediaclient/service/net/LogMobileType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/netflix/mediaclient/service/net/LogMobileType;->j:[Lcom/netflix/mediaclient/service/net/LogMobileType;

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

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput-object p3, p0, Lcom/netflix/mediaclient/service/net/LogMobileType;->h:Ljava/lang/String;

    return-void
.end method

.method public static b(Landroid/net/NetworkInfo;)Lcom/netflix/mediaclient/service/net/LogMobileType;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 98
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 99
    sget-object p0, Lcom/netflix/mediaclient/service/net/LogMobileType;->c:Lcom/netflix/mediaclient/service/net/LogMobileType;

    return-object p0

    .line 102
    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 103
    sget-object p0, Lcom/netflix/mediaclient/service/net/LogMobileType;->e:Lcom/netflix/mediaclient/service/net/LogMobileType;

    return-object p0

    .line 106
    :cond_2
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    .line 107
    sget-object p0, Lcom/netflix/mediaclient/service/net/LogMobileType;->b:Lcom/netflix/mediaclient/service/net/LogMobileType;

    return-object p0

    .line 110
    :cond_3
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    invoke-static {p0}, Lcom/netflix/mediaclient/service/net/NetworkType;->d(I)Lcom/netflix/mediaclient/service/net/NetworkType;

    move-result-object p0

    .line 114
    invoke-static {p0}, Lcom/netflix/mediaclient/service/net/LogMobileType;->b(Lcom/netflix/mediaclient/service/net/NetworkType;)Lcom/netflix/mediaclient/service/net/LogMobileType;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lcom/netflix/mediaclient/service/net/NetworkType;)Lcom/netflix/mediaclient/service/net/LogMobileType;
    .locals 1

    if-nez p0, :cond_0

    .line 70
    sget-object p0, Lcom/netflix/mediaclient/service/net/LogMobileType;->i:Lcom/netflix/mediaclient/service/net/LogMobileType;

    return-object p0

    .line 73
    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/service/net/NetworkType;->b(Lcom/netflix/mediaclient/service/net/NetworkType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    sget-object p0, Lcom/netflix/mediaclient/service/net/LogMobileType;->a:Lcom/netflix/mediaclient/service/net/LogMobileType;

    return-object p0

    .line 75
    :cond_1
    invoke-static {p0}, Lcom/netflix/mediaclient/service/net/NetworkType;->e(Lcom/netflix/mediaclient/service/net/NetworkType;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    sget-object p0, Lcom/netflix/mediaclient/service/net/LogMobileType;->d:Lcom/netflix/mediaclient/service/net/LogMobileType;

    return-object p0

    .line 77
    :cond_2
    invoke-static {p0}, Lcom/netflix/mediaclient/service/net/NetworkType;->c(Lcom/netflix/mediaclient/service/net/NetworkType;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 78
    sget-object p0, Lcom/netflix/mediaclient/service/net/LogMobileType;->c:Lcom/netflix/mediaclient/service/net/LogMobileType;

    return-object p0

    .line 79
    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->b:Lcom/netflix/mediaclient/service/net/NetworkType;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/net/NetworkType;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 80
    sget-object p0, Lcom/netflix/mediaclient/service/net/LogMobileType;->f:Lcom/netflix/mediaclient/service/net/LogMobileType;

    return-object p0

    .line 83
    :cond_4
    sget-object p0, Lcom/netflix/mediaclient/service/net/LogMobileType;->i:Lcom/netflix/mediaclient/service/net/LogMobileType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/net/LogMobileType;
    .locals 1

    .line 26
    const-class v0, Lcom/netflix/mediaclient/service/net/LogMobileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/net/LogMobileType;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/net/LogMobileType;
    .locals 1

    .line 26
    sget-object v0, Lcom/netflix/mediaclient/service/net/LogMobileType;->j:[Lcom/netflix/mediaclient/service/net/LogMobileType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/net/LogMobileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/net/LogMobileType;

    return-object v0
.end method
