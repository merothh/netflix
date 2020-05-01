.class final Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageInteractiveRestartStateUIPresenter$1$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageInteractiveRestartStateUIPresenter$1;->d(Lo/DC;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Predicate<",
        "Lo/DG;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageInteractiveRestartStateUIPresenter$1$5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageInteractiveRestartStateUIPresenter$1$5;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageInteractiveRestartStateUIPresenter$1$5;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageInteractiveRestartStateUIPresenter$1$5;->e:Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageInteractiveRestartStateUIPresenter$1$5;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lo/DG;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    instance-of p1, p1, Lo/DG$PictureInPictureParams;

    return p1
.end method

.method public synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 10
    check-cast p1, Lo/DG;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageInteractiveRestartStateUIPresenter$1$5;->b(Lo/DG;)Z

    move-result p1

    return p1
.end method
