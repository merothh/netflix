.class public final Lo/ZR$BroadcastReceiver;
.super Lo/ZR;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ZR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BroadcastReceiver"
.end annotation


# instance fields
.field private final a:Lo/Bx;

.field private final b:I

.field private final c:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

.field private final d:Lcom/netflix/model/leafs/SearchSectionSummary;

.field private final e:Lcom/netflix/mediaclient/servicemgr/PlayContext;

.field private final f:Z


# direct methods
.method public constructor <init>(Lcom/netflix/model/leafs/SearchSectionSummary;ILo/Bx;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lcom/netflix/mediaclient/servicemgr/PlayContext;Z)V
    .locals 1

    const-string v0, "section"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "video"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackingInfoHolder"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playContext"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, v0}, Lo/ZR;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/ZR$BroadcastReceiver;->d:Lcom/netflix/model/leafs/SearchSectionSummary;

    iput p2, p0, Lo/ZR$BroadcastReceiver;->b:I

    iput-object p3, p0, Lo/ZR$BroadcastReceiver;->a:Lo/Bx;

    iput-object p4, p0, Lo/ZR$BroadcastReceiver;->c:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    iput-object p5, p0, Lo/ZR$BroadcastReceiver;->e:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    iput-boolean p6, p0, Lo/ZR$BroadcastReceiver;->f:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lo/ZR$BroadcastReceiver;->f:Z

    return v0
.end method

.method public final b()Lo/Bx;
    .locals 1

    .line 75
    iget-object v0, p0, Lo/ZR$BroadcastReceiver;->a:Lo/Bx;

    return-object v0
.end method

.method public final c()Lcom/netflix/mediaclient/servicemgr/PlayContext;
    .locals 1

    .line 77
    iget-object v0, p0, Lo/ZR$BroadcastReceiver;->e:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    return-object v0
.end method

.method public final d()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;
    .locals 1

    .line 76
    iget-object v0, p0, Lo/ZR$BroadcastReceiver;->c:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    return-object v0
.end method

.method public final e()Lcom/netflix/model/leafs/SearchSectionSummary;
    .locals 1

    .line 73
    iget-object v0, p0, Lo/ZR$BroadcastReceiver;->d:Lcom/netflix/model/leafs/SearchSectionSummary;

    return-object v0
.end method
