.class public final Lo/ZL;
.super Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ZL$StateListAnimator;,
        Lo/ZL$TaskDescription;,
        Lo/ZL$ActionBar;
    }
.end annotation


# static fields
.field public static final v:Lo/ZL$ActionBar;


# instance fields
.field private final u:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final x:Lo/aka;

.field private y:J

.field private z:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/ZL$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ZL$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/ZL;->v:Lo/ZL$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;-><init>()V

    .line 55
    new-instance v0, Lcom/netflix/mediaclient/ui/search/lolomo/SearchLolomoRecyclerViewFrag$searchFetchStrategy$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/search/lolomo/SearchLolomoRecyclerViewFrag$searchFetchStrategy$2;-><init>(Lo/ZL;)V

    check-cast v0, Lo/alB;

    invoke-static {v0}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object v0

    iput-object v0, p0, Lo/ZL;->x:Lo/aka;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/ZL;->u:Ljava/util/HashMap;

    return-void
.end method

.method private final H()Lo/ZL$TaskDescription;
    .locals 1

    iget-object v0, p0, Lo/ZL;->x:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ZL$TaskDescription;

    return-object v0
.end method

.method public static final synthetic a(Lo/ZL;)J
    .locals 2

    .line 32
    iget-wide v0, p0, Lo/ZL;->y:J

    return-wide v0
.end method

.method public static final synthetic b(Lo/ZL;J)V
    .locals 0

    .line 32
    iput-wide p1, p0, Lo/ZL;->y:J

    return-void
.end method


# virtual methods
.method protected E()Lo/ZL$TaskDescription;
    .locals 1

    .line 74
    invoke-direct {p0}, Lo/ZL;->H()Lo/ZL$TaskDescription;

    move-result-object v0

    return-object v0
.end method

.method public I()V
    .locals 1

    iget-object v0, p0, Lo/ZL;->z:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public ad_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "lomos"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 112
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 113
    invoke-virtual {p0}, Lo/ZL;->c()Lo/AH;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 114
    check-cast p1, Ljava/lang/Iterable;

    const/4 v2, 0x0

    .line 208
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v8, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v9, v8, 0x1

    if-gez v8, :cond_0

    invoke-static {}, Lo/akz;->c()V

    :cond_0
    check-cast v2, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    .line 115
    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 116
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v2

    const-string v3, "lomo.id must not be null"

    invoke-interface {v2, v3}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 117
    :cond_1
    iget-object v3, p0, Lo/ZL;->u:Ljava/util/HashMap;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    .line 118
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    .line 120
    sget-object v3, Lcom/netflix/cl/model/AppView;->searchSuggestionTitleResults:Lcom/netflix/cl/model/AppView;

    .line 122
    invoke-direct {p0}, Lo/ZL;->H()Lo/ZL$TaskDescription;

    move-result-object v5

    invoke-virtual {v5}, Lo/ZL$TaskDescription;->c()Ljava/lang/String;

    move-result-object v5

    .line 123
    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object v6

    .line 124
    invoke-interface {v1}, Lo/AH;->getId()Ljava/lang/String;

    move-result-object v7

    .line 119
    invoke-static/range {v3 .. v8}, Lo/Zy;->d(Lcom/netflix/cl/model/AppView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->d:Ljava/lang/Object;

    .line 127
    iget-object v3, p0, Lo/ZL;->u:Ljava/util/HashMap;

    check-cast v3, Ljava/util/Map;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v4, "lomo.id"

    invoke-static {v2, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->d:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    move v8, v9

    goto :goto_0

    :cond_3
    return-void
.end method

.method public c(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    const-string v0, "lolomoTrackingParams"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    const-string v0, "query"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0}, Lo/ZL;->H()Lo/ZL$TaskDescription;

    move-result-object v0

    invoke-virtual {v0}, Lo/ZL$TaskDescription;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 68
    invoke-direct {p0}, Lo/ZL;->H()Lo/ZL$TaskDescription;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/ZL$TaskDescription;->a(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lo/ZL;->y()V

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p0, v0, v0, p1}, Lo/ZL;->b(IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public e(Landroid/view/View;)V
    .locals 3

    const-string v0, "content"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    new-instance v0, Lo/CheckBox;

    iget-object v1, p0, Lo/ZL;->w:Lo/DatePickerCalendarDelegate$Activity;

    sget-object v2, Lo/CheckBox;->e:Lo/CheckBox$ActionBar;

    invoke-direct {v0, p1, v1, v2}, Lo/CheckBox;-><init>(Landroid/view/View;Lo/DatePickerCalendarDelegate$Activity;Lo/CheckBox$ActionBar;)V

    check-cast v0, Lo/EditText;

    iput-object v0, p0, Lo/ZL;->j:Lo/EditText;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-super {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 85
    invoke-virtual {p0}, Lo/ZL;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/netflix/mediaclient/ui/R$TaskDescription;->S:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p0, p2}, Lo/ZL;->b(I)V

    .line 87
    iget-object p2, p0, Lo/ZL;->h:Lo/Kx;

    if-eqz p2, :cond_0

    new-instance p3, Lo/ZL$Application;

    invoke-direct {p3, p0}, Lo/ZL$Application;-><init>(Lo/ZL;)V

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;

    invoke-virtual {p2, p3}, Lo/Kx;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;)V

    :cond_0
    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->onDestroyView()V

    invoke-virtual {p0}, Lo/ZL;->I()V

    return-void
.end method

.method public t()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 76
    sget-object v0, Lcom/netflix/cl/model/AppView;->searchSuggestionResults:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public synthetic v()Lo/KN;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lo/ZL;->E()Lo/ZL$TaskDescription;

    move-result-object v0

    check-cast v0, Lo/KN;

    return-object v0
.end method

.method public y()V
    .locals 3

    .line 135
    iget-object v0, p0, Lo/ZL;->u:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 136
    sget-object v2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v2, v1}, Lcom/netflix/cl/Logger;->removeContext(Ljava/lang/Long;)Z

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lo/ZL;->u:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method
