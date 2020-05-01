.class public Lcom/netflix/mediaclient/net/RequestMetricsMarker;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/net/RequestMetricsMarker$Type;
    }
.end annotation


# instance fields
.field public final c:Ljava/util/Date;

.field public final e:Lcom/netflix/mediaclient/net/RequestMetricsMarker$Type;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/net/RequestMetricsMarker$Type;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/netflix/mediaclient/net/RequestMetricsMarker;->e:Lcom/netflix/mediaclient/net/RequestMetricsMarker$Type;

    .line 16
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/net/RequestMetricsMarker;->c:Ljava/util/Date;

    return-void
.end method
