.class public final enum Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

.field public static final enum b:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

.field public static final enum c:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

.field public static final enum d:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

.field public static final enum e:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

.field private static final synthetic f:[Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

.field public static final enum j:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 41
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    const/4 v1, 0x0

    const-string v2, "url"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;->b:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    .line 42
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    const/4 v2, 0x1

    const-string v3, "dial"

    invoke-direct {v0, v3, v2}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;->a:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    .line 43
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    const/4 v3, 0x2

    const-string v4, "chat"

    invoke-direct {v0, v4, v3}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;->d:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    .line 44
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    const/4 v4, 0x3

    const-string v5, "back"

    invoke-direct {v0, v5, v4}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;->c:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    .line 45
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    const/4 v5, 0x4

    const-string v6, "home"

    invoke-direct {v0, v6, v5}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;->e:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    .line 46
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    const/4 v6, 0x5

    const-string v7, "up"

    invoke-direct {v0, v7, v6}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;->j:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    .line 40
    sget-object v7, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;->b:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    aput-object v7, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;->a:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;->d:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;->c:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;->e:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;->j:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    aput-object v1, v0, v6

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;->f:[Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;
    .locals 1

    .line 40
    const-class v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;
    .locals 1

    .line 40
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;->f:[Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    return-object v0
.end method
