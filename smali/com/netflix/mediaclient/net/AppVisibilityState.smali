.class final enum Lcom/netflix/mediaclient/net/AppVisibilityState;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/net/AppVisibilityState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/netflix/mediaclient/net/AppVisibilityState;

.field private static final synthetic c:[Lcom/netflix/mediaclient/net/AppVisibilityState;

.field public static final enum d:Lcom/netflix/mediaclient/net/AppVisibilityState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 4
    new-instance v0, Lcom/netflix/mediaclient/net/AppVisibilityState;

    const/4 v1, 0x0

    const-string v2, "FOREGROUND"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/net/AppVisibilityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/net/AppVisibilityState;->d:Lcom/netflix/mediaclient/net/AppVisibilityState;

    .line 5
    new-instance v0, Lcom/netflix/mediaclient/net/AppVisibilityState;

    const/4 v2, 0x1

    const-string v3, "BACKGROUND"

    invoke-direct {v0, v3, v2}, Lcom/netflix/mediaclient/net/AppVisibilityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/net/AppVisibilityState;->b:Lcom/netflix/mediaclient/net/AppVisibilityState;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/mediaclient/net/AppVisibilityState;

    .line 3
    sget-object v3, Lcom/netflix/mediaclient/net/AppVisibilityState;->d:Lcom/netflix/mediaclient/net/AppVisibilityState;

    aput-object v3, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/net/AppVisibilityState;->b:Lcom/netflix/mediaclient/net/AppVisibilityState;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/net/AppVisibilityState;->c:[Lcom/netflix/mediaclient/net/AppVisibilityState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/net/AppVisibilityState;
    .locals 1

    .line 3
    const-class v0, Lcom/netflix/mediaclient/net/AppVisibilityState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/net/AppVisibilityState;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/net/AppVisibilityState;
    .locals 1

    .line 3
    sget-object v0, Lcom/netflix/mediaclient/net/AppVisibilityState;->c:[Lcom/netflix/mediaclient/net/AppVisibilityState;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/net/AppVisibilityState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/net/AppVisibilityState;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 9
    sget-object v0, Lcom/netflix/mediaclient/net/AppVisibilityState$5;->b:[I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/net/AppVisibilityState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string v0, "unknown"

    return-object v0

    :cond_0
    const-string v0, "background"

    return-object v0

    :cond_1
    const-string v0, "foreground"

    return-object v0
.end method
