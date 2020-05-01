.class final enum Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ServiceManagerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

.field public static final enum b:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

.field public static final enum c:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

.field private static final synthetic e:[Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 24
    new-instance v0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    const/4 v1, 0x0

    const-string v2, "WaitingForResult"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;->b:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    .line 25
    new-instance v0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    const/4 v2, 0x1

    const-string v3, "ServiceManagerReady"

    invoke-direct {v0, v3, v2}, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;->c:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    .line 26
    new-instance v0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    const/4 v3, 0x2

    const-string v4, "ServiceManagerFailed"

    invoke-direct {v0, v4, v3}, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;->a:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    .line 23
    sget-object v4, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;->b:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    aput-object v4, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;->c:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;->a:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;->e:[Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;
    .locals 1

    .line 23
    const-class v0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;
    .locals 1

    .line 23
    sget-object v0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;->e:[Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    return-object v0
.end method
