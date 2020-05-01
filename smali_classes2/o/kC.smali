.class public Lo/kC;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/zD;


# static fields
.field protected static a:Ljava/lang/String; = "is5dot1Supported"

.field protected static b:Ljava/lang/String; = "volumeControl"

.field protected static c:Ljava/lang/String; = "volumeStep"

.field protected static d:Ljava/lang/String; = "autoAdvanceMax"

.field protected static e:Ljava/lang/String; = "isHdSupported"

.field protected static f:Ljava/lang/String; = "isUltraHdSupported"

.field protected static g:Ljava/lang/String; = "isDVHDRSupported"

.field protected static j:Ljava/lang/String; = "isUHDAHDRSupported"


# instance fields
.field private h:Z

.field private i:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:I

.field private o:Z

.field private r:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 41
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lo/kC;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget-object v0, Lo/kC;->e:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lo/adN;->c(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lo/kC;->i:Z

    .line 46
    sget-object v0, Lo/kC;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lo/adN;->c(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lo/kC;->h:Z

    .line 47
    sget-object v0, Lo/kC;->f:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lo/adN;->c(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lo/kC;->o:Z

    .line 48
    sget-object v0, Lo/kC;->d:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lo/adN;->c(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lo/kC;->n:I

    .line 49
    sget-object v0, Lo/kC;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Lo/kC;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lo/kC;->k:Z

    .line 52
    :cond_0
    sget-object v0, Lo/kC;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    sget-object v0, Lo/kC;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lo/kC;->r:I

    .line 55
    :cond_1
    sget-object v0, Lo/kC;->j:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lo/adN;->c(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lo/kC;->m:Z

    .line 56
    sget-object v0, Lo/kC;->g:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lo/adN;->c(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lo/kC;->l:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Lo/kC;->o:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lo/kC;->h:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lo/kC;->m:Z

    return v0
.end method

.method public d()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lo/kC;->k:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lo/kC;->i:Z

    return v0
.end method

.method public h()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lo/kC;->l:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MdxTargetCapabilities [isHdSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/kC;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", is5dot1Supported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/kC;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", autoAdvanceMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/kC;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", volumeControl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/kC;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", volumeStep="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/kC;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isUltraHdSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/kC;->o:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isHdr10Supported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/kC;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isDolbyVisionSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/kC;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
