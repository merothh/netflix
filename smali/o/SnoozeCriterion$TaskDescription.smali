.class public final Lo/SnoozeCriterion$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/SnoozeCriterion;->e(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/SnoozeCriterion;


# direct methods
.method constructor <init>(Lo/SnoozeCriterion;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 109
    iput-object p1, p0, Lo/SnoozeCriterion$TaskDescription;->c:Lo/SnoozeCriterion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 5

    .line 111
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 112
    iget-object v0, p0, Lo/SnoozeCriterion$TaskDescription;->c:Lo/SnoozeCriterion;

    invoke-static {v0}, Lo/SnoozeCriterion;->e(Lo/SnoozeCriterion;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/Iterable;

    .line 140
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 141
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/netflix/mediaclient/acquisition2/components/countrySelector/PhoneCodeListWrapper;

    .line 113
    invoke-virtual {v3}, Lcom/netflix/mediaclient/acquisition2/components/countrySelector/PhoneCodeListWrapper;->b()Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCode;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    invoke-static {v3, p1, v4}, Lo/anv;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 142
    :cond_2
    check-cast v1, Ljava/util/List;

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 115
    :goto_1
    iget-object p1, p0, Lo/SnoozeCriterion$TaskDescription;->c:Lo/SnoozeCriterion;

    invoke-static {p1}, Lo/SnoozeCriterion;->a(Lo/SnoozeCriterion;)Lo/ZenModeConfig;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1, v1}, Lo/ZenModeConfig;->a(Ljava/util/List;)V

    goto :goto_2

    .line 117
    :cond_4
    iget-object p1, p0, Lo/SnoozeCriterion$TaskDescription;->c:Lo/SnoozeCriterion;

    invoke-static {p1}, Lo/SnoozeCriterion;->a(Lo/SnoozeCriterion;)Lo/ZenModeConfig;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object v0, p0, Lo/SnoozeCriterion$TaskDescription;->c:Lo/SnoozeCriterion;

    invoke-static {v0}, Lo/SnoozeCriterion;->e(Lo/SnoozeCriterion;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/ZenModeConfig;->a(Ljava/util/List;)V

    :cond_5
    :goto_2
    const/4 p1, 0x0

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
