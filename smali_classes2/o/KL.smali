.class public Lo/KL;
.super Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/KL$ActionBar;,
        Lo/KL$Activity;,
        Lo/KL$Application;,
        Lo/KL$StateListAnimator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lo/AR;",
        ">",
        "Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter<",
        "Lo/KL$StateListAnimator;",
        "TO;>;"
    }
.end annotation


# static fields
.field private static final d:Lo/Av;


# instance fields
.field private final a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lo/AR;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field protected final h:Lo/PooledStringReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    new-instance v0, Lo/KL$2;

    invoke-direct {v0}, Lo/KL$2;-><init>()V

    sput-object v0, Lo/KL;->d:Lo/Av;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;Lo/PooledStringWriter;ILo/KN;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V
    .locals 0

    .line 89
    invoke-direct/range {p0 .. p7}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;Lo/PooledStringWriter;ILo/KN;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    .line 58
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lo/KL;->a:Ljava/util/LinkedList;

    .line 90
    new-instance p2, Lo/PooledStringReader;

    invoke-direct {p2, p1, p0}, Lo/PooledStringReader;-><init>(Landroid/content/Context;Lo/ParcelFormatException;)V

    iput-object p2, p0, Lo/KL;->h:Lo/PooledStringReader;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Ljava/lang/String;Lo/Am;Lo/PooledStringWriter;ILo/KN;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V
    .locals 0

    .line 94
    invoke-direct/range {p0 .. p8}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Ljava/lang/String;Lo/Am;Lo/PooledStringWriter;ILo/KN;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    .line 58
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lo/KL;->a:Ljava/util/LinkedList;

    .line 95
    new-instance p2, Lo/PooledStringReader;

    invoke-direct {p2, p1, p0}, Lo/PooledStringReader;-><init>(Landroid/content/Context;Lo/ParcelFormatException;)V

    iput-object p2, p0, Lo/KL;->h:Lo/PooledStringReader;

    return-void
.end method

.method static synthetic a(Lo/NfcEvent$StateListAnimator;)V
    .locals 0

    invoke-static {p0}, Lo/KL;->b(Lo/NfcEvent$StateListAnimator;)V

    return-void
.end method

.method static synthetic b(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lo/KL;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static synthetic b(Lo/NfcEvent$StateListAnimator;)V
    .locals 0

    return-void
.end method

.method private static synthetic c(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "StandardListAdapter"

    const-string v1, "prefetching image failed"

    .line 183
    invoke-static {v0, v1, p0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/view/View;Lo/PatternMatcher;Landroidx/recyclerview/widget/RecyclerView$Dialog;)Lo/KL$Activity;
    .locals 6

    .line 135
    invoke-interface {p3}, Lo/PatternMatcher;->e()Lo/PooledStringWriter;

    move-result-object p4

    invoke-virtual {p4}, Lo/PooledStringWriter;->k()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 136
    new-instance p4, Lo/KL$ActionBar;

    iget-object v4, p0, Lo/KL;->h:Lo/PooledStringReader;

    const/4 v5, 0x0

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lo/KL$ActionBar;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lo/PatternMatcher;Lo/PooledStringReader;Lo/KL$2;)V

    return-object p4

    .line 138
    :cond_0
    new-instance p4, Lo/KL$Activity;

    iget-object v0, p0, Lo/KL;->h:Lo/PooledStringReader;

    invoke-direct {p4, p1, p2, p3, v0}, Lo/KL$Activity;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lo/PatternMatcher;Lo/PooledStringReader;)V

    return-object p4
.end method

