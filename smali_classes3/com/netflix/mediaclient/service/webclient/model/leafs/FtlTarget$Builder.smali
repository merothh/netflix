.class public abstract Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlTarget$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract build()Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlTarget;
.end method

.method public abstract host(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlTarget$Builder;
.end method

.method public abstract name(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlTarget$Builder;
.end method
