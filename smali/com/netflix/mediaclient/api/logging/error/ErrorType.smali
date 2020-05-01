.class public final enum Lcom/netflix/mediaclient/api/logging/error/ErrorType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/api/logging/error/ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

.field public static final enum b:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

.field public static final enum c:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

.field public static final enum d:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

.field public static final enum e:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

.field private static final synthetic j:[Lcom/netflix/mediaclient/api/logging/error/ErrorType;


# instance fields
.field private final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    new-instance v1, Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    const/4 v2, 0x0

    const-string v3, "FALCOR"

    const-string v4, "Falcor"

    .line 8
    invoke-direct {v1, v3, v2, v4}, Lcom/netflix/mediaclient/api/logging/error/ErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->b:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    const/4 v2, 0x1

    const-string v3, "FALCOR_SQLITE"

    const-string v4, "Falcor-sqlite"

    .line 9
    invoke-direct {v1, v3, v2, v4}, Lcom/netflix/mediaclient/api/logging/error/ErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->c:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    const-string v2, "UMA"

    const/4 v3, 0x2

    .line 10
    invoke-direct {v1, v2, v3, v2}, Lcom/netflix/mediaclient/api/logging/error/ErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->e:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    const/4 v2, 0x3

    const-string v3, "COMING_SOON"

    const-string v4, "ComingSoon"

    .line 11
    invoke-direct {v1, v3, v2, v4}, Lcom/netflix/mediaclient/api/logging/error/ErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->d:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    const/4 v2, 0x4

    const-string v3, "THREADING"

    const-string v4, "Threading"

    .line 12
    invoke-direct {v1, v3, v2, v4}, Lcom/netflix/mediaclient/api/logging/error/ErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->a:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->j:[Lcom/netflix/mediaclient/api/logging/error/ErrorType;

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

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->g:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/api/logging/error/ErrorType;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/api/logging/error/ErrorType;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->j:[Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/api/logging/error/ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->g:Ljava/lang/String;

    return-object v0
.end method
