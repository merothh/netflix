.class final Lcom/netflix/android/widgetry/widget/menu/MenuController$dismissClickListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/android/widgetry/widget/menu/MenuController;-><init>(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Landroid/view/View;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/netflix/android/widgetry/widget/menu/MenuController;


# direct methods
.method constructor <init>(Lcom/netflix/android/widgetry/widget/menu/MenuController;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/menu/MenuController$dismissClickListener$1;->e:Lcom/netflix/android/widgetry/widget/menu/MenuController;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Lcom/netflix/android/widgetry/widget/menu/MenuController$dismissClickListener$1;->e:Lcom/netflix/android/widgetry/widget/menu/MenuController;

    invoke-virtual {p1}, Lcom/netflix/android/widgetry/widget/menu/MenuController;->getDismissSubject()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    sget-object v0, Lo/akj;->a:Lo/akj;

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/netflix/android/widgetry/widget/menu/MenuController$dismissClickListener$1;->a(Landroid/view/View;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
