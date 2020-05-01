.class final Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2$$special$$inlined$let$lambda$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2;->a(Lo/Build;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Ljava/lang/Long;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic c:Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2;

.field final synthetic d:Lo/Build;


# direct methods
.method constructor <init>(ILcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2;Lo/Build;)V
    .locals 0

    iput p1, p0, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2$$special$$inlined$let$lambda$2;->a:I

    iput-object p2, p0, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2$$special$$inlined$let$lambda$2;->c:Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2;

    iput-object p3, p0, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2$$special$$inlined$let$lambda$2;->d:Lo/Build;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Long;)V
    .locals 2

    .line 80
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "artificialTimerSubscription ran"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 81
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2$$special$$inlined$let$lambda$2;->c:Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2;

    iget-object p1, p1, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2;->b:Lo/DropBoxManager;

    invoke-static {p1}, Lo/DropBoxManager;->b(Lo/DropBoxManager;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lo/DropBoxManager;->e(Lo/DropBoxManager;I)V

    .line 82
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2$$special$$inlined$let$lambda$2;->c:Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2;

    iget-object p1, p1, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2;->a:Lo/DeadSystemException;

    .line 83
    iget v0, p0, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2$$special$$inlined$let$lambda$2;->a:I

    iget-object v1, p0, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2$$special$$inlined$let$lambda$2;->c:Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2;

    iget-object v1, v1, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2;->b:Lo/DropBoxManager;

    invoke-static {v1}, Lo/DropBoxManager;->b(Lo/DropBoxManager;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2$$special$$inlined$let$lambda$2;->d:Lo/Build;

    check-cast v1, Lo/Build$Cursor;

    invoke-virtual {v1}, Lo/Build$Cursor;->e()Ljava/lang/Integer;

    move-result-object v1

    .line 82
    invoke-interface {p1, v0, v1}, Lo/DeadSystemException;->e(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 12
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2$$special$$inlined$let$lambda$2;->c(Ljava/lang/Long;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
