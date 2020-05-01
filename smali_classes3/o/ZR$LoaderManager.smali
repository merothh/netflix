.class public final Lo/ZR$LoaderManager;
.super Lo/ZR;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ZR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoaderManager"
.end annotation


# instance fields
.field private final b:Lo/Bx;

.field private final c:I

.field private final d:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

.field private final e:Lcom/netflix/model/leafs/SearchCollectionEntity;


# direct methods
.method public constructor <init>(Lcom/netflix/model/leafs/SearchCollectionEntity;ILcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lo/Bx;)V
    .locals 1

    const-string v0, "searchEntity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackingInfoHolder"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, v0}, Lo/ZR;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/ZR$LoaderManager;->e:Lcom/netflix/model/leafs/SearchCollectionEntity;

    iput p2, p0, Lo/ZR$LoaderManager;->c:I

    iput-object p3, p0, Lo/ZR$LoaderManager;->d:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    iput-object p4, p0, Lo/ZR$LoaderManager;->b:Lo/Bx;

    return-void
.end method


# virtual methods
.method public final b()Lo/Bx;
    .locals 1

    .line 97
    iget-object v0, p0, Lo/ZR$LoaderManager;->b:Lo/Bx;

    return-object v0
.end method

.method public final d()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;
    .locals 1

    .line 96
    iget-object v0, p0, Lo/ZR$LoaderManager;->d:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    return-object v0
.end method

.method public final e()I
    .locals 1

    .line 95
    iget v0, p0, Lo/ZR$LoaderManager;->c:I

    return v0
.end method
