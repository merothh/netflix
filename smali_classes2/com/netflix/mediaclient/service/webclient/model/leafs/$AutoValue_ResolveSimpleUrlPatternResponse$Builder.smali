.class final Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ResolveSimpleUrlPatternResponse$Builder;
.super Lcom/netflix/mediaclient/service/webclient/model/leafs/ResolveSimpleUrlPatternResponse$Builder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ResolveSimpleUrlPatternResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private error:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ResolveSimpleUrlPatternResponse$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/netflix/mediaclient/service/webclient/model/leafs/ResolveSimpleUrlPatternResponse;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ResolveSimpleUrlPatternResponse$Builder;-><init>()V

    .line 75
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ResolveSimpleUrlPatternResponse;->url()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ResolveSimpleUrlPatternResponse$Builder;->url:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ResolveSimpleUrlPatternResponse;->error()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ResolveSimpleUrlPatternResponse$Builder;->error:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/service/webclient/model/leafs/ResolveSimpleUrlPatternResponse;Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ResolveSimpleUrlPatternResponse$1;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ResolveSimpleUrlPatternResponse$Builder;-><init>(Lcom/netflix/mediaclient/service/webclient/model/leafs/ResolveSimpleUrlPatternResponse;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/netflix/mediaclient/service/webclient/model/leafs/ResolveSimpleUrlPatternResponse;
    .locals 3

    .line 90
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ResolveSimpleUrlPatternResponse;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ResolveSimpleUrlPatternResponse$Builder;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ResolveSimpleUrlPatternResponse$Builder;->error:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ResolveSimpleUrlPatternResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public error(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ResolveSimpleUrlPatternResponse$Builder;
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ResolveSimpleUrlPatternResponse$Builder;->error:Ljava/lang/String;

    return-object p0
.end method

.method public url(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ResolveSimpleUrlPatternResponse$Builder;
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ResolveSimpleUrlPatternResponse$Builder;->url:Ljava/lang/String;

    return-object p0
.end method
