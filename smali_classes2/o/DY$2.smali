.class Lo/DY$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DY;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/DY;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/DY;Ljava/lang/String;)V
    .locals 0

    .line 739
    iput-object p1, p0, Lo/DY$2;->a:Lo/DY;

    iput-object p2, p0, Lo/DY$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lo/Am;)V
    .locals 6

    .line 742
    invoke-virtual {p1}, Lo/Am;->w()Lo/zG;

    move-result-object v0

    iget-object v1, p0, Lo/DY$2;->b:Ljava/lang/String;

    sget-object v4, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    new-instance v5, Lo/DY$2$3;

    invoke-direct {v5, p0}, Lo/DY$2$3;-><init>(Lo/DY$2;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface/range {v0 .. v5}, Lo/zG;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/zU;)Z

    return-void
.end method
