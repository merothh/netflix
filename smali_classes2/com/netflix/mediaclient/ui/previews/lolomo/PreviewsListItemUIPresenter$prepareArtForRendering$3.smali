.class public final Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsListItemUIPresenter$prepareArtForRendering$3;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/YG;->a(Lo/YN;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Ljava/lang/Throwable;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsListItemUIPresenter$prepareArtForRendering$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsListItemUIPresenter$prepareArtForRendering$3;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsListItemUIPresenter$prepareArtForRendering$3;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsListItemUIPresenter$prepareArtForRendering$3;->d:Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsListItemUIPresenter$prepareArtForRendering$3;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    sget-object p1, Lo/YG;->e:Lo/YG$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsListItemUIPresenter$prepareArtForRendering$3;->b(Ljava/lang/Throwable;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
