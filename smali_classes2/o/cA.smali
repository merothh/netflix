.class public Lo/cA;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static b:Ljava/lang/String; = "nf_cast"


# instance fields
.field a:Landroid/content/Context;

.field e:Lcom/netflix/mediaclient/service/webclient/model/leafs/CastKeyData;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lo/cA;->a:Landroid/content/Context;

    .line 22
    iget-object p1, p0, Lo/cA;->a:Landroid/content/Context;

    const-string v0, "castKeyData"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-static {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/CastKeyData;->fromJsonString(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/CastKeyData;

    move-result-object p1

    iput-object p1, p0, Lo/cA;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/CastKeyData;

    return-void
.end method


# virtual methods
.method public e(Lcom/netflix/mediaclient/service/webclient/model/leafs/CastKeyData;)V
    .locals 3

    if-nez p1, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/CastKeyData;->toJsonString()Ljava/lang/String;

    move-result-object v0

    .line 42
    :goto_0
    iget-object v1, p0, Lo/cA;->a:Landroid/content/Context;

    const-string v2, "castKeyData"

    invoke-static {v1, v2, v0}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lo/cA;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/CastKeyData;

    return-void
.end method
