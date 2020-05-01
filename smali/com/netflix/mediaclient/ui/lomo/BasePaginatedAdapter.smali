.class public abstract Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;
.super Ljava/lang/Object;
.source "BasePaginatedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BasePaginatedAdapter"


# instance fields
.field protected final activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private currTitle:Ljava/lang/String;

.field protected data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected isRtlLocale:Z

.field private listViewPos:I

.field protected final numItemsPerPage:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 64
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->computeNumItemsPerPage()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->numItemsPerPage:I

    .line 65
    invoke-static {}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->isCurrentLocaleRTL()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->isRtlLocale:Z

    .line 66
    return-void
.end method

.method private appendOrUpdate(Ljava/util/List;Ljava/util/List;IZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/List",
            "<TT;>;IZ)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 134
    move v1, v2

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 135
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/Video;

    .line 136
    add-int v3, p3, v1

    .line 137
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 139
    iget-boolean v4, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->isRtlLocale:Z

    if-eqz v4, :cond_3

    .line 140
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    sub-int v3, v4, v3

    add-int/lit8 v3, v3, -0x1

    .line 141
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 142
    const-string/jumbo v4, "BasePaginatedAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "RTL locale, update to position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", item "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    if-gez v3, :cond_2

    .line 145
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 146
    const-string/jumbo v4, "BasePaginatedAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Adjusted index for RTL is less than 0 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ". Default to 0!"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v3, v2

    .line 155
    :cond_2
    :goto_1
    invoke-interface {p1, v3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 134
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 151
    :cond_3
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 152
    const-string/jumbo v4, "BasePaginatedAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "LTR locale, update to position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", item "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 158
    :cond_4
    iget-boolean v3, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->isRtlLocale:Z

    if-eqz v3, :cond_6

    .line 159
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 160
    const-string/jumbo v3, "BasePaginatedAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "RTL locale, adding to start from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", item "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_5
    invoke-interface {p1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 164
    :cond_6
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 169
    :cond_7
    if-nez p4, :cond_9

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->isRtlLocale:Z

    if-eqz v0, :cond_9

    .line 170
    const-string/jumbo v0, "BasePaginatedAdapter"

    const-string/jumbo v1, "All data is retrieved and RTL locale is in force. Check if we need to add empty items, just to push items whole way up to right"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->numItemsPerPage:I

    rem-int/2addr v0, v1

    .line 173
    if-lez v0, :cond_9

    .line 174
    iget v1, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->numItemsPerPage:I

    sub-int/2addr v1, v0

    .line 175
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 176
    const-string/jumbo v3, "BasePaginatedAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "We do not populate fully last page, just "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " video is there. Adding "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " more empty videos..."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move v0, v2

    .line 178
    :goto_3
    if-ge v0, v1, :cond_9

    .line 179
    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 183
    :cond_9
    return-void
.end method


# virtual methods
.method public appendData(Ljava/util/List;Ljava/lang/String;IIZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/String;",
            "IIZ)V"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->currTitle:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const-string/jumbo v0, "BasePaginatedAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->getCurrTitleFormatted()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "new title: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->currTitle:Ljava/lang/String;

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->currTitle:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 104
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    const-string/jumbo v0, "BasePaginatedAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->getCurrTitleFormatted()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "***** title mismatch:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 106
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->getCurrTitleFormatted()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n    curr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->currTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 107
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->getCurrTitleFormatted()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n    new: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_2
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->currTitle:Ljava/lang/String;

    .line 112
    :cond_3
    if-eqz p1, :cond_4

    .line 113
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 114
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->data:Ljava/util/List;

    invoke-direct {p0, v1, p1, p3, p5}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->appendOrUpdate(Ljava/util/List;Ljava/util/List;IZ)V

    .line 116
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 117
    const-string/jumbo v1, "BasePaginatedAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->getCurrTitleFormatted()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "appending data starting with item: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/netflix/mediaclient/util/DataUtil;->getFirstItemSafely(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", prev size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", new size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->data:Ljava/util/List;

    .line 118
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v0, :cond_4

    .line 121
    const-string/jumbo v0, "BasePaginatedAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->getCurrTitleFormatted()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "***** append called but no items added"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_4
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 127
    const-string/jumbo v0, "BasePaginatedAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->getCurrTitleFormatted()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "currTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->currTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", new title: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", end: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", listViewPos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->listViewPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_5
    return-void
.end method

.method public clearData()V
    .locals 3

    .prologue
    .line 186
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    const-string/jumbo v0, "BasePaginatedAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->getCurrTitleFormatted()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Clearing data..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->data:Ljava/util/List;

    .line 190
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->currTitle:Ljava/lang/String;

    .line 191
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->listViewPos:I

    .line 192
    return-void
.end method

.method protected abstract computeNumItemsPerPage()I
.end method

.method protected computeNumPages()I
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->numItemsPerPage:I

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/MathUtils;->ceiling(II)I

    move-result v0

    return v0
.end method

.method protected abstract computeNumVideosToFetchPerBatch(I)I
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->computeNumPages()I

    move-result v0

    return v0
.end method

.method protected getCurrTitleFormatted()Ljava/lang/String;
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->currTitle:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    const-string/jumbo v0, ""

    .line 252
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->currTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDataForPage(I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->computeNumPages()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 225
    const/4 v0, 0x0

    .line 234
    :goto_0
    return-object v0

    .line 228
    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->numItemsPerPage:I

    mul-int/2addr v0, p1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 229
    iget v1, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->numItemsPerPage:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->data:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 231
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 232
    const-string/jumbo v2, "BasePaginatedAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->getCurrTitleFormatted()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Getting [%d, %d], data set size: %d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->data:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_1
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->data:Ljava/util/List;

    invoke-interface {v2, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method protected getListViewPos()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->listViewPos:I

    return v0
.end method

.method public getRowHeightInPx()I
    .locals 4

    .prologue
    .line 76
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->computeViewPagerWidth(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)I

    move-result v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->numItemsPerPage:I

    div-int/2addr v0, v1

    int-to-float v1, v0

    .line 77
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->useLolomoBoxArt()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x3fb70a3d    # 1.43f

    :goto_0
    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 79
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    const-string/jumbo v1, "BasePaginatedAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Computed view height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_0
    return v0

    .line 77
    :cond_1
    const/high16 v0, 0x3f100000    # 0.5625f

    goto :goto_0
.end method

.method public getView(Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;I)Landroid/view/View;
    .locals 6

    .prologue
    .line 86
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const-string/jumbo v0, "BasePaginatedAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->getCurrTitleFormatted()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Getting page for position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    invoke-virtual {p0, p3}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->getDataForPage(I)Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->numItemsPerPage:I

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->getView(Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;Ljava/util/List;IILcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getView(Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;Ljava/util/List;IILcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;",
            "Ljava/util/List",
            "<TT;>;II",
            "Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation
.end method

.method public isLastItem(I)Z
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->computeNumPages()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreFromMemento(Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter$Memento;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter$Memento",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter$Memento;->data:Ljava/util/List;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->data:Ljava/util/List;

    .line 204
    iget v0, p1, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter$Memento;->listViewPos:I

    iput v0, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->listViewPos:I

    .line 205
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter$Memento;->currTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->currTitle:Ljava/lang/String;

    .line 206
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    const-string/jumbo v0, "BasePaginatedAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->getCurrTitleFormatted()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "restored from memento: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_0
    return-void
.end method

.method public saveToMemento()Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter$Memento;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter$Memento",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 195
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter$Memento;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->data:Ljava/util/List;

    iget v2, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->listViewPos:I

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->currTitle:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter$Memento;-><init>(Ljava/util/List;ILjava/lang/String;)V

    .line 196
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    const-string/jumbo v1, "BasePaginatedAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->getCurrTitleFormatted()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "saving memento: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_0
    return-object v0
.end method

.method public setListViewPos(I)V
    .locals 0

    .prologue
    .line 242
    iput p1, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->listViewPos:I

    .line 243
    return-void
.end method

.method public trackPresentation(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;ILjava/lang/Boolean;)V
    .locals 9

    .prologue
    .line 256
    invoke-virtual {p0, p3}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->getDataForPage(I)Ljava/util/List;

    move-result-object v0

    .line 257
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 258
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    const-string/jumbo v0, "nf_presentation"

    const-string/jumbo v1, "No videos input videos found in page data"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_1
    :goto_0
    return-void

    .line 264
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 265
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 266
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/Video;

    .line 267
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->isPresentationTrackingType(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 268
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    const/4 v1, 0x0

    .line 270
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->useLolomoBoxArt()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v5

    invoke-static {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->usesVerticalBoxArtType(Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 271
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getBoxartImageTypeIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 273
    :goto_2
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 277
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 278
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    const-string/jumbo v0, "nf_presentation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No videos found for presentation tracking - row: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 284
    :cond_5
    iget v0, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->numItemsPerPage:I

    mul-int v4, p3, v0

    .line 285
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v5, Lcom/netflix/mediaclient/servicemgr/UiLocation;->GENRE_LOLOMO:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    .line 286
    :goto_3
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 287
    const-string/jumbo v0, "nf_presentation"

    const-string/jumbo v1, "%s, %s, offset %d %s %s"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 288
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;->getTitle()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v5, v6, v7

    const/4 v7, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object v2, v6, v7

    const/4 v7, 0x4

    aput-object v3, v6, v7

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 287
    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_6
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getPresentationTracking()Lcom/netflix/mediaclient/servicemgr/PresentationTracking;

    move-result-object v0

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/PresentationTracking;->reportPresentation(Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;Ljava/util/List;Ljava/util/List;ILcom/netflix/mediaclient/servicemgr/UiLocation;)V

    goto/16 :goto_0

    .line 285
    :cond_7
    sget-object v5, Lcom/netflix/mediaclient/servicemgr/UiLocation;->HOME_LOLOMO:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    goto :goto_3

    :cond_8
    move-object v0, v1

    goto :goto_2
.end method
