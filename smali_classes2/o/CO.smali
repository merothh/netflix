.class public abstract Lo/CO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CO$ActionBar;,
        Lo/CO$TaskDescription;,
        Lo/CO$Activity;,
        Lo/CO$Application;
    }
.end annotation


# static fields
.field private static c:Lo/CO$Application;


# instance fields
.field private a:Z

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/Ap;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Application;

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lo/CR;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/aeW;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/CO;->b:Ljava/util/List;

    .line 146
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/CO;->i:Ljava/util/Set;

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/CO;->g:Ljava/util/HashMap;

    return-void
.end method

.method private a()V
    .locals 1

    .line 214
    iget-object v0, p0, Lo/CO;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private c(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V
    .locals 5

    .line 127
    iget-object v0, p0, Lo/CO;->e:Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Application;

    const-string v1, "InteractiveTrackerImpl"

    if-nez v0, :cond_0

    const-string p1, "... but there was no listener attached so tracking has not completed"

    .line 128
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x1

    .line 131
    iput-boolean v2, p0, Lo/CO;->d:Z

    .line 132
    iput-boolean v2, p0, Lo/CO;->a:Z

    .line 133
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->a()Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;

    move-result-object v3

    iget-object v4, p0, Lo/CO;->b:Ljava/util/List;

    invoke-interface {v0, v3, v4}, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Application;->d(Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;Ljava/util/Collection;)V

    .line 134
    iget-object v0, p0, Lo/CO;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 135
    sget-object v0, Lo/CO;->c:Lo/CO$Application;

    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/CO$Application;->e(Ljava/lang/String;)V

    :cond_1
    new-array p1, v2, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 139
    invoke-virtual {p0}, Lo/CO;->b()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v0

    const-string v0, "isNowInteractive() -> %s"

    invoke-static {v1, v0, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method static synthetic c(Lo/CO;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lo/CO;->c(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    return-void
.end method

.method static synthetic d(Lo/CO;)Ljava/util/Set;
    .locals 0

    .line 37
    iget-object p0, p0, Lo/CO;->i:Ljava/util/Set;

    return-object p0
.end method

.method private h()Z
    .locals 2

    .line 306
    invoke-virtual {p0}, Lo/CO;->b()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lo/CO$ActionBar;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b(Landroid/app/Activity;)Z
    .locals 1

    .line 285
    invoke-virtual {p0}, Lo/CO;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    instance-of v0, p1, Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    if-eqz v0, :cond_0

    .line 287
    check-cast p1, Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getFragmentHelper()Lo/Ih;

    move-result-object p1

    invoke-interface {p1}, Lo/Ih;->h()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    .line 289
    :cond_1
    invoke-direct {p0}, Lo/CO;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 290
    instance-of p1, p1, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    goto :goto_0

    .line 292
    :cond_2
    instance-of p1, p1, Lcom/netflix/mediaclient/ui/home/HomeActivity;

    :goto_0
    return p1
.end method

.method public c()Ljava/util/Collection;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lo/Ap;",
            ">;"
        }
    .end annotation

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lo/CO;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 81
    iget-object v1, p0, Lo/CO;->i:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/aeW;

    .line 82
    new-instance v12, Lo/Ap;

    .line 83
    invoke-virtual {v2}, Lo/aeW;->b()Ljava/lang/String;

    move-result-object v4

    iget-wide v5, v2, Lo/aeW;->a:J

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, v12

    invoke-direct/range {v3 .. v11}, Lo/Ap;-><init>(Ljava/lang/String;JJLcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;ILcom/android/volley/VolleyError;)V

    .line 82
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public c(Lo/aeW;Lo/aeU;Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;Lcom/android/volley/VolleyError;)V
    .locals 10

    .line 224
    sget-object v0, Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;->b:Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

    if-ne p3, v0, :cond_0

    return-void

    .line 228
    :cond_0
    sget-object v0, Lo/CO;->c:Lo/CO$Application;

    if-eqz v0, :cond_2

    .line 229
    iget-object v0, p0, Lo/CO;->g:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/CR;

    if-eqz v0, :cond_2

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/CR;->e(J)V

    if-eqz p3, :cond_1

    .line 233
    invoke-virtual {p3}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/CR;->d(Ljava/lang/String;)V

    .line 235
    :cond_1
    sget-object v1, Lo/CO;->c:Lo/CO$Application;

    invoke-interface {v1, v0}, Lo/CO$Application;->c(Lo/CR;)V

    .line 238
    :cond_2
    iget-object v0, p0, Lo/CO;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 243
    invoke-virtual {p2}, Lo/aeU;->c()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 244
    invoke-virtual {p2}, Lo/aeU;->c()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v0

    move v8, v0

    goto :goto_0

    :cond_4
    const/4 v8, 0x0

    .line 246
    :goto_0
    iget-object p2, p0, Lo/CO;->b:Ljava/util/List;

    new-instance v0, Lo/Ap;

    .line 247
    invoke-virtual {p1}, Lo/aeW;->b()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p1, Lo/aeW;->a:J

    .line 249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v1, v0

    move-object v7, p3

    move-object v9, p4

    invoke-direct/range {v1 .. v9}, Lo/Ap;-><init>(Ljava/lang/String;JJLcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;ILcom/android/volley/VolleyError;)V

    .line 246
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    iget-object p1, p0, Lo/CO;->i:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;->c:Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

    if-eq p3, p1, :cond_5

    const-string p1, "InteractiveTrackerImpl"

    const-string p2, "onInteractive"

    .line 259
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    sget-object p1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->a:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-direct {p0, p1}, Lo/CO;->c(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    :cond_5
    return-void
.end method

.method public c(Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;)Z
    .locals 3

    .line 269
    iget-boolean v0, p0, Lo/CO;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lo/CO;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 275
    invoke-interface {p1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/app/Activity;

    invoke-static {v0, v2}, Lo/adk;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lo/CO;->b(Landroid/app/Activity;)Z

    move-result v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 276
    invoke-interface {p1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    aput-object p1, v2, v1

    const/4 p1, 0x1

    invoke-virtual {p0}, Lo/CO;->b()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, p1

    const/4 p1, 0x2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v2, p1

    const-string p1, "InteractiveTrackerImpl"

    const-string v1, "Track %s for %s? - %b"

    invoke-static {p1, v1, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    :goto_1
    return v1
.end method

.method protected c(ZLcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;)Z
    .locals 0

    if-nez p1, :cond_1

    .line 210
    invoke-virtual {p0, p2}, Lo/CO;->c(Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public d()V
    .locals 13

    .line 99
    iget-object v0, p0, Lo/CO;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/aeW;

    .line 100
    iget-object v2, p0, Lo/CO;->b:Ljava/util/List;

    new-instance v12, Lo/Ap;

    .line 101
    invoke-virtual {v1}, Lo/aeW;->b()Ljava/lang/String;

    move-result-object v4

    iget-wide v5, v1, Lo/aeW;->a:J

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, v12

    invoke-direct/range {v3 .. v11}, Lo/Ap;-><init>(Ljava/lang/String;JJLcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;ILcom/android/volley/VolleyError;)V

    .line 100
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 110
    :cond_0
    invoke-direct {p0}, Lo/CO;->a()V

    .line 111
    invoke-virtual {p0}, Lo/CO;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->b:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-direct {p0, v0}, Lo/CO;->c(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    :cond_1
    return-void
.end method

.method public d(Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Application;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lo/CO;->a()V

    .line 74
    iput-object p1, p0, Lo/CO;->e:Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Application;

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lo/CO;->d:Z

    .line 122
    iput-boolean v0, p0, Lo/CO;->a:Z

    .line 123
    iget-object v0, p0, Lo/CO;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public e(Lo/aeW;Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Z)V
    .locals 3

    .line 175
    invoke-virtual {p0, p3, p2}, Lo/CO;->c(ZLcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;)Z

    move-result p3

    .line 176
    sget-object v0, Lo/CO;->c:Lo/CO$Application;

    if-eqz v0, :cond_2

    .line 177
    new-instance v0, Lo/CR;

    invoke-direct {v0}, Lo/CR;-><init>()V

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/CR;->c(J)V

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 179
    :goto_0
    invoke-virtual {v0, v1}, Lo/CR;->d(Z)V

    .line 180
    invoke-virtual {v0, p3}, Lo/CR;->a(Z)V

    .line 181
    invoke-virtual {p1}, Lo/aeW;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 182
    invoke-virtual {p1}, Lo/aeW;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/CR;->c(Ljava/lang/String;)V

    .line 184
    :cond_1
    iget-object v1, p0, Lo/CO;->g:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-nez p3, :cond_3

    return-void

    .line 191
    :cond_3
    iget-object p3, p0, Lo/CO;->i:Ljava/util/Set;

    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_4

    .line 195
    invoke-interface {p2}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;->e()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p3, Lo/CO$1;

    invoke-direct {p3, p0, p2}, Lo/CO$1;-><init>(Lo/CO;Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;)V

    invoke-virtual {p1, p3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_4
    return-void
.end method

.method protected f()Z
    .locals 2

    .line 302
    invoke-virtual {p0}, Lo/CO;->b()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lo/CO$TaskDescription;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    .line 313
    iget-object v0, p0, Lo/CO;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public j()Z
    .locals 1

    .line 298
    iget-boolean v0, p0, Lo/CO;->d:Z

    return v0
.end method
