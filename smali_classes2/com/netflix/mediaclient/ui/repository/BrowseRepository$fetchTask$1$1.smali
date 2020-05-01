.class public final Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchTask$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Zx$Dialog;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/hW;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/Zx$Dialog;

.field final synthetic c:Lio/reactivex/ObservableEmitter;


# direct methods
.method public constructor <init>(Lo/Zx$Dialog;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchTask$1$1;->b:Lo/Zx$Dialog;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchTask$1$1;->c:Lio/reactivex/ObservableEmitter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Lo/hW;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchTask$1$1;->b:Lo/Zx$Dialog;

    iget-object v0, v0, Lo/Zx$Dialog;->c:Lo/DateTransformation;

    check-cast v0, Lo/AutofillServiceInfo;

    .line 43
    new-instance v1, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchTask$1$1$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchTask$1$1$3;-><init>(Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchTask$1$1;)V

    check-cast v1, Lo/cm;

    .line 41
    invoke-interface {p1, v0, v1}, Lo/hW;->d(Lo/AutofillServiceInfo;Lo/cm;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 24
    check-cast p1, Lo/hW;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchTask$1$1;->c(Lo/hW;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
