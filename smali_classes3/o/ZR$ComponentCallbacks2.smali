.class public final Lo/ZR$ComponentCallbacks2;
.super Lo/ZR;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ZR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ComponentCallbacks2"
.end annotation


# instance fields
.field private final a:I

.field private final b:Lcom/netflix/model/leafs/SearchCollectionEntity;

.field private final c:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;


# direct methods
.method public constructor <init>(Lcom/netflix/model/leafs/SearchCollectionEntity;ILcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V
    .locals 1

    const-string v0, "searchEntity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackingInfoHolder"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, v0}, Lo/ZR;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/ZR$ComponentCallbacks2;->b:Lcom/netflix/model/leafs/SearchCollectionEntity;

    iput p2, p0, Lo/ZR$ComponentCallbacks2;->a:I

    iput-object p3, p0, Lo/ZR$ComponentCallbacks2;->c:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    return-void
.end method


# virtual methods
.method public final a()Lcom/netflix/model/leafs/SearchCollectionEntity;
    .locals 1

    .line 63
    iget-object v0, p0, Lo/ZR$ComponentCallbacks2;->b:Lcom/netflix/model/leafs/SearchCollectionEntity;

    return-object v0
.end method

.method public final b()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;
    .locals 1

    .line 65
    iget-object v0, p0, Lo/ZR$ComponentCallbacks2;->c:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    return-object v0
.end method

.method public final e()I
    .locals 1

    .line 64
    iget v0, p0, Lo/ZR$ComponentCallbacks2;->a:I

    return v0
.end method
