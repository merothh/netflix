.class public Lo/aiy;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Lcom/netflix/partner/PRecoDataHandler;

.field private final c:Lo/aip;

.field private final d:Lo/aiI;

.field private final e:I

.field private final h:Lo/aiv$Application;


# direct methods
.method public constructor <init>(Lcom/netflix/partner/PRecoDataHandler;Ljava/util/List;Lo/aiI;ILo/aip;Lo/aiv$Application;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/aiy;->b:Lcom/netflix/partner/PRecoDataHandler;

    iput-object p2, p0, Lo/aiy;->a:Ljava/util/List;

    iput-object p3, p0, Lo/aiy;->d:Lo/aiI;

    iput p4, p0, Lo/aiy;->e:I

    iput-object p5, p0, Lo/aiy;->c:Lo/aip;

    iput-object p6, p0, Lo/aiy;->h:Lo/aiv$Application;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lo/aiy;->b:Lcom/netflix/partner/PRecoDataHandler;

    iget-object v1, p0, Lo/aiy;->a:Ljava/util/List;

    iget-object v2, p0, Lo/aiy;->d:Lo/aiI;

    iget v3, p0, Lo/aiy;->e:I

    iget-object v4, p0, Lo/aiy;->c:Lo/aip;

    iget-object v5, p0, Lo/aiy;->h:Lo/aiv$Application;

    move-object v6, p1

    check-cast v6, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;

    invoke-static/range {v0 .. v6}, Lcom/netflix/partner/PRecoDataHandler;->c(Lcom/netflix/partner/PRecoDataHandler;Ljava/util/List;Lo/aiI;ILo/aip;Lo/aiv$Application;Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)V

    return-void
.end method
