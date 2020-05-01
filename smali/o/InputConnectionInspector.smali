.class public final Lo/InputConnectionInspector;
.super Lo/AbsoluteSizeSpan;
.source ""


# instance fields
.field private final a:Lo/Cloneable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/Cloneable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCard;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Lo/Cloneable;Lo/SerializablePermission;)V
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
            ")V"
        }
    .end annotation

    const-string v0, "cards"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vlvImageUrl"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "floatingCtaHeightLiveData"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fm"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p4}, Lo/AbsoluteSizeSpan;-><init>(Lo/SerializablePermission;)V

    iput-object p1, p0, Lo/InputConnectionInspector;->b:Ljava/util/List;

    iput-object p2, p0, Lo/InputConnectionInspector;->e:Ljava/lang/String;

    iput-object p3, p0, Lo/InputConnectionInspector;->a:Lo/Cloneable;

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    .line 21
    iget-object v0, p0, Lo/InputConnectionInspector;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public e(I)Landroidx/fragment/app/Fragment;
    .locals 3

    .line 16
    sget-object v0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->i:Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment$StateListAnimator;

    iget-object v1, p0, Lo/InputConnectionInspector;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCard;

    iget-object v2, p0, Lo/InputConnectionInspector;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment$StateListAnimator;->e(Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCard;Ljava/lang/String;I)Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;

    move-result-object p1

    .line 17
    iget-object v0, p0, Lo/InputConnectionInspector;->a:Lo/Cloneable;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->e(Lo/Cloneable;)V

    .line 18
    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1
.end method

.method public final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCard;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lo/InputConnectionInspector;->b:Ljava/util/List;

    return-object v0
.end method
