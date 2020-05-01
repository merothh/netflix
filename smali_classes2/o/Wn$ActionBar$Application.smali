.class public final Lo/Wn$ActionBar$Application;
.super Lo/cq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Wn$ActionBar;->b(Lcom/netflix/model/leafs/PrePlayExperiences;Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/common/PlayContextImp;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lo/Wn$ActionBar;

.field final synthetic d:Lcom/netflix/model/leafs/blades/PreplayItemAction;

.field final synthetic e:Lcom/netflix/model/leafs/blades/PrePlayItem;

.field final synthetic f:Lcom/netflix/model/leafs/PrePlayExperiences;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/common/PlayContextImp;Lcom/netflix/model/leafs/blades/PreplayItemAction;Ljava/lang/String;Lcom/netflix/model/leafs/blades/PrePlayItem;Lo/Wn$ActionBar;Lcom/netflix/model/leafs/PrePlayExperiences;)V
    .locals 0

    iput-object p1, p0, Lo/Wn$ActionBar$Application;->a:Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    iput-object p2, p0, Lo/Wn$ActionBar$Application;->d:Lcom/netflix/model/leafs/blades/PreplayItemAction;

    iput-object p3, p0, Lo/Wn$ActionBar$Application;->b:Ljava/lang/String;

    iput-object p4, p0, Lo/Wn$ActionBar$Application;->e:Lcom/netflix/model/leafs/blades/PrePlayItem;

    iput-object p5, p0, Lo/Wn$ActionBar$Application;->c:Lo/Wn$ActionBar;

    iput-object p6, p0, Lo/Wn$ActionBar$Application;->f:Lcom/netflix/model/leafs/PrePlayExperiences;

    .line 72
    invoke-direct {p0}, Lo/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lo/AX;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 9

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 76
    new-instance p2, Lo/Wn$Activity;

    .line 77
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    const-string v1, "CommonStatus.OK"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/netflix/mediaclient/android/app/Status;

    .line 78
    new-instance v8, Lo/Tv;

    .line 79
    move-object v2, p1

    check-cast v2, Lo/Bc;

    .line 80
    iget-object v1, p0, Lo/Wn$ActionBar$Application;->a:Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    move-object v3, v1

    check-cast v3, Lcom/netflix/mediaclient/servicemgr/PlayContext;

    .line 81
    invoke-interface {p1}, Lo/AX;->bb()Lo/AK;

    move-result-object p1

    const-string v1, "details.playable"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lo/AK;->P()I

    move-result v4

    .line 82
    iget-object v5, p0, Lo/Wn$ActionBar$Application;->b:Ljava/lang/String;

    .line 83
    iget-object p1, p0, Lo/Wn$ActionBar$Application;->e:Lcom/netflix/model/leafs/blades/PrePlayItem;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/blades/PrePlayItem;->impressionData()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, v8

    .line 78
    invoke-direct/range {v1 .. v7}, Lo/Tv;-><init>(Lo/Bc;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILjava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;)V

    .line 76
    invoke-direct {p2, v0, v8}, Lo/Wn$Activity;-><init>(Lcom/netflix/mediaclient/android/app/Status;Lo/Tv;)V

    .line 87
    iget-object p1, p0, Lo/Wn$ActionBar$Application;->c:Lo/Wn$ActionBar;

    iget-object p1, p1, Lo/Wn$ActionBar;->c:Lo/Wn;

    invoke-static {p1}, Lo/Wn;->d(Lo/Wn;)Lo/Wl;

    move-result-object p1

    .line 88
    iget-object v0, p0, Lo/Wn$ActionBar$Application;->f:Lcom/netflix/model/leafs/PrePlayExperiences;

    iget-object v1, p0, Lo/Wn$ActionBar$Application;->c:Lo/Wn$ActionBar;

    invoke-virtual {v1}, Lo/Wn$ActionBar;->e()Lo/hW;

    move-result-object v1

    .line 87
    invoke-virtual {p1, v0, v1, p2}, Lo/Wl;->b(Lcom/netflix/model/leafs/PrePlayExperiences;Lo/hW;Lo/Wn$Activity;)V

    :cond_0
    return-void
.end method
