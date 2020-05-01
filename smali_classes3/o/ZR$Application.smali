.class public final Lo/ZR$Application;
.super Lo/ZR;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ZR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# instance fields
.field private final a:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

.field private final b:Lcom/netflix/model/leafs/SearchCollectionEntity;

.field private final e:I


# direct methods
.method public constructor <init>(Lcom/netflix/model/leafs/SearchCollectionEntity;ILcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V
    .locals 1

    const-string v0, "searchEntity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackingInfoHolder"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, v0}, Lo/ZR;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/ZR$Application;->b:Lcom/netflix/model/leafs/SearchCollectionEntity;

    iput p2, p0, Lo/ZR$Application;->e:I

    iput-object p3, p0, Lo/ZR$Application;->a:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    return-void
.end method


# virtual methods
.method public final b()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;
    .locals 1

    .line 87
    iget-object v0, p0, Lo/ZR$Application;->a:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    return-object v0
.end method

.method public final d()Lcom/netflix/model/leafs/SearchCollectionEntity;
    .locals 1

    .line 85
    iget-object v0, p0, Lo/ZR$Application;->b:Lcom/netflix/model/leafs/SearchCollectionEntity;

    return-object v0
.end method
