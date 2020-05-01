.class public Lcom/netflix/mediaclient/service/msl/client/WidevineContextException;
.super Lcom/netflix/msl/MslInternalException;
.source ""


# instance fields
.field private final a:Lcom/netflix/mediaclient/StatusCode;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p3}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    iput-object p2, p0, Lcom/netflix/mediaclient/service/msl/client/WidevineContextException;->a:Lcom/netflix/mediaclient/StatusCode;

    return-void
.end method


# virtual methods
.method public b()Lcom/netflix/mediaclient/StatusCode;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/WidevineContextException;->a:Lcom/netflix/mediaclient/StatusCode;

    return-object v0
.end method