.method protected final a(Landroid/view/ViewGroup;Lo/PatternMatcher;Landroidx/recyclerview/widget/RecyclerView$Dialog;)Lo/KL$Activity;
    .locals 2

    .line 128
    new-instance v0, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 129
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->kP:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 130
    invoke-virtual {v0, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    invoke-virtual {p0, p1, v0, p2, p3}, Lo/KL;->a(Landroid/view/ViewGroup;Landroid/view/View;Lo/PatternMatcher;Landroidx/recyclerview/widget/RecyclerView$Dialog;)Lo/KL$Activity;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    if-nez p3, :cond_0

    .line 198
    invoke-virtual {p0, p2}, Lo/KL;->e(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_0
    return-void
.end method

.method public synthetic a(Lo/ParcelFormatException$Activity;IZ)V
    .locals 0

    .line 52
    check-cast p1, Lo/KL$StateListAnimator;

    invoke-virtual {p0, p1, p2, p3}, Lo/KL;->b(Lo/KL$StateListAnimator;IZ)V

    return-void
.end method

.method public b(Landroid/view/ViewGroup;I)Lo/KL$StateListAnimator;
    .locals 2

    .line 112
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$Dialog;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$Dialog;-><init>(II)V

    .line 113
    invoke-virtual {p0}, Lo/KL;->e()Lo/PooledStringWriter;

    move-result-object v1

    invoke-virtual {v1}, Lo/PooledStringWriter;->b()I

    move-result v1

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$Dialog;->leftMargin:I

    .line 114
    invoke-virtual {p0}, Lo/KL;->e()Lo/PooledStringWriter;

    move-result-object v1

    invoke-virtual {v1}, Lo/PooledStringWriter;->b()I

    move-result v1

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$Dialog;->topMargin:I

    .line 115
    invoke-virtual {p0}, Lo/KL;->e()Lo/PooledStringWriter;

    move-result-object v1

    invoke-virtual {v1}, Lo/PooledStringWriter;->b()I

    move-result v1

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$Dialog;->rightMargin:I

    .line 116
    invoke-virtual {p0}, Lo/KL;->e()Lo/PooledStringWriter;

    move-result-object v1

    invoke-virtual {v1}, Lo/PooledStringWriter;->b()I

    move-result v1

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$Dialog;->bottomMargin:I

    if-nez p2, :cond_0

    .line 118
    new-instance p2, Lo/ResourceCursorTreeAdapter;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Lo/ResourceCursorTreeAdapter;-><init>(Landroid/content/Context;)V

    .line 119
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->kP:I

    invoke-virtual {p2, v1}, Lo/ResourceCursorTreeAdapter;->setId(I)V

    .line 120
    invoke-virtual {p2, v0}, Lo/ResourceCursorTreeAdapter;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    new-instance v0, Lo/KL$Application;

    invoke-direct {v0, p1, p2, p0}, Lo/KL$Application;-><init>(Landroid/view/ViewGroup;Lo/ResourceCursorTreeAdapter;Lo/PatternMatcher;)V

    return-object v0

    .line 123
    :cond_0
    invoke-virtual {p0, p1, p0, v0}, Lo/KL;->a(Landroid/view/ViewGroup;Lo/PatternMatcher;Landroidx/recyclerview/widget/RecyclerView$Dialog;)Lo/KL$Activity;

    move-result-object p1

    return-object p1
.end method

.method protected b(Lo/KL$StateListAnimator;IZ)V
    .locals 6

    .line 154
    invoke-virtual {p0}, Lo/KL;->g()Lo/Ky;

    move-result-object v1

    sget-object v2, Lo/KL;->d:Lo/Av;

    new-instance v5, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    sget-object v0, Lcom/netflix/cl/model/AppView;->noRow:Lcom/netflix/cl/model/AppView;

    invoke-direct {v5, v0}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;-><init>(Lcom/netflix/cl/model/AppView;)V

    move-object v0, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lo/KL$StateListAnimator;->c(Lo/Ky;Lo/Av;IZLcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TO;>;)V"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lo/KL;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method protected c(Lo/KL$StateListAnimator;Lo/AR;IZ)V
    .locals 8

    .line 145
    invoke-virtual {p0}, Lo/KL;->q()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lo/KL$Application;

    if-eqz v0, :cond_0

    .line 146
    move-object v0, p1

    check-cast v0, Lo/KL$Application;

    invoke-virtual {p0}, Lo/KL;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/KL$Application;->e(Ljava/lang/String;)V

    .line 149
    :cond_0
    invoke-virtual {p0}, Lo/KL;->g()Lo/Ky;

    move-result-object v3

    iget-object v7, p0, Lo/KL;->b:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v2 .. v7}, Lo/KL$StateListAnimator;->c(Lo/Ky;Lo/Av;IZLcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    return-void
.end method

.method e(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    const/4 v0, 0x0

    .line 203
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 204
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$Intent;

    move-result-object v1

    check-cast v1, Lo/KL$StateListAnimator;

    .line 205
    invoke-virtual {v1}, Lo/KL$StateListAnimator;->c()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected e(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 3

    .line 160
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->e(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_0

    .line 163
    invoke-virtual {p0, p1}, Lo/KL;->e(Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_2

    .line 166
    :goto_0
    iget-object p2, p0, Lo/KL;->a:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 167
    iget-object p2, p0, Lo/KL;->a:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/AR;

    .line 168
    invoke-interface {p2}, Lo/AR;->getBoxshotUrl()Ljava/lang/String;

    move-result-object p2

    .line 169
    invoke-static {p2}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, "StandardListAdapter"

    const-string v0, "image url is empty, StandardListAdapter.onScrollStateChanged"

    .line 170
    invoke-static {p2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 172
    :cond_1
    invoke-virtual {p0}, Lo/KL;->b()Landroid/content/Context;

    move-result-object v0

    .line 173
    const-class v1, Lo/Serializable;

    invoke-static {v0, v1}, Lo/adu;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Serializable;

    .line 174
    sget-object v2, Lo/ErrorCodes;->d:Lo/ErrorCodes$TaskDescription;

    invoke-virtual {v2, v0}, Lo/ErrorCodes$TaskDescription;->e(Landroid/content/Context;)Lo/ErrorCodes;

    move-result-object v0

    .line 176
    invoke-static {v1}, Lo/NfcEvent;->c(Lo/Serializable;)Lo/NfcEvent;

    move-result-object v2

    .line 177
    invoke-virtual {v2, p2}, Lo/NfcEvent;->b(Ljava/lang/String;)Lo/NfcEvent;

    move-result-object p2

    .line 178
    invoke-virtual {p2, p1}, Lo/NfcEvent;->e(Z)Lo/NfcEvent;

    move-result-object p2

    .line 179
    invoke-virtual {p2}, Lo/NfcEvent;->d()Lo/NfcEvent$Activity;

    move-result-object p2

    .line 174
    invoke-interface {v0, p2}, Lo/ErrorCodes;->a(Lo/NfcEvent$Activity;)Lio/reactivex/Single;

    move-result-object p2

    .line 180
    invoke-static {v1}, Lcom/uber/autodispose/android/lifecycle/AndroidLifecycleScopeProvider;->d(Lo/UnicodeScript;)Lcom/uber/autodispose/android/lifecycle/AndroidLifecycleScopeProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/uber/autodispose/AutoDispose;->d(Lcom/uber/autodispose/ScopeProvider;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/Single;->as(Lio/reactivex/SingleConverter;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/uber/autodispose/SingleSubscribeProxy;

    sget-object v0, Lo/KJ;->a:Lo/KJ;

    sget-object v1, Lo/KQ;->d:Lo/KQ;

    .line 181
    invoke-interface {p2, v0, v1}, Lcom/uber/autodispose/SingleSubscribeProxy;->a(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public synthetic e(Lo/ParcelFormatException$Activity;Lo/AR;IZ)V
    .locals 0

    .line 52
    check-cast p1, Lo/KL$StateListAnimator;

    invoke-virtual {p0, p1, p2, p3, p4}, Lo/KL;->c(Lo/KL$StateListAnimator;Lo/AR;IZ)V

    return-void
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 100
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 101
    iget-object v0, p0, Lo/KL;->h:Lo/PooledStringReader;

    invoke-virtual {v0, p1}, Lo/PooledStringReader;->b(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$Intent;
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lo/KL;->b(Landroid/view/ViewGroup;I)Lo/KL$StateListAnimator;

    move-result-object p1

    return-object p1
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lo/KL;->h:Lo/PooledStringReader;

    invoke-virtual {v0, p1}, Lo/PooledStringReader;->d(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 107
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lo/KL;->c:Ljava/lang/String;

    return-object v0
.end method
