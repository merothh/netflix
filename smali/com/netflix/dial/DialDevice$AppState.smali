.class public final enum Lcom/netflix/dial/DialDevice$AppState;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/dial/DialDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/dial/DialDevice$AppState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/dial/DialDevice$AppState;

.field public static final enum b:Lcom/netflix/dial/DialDevice$AppState;

.field public static final enum d:Lcom/netflix/dial/DialDevice$AppState;

.field public static final enum e:Lcom/netflix/dial/DialDevice$AppState;

.field private static final synthetic j:[Lcom/netflix/dial/DialDevice$AppState;


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 27
    new-instance v0, Lcom/netflix/dial/DialDevice$AppState;

    const/4 v1, 0x0

    const-string v2, "Running"

    const-string v3, "running"

    invoke-direct {v0, v2, v1, v3}, Lcom/netflix/dial/DialDevice$AppState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/dial/DialDevice$AppState;->e:Lcom/netflix/dial/DialDevice$AppState;

    .line 28
    new-instance v0, Lcom/netflix/dial/DialDevice$AppState;

    const/4 v2, 0x1

    const-string v3, "Stopped"

    const-string v4, "stopped"

    invoke-direct {v0, v3, v2, v4}, Lcom/netflix/dial/DialDevice$AppState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/dial/DialDevice$AppState;->d:Lcom/netflix/dial/DialDevice$AppState;

    .line 29
    new-instance v0, Lcom/netflix/dial/DialDevice$AppState;

    const/4 v3, 0x2

    const-string v4, "Hidden"

    const-string v5, "hidden"

    invoke-direct {v0, v4, v3, v5}, Lcom/netflix/dial/DialDevice$AppState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/dial/DialDevice$AppState;->a:Lcom/netflix/dial/DialDevice$AppState;

    .line 30
    new-instance v0, Lcom/netflix/dial/DialDevice$AppState;

    const/4 v4, 0x3

    const-string v5, "Unknown"

    const-string v6, "unknown"

    invoke-direct {v0, v5, v4, v6}, Lcom/netflix/dial/DialDevice$AppState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/dial/DialDevice$AppState;->b:Lcom/netflix/dial/DialDevice$AppState;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/dial/DialDevice$AppState;

    .line 26
    sget-object v5, Lcom/netflix/dial/DialDevice$AppState;->e:Lcom/netflix/dial/DialDevice$AppState;

    aput-object v5, v0, v1

    sget-object v1, Lcom/netflix/dial/DialDevice$AppState;->d:Lcom/netflix/dial/DialDevice$AppState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/dial/DialDevice$AppState;->a:Lcom/netflix/dial/DialDevice$AppState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/dial/DialDevice$AppState;->b:Lcom/netflix/dial/DialDevice$AppState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/dial/DialDevice$AppState;->j:[Lcom/netflix/dial/DialDevice$AppState;

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

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput-object p3, p0, Lcom/netflix/dial/DialDevice$AppState;->c:Ljava/lang/String;

    return-void
.end method

.method public static e(Ljava/lang/String;)Lcom/netflix/dial/DialDevice$AppState;
    .locals 1

    .line 43
    sget-object v0, Lcom/netflix/dial/DialDevice$AppState;->e:Lcom/netflix/dial/DialDevice$AppState;

    invoke-virtual {v0}, Lcom/netflix/dial/DialDevice$AppState;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/netflix/dial/DialDevice$AppState;->e:Lcom/netflix/dial/DialDevice$AppState;

    return-object p0

    .line 44
    :cond_0
    sget-object v0, Lcom/netflix/dial/DialDevice$AppState;->d:Lcom/netflix/dial/DialDevice$AppState;

    invoke-virtual {v0}, Lcom/netflix/dial/DialDevice$AppState;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/netflix/dial/DialDevice$AppState;->d:Lcom/netflix/dial/DialDevice$AppState;

    return-object p0

    .line 45
    :cond_1
    sget-object v0, Lcom/netflix/dial/DialDevice$AppState;->a:Lcom/netflix/dial/DialDevice$AppState;

    invoke-virtual {v0}, Lcom/netflix/dial/DialDevice$AppState;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/netflix/dial/DialDevice$AppState;->a:Lcom/netflix/dial/DialDevice$AppState;

    return-object p0

    .line 47
    :cond_2
    sget-object p0, Lcom/netflix/dial/DialDevice$AppState;->b:Lcom/netflix/dial/DialDevice$AppState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/dial/DialDevice$AppState;
    .locals 1

    .line 26
    const-class v0, Lcom/netflix/dial/DialDevice$AppState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/dial/DialDevice$AppState;

    return-object p0
.end method

.method public static values()[Lcom/netflix/dial/DialDevice$AppState;
    .locals 1

    .line 26
    sget-object v0, Lcom/netflix/dial/DialDevice$AppState;->j:[Lcom/netflix/dial/DialDevice$AppState;

    invoke-virtual {v0}, [Lcom/netflix/dial/DialDevice$AppState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/dial/DialDevice$AppState;

    return-object v0
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/netflix/dial/DialDevice$AppState;->c:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/netflix/dial/DialDevice$AppState;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
