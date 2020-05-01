.class public final Lcom/netflix/mediaclient/ui/notifications/multititle/MultiTitleNotificationViewModel$updateRows$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/OJ;->c(Ljava/util/List;Ljava/util/List;Lo/Am;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "[",
        "Ljava/lang/Object;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/notifications/multititle/MultiTitleNotificationViewModel$updateRows$2;->b:Ljava/util/List;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e([Ljava/lang/Object;)V
    .locals 6

    const-string v0, "heroTitles"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 199
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p1, v3

    if-eqz v4, :cond_2

    .line 182
    move-object v5, v4

    check-cast v5, Lo/OI;

    invoke-virtual {v5}, Lo/OI;->d()Lo/Bc;

    move-result-object v5

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_1

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.netflix.mediaclient.ui.notifications.multititle.HeroTitle"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 200
    :cond_3
    check-cast v0, Ljava/util/List;

    .line 185
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/notifications/multititle/MultiTitleNotificationViewModel$updateRows$2;->b:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_4

    invoke-static {p1}, Lo/amk;->b(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    return-void

    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.collections.MutableCollection<T>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/notifications/multititle/MultiTitleNotificationViewModel$updateRows$2;->e([Ljava/lang/Object;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
