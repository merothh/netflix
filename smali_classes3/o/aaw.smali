.class public final Lo/aaw;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/aaw$Application;
    }
.end annotation


# static fields
.field public static final a:Lo/aaw$Application;


# instance fields
.field private b:[Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

.field private c:[Ljava/lang/String;

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/aaJ;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/aaN;",
            ">;"
        }
    .end annotation
.end field

.field private g:[Ljava/lang/String;

.field private final h:[Lo/Yf;

.field private j:[Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/aaw$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/aaw$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/aaw;->a:Lo/aaw$Application;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lo/aaw;->e:Ljava/util/Set;

    .line 27
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lo/aaw;->d:Ljava/util/Set;

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v0, :cond_0

    .line 29
    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lo/aaw;->b:[Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    new-array v1, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    .line 31
    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iput-object v1, p0, Lo/aaw;->c:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_2

    .line 33
    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    iput-object v1, p0, Lo/aaw;->g:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Long;

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v0, :cond_3

    .line 35
    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    iput-object v1, p0, Lo/aaw;->j:[Ljava/lang/Long;

    new-array v1, v0, [Lo/Yf;

    :goto_4
    if-ge v2, v0, :cond_4

    .line 37
    new-instance v3, Lo/Yf;

    invoke-direct {v3}, Lo/Yf;-><init>()V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    iput-object v1, p0, Lo/aaw;->h:[Lo/Yf;

    return-void
.end method

.method private final a(Lcom/netflix/cl/model/AppView;)Z
    .locals 3

    .line 47
    sget-object v0, Lcom/netflix/cl/model/AppView;->searchTitleResults:Lcom/netflix/cl/model/AppView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    .line 48
    iget-object p1, p0, Lo/aaw;->e:Ljava/util/Set;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 50
    :cond_0
    iget-object p1, p0, Lo/aaw;->d:Ljava/util/Set;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private final b(Lcom/netflix/cl/model/AppView;)I
    .locals 1

    .line 40
    sget-object v0, Lcom/netflix/cl/model/AppView;->searchTitleResults:Lcom/netflix/cl/model/AppView;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method private final e(Lcom/netflix/cl/model/AppView;)V
    .locals 4

    .line 107
    invoke-direct {p0, p1}, Lo/aaw;->b(Lcom/netflix/cl/model/AppView;)I

    move-result v0

    .line 109
    iget-object v1, p0, Lo/aaw;->c:[Ljava/lang/String;

    aget-object v2, v1, v0

    if-nez v2, :cond_0

    .line 110
    iget-object v2, p0, Lo/aaw;->g:[Ljava/lang/String;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    .line 113
    :cond_0
    invoke-direct {p0, p1}, Lo/aaw;->a(Lcom/netflix/cl/model/AppView;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 116
    iget-object v1, p0, Lo/aaw;->j:[Ljava/lang/Long;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/aaw;->c:[Ljava/lang/String;

    aget-object v1, v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    iget-object v3, p0, Lo/aaw;->g:[Ljava/lang/String;

    aget-object v3, v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 117
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v3, p0, Lo/aaw;->j:[Ljava/lang/Long;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 118
    iget-object v1, p0, Lo/aaw;->j:[Ljava/lang/Long;

    check-cast v2, Ljava/lang/Long;

    aput-object v2, v1, v0

    .line 120
    iget-object v1, p0, Lo/aaw;->h:[Lo/Yf;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lo/Yf;->b()V

    .line 123
    :cond_1
    iget-object v1, p0, Lo/aaw;->j:[Ljava/lang/Long;

    aget-object v2, v1, v0

    if-nez v2, :cond_4

    .line 124
    iget-object v2, p0, Lo/aaw;->b:[Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    .line 125
    invoke-static {p1, v2}, Lo/Zy;->e(Lcom/netflix/cl/model/AppView;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v0

    .line 127
    :cond_2
    iget-object p1, p0, Lo/aaw;->c:[Ljava/lang/String;

    iget-object v1, p0, Lo/aaw;->g:[Ljava/lang/String;

    aget-object v1, v1, v0

    aput-object v1, p1, v0

    goto :goto_0

    .line 131
    :cond_3
    iget-object p1, p0, Lo/aaw;->j:[Ljava/lang/Long;

    aget-object p1, p1, v0

    if-eqz p1, :cond_4

    .line 132
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v1, p0, Lo/aaw;->j:[Ljava/lang/Long;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 133
    iget-object p1, p0, Lo/aaw;->j:[Ljava/lang/Long;

    check-cast v2, Ljava/lang/Long;

    aput-object v2, p1, v0

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 6

    .line 140
    sget-object v0, Lcom/netflix/cl/model/AppView;->searchTitleResults:Lcom/netflix/cl/model/AppView;

    invoke-direct {p0, v0}, Lo/aaw;->e(Lcom/netflix/cl/model/AppView;)V

    .line 141
    sget-object v0, Lcom/netflix/cl/model/AppView;->searchSuggestionResults:Lcom/netflix/cl/model/AppView;

    invoke-direct {p0, v0}, Lo/aaw;->e(Lcom/netflix/cl/model/AppView;)V

    .line 144
    iget-object v0, p0, Lo/aaw;->b:[Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    sget-object v1, Lcom/netflix/cl/model/AppView;->searchTitleResults:Lcom/netflix/cl/model/AppView;

    invoke-direct {p0, v1}, Lo/aaw;->b(Lcom/netflix/cl/model/AppView;)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 145
    iget-object v1, p0, Lo/aaw;->e:Ljava/util/Set;

    check-cast v1, Ljava/lang/Iterable;

    .line 185
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/aaN;

    .line 147
    sget-object v3, Lcom/netflix/cl/model/AppView;->searchTitleResults:Lcom/netflix/cl/model/AppView;

    .line 148
    invoke-virtual {v2}, Lo/aaN;->h()Lo/AR;

    move-result-object v4

    if-eqz v4, :cond_0

    check-cast v4, Lo/agg;

    invoke-interface {v4}, Lo/agg;->as_()Lo/AR;

    move-result-object v4

    const-string v5, "(it.video() as FullVideoDetails).summary"

    invoke-static {v4, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lo/aaN;->m()I

    move-result v2

    invoke-virtual {v0, v4, v2}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b(Lo/AR;I)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v2

    .line 146
    invoke-static {v3, v2}, Lo/Zy;->a(Lcom/netflix/cl/model/AppView;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    goto :goto_0

    .line 148
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.netflix.model.FullVideoDetails"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_1
    iget-object v0, p0, Lo/aaw;->b:[Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    sget-object v1, Lcom/netflix/cl/model/AppView;->searchSuggestionResults:Lcom/netflix/cl/model/AppView;

    invoke-direct {p0, v1}, Lo/aaw;->b(Lcom/netflix/cl/model/AppView;)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    .line 154
    iget-object v1, p0, Lo/aaw;->d:Ljava/util/Set;

    check-cast v1, Ljava/lang/Iterable;

    .line 187
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/aaJ;

    .line 156
    sget-object v3, Lcom/netflix/cl/model/AppView;->searchSuggestionResults:Lcom/netflix/cl/model/AppView;

    .line 157
    invoke-virtual {v2}, Lo/aaJ;->o()Lo/By;

    move-result-object v4

    const-string v5, "it.searchSuggestion()"

    invoke-static {v4, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lo/aaJ;->h()I

    move-result v2

    invoke-virtual {v0, v4, v2}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->c(Lo/By;I)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v2

    .line 155
    invoke-static {v3, v2}, Lo/Zy;->a(Lcom/netflix/cl/model/AppView;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final c(Lo/aaJ;F)V
    .locals 5

    const-string v0, "model"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lo/aaw;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    int-to-float v2, v1

    cmpl-float p2, p2, v2

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 86
    iget-object p2, p0, Lo/aaw;->d:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 88
    :cond_1
    iget-object p2, p0, Lo/aaw;->d:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 90
    :goto_1
    iget-object p2, p0, Lo/aaw;->d:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eq p2, v0, :cond_2

    .line 91
    sget-object p2, Lcom/netflix/cl/model/AppView;->searchSuggestionResults:Lcom/netflix/cl/model/AppView;

    invoke-direct {p0, p2}, Lo/aaw;->e(Lcom/netflix/cl/model/AppView;)V

    :cond_2
    if-eqz v1, :cond_3

    .line 95
    sget-object p2, Lcom/netflix/cl/model/AppView;->searchSuggestionResults:Lcom/netflix/cl/model/AppView;

    invoke-direct {p0, p2}, Lo/aaw;->b(Lcom/netflix/cl/model/AppView;)I

    move-result p2

    .line 96
    iget-object v0, p0, Lo/aaw;->b:[Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    aget-object v0, v0, p2

    if-eqz v0, :cond_3

    .line 97
    iget-object v1, p0, Lo/aaw;->h:[Lo/Yf;

    aget-object p2, v1, p2

    .line 98
    invoke-virtual {p1}, Lo/aaJ;->o()Lo/By;

    move-result-object v1

    const-string v2, "model.searchSuggestion()"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lo/By;->getEntityId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "model.searchSuggestion().entityId"

    invoke-static {v1, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    sget-object v3, Lcom/netflix/cl/model/AppView;->suggestionItem:Lcom/netflix/cl/model/AppView;

    .line 100
    invoke-virtual {p1}, Lo/aaJ;->o()Lo/By;

    move-result-object v4

    invoke-static {v4, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lo/aaJ;->h()I

    move-result p1

    invoke-virtual {v0, v4, p1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->c(Lo/By;I)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object p1

    .line 97
    invoke-virtual {p2, v1, v3, p1}, Lo/Yf;->a(Ljava/lang/String;Lcom/netflix/cl/model/AppView;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    :cond_3
    return-void
.end method

.method public final d()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 165
    iget-object v1, p0, Lo/aaw;->j:[Ljava/lang/Long;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 166
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v3, p0, Lo/aaw;->j:[Ljava/lang/Long;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 167
    iget-object v1, p0, Lo/aaw;->j:[Ljava/lang/Long;

    move-object v3, v2

    check-cast v3, Ljava/lang/Long;

    aput-object v3, v1, v0

    .line 169
    :cond_0
    iget-object v1, p0, Lo/aaw;->c:[Ljava/lang/String;

    check-cast v2, Ljava/lang/String;

    aput-object v2, v1, v0

    .line 170
    iget-object v1, p0, Lo/aaw;->g:[Ljava/lang/String;

    aput-object v2, v1, v0

    .line 171
    iget-object v1, p0, Lo/aaw;->h:[Lo/Yf;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lo/Yf;->b()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final d(Lcom/netflix/cl/model/AppView;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Ljava/lang/String;)V
    .locals 2

    const-string v0, "appView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lo/aaw;->b:[Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    invoke-direct {p0, p1}, Lo/aaw;->b(Lcom/netflix/cl/model/AppView;)I

    move-result v1

    aput-object p2, v0, v1

    .line 55
    iget-object p2, p0, Lo/aaw;->g:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lo/aaw;->b(Lcom/netflix/cl/model/AppView;)I

    move-result v0

    aput-object p3, p2, v0

    .line 56
    invoke-direct {p0, p1}, Lo/aaw;->e(Lcom/netflix/cl/model/AppView;)V

    return-void
.end method

.method public final d(Lo/aaN;F)V
    .locals 5

    const-string v0, "model"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lo/aaw;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    int-to-float v2, v1

    cmpl-float p2, p2, v2

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 63
    iget-object p2, p0, Lo/aaw;->e:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 65
    :cond_1
    iget-object p2, p0, Lo/aaw;->e:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 67
    :goto_1
    iget-object p2, p0, Lo/aaw;->e:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eq p2, v0, :cond_2

    .line 68
    sget-object p2, Lcom/netflix/cl/model/AppView;->searchTitleResults:Lcom/netflix/cl/model/AppView;

    invoke-direct {p0, p2}, Lo/aaw;->e(Lcom/netflix/cl/model/AppView;)V

    :cond_2
    if-eqz v1, :cond_4

    .line 71
    sget-object p2, Lcom/netflix/cl/model/AppView;->searchTitleResults:Lcom/netflix/cl/model/AppView;

    invoke-direct {p0, p2}, Lo/aaw;->b(Lcom/netflix/cl/model/AppView;)I

    move-result p2

    .line 72
    iget-object v0, p0, Lo/aaw;->b:[Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    aget-object v0, v0, p2

    if-eqz v0, :cond_4

    .line 73
    iget-object v1, p0, Lo/aaw;->h:[Lo/Yf;

    aget-object p2, v1, p2

    .line 74
    invoke-virtual {p1}, Lo/aaN;->h()Lo/AR;

    move-result-object v1

    const-string v2, "model.video()"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lo/AR;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "model.video().id"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    sget-object v2, Lcom/netflix/cl/model/AppView;->boxArt:Lcom/netflix/cl/model/AppView;

    .line 76
    invoke-virtual {p1}, Lo/aaN;->h()Lo/AR;

    move-result-object v3

    if-eqz v3, :cond_3

    check-cast v3, Lo/agg;

    invoke-interface {v3}, Lo/agg;->as_()Lo/AR;

    move-result-object v3

    const-string v4, "(model.video() as FullVideoDetails).summary"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lo/aaN;->m()I

    move-result p1

    invoke-virtual {v0, v3, p1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b(Lo/AR;I)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object p1

    .line 73
    invoke-virtual {p2, v1, v2, p1}, Lo/Yf;->a(Ljava/lang/String;Lcom/netflix/cl/model/AppView;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    goto :goto_2

    .line 76
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.netflix.model.FullVideoDetails"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    return-void
.end method

.method public final e(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 176
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->e(Lorg/json/JSONObject;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v0

    .line 177
    :cond_0
    sget-object p1, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    .line 178
    new-instance v1, Lcom/netflix/cl/model/event/session/Focus;

    sget-object v2, Lcom/netflix/cl/model/AppView;->searchSuggestionResults:Lcom/netflix/cl/model/AppView;

    invoke-direct {v1, v2, v0}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 179
    new-instance v0, Lcom/netflix/cl/model/event/session/command/SelectCommand;

    invoke-direct {v0}, Lcom/netflix/cl/model/event/session/command/SelectCommand;-><init>()V

    check-cast v0, Lcom/netflix/cl/model/event/session/command/Command;

    const/4 v2, 0x1

    .line 177
    invoke-virtual {p1, v1, v0, v2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;Z)V

    return-void
.end method
