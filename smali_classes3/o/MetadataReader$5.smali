.class Lo/MetadataReader$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/MetadataReader;->d(Lo/iu;Lo/iw;ILcom/netflix/model/browse/BrowseDiskCacheCompactionTrigger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lo/iw;

.field final synthetic c:Lcom/netflix/model/browse/BrowseDiskCacheCompactionTrigger;

.field final synthetic d:Lo/MetadataReader;

.field final synthetic e:Lo/iu;


# direct methods
.method constructor <init>(Lo/MetadataReader;Lcom/netflix/model/browse/BrowseDiskCacheCompactionTrigger;Lo/iu;Lo/iw;I)V
    .locals 0

    .line 556
    iput-object p1, p0, Lo/MetadataReader$5;->d:Lo/MetadataReader;

    iput-object p2, p0, Lo/MetadataReader$5;->c:Lcom/netflix/model/browse/BrowseDiskCacheCompactionTrigger;

    iput-object p3, p0, Lo/MetadataReader$5;->e:Lo/iu;

    iput-object p4, p0, Lo/MetadataReader$5;->b:Lo/iw;

    iput p5, p0, Lo/MetadataReader$5;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 559
    iget-object v0, p0, Lo/MetadataReader$5;->d:Lo/MetadataReader;

    invoke-static {v0}, Lo/MetadataReader;->c(Lo/MetadataReader;)Lo/hY;

    move-result-object v0

    iget-object v1, p0, Lo/MetadataReader$5;->c:Lcom/netflix/model/browse/BrowseDiskCacheCompactionTrigger;

    invoke-virtual {v0, v1}, Lo/hY;->c(Lcom/netflix/model/browse/BrowseDiskCacheCompactionTrigger;)V

    .line 560
    iget-object v0, p0, Lo/MetadataReader$5;->e:Lo/iu;

    iget-object v1, p0, Lo/MetadataReader$5;->b:Lo/iw;

    iget v2, p0, Lo/MetadataReader$5;->a:I

    invoke-interface {v0, v1, v2}, Lo/iu;->c(Lo/iw;I)V

    return-void
.end method
