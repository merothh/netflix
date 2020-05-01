.class public final enum Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/servicemgr/LogArguments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

.field public static final enum b:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

.field public static final enum c:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

.field public static final enum d:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

.field public static final enum e:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

.field public static final enum f:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

.field private static final synthetic g:[Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

.field public static final enum i:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;


# instance fields
.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 22
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    const/4 v1, 0x0

    const-string v2, "CONSOLE"

    const/4 v3, -0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->b:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    .line 23
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    const/4 v2, 0x1

    const-string v3, "TRACE"

    const/16 v4, 0xa

    invoke-direct {v0, v3, v2, v4}, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->d:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    .line 24
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    const/4 v3, 0x2

    const-string v4, "DEBUG"

    const/16 v5, 0x14

    invoke-direct {v0, v4, v3, v5}, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->c:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    .line 25
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    const/4 v4, 0x3

    const-string v5, "INFO"

    const/16 v6, 0x1e

    invoke-direct {v0, v5, v4, v6}, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->a:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    .line 26
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    const/4 v5, 0x4

    const-string v6, "WARN"

    const/16 v7, 0x28

    invoke-direct {v0, v6, v5, v7}, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->e:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    .line 27
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    const/4 v6, 0x5

    const-string v7, "ERROR"

    const/16 v8, 0x32

    invoke-direct {v0, v7, v6, v8}, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->f:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    .line 28
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    const/4 v7, 0x6

    const-string v8, "FATAL"

    const/16 v9, 0x3c

    invoke-direct {v0, v8, v7, v9}, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->i:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    .line 21
    sget-object v8, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->b:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    aput-object v8, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->d:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->c:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->a:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->e:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->f:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->i:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    aput-object v1, v0, v7

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->g:[Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput p3, p0, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->h:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;
    .locals 1

    .line 21
    const-class v0, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;
    .locals 1

    .line 21
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->g:[Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    return-object v0
.end method


# virtual methods
.method public e()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->h:I

    return v0
.end method
