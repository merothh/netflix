.class public Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;
.super Lcom/netflix/mediaclient/android/app/NetflixStatus;
.source ""


# instance fields
.field private final h:Z

.field private final j:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/String;Z)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    .line 20
    iput-object p2, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;->j:Ljava/lang/String;

    .line 21
    iput-boolean p3, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;->h:Z

    return-void
.end method

.method public static d(Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;Ljava/lang/String;Z)Lcom/netflix/mediaclient/android/app/Status;
    .locals 1

    .line 41
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    if-ne p0, v0, :cond_0

    .line 42
    new-instance p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;

    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->cS:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p0, v0, p1, p2}, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/String;Z)V

    :cond_0
    return-object p0
.end method


# virtual methods
.method public m()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;->h:Z

    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;->j:Ljava/lang/String;

    return-object v0
.end method
