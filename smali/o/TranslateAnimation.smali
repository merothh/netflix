.class public final Lo/TranslateAnimation;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Ljava/util/List;Ljava/lang/String;Lo/Cloneable;Lo/SerializablePermission;)Lo/InputConnectionInspector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCard;",
            ">;",
            "Ljava/lang/String;",
            "Lo/Cloneable<",
            "Ljava/lang/Integer;",
            ">;",
            "Lo/SerializablePermission;",
            ")",
            "Lo/InputConnectionInspector;"
        }
    .end annotation

    const-string v0, "cards"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vlvImageUrl"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "floatingCtaLiveData"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fm"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v0, Lo/InputConnectionInspector;

    invoke-direct {v0, p1, p2, p3, p4}, Lo/InputConnectionInspector;-><init>(Ljava/util/List;Ljava/lang/String;Lo/Cloneable;Lo/SerializablePermission;)V

    return-object v0
.end method
