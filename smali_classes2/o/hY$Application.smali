.class Lo/hY$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/iw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/hY;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Application"
.end annotation


# instance fields
.field final synthetic e:Lo/hY;


# direct methods
.method private constructor <init>(Lo/hY;)V
    .locals 0

    .line 1492
    iput-object p1, p0, Lo/hY$Application;->e:Lo/hY;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/hY;Lo/hY$4;)V
    .locals 0

    .line 1492
    invoke-direct {p0, p1}, Lo/hY$Application;-><init>(Lo/hY;)V

    return-void
.end method


# virtual methods
.method public d(I)V
    .locals 3

    .line 1496
    iget-object v0, p0, Lo/hY$Application;->e:Lo/hY;

    invoke-static {v0}, Lo/hY;->j(Lo/hY;)Lo/MetadataReader;

    move-result-object v0

    iget-object v1, p0, Lo/hY$Application;->e:Lo/hY;

    invoke-static {v1}, Lo/hY;->o(Lo/hY;)Lo/iu;

    move-result-object v1

    sget-object v2, Lcom/netflix/model/browse/BrowseDiskCacheCompactionTrigger;->d:Lcom/netflix/model/browse/BrowseDiskCacheCompactionTrigger;

    invoke-virtual {v0, v1, p0, p1, v2}, Lo/MetadataReader;->d(Lo/iu;Lo/iw;ILcom/netflix/model/browse/BrowseDiskCacheCompactionTrigger;)V

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method
