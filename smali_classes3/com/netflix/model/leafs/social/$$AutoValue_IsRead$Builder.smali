.class final Lcom/netflix/model/leafs/social/$$AutoValue_IsRead$Builder;
.super Lcom/netflix/model/leafs/social/IsRead$Builder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/social/$$AutoValue_IsRead;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private read:Ljava/lang/Boolean;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/netflix/model/leafs/social/IsRead$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/netflix/model/leafs/social/IsRead;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/netflix/model/leafs/social/IsRead$Builder;-><init>()V

    .line 60
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/IsRead;->read()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_IsRead$Builder;->read:Ljava/lang/Boolean;

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/model/leafs/social/IsRead;Lcom/netflix/model/leafs/social/$$AutoValue_IsRead$1;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/netflix/model/leafs/social/$$AutoValue_IsRead$Builder;-><init>(Lcom/netflix/model/leafs/social/IsRead;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/netflix/model/leafs/social/IsRead;
    .locals 4

    .line 70
    iget-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_IsRead$Builder;->read:Ljava/lang/Boolean;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " read"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    new-instance v0, Lcom/netflix/model/leafs/social/AutoValue_IsRead;

    iget-object v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_IsRead$Builder;->read:Ljava/lang/Boolean;

    .line 77
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/netflix/model/leafs/social/AutoValue_IsRead;-><init>(Z)V

    return-object v0

    .line 74
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing required properties:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read(Z)Lcom/netflix/model/leafs/social/IsRead$Builder;
    .locals 0

    .line 64
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_IsRead$Builder;->read:Ljava/lang/Boolean;

    return-object p0
.end method
