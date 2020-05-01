.class public final enum Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;
.super Ljava/lang/Enum;
.source "ApiEndpointRegistry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;

.field public static final enum GRAPH:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;

.field public static final enum HIERARCHICAL:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;


# instance fields
.field public final urlParams:Ljava/lang/String;

.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 18
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;

    const-string/jumbo v1, "GRAPH"

    const-string/jumbo v2, "&pathFormat=graph"

    const-string/jumbo v3, "graph"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;->GRAPH:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;

    .line 19
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;

    const-string/jumbo v1, "HIERARCHICAL"

    const-string/jumbo v2, "&pathFormat=hierarchical"

    const-string/jumbo v3, "hierarchical"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;->HIERARCHICAL:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;

    .line 17
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;->GRAPH:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;->HIERARCHICAL:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;

    aput-object v1, v0, v5

    sput-object v0, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;->$VALUES:[Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput-object p3, p0, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;->urlParams:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;->value:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;->$VALUES:[Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;

    return-object v0
.end method
