.class public final Lcom/netflix/mediaclient/ui/trackinginfo/SearchResultsSummaryCLTrackingInfo;
.super Lcom/netflix/mediaclient/ui/trackinginfo/ListSummaryCLTrackingInfo;
.source ""


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/Bz;Ljava/lang/String;)V
    .locals 1

    const-string v0, "summary"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "query"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    check-cast p1, Lo/Bv;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/trackinginfo/ListSummaryCLTrackingInfo;-><init>(Lo/Bv;)V

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/trackinginfo/SearchResultsSummaryCLTrackingInfo;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/trackinginfo/SearchResultsSummaryCLTrackingInfo;->d:Ljava/lang/String;

    return-object v0
.end method
