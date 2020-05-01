.class public final Lo/ZR$TaskStackBuilder;
.super Lo/ZR;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ZR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskStackBuilder"
.end annotation


# instance fields
.field private final b:Lo/Bx;

.field private final c:I

.field private final d:Lcom/netflix/model/leafs/SearchSectionSummary;

.field private final e:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;


# direct methods
.method public constructor <init>(Lcom/netflix/model/leafs/SearchSectionSummary;ILo/Bx;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V
    .locals 1

    const-string v0, "section"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "video"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackingInfoHolder"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 105
    invoke-direct {p0, v0}, Lo/ZR;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/ZR$TaskStackBuilder;->d:Lcom/netflix/model/leafs/SearchSectionSummary;

    iput p2, p0, Lo/ZR$TaskStackBuilder;->c:I

    iput-object p3, p0, Lo/ZR$TaskStackBuilder;->b:Lo/Bx;

    iput-object p4, p0, Lo/ZR$TaskStackBuilder;->e:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    return-void
.end method


# virtual methods
.method public final a()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;
    .locals 1

    .line 104
    iget-object v0, p0, Lo/ZR$TaskStackBuilder;->e:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    return-object v0
.end method

.method public final b()Lo/Bx;
    .locals 1

    .line 103
    iget-object v0, p0, Lo/ZR$TaskStackBuilder;->b:Lo/Bx;

    return-object v0
.end method

.method public final d()Lcom/netflix/model/leafs/SearchSectionSummary;
    .locals 1

    .line 101
    iget-object v0, p0, Lo/ZR$TaskStackBuilder;->d:Lcom/netflix/model/leafs/SearchSectionSummary;

    return-object v0
.end method

.method public final e()I
    .locals 1

    .line 102
    iget v0, p0, Lo/ZR$TaskStackBuilder;->c:I

    return v0
.end method
