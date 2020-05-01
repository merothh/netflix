.class public final enum Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Reason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;

.field public static final enum b:Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;

.field public static final enum c:Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;

.field private static final synthetic d:[Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 53
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;

    const/4 v1, 0x0

    const-string v2, "success"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;->b:Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;

    .line 54
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;

    const/4 v2, 0x1

    const-string v3, "canceled"

    invoke-direct {v0, v3, v2}, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;->c:Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;

    .line 55
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;

    const/4 v3, 0x2

    const-string v4, "failed"

    invoke-direct {v0, v4, v3}, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;->a:Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;

    .line 52
    sget-object v4, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;->b:Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;

    aput-object v4, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;->c:Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;->a:Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;->d:[Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;
    .locals 1

    .line 52
    const-class v0, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;
    .locals 1

    .line 52
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;->d:[Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;

    return-object v0
.end method


# virtual methods
.method public b()Z
    .locals 1

    .line 58
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;->b:Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
