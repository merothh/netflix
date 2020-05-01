.class public final enum Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/servicemgr/IVoip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CallState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;

.field public static final enum c:Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;

.field public static final enum d:Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;

.field public static final enum e:Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 242
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;

    const/4 v1, 0x0

    const-string v2, "CONNECTING"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;->c:Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;

    .line 243
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;

    const/4 v2, 0x1

    const-string v3, "CONNECTED"

    invoke-direct {v0, v3, v2}, Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;->e:Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;

    .line 244
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;

    const/4 v3, 0x2

    const-string v4, "ENDED"

    invoke-direct {v0, v4, v3}, Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;->d:Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;

    .line 241
    sget-object v4, Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;->c:Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;

    aput-object v4, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;->e:Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;->d:Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;->a:[Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 241
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;
    .locals 1

    .line 241
    const-class v0, Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;
    .locals 1

    .line 241
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;->a:[Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;

    return-object v0
.end method
