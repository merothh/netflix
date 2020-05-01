.class Lo/IR;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# instance fields
.field private final a:Lo/IL;

.field private final c:Z

.field private final d:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;


# direct methods
.method public constructor <init>(Lo/IL;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/IR;->a:Lo/IL;

    iput-object p2, p0, Lo/IR;->d:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iput-boolean p3, p0, Lo/IR;->c:Z

    return-void
.end method


# virtual methods
.method public run(Lo/Am;)V
    .locals 3

    iget-object v0, p0, Lo/IR;->a:Lo/IL;

    iget-object v1, p0, Lo/IR;->d:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iget-boolean v2, p0, Lo/IR;->c:Z

    invoke-static {v0, v1, v2, p1}, Lo/IL;->c(Lo/IL;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ZLo/Am;)V

    return-void
.end method
