.class Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$10;
.super Lo/JsPromptResult;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->ar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)V
    .locals 0

    .line 1527
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$10;->d:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-direct {p0}, Lo/JsPromptResult;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lo/Plugin;)V
    .locals 2

    .line 1530
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$10;->d:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->f()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->a(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;J)J

    return-void
.end method
