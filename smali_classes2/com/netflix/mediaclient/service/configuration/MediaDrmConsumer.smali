.class public final enum Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

.field public static final enum b:Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

.field public static final enum c:Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

.field public static final enum d:Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

.field public static final enum e:Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 7
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

    const/4 v1, 0x0

    const-string v2, "MSL"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;->e:Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

    .line 8
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

    const/4 v2, 0x1

    const-string v3, "OFFLINE"

    invoke-direct {v0, v3, v2}, Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;->c:Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

    .line 9
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

    const/4 v3, 0x2

    const-string v4, "STREAMING"

    invoke-direct {v0, v4, v3}, Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;->b:Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

    .line 10
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

    const/4 v4, 0x3

    const-string v5, "FILE"

    invoke-direct {v0, v5, v4}, Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;->d:Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

    .line 6
    sget-object v5, Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;->e:Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

    aput-object v5, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;->c:Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;->b:Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;->d:Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;->a:[Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;
    .locals 1

    .line 6
    const-class v0, Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;
    .locals 1

    .line 6
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;->a:[Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

    return-object v0
.end method
