.class public final Lcom/netflix/falcor/jsongraph/JsonGraphArray$containsOnlyPrimitiveValues$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/VolumePreference;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/VolumePreference;


# direct methods
.method public constructor <init>(Lo/VolumePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/falcor/jsongraph/JsonGraphArray$containsOnlyPrimitiveValues$2;->c:Lo/VolumePreference;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 5

    .line 299
    iget-object v0, p0, Lcom/netflix/falcor/jsongraph/JsonGraphArray$containsOnlyPrimitiveValues$2;->c:Lo/VolumePreference;

    .line 728
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 729
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/RecommendationInfo;

    .line 301
    instance-of v4, v1, Lo/PrinterCapabilitiesInfo;

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 302
    :cond_2
    instance-of v4, v1, Lo/PrintAttributes;

    if-eqz v4, :cond_3

    check-cast v1, Lo/PrintAttributes;

    invoke-virtual {v1}, Lo/PrintAttributes;->e()Z

    move-result v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    const/4 v3, 0x0

    :cond_4
    :goto_1
    return v3
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 283
    invoke-virtual {p0}, Lcom/netflix/falcor/jsongraph/JsonGraphArray$containsOnlyPrimitiveValues$2;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
