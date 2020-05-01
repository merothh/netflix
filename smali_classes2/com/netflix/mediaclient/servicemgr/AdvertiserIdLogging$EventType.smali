.class public final enum Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

.field public static final enum b:Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

.field private static final synthetic c:[Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

.field public static final enum d:Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

.field public static final enum e:Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 72
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

    const/4 v1, 0x0

    const-string v2, "install"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;->e:Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

    .line 73
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

    const/4 v2, 0x1

    const-string v3, "sign_up"

    invoke-direct {v0, v3, v2}, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;->b:Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

    .line 74
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

    const/4 v3, 0x2

    const-string v4, "sign_in"

    invoke-direct {v0, v4, v3}, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;->a:Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

    .line 75
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

    const/4 v4, 0x3

    const-string v5, "check_in"

    invoke-direct {v0, v5, v4}, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;->d:Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

    .line 71
    sget-object v5, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;->e:Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

    aput-object v5, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;->b:Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;->a:Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;->d:Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;->c:[Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;
    .locals 1

    .line 71
    const-class v0, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;
    .locals 1

    .line 71
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;->c:[Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

    return-object v0
.end method
