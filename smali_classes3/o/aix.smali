.class public Lo/aix;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final a:Lo/aiv$Application;

.field private final b:Lcom/netflix/partner/PRecoDataHandler;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/List;

.field private final e:Lo/aip;


# direct methods
.method public constructor <init>(Lcom/netflix/partner/PRecoDataHandler;Ljava/lang/String;Ljava/util/List;Lo/aip;Lo/aiv$Application;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/aix;->b:Lcom/netflix/partner/PRecoDataHandler;

    iput-object p2, p0, Lo/aix;->c:Ljava/lang/String;

    iput-object p3, p0, Lo/aix;->d:Ljava/util/List;

    iput-object p4, p0, Lo/aix;->e:Lo/aip;

    iput-object p5, p0, Lo/aix;->a:Lo/aiv$Application;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lo/aix;->b:Lcom/netflix/partner/PRecoDataHandler;

    iget-object v1, p0, Lo/aix;->c:Ljava/lang/String;

    iget-object v2, p0, Lo/aix;->d:Ljava/util/List;

    iget-object v3, p0, Lo/aix;->e:Lo/aip;

    iget-object v4, p0, Lo/aix;->a:Lo/aiv$Application;

    move-object v5, p1

    check-cast v5, Ljava/lang/Throwable;

    invoke-static/range {v0 .. v5}, Lcom/netflix/partner/PRecoDataHandler;->e(Lcom/netflix/partner/PRecoDataHandler;Ljava/lang/String;Ljava/util/List;Lo/aip;Lo/aiv$Application;Ljava/lang/Throwable;)V

    return-void
.end method
