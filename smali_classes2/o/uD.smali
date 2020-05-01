.class Lo/uD;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final d:Lo/tM;

.field private final e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/media/manifest/Url;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/media/manifest/Url;",
            "Ljava/util/List<",
            "Lo/sM;",
            ">;",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/manifest/Location;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/Url;->url()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/uD;->e:Ljava/lang/String;

    .line 19
    invoke-static {p1, p2, p3}, Lo/tM;->b(Lcom/netflix/mediaclient/media/manifest/Url;Ljava/util/List;Ljava/util/List;)Lo/tM;

    move-result-object p1

    iput-object p1, p0, Lo/uD;->d:Lo/tM;

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lo/uD;->e:Ljava/lang/String;

    return-object v0
.end method

.method d()Lo/tM;
    .locals 1

    .line 27
    iget-object v0, p0, Lo/uD;->d:Lo/tM;

    return-object v0
.end method
