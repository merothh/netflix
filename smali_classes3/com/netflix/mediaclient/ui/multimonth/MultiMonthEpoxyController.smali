.class public Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;
.super Lo/OfPrimitive;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController$Application;
    }
.end annotation


# static fields
.field private static final ASK_ME_LATER_STRING_KEY:Ljava/lang/String; = "ASK_ME_LATER"

.field private static final BUY_NOW_AND_SAVE_STRING_KEY:Ljava/lang/String; = "BUY_NOW_AND_SAVE"

.field public static final Companion:Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController$Application;

.field private static final EXPIRING_SOON_STRING_KEY:Ljava/lang/String; = "EXPIRING_SOON"

.field private static final FINAL_OFFER_STRING_KEY:Ljava/lang/String; = "FINAL_OFFER"

.field private static final LIMITED_TIME_OFFER_STRING_KEY:Ljava/lang/String; = "LIMITED_TIME_OFFER"

.field private static final NO_THANKS_STRING_KEY:Ljava/lang/String; = "NO_THANKS"

.field private static final stringResourceKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final onDismissClicked:Lo/alB;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alB<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private final onOfferSelected:Lo/alA;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alA<",
            "Lo/Nw;",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private final onSubmitClicked:Lo/alA;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alA<",
            "Ljava/lang/String;",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private selectedOfferId:Ljava/lang/CharSequence;

