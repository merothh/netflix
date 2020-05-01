.class public final Lcom/netflix/mediaclient/ui/notifications/v2/NotificationsUIPresenterV2$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Pl;-><init>(Lo/UnicodeScript;Lo/Pj;Lo/Pd;Lio/reactivex/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Ljava/util/List<",
        "+",
        "Lo/Pa;",
        ">;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/Pl;


# direct methods
.method public constructor <init>(Lo/Pl;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/notifications/v2/NotificationsUIPresenterV2$1;->a:Lo/Pl;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/Pa;",
            ">;)V"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/notifications/v2/NotificationsUIPresenterV2$1;->a:Lo/Pl;

    invoke-static {v0}, Lo/Pl;->d(Lo/Pl;)Lo/Pj;

    move-result-object v0

    new-instance v1, Lo/Pk$ActionBar;

    const-string v2, "it"

    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lo/akz;->d(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Lo/Pk$ActionBar;-><init>(Ljava/util/List;)V

    check-cast v1, Lo/Pk;

    invoke-virtual {v0, v1}, Lo/Pj;->d(Lo/Pk;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 12
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/notifications/v2/NotificationsUIPresenterV2$1;->b(Ljava/util/List;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
