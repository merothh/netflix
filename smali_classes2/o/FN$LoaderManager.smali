.class final Lo/FN$LoaderManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FN;->I()V
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
        "Lio/reactivex/functions/Consumer<",
        "Lo/FJ;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/FN;


# direct methods
.method constructor <init>(Lo/FN;)V
    .locals 0

    iput-object p1, p0, Lo/FN$LoaderManager;->a:Lo/FN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 75
    check-cast p1, Lo/FJ;

    invoke-virtual {p0, p1}, Lo/FN$LoaderManager;->c(Lo/FJ;)V

    return-void
.end method

.method public final c(Lo/FJ;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 849
    check-cast p1, Lo/FP$ActionBar;

    .line 851
    iget-object v0, p0, Lo/FN$LoaderManager;->a:Lo/FN;

    invoke-virtual {p1}, Lo/FP$ActionBar;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lo/FN;->e(I)V

    .line 853
    iget-object v0, p0, Lo/FN$LoaderManager;->a:Lo/FN;

    invoke-virtual {p1}, Lo/FP$ActionBar;->d()Z

    move-result p1

    invoke-static {v0, p1}, Lo/FN;->c(Lo/FN;Z)V

    return-void

    .line 849
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.netflix.mediaclient.ui.details.v2.DetailsPageTabsUINonUserEvents.OnDetailsPageScrolled_Ab18255"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