.field private viewModel:Lo/Nr;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController$Application;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;->Companion:Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController$Application;

    const/4 v0, 0x6

    new-array v0, v0, [Lkotlin/Pair;

    .line 30
    sget v1, Lo/NB$TaskDescription;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LIMITED_TIME_OFFER"

    invoke-static {v2, v1}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 31
    sget v1, Lo/NB$TaskDescription;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BUY_NOW_AND_SAVE"

    invoke-static {v2, v1}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 32
    sget v1, Lo/NB$TaskDescription;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ASK_ME_LATER"

    invoke-static {v2, v1}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 33
    sget v1, Lo/NB$TaskDescription;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "EXPIRING_SOON"

    invoke-static {v2, v1}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 34
    sget v1, Lo/NB$TaskDescription;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FINAL_OFFER"

    invoke-static {v2, v1}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 35
    sget v1, Lo/NB$TaskDescription;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "NO_THANKS"

    invoke-static {v2, v1}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 29
    invoke-static {v0}, Lo/akI;->c([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;->stringResourceKeyMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lo/alA;Lo/alA;Lo/alB;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/alA<",
            "-",
            "Lo/Nw;",
            "Lo/akj;",
            ">;",
            "Lo/alA<",
            "-",
            "Ljava/lang/String;",
            "Lo/akj;",
            ">;",
            "Lo/alB<",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onOfferSelected"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSubmitClicked"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDismissClicked"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Lo/OfPrimitive;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;->onOfferSelected:Lo/alA;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;->onSubmitClicked:Lo/alA;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;->onDismissClicked:Lo/alB;

    return-void
.end method

.method public static final synthetic access$getOnDismissClicked$p(Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;)Lo/alB;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;->onDismissClicked:Lo/alB;

    return-object p0
.end method

.method public static final synthetic access$getOnSubmitClicked$p(Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;)Lo/alA;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;->onSubmitClicked:Lo/alA;

    return-object p0
.end method

.method public static final synthetic access$getStringResourceKeyMap$cp()Ljava/util/Map;
    .locals 1

    .line 15
    sget-object v0, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;->stringResourceKeyMap:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public buildModels()V
    .locals 7

    .line 49
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;->viewModel:Lo/Nr;

    if-eqz v0, :cond_9

    .line 50
    invoke-virtual {v0}, Lo/Nr;->g()Ljava/util/List;

    move-result-object v1

    .line 51
    invoke-virtual {v0}, Lo/Nr;->c()Z

    move-result v2

    .line 139
    new-instance v3, Lo/NX;

    invoke-direct {v3}, Lo/NX;-><init>()V

    .line 143
    move-object v4, v3

    check-cast v4, Lo/NV;

    const-string v5, "header"

    .line 53
    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v4, v5}, Lo/NV;->d(Ljava/lang/CharSequence;)Lo/NV;

    .line 54
    invoke-virtual {v0}, Lo/Nr;->b()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v4, v5}, Lo/NV;->e(Ljava/lang/String;)Lo/NV;

    .line 55
    :cond_0
    invoke-interface {v4, v2}, Lo/NV;->b(Z)Lo/NV;

    .line 56
    iget-object v5, p0, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;->viewModel:Lo/Nr;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lo/Nr;->a()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 57
    :goto_0
    sget-object v6, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;->stringResourceKeyMap:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_1

    :cond_2
    sget v5, Lo/NB$TaskDescription;->i:I

    :goto_1
    invoke-interface {v4, v5}, Lo/NV;->e(I)Lo/NV;

    .line 142
    invoke-virtual {v3, p0}, Lo/NX;->a(Lo/OfPrimitive;)V

    if-eqz v2, :cond_3

    .line 60
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_3

    const/4 v2, 0x0

    .line 61
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Nw;

    .line 150
    new-instance v2, Lo/NL;

    invoke-direct {v2}, Lo/NL;-><init>()V

    .line 154
    move-object v3, v2

    check-cast v3, Lo/NM;

    const-string v4, "offer-choice-save-discount"

    .line 63
    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v3, v4}, Lo/NM;->a(Ljava/lang/CharSequence;)Lo/NM;

    .line 64
    invoke-virtual {v1}, Lo/Nw;->e()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lo/NM;->e(Ljava/lang/String;)Lo/NM;

    .line 153
    invoke-virtual {v2, p0}, Lo/NL;->a(Lo/OfPrimitive;)V

    .line 158
    new-instance v2, Lo/NC;

    invoke-direct {v2}, Lo/NC;-><init>()V

    .line 162
    move-object v3, v2

    check-cast v3, Lo/NE;

    const-string v4, "offer-choice-save-discount-month"

    .line 67
    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v3, v4}, Lo/NE;->a(Ljava/lang/CharSequence;)Lo/NE;

    .line 68
    invoke-virtual {v1}, Lo/Nw;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lo/NE;->d(Ljava/lang/String;)Lo/NE;

    .line 161
    invoke-virtual {v2, p0}, Lo/NC;->a(Lo/OfPrimitive;)V

    .line 166
    new-instance v2, Lo/NP;

    invoke-direct {v2}, Lo/NP;-><init>()V

    .line 170
    move-object v3, v2

    check-cast v3, Lo/NK;

    const-string v4, "offer-choice-full-price"

    .line 71
    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v3, v4}, Lo/NK;->a(Ljava/lang/CharSequence;)Lo/NK;

    .line 72
    invoke-virtual {v1}, Lo/Nw;->c()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lo/NK;->a(Ljava/lang/String;)Lo/NK;

    .line 169
    invoke-virtual {v2, p0}, Lo/NP;->a(Lo/OfPrimitive;)V

    .line 174
    new-instance v2, Lo/NI;

    invoke-direct {v2}, Lo/NI;-><init>()V

    .line 178
    move-object v3, v2

    check-cast v3, Lo/NH;

    const-string v4, "offer-choice-discounted-price"

    .line 75
    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v3, v4}, Lo/NH;->b(Ljava/lang/CharSequence;)Lo/NH;

    .line 76
    invoke-virtual {v1}, Lo/Nw;->d()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lo/NH;->b(Ljava/lang/String;)Lo/NH;

    .line 77
    invoke-virtual {v1}, Lo/Nw;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lo/NH;->c(Ljava/lang/String;)Lo/NH;

    .line 177
    invoke-virtual {v2, p0}, Lo/NI;->a(Lo/OfPrimitive;)V

    .line 79
    invoke-virtual {v1}, Lo/Nw;->a()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    iput-object v2, p0, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;->selectedOfferId:Ljava/lang/CharSequence;

    .line 80
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;->onOfferSelected:Lo/alA;

    invoke-interface {v2, v1}, Lo/alA;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 83
    :cond_3
    check-cast v1, Ljava/lang/Iterable;

    .line 182
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/Nw;

    .line 183
    new-instance v3, Lo/NU;

    invoke-direct {v3}, Lo/NU;-><init>()V

    .line 187
    move-object v4, v3

    check-cast v4, Lo/NS;

    .line 85
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "offer-choice-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lo/Nw;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v4, v5}, Lo/NS;->b(Ljava/lang/CharSequence;)Lo/NS;

    .line 86
    invoke-virtual {v2}, Lo/Nw;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lo/NS;->e(Ljava/lang/String;)Lo/NS;

    .line 87
    invoke-virtual {v2}, Lo/Nw;->e()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lo/NS;->a(Ljava/lang/String;)Lo/NS;

    .line 88
    invoke-virtual {v2}, Lo/Nw;->d()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v4, v5}, Lo/NS;->a(Ljava/lang/CharSequence;)Lo/NS;

    .line 89
    invoke-virtual {v2}, Lo/Nw;->c()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v4, v5}, Lo/NS;->e(Ljava/lang/CharSequence;)Lo/NS;

    .line 90
    invoke-virtual {v2}, Lo/Nw;->h()Z

    move-result v5

    invoke-interface {v4, v5}, Lo/NS;->b(Z)Lo/NS;

    .line 91
    iget-object v5, p0, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;->selectedOfferId:Ljava/lang/CharSequence;

    if-eqz v5, :cond_4

    .line 92
    invoke-virtual {v2}, Lo/Nw;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v4, v6}, Lo/NS;->a(Z)Lo/NS;

    .line 93
    invoke-virtual {v2}, Lo/Nw;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 94
    iget-object v5, p0, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;->onOfferSelected:Lo/alA;

    invoke-interface {v5, v2}, Lo/alA;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 97
    :cond_4
    invoke-virtual {v2}, Lo/Nw;->f()Z

    move-result v5

    invoke-interface {v4, v5}, Lo/NS;->a(Z)Lo/NS;

    .line 98
    invoke-virtual {v2}, Lo/Nw;->f()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 99
    invoke-virtual {v2}, Lo/Nw;->a()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    iput-object v5, p0, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;->selectedOfferId:Ljava/lang/CharSequence;

    .line 100
    iget-object v5, p0, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;->onOfferSelected:Lo/alA;

    invoke-interface {v5, v2}, Lo/alA;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_5
    :goto_3
    new-instance v5, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController$ActionBar;

    invoke-direct {v5, v2, p0}, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController$ActionBar;-><init>(Lo/Nw;Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;)V

    check-cast v5, Lo/LongStream;

    invoke-interface {v4, v5}, Lo/NS;->e(Lo/LongStream;)Lo/NS;

    .line 186
    invoke-virtual {v3, p0}, Lo/NU;->a(Lo/OfPrimitive;)V

    goto/16 :goto_2

    .line 192
    :cond_6
    :goto_4
    new-instance v1, Lo/Oa;

    invoke-direct {v1}, Lo/Oa;-><init>()V

    .line 196
    move-object v2, v1

    check-cast v2, Lo/NY;

    const-string v3, "submit-button"

    .line 112
    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v2, v3}, Lo/NY;->a(Ljava/lang/CharSequence;)Lo/NY;

    .line 113
    invoke-virtual {v0}, Lo/Nr;->j()Ljava/lang/String;

    move-result-object v3

    .line 114
    invoke-virtual {v0}, Lo/Nr;->i()Ljava/lang/String;

    move-result-object v4

    .line 115
    sget-object v5, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;->stringResourceKeyMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_5

    :cond_7
    sget v3, Lo/NB$TaskDescription;->h:I

    :goto_5
    invoke-interface {v2, v3}, Lo/NY;->c(I)Lo/NY;

    .line 116
    new-instance v3, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController$TaskDescription;

    invoke-direct {v3, v4, v0, p0}, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController$TaskDescription;-><init>(Ljava/lang/String;Lo/Nr;Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;)V

    check-cast v3, Lo/LongStream;

    invoke-interface {v2, v3}, Lo/NY;->d(Lo/LongStream;)Lo/NY;

    .line 195
    invoke-virtual {v1, p0}, Lo/Oa;->a(Lo/OfPrimitive;)V

    .line 200
    new-instance v1, Lo/NQ;

    invoke-direct {v1}, Lo/NQ;-><init>()V

    .line 204
    move-object v2, v1

    check-cast v2, Lo/NR;

    const-string v3, "dismiss-button"

    .line 128
    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v2, v3}, Lo/NR;->e(Ljava/lang/CharSequence;)Lo/NR;

    .line 129
    invoke-virtual {v0}, Lo/Nr;->d()Ljava/lang/String;

    move-result-object v3

    .line 130
    sget-object v4, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;->stringResourceKeyMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_6

    :cond_8
    sget v3, Lo/NB$TaskDescription;->c:I

    :goto_6
    invoke-interface {v2, v3}, Lo/NR;->b(I)Lo/NR;

    .line 131
    new-instance v3, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController$Activity;

    invoke-direct {v3, v0, p0}, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController$Activity;-><init>(Lo/Nr;Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;)V

    check-cast v3, Lo/LongStream;

    invoke-interface {v2, v3}, Lo/NR;->d(Lo/LongStream;)Lo/NR;

    .line 203
    invoke-virtual {v1, p0}, Lo/NQ;->a(Lo/OfPrimitive;)V

    :cond_9
    return-void
.end method

.method public final getSelectedOfferId()Ljava/lang/CharSequence;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;->selectedOfferId:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final setData(Lo/Nr;)V
    .locals 1

    const-string v0, "viewModel"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;->viewModel:Lo/Nr;

    .line 45
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;->requestModelBuild()V

    return-void
.end method

.method public final setSelectedOfferId(Ljava/lang/CharSequence;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;->selectedOfferId:Ljava/lang/CharSequence;

    return-void
.end method
