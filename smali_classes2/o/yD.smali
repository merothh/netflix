.class public final Lo/yD;
.super Lo/hO;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/yD$StateListAnimator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/hO<",
        "Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoiceResponse;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lo/yD$StateListAnimator;

# The value of this static final field might be set in the static constructor
.field private static final j:Ljava/lang/String; = "[\"productChoicesMap\"]"


# instance fields
.field private final a:Lo/adY;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/adY<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lo/yq;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/yD$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/yD$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/yD;->d:Lo/yD$StateListAnimator;

    const-string v0, "[\"productChoicesMap\"]"

    .line 31
    sput-object v0, Lo/yD;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;Lo/yq;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transport"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "GetProductChoicesRequest"

    .line 24
    invoke-direct {p0, p1, p2, v0}, Lo/hO;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;Ljava/lang/String;)V

    iput-object p3, p0, Lo/yD;->i:Lo/yq;

    .line 34
    new-instance p1, Lo/adY;

    invoke-direct {p1}, Lo/adY;-><init>()V

    iput-object p1, p0, Lo/yD;->a:Lo/adY;

    .line 37
    iget-object p1, p0, Lo/yD;->a:Lo/adY;

    check-cast p1, Ljava/util/Map;

    const-string p2, "param"

    const-string p3, "\"AndroidPriceConsent\""

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected a(Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoiceResponse;)V
    .locals 2

    const-string v0, "parsedResponse"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lo/yD;->i:Lo/yq;

    if-eqz v0, :cond_0

    sget-object v1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    check-cast v1, Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v0, p1, v1}, Lo/yq;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoiceResponse;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoiceResponse;
    .locals 1

    const-string p2, "response"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    sget-object p2, Lo/yD;->d:Lo/yD$StateListAnimator;

    move-object v0, p2

    check-cast v0, Lo/MessagePdu;

    .line 55
    invoke-virtual {p2}, Lo/yD$StateListAnimator;->getLogTag()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lo/Downloads;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 56
    invoke-static {p1}, Lo/adI;->d(Lcom/google/gson/JsonObject;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 63
    const-class p2, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoiceResponse;

    const-string v0, "productChoicesMap"

    .line 60
    invoke-static {p1, v0, p2}, Lo/adI;->e(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "GsonUtils.getPropertyObj\u2026nse::class.java\n        )"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoiceResponse;

    return-object p1

    .line 57
    :cond_0
    new-instance p1, Lcom/netflix/falkor/FalkorException;

    const-string p2, "Empty product choice map"

    invoke-direct {p1, p2}, Lcom/netflix/falkor/FalkorException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, "call"

    return-object v0
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoiceResponse;

    invoke-virtual {p0, p1}, Lo/yD;->a(Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoiceResponse;)V

    return-void
.end method

.method protected d(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 72
    iget-object v0, p0, Lo/yD;->i:Lo/yq;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lo/yq;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoiceResponse;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method public synthetic e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lo/yD;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoiceResponse;

    move-result-object p1

    return-object p1
.end method

.method protected f()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 44
    invoke-super {p0}, Lo/hO;->f()Ljava/util/Map;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lo/yD;->a:Lo/adY;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v1, "paramMap"

    .line 46
    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method protected h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 49
    sget-object v0, Lo/yD;->j:Ljava/lang/String;

    invoke-static {v0}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
