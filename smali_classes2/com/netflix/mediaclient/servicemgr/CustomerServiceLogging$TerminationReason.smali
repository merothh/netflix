.class public final enum Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TerminationReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

.field public static final enum b:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

.field public static final enum c:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

.field public static final enum d:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

.field public static final enum e:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

.field private static final synthetic g:[Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 64
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    const/4 v1, 0x0

    const-string v2, "canceledByUserBeforeConnected"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;->e:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    .line 65
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    const/4 v2, 0x1

    const-string v3, "canceledByUserAfterConnected"

    invoke-direct {v0, v3, v2}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;->c:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    .line 66
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    const/4 v3, 0x2

    const-string v4, "canceledByNetflix"

    invoke-direct {v0, v4, v3}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;->d:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    .line 67
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    const/4 v4, 0x3

    const-string v5, "failedBeforeConnected"

    invoke-direct {v0, v5, v4}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;->a:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    .line 68
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    const/4 v5, 0x4

    const-string v6, "failedAfterConnected"

    invoke-direct {v0, v6, v5}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;->b:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    .line 63
    sget-object v6, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;->e:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    aput-object v6, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;->c:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;->d:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;->a:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;->b:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    aput-object v1, v0, v5

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;->g:[Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;
    .locals 1

    .line 63
    const-class v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;
    .locals 1

    .line 63
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;->g:[Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    return-object v0
.end method
