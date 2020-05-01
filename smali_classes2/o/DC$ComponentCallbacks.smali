.class public final Lo/DC$ComponentCallbacks;
.super Lo/DC;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ComponentCallbacks"
.end annotation


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;)V
    .locals 1

    const-string v0, "videoType"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 144
    invoke-direct {p0, v0}, Lo/DC;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/DC$ComponentCallbacks;->d:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iput-object p2, p0, Lo/DC$ComponentCallbacks;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lo/DC$ComponentCallbacks;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .line 144
    iget-object v0, p0, Lo/DC$ComponentCallbacks;->d:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-object v0
.end method
