.class public final enum Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

.field public static final enum b:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

.field public static final enum c:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

.field public static final enum d:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

.field public static final enum e:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

.field private static final synthetic j:[Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 4
    new-instance v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    const/4 v1, 0x0

    const-string v2, "ALL_MEMBER_UPDATED"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->e:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    .line 5
    new-instance v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    const/4 v2, 0x1

    const-string v3, "CW_UPDATED"

    invoke-direct {v0, v3, v2}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->c:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    .line 6
    new-instance v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    const/4 v3, 0x2

    const-string v4, "IQ_UPDATED"

    invoke-direct {v0, v4, v3}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->b:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    .line 7
    new-instance v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    const/4 v4, 0x3

    const-string v5, "NON_MEMBER_UPDATED"

    invoke-direct {v0, v5, v4}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->a:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    .line 8
    new-instance v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    const/4 v5, 0x4

    const-string v6, "ACCOUNT_DEACTIVATED"

    invoke-direct {v0, v6, v5}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->d:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    .line 3
    sget-object v6, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->e:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    aput-object v6, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->c:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->b:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->a:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->d:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->j:[Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

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

.method public static a(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Z
    .locals 1

    .line 20
    sget-object v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->a:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static b(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Z
    .locals 1

    .line 24
    sget-object v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->e:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static c(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Z
    .locals 1

    .line 11
    sget-object v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->e:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->a:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    .line 12
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static d(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Z
    .locals 1

    .line 16
    sget-object v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->e:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static e(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Z
    .locals 1

    .line 28
    sget-object v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->e:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static h(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Z
    .locals 1

    .line 32
    sget-object v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->c:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->e:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static i(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Z
    .locals 1

    .line 36
    sget-object v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->b:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->e:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static j(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Z
    .locals 1

    .line 40
    sget-object v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->d:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;
    .locals 1

    .line 3
    const-class v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;
    .locals 1

    .line 3
    sget-object v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->j:[Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    return-object v0
.end method
