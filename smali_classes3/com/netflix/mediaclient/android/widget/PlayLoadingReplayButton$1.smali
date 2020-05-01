.class public final Lcom/netflix/mediaclient/android/widget/PlayLoadingReplayButton$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ListAdapter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/akj;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lo/ListAdapter;


# direct methods
.method public constructor <init>(Lo/ListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/PlayLoadingReplayButton$1;->e:Lo/ListAdapter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Lo/akj;)V
    .locals 2

    .line 161
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/PlayLoadingReplayButton$1;->e:Lo/ListAdapter;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lo/ListAdapter;->c(Lo/ListAdapter;Z)V

    .line 162
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/PlayLoadingReplayButton$1;->e:Lo/ListAdapter;

    invoke-static {p1}, Lo/ListAdapter;->d(Lo/ListAdapter;)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 163
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/PlayLoadingReplayButton$1;->e:Lo/ListAdapter;

    invoke-static {v1, p1}, Lo/ListAdapter;->b(Lo/ListAdapter;I)V

    .line 164
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/PlayLoadingReplayButton$1;->e:Lo/ListAdapter;

    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-static {p1, v1}, Lo/ListAdapter;->c(Lo/ListAdapter;Ljava/lang/Integer;)V

    .line 166
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/PlayLoadingReplayButton$1;->e:Lo/ListAdapter;

    invoke-static {p1}, Lo/ListAdapter;->e(Lo/ListAdapter;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 167
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/PlayLoadingReplayButton$1;->e:Lo/ListAdapter;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lo/ListAdapter;->e(Ljava/lang/Integer;)V

    .line 168
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/PlayLoadingReplayButton$1;->e:Lo/ListAdapter;

    check-cast v0, Ljava/lang/Integer;

    invoke-static {p1, v0}, Lo/ListAdapter;->e(Lo/ListAdapter;Ljava/lang/Integer;)V

    :cond_1
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p1, Lo/akj;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/widget/PlayLoadingReplayButton$1;->c(Lo/akj;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
